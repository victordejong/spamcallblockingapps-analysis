package p081h.p203i.p204a.p224e.p258i;

import android.util.Log;
import com.google.android.gms.iid.zze;
/* renamed from: h.i.a.e.i.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/m.class */
public final class RunnableC7157m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7154j f17264a;

    /* renamed from: b */
    public final /* synthetic */ BinderC7156l f17265b;

    public RunnableC7157m(BinderC7156l lVar, C7154j jVar) {
        this.f17265b = lVar;
        this.f17264a = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zze zzeVar;
        Log.isLoggable("EnhancedIntentService", 3);
        zzeVar = this.f17265b.f17263a;
        zzeVar.handleIntent(this.f17264a.f17257a);
        this.f17264a.m21023a();
    }
}
