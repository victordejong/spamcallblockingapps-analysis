package com.hiya.stingray.p000ui.p002w;

import com.hiya.stingray.ui.w.l;
import kotlin.s.k;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.w.l$n$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$n$a.class */
final class l$n$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ l.n f180f;

    /* renamed from: g */
    final /* synthetic */ Throwable f181g;

    l$n$a(l.n nVar, Throwable th) {
        this.f180f = nVar;
        this.f181g = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((AbstractC0083o) this.f180f.f.n()).m1071E0(k.g(), null);
        l lVar = this.f180f.f;
        l.H(lVar, l.y(lVar));
        a.e(this.f181g);
    }
}
