package p081h.p203i.p204a.p224e.p259j.p266g;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: h.i.a.e.j.g.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/d.class */
public final class C7567d extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ C7560c f17804a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7567d(C7560c cVar, Handler handler) {
        super(null);
        this.f17804a = cVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f17804a.m20297b();
        this.f17804a.m20295d();
    }
}
