package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import java.util.HashMap;
import p1727n3.p1751c0.AbstractC25664l;
import p1727n3.p1751c0.AbstractC25667m;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    public int f1418a = 0;

    /* renamed from: b */
    public final HashMap<Integer, String> f1419b = new HashMap<>();

    /* renamed from: c */
    public final RemoteCallbackList<AbstractC25664l> f1420c = new RemoteCallbackListC0354a();

    /* renamed from: d */
    public final AbstractC25667m.AbstractBinderC25668a f1421d = new b(this);

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    public class RemoteCallbackListC0354a extends RemoteCallbackList<AbstractC25664l> {
        public RemoteCallbackListC0354a() {
            MultiInstanceInvalidationService.this = r4;
        }

        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(AbstractC25664l abstractC25664l, Object obj) {
            MultiInstanceInvalidationService.this.f1419b.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1421d;
    }
}
