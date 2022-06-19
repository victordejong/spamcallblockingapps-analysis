package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import androidx.room.AbstractC0444d;
import d.e.h;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: b */
    int f2418b = 0;

    /* renamed from: c */
    final h<String> f2419c = new h<>();

    /* renamed from: d */
    final RemoteCallbackList<AbstractC0443c> f2420d = new RemoteCallbackListC0438a();

    /* renamed from: e */
    private final AbstractC0444d.a f2421e = new b(this);

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    class RemoteCallbackListC0438a extends RemoteCallbackList<AbstractC0443c> {
        RemoteCallbackListC0438a() {
            MultiInstanceInvalidationService.this = r4;
        }

        /* renamed from: a */
        public void onCallbackDied(AbstractC0443c abstractC0443c, Object obj) {
            MultiInstanceInvalidationService.this.f2419c.l(((Integer) obj).intValue());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2421e;
    }
}
