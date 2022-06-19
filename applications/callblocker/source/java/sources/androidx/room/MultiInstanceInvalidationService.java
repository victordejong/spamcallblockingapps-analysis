package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC1026d;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    int f3430a = 0;

    /* renamed from: b */
    final HashMap<Integer, String> f3431b = new HashMap<>();

    /* renamed from: c */
    final RemoteCallbackList<AbstractC1023c> f3432c = new RemoteCallbackList<AbstractC1023c>() { // from class: androidx.room.MultiInstanceInvalidationService.1
        /* renamed from: a */
        public void onCallbackDied(AbstractC1023c abstractC1023c, Object obj) {
            MultiInstanceInvalidationService.this.f3431b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    };

    /* renamed from: d */
    private final AbstractC1026d.AbstractBinderC1027a f3433d = new AbstractC1026d.AbstractBinderC1027a() { // from class: androidx.room.MultiInstanceInvalidationService.2
        @Override // androidx.room.AbstractC1026d
        /* renamed from: a */
        public int mo18328a(AbstractC1023c abstractC1023c, String str) {
            int i = 0;
            if (str != null) {
                synchronized (MultiInstanceInvalidationService.this.f3432c) {
                    MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                    int i2 = multiInstanceInvalidationService.f3430a + 1;
                    multiInstanceInvalidationService.f3430a = i2;
                    if (MultiInstanceInvalidationService.this.f3432c.register(abstractC1023c, Integer.valueOf(i2))) {
                        MultiInstanceInvalidationService.this.f3431b.put(Integer.valueOf(i2), str);
                        i = i2;
                    } else {
                        MultiInstanceInvalidationService.this.f3430a--;
                    }
                }
            }
            return i;
        }

        @Override // androidx.room.AbstractC1026d
        /* renamed from: a */
        public void mo18330a(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f3432c) {
                String str = MultiInstanceInvalidationService.this.f3431b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f3432c.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f3432c.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f3431b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f3432c.getBroadcastItem(i2).mo18307a(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f3432c.finishBroadcast();
            }
        }

        @Override // androidx.room.AbstractC1026d
        /* renamed from: a */
        public void mo18329a(AbstractC1023c abstractC1023c, int i) {
            synchronized (MultiInstanceInvalidationService.this.f3432c) {
                MultiInstanceInvalidationService.this.f3432c.unregister(abstractC1023c);
                MultiInstanceInvalidationService.this.f3431b.remove(Integer.valueOf(i));
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3433d;
    }
}
