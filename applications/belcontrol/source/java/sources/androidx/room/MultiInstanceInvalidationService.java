package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import u00;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a */
    public int f1430a = 0;

    /* renamed from: b */
    public final i4<String> f1431b = new i4<>();

    /* renamed from: c */
    public final RemoteCallbackList<t00> f1432c = new RemoteCallbackListC0189a();

    /* renamed from: d */
    public final u00.a f1433d = new b(this);

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    public class RemoteCallbackListC0189a extends RemoteCallbackList<t00> {
        public RemoteCallbackListC0189a() {
            MultiInstanceInvalidationService.this = r4;
        }

        /* renamed from: a */
        public void onCallbackDied(t00 t00Var, Object obj) {
            MultiInstanceInvalidationService.this.f1431b.m(((Integer) obj).intValue());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1433d;
    }
}
