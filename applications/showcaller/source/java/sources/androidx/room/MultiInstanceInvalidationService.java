package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC1002d;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: d */
    int f4398d = 0;

    /* renamed from: e */
    final HashMap<Integer, String> f4399e = new HashMap<>();

    /* renamed from: f */
    final RemoteCallbackList<AbstractC0999c> f4400f = new RemoteCallbackListC0992a();

    /* renamed from: g */
    private final AbstractC1002d.AbstractBinderC1003a f4401g = new BinderC0993b();

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    class RemoteCallbackListC0992a extends RemoteCallbackList<AbstractC0999c> {
        RemoteCallbackListC0992a() {
            MultiInstanceInvalidationService.this = r4;
        }

        /* renamed from: a */
        public void onCallbackDied(AbstractC0999c abstractC0999c, Object obj) {
            MultiInstanceInvalidationService.this.f4399e.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationService$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$b.class */
    class BinderC0993b extends AbstractC1002d.AbstractBinderC1003a {
        BinderC0993b() {
            MultiInstanceInvalidationService.this = r4;
        }

        @Override // androidx.room.AbstractC1002d
        /* renamed from: Q5 */
        public void mo31261Q5(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f4400f) {
                String str = MultiInstanceInvalidationService.this.f4399e.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f4400f.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f4400f.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f4399e.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f4400f.getBroadcastItem(i2).mo31238C1(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f4400f.finishBroadcast();
            }
        }

        @Override // androidx.room.AbstractC1002d
        /* renamed from: c2 */
        public int mo31260c2(AbstractC0999c abstractC0999c, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f4400f) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f4398d + 1;
                multiInstanceInvalidationService.f4398d = i;
                if (multiInstanceInvalidationService.f4400f.register(abstractC0999c, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f4399e.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService.this.f4398d--;
                return 0;
            }
        }

        @Override // androidx.room.AbstractC1002d
        /* renamed from: o6 */
        public void mo31259o6(AbstractC0999c abstractC0999c, int i) {
            synchronized (MultiInstanceInvalidationService.this.f4400f) {
                MultiInstanceInvalidationService.this.f4400f.unregister(abstractC0999c);
                MultiInstanceInvalidationService.this.f4399e.remove(Integer.valueOf(i));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4401g;
    }
}
