package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.c;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a  reason: collision with root package name */
    int f5507a = 0;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<Integer, String> f5508b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final RemoteCallbackList<b> f5509c = new RemoteCallbackList<b>() { // from class: androidx.room.MultiInstanceInvalidationService.1
        @Override // android.os.RemoteCallbackList
        public final /* synthetic */ void onCallbackDied(b bVar, Object obj) {
            MultiInstanceInvalidationService.this.f5508b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final c.a f5510d = new c.a() { // from class: androidx.room.MultiInstanceInvalidationService.2
        @Override // androidx.room.c
        public final int a(b bVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f5509c) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f5507a + 1;
                multiInstanceInvalidationService.f5507a = i;
                if (MultiInstanceInvalidationService.this.f5509c.register(bVar, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f5508b.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService.this.f5507a--;
                return 0;
            }
        }

        @Override // androidx.room.c
        public final void a(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f5509c) {
                String str = MultiInstanceInvalidationService.this.f5508b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f5509c.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f5509c.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f5508b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f5509c.getBroadcastItem(i2).a(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f5509c.finishBroadcast();
            }
        }

        @Override // androidx.room.c
        public final void a(b bVar, int i) {
            synchronized (MultiInstanceInvalidationService.this.f5509c) {
                MultiInstanceInvalidationService.this.f5509c.unregister(bVar);
                MultiInstanceInvalidationService.this.f5508b.remove(Integer.valueOf(i));
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f5510d;
    }
}
