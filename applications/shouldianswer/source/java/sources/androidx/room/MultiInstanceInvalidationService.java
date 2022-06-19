package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC1045e;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    int f3223a = 0;

    /* renamed from: b */
    final HashMap<Integer, String> f3224b = new HashMap<>();

    /* renamed from: c */
    final RemoteCallbackList<AbstractC1042d> f3225c = new RemoteCallbackList<AbstractC1042d>() { // from class: androidx.room.MultiInstanceInvalidationService.1
        /* renamed from: a */
        public void onCallbackDied(AbstractC1042d abstractC1042d, Object obj) {
            MultiInstanceInvalidationService.this.f3224b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    };

    /* renamed from: d */
    private final AbstractC1045e.AbstractBinderC1046a f3226d = new AbstractC1045e.AbstractBinderC1046a() { // from class: androidx.room.MultiInstanceInvalidationService.2
        @Override // androidx.room.AbstractC1045e
        /* renamed from: a */
        public int mo4476a(AbstractC1042d abstractC1042d, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f3225c) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f3223a + 1;
                multiInstanceInvalidationService.f3223a = i;
                if (MultiInstanceInvalidationService.this.f3225c.register(abstractC1042d, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f3224b.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService.this.f3223a--;
                return 0;
            }
        }

        @Override // androidx.room.AbstractC1045e
        /* renamed from: a */
        public void mo4478a(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f3225c) {
                String str = MultiInstanceInvalidationService.this.f3224b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f3225c.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f3225c.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f3224b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f3225c.getBroadcastItem(i2).mo4455a(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f3225c.finishBroadcast();
            }
        }

        @Override // androidx.room.AbstractC1045e
        /* renamed from: a */
        public void mo4477a(AbstractC1042d abstractC1042d, int i) {
            synchronized (MultiInstanceInvalidationService.this.f3225c) {
                MultiInstanceInvalidationService.this.f3225c.unregister(abstractC1042d);
                MultiInstanceInvalidationService.this.f3224b.remove(Integer.valueOf(i));
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3226d;
    }
}
