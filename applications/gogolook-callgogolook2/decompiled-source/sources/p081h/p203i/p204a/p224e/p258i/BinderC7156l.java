package p081h.p203i.p204a.p224e.p258i;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.iid.zze;
/* renamed from: h.i.a.e.i.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/l.class */
public final class BinderC7156l extends Binder {

    /* renamed from: a */
    public final zze f17263a;

    public BinderC7156l(zze zzeVar) {
        this.f17263a = zzeVar;
    }

    /* renamed from: a */
    public final void m21022a(C7154j jVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            Log.isLoggable("EnhancedIntentService", 3);
            Log.isLoggable("EnhancedIntentService", 3);
            this.f17263a.f6731a.execute(new RunnableC7157m(this, jVar));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
