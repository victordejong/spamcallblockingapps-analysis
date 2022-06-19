package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import p067d1.AbstractBinderC2145d;
import p067d1.AbstractC2142c;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    public int f2550a = 0;

    /* renamed from: b */
    public final HashMap<Integer, String> f2551b = new HashMap<>();

    /* renamed from: c */
    public final RemoteCallbackList<AbstractC2142c> f2552c = new RemoteCallbackListC0654a();

    /* renamed from: d */
    public final AbstractBinderC2145d f2553d = new BinderC0655b();

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    public class RemoteCallbackListC0654a extends RemoteCallbackList<AbstractC2142c> {
        public RemoteCallbackListC0654a() {
            MultiInstanceInvalidationService.this = r4;
        }

        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(AbstractC2142c abstractC2142c, Object obj) {
            MultiInstanceInvalidationService.this.f2551b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationService$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$b.class */
    public class BinderC0655b extends AbstractBinderC2145d {
        public BinderC0655b() {
            MultiInstanceInvalidationService.this = r4;
        }

        /* renamed from: q */
        public void m7518q(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f2552c) {
                String str = MultiInstanceInvalidationService.this.f2551b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f2552c.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f2552c.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f2551b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f2552c.getBroadcastItem(i2).mo3829h(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f2552c.finishBroadcast();
            }
        }

        /* renamed from: r */
        public int m7517r(AbstractC2142c abstractC2142c, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f2552c) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f2550a + 1;
                multiInstanceInvalidationService.f2550a = i;
                if (multiInstanceInvalidationService.f2552c.register(abstractC2142c, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f2551b.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService.this.f2550a--;
                return 0;
            }
        }

        /* renamed from: s */
        public void m7516s(AbstractC2142c abstractC2142c, int i) {
            synchronized (MultiInstanceInvalidationService.this.f2552c) {
                MultiInstanceInvalidationService.this.f2552c.unregister(abstractC2142c);
                MultiInstanceInvalidationService.this.f2551b.remove(Integer.valueOf(i));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2553d;
    }
}
