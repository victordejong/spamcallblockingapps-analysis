package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.appupdate.C14882j;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import com.google.android.play.core.splitinstall.p378a.C15124a;
import com.google.android.play.core.splitinstall.p378a.C15134k;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/r.class */
public final class C15168r implements AbstractC15136ab {

    /* renamed from: a */
    private AbstractC15041be<Context> f54986a;

    /* renamed from: b */
    private AbstractC15041be<C15164n> f54987b;

    /* renamed from: c */
    private AbstractC15041be<C15142ah> f54988c;

    /* renamed from: d */
    private AbstractC15041be<C15139ae> f54989d;

    /* renamed from: e */
    private AbstractC15041be<C15165o> f54990e;

    /* renamed from: f */
    private AbstractC15041be<C15145ak> f54991f;

    /* renamed from: g */
    private AbstractC15041be<File> f54992g;

    /* renamed from: h */
    private AbstractC15041be<C15124a> f54993h;

    /* renamed from: i */
    private AbstractC15041be<C15174x> f54994i;

    /* renamed from: j */
    private AbstractC15041be<AbstractC15123a> f54995j;

    public /* synthetic */ C15168r(C15147am c15147am) {
        C15148an c15148an = new C15148an(c15147am);
        this.f54986a = c15148an;
        this.f54987b = C15039bc.m9574a(new C15166p(c15148an, null));
        this.f54988c = C15039bc.m9574a(new C15155f(c15147am));
        this.f54989d = C15039bc.m9574a(C14882j.m9822a(this.f54986a));
        AbstractC15041be<C15165o> m9574a = C15039bc.m9574a(new C15166p(this.f54986a));
        this.f54990e = m9574a;
        this.f54991f = C15039bc.m9574a(new C15146al(this.f54987b, this.f54988c, this.f54989d, m9574a));
        AbstractC15041be<File> m9574a2 = C15039bc.m9574a(new C15149ao(this.f54986a));
        this.f54992g = m9574a2;
        AbstractC15041be<C15124a> m9574a3 = C15039bc.m9574a(new C15134k(this.f54986a, m9574a2, this.f54989d));
        this.f54993h = m9574a3;
        AbstractC15041be<C15174x> m9574a4 = C15039bc.m9574a(new C15175y(this.f54991f, m9574a3, this.f54992g));
        this.f54994i = m9574a4;
        this.f54995j = C15039bc.m9574a(new C15156g(c15147am, m9574a4));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15136ab
    /* renamed from: a */
    public final AbstractC15123a mo9348a() {
        return this.f54995j.mo9335a();
    }
}
