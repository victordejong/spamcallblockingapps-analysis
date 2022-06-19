package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC2729c;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    int f10327a = 0;

    /* renamed from: b */
    final HashMap<Integer, String> f10328b = new HashMap<>();

    /* renamed from: c */
    final RemoteCallbackList<AbstractC2716b> f10329c = new RemoteCallbackList<AbstractC2716b>() { // from class: androidx.room.MultiInstanceInvalidationService.1
        @Override // android.os.RemoteCallbackList
        public final /* synthetic */ void onCallbackDied(AbstractC2716b abstractC2716b, Object obj) {
            MultiInstanceInvalidationService.this.f10328b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    };

    /* renamed from: d */
    private final AbstractC2729c.AbstractBinderC2730a f10330d = new AbstractC2729c.AbstractBinderC2730a() { // from class: androidx.room.MultiInstanceInvalidationService.2
        @Override // androidx.room.AbstractC2729c
        /* renamed from: a */
        public final int mo39982a(AbstractC2716b abstractC2716b, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f10329c) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f10327a + 1;
                multiInstanceInvalidationService.f10327a = i;
                if (MultiInstanceInvalidationService.this.f10329c.register(abstractC2716b, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f10328b.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService.this.f10327a--;
                return 0;
            }
        }

        @Override // androidx.room.AbstractC2729c
        /* renamed from: a */
        public final void mo39984a(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f10329c) {
                String str = MultiInstanceInvalidationService.this.f10328b.get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f10329c.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    int intValue = ((Integer) MultiInstanceInvalidationService.this.f10329c.getBroadcastCookie(i2)).intValue();
                    String str2 = MultiInstanceInvalidationService.this.f10328b.get(Integer.valueOf(intValue));
                    if (i != intValue && str.equals(str2)) {
                        try {
                            MultiInstanceInvalidationService.this.f10329c.getBroadcastItem(i2).mo39969a(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                }
                MultiInstanceInvalidationService.this.f10329c.finishBroadcast();
            }
        }

        @Override // androidx.room.AbstractC2729c
        /* renamed from: a */
        public final void mo39983a(AbstractC2716b abstractC2716b, int i) {
            synchronized (MultiInstanceInvalidationService.this.f10329c) {
                MultiInstanceInvalidationService.this.f10329c.unregister(abstractC2716b);
                MultiInstanceInvalidationService.this.f10328b.remove(Integer.valueOf(i));
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f10330d;
    }
}
