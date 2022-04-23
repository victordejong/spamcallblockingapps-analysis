package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.appupdate.j;
import com.google.android.play.core.common.c;
import com.google.android.play.core.common.d;
import com.google.android.play.core.common.e;
import com.google.android.play.core.internal.bb;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.ae;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ai.class */
public final class ai implements d {
    private be<ab> A;

    /* renamed from: a  reason: collision with root package name */
    private final ck f31100a;

    /* renamed from: b  reason: collision with root package name */
    private be<Context> f31101b;

    /* renamed from: c  reason: collision with root package name */
    private be<bu> f31102c;

    /* renamed from: d  reason: collision with root package name */
    private be<w> f31103d;
    private be<ap> e;
    private be<p> f;
    private be<String> g;
    private be<cs> h = new bb();
    private be<Executor> i;
    private be<bb> j;
    private be<t> k;
    private be<ak> l;
    private be<cc> m;
    private be<bn> n;
    private be<c> o;
    private be<bs> p;
    private be<bw> q;
    private be<ad> r;
    private be<be> s;
    private be<am> t;
    private be<af> u;
    private be<Executor> v;
    private be<bi> w;
    private be<ae> x;
    private be<ch> y;
    private be<Object> z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ai(ck ckVar) {
        cr crVar;
        cr crVar2;
        e eVar;
        cr crVar3;
        cr crVar4;
        this.f31100a = ckVar;
        co coVar = new co(ckVar);
        this.f31101b = coVar;
        be<bu> a2 = bc.a(new bo(coVar, (char[]) null));
        this.f31102c = a2;
        this.f31103d = bc.a(new cm(this.f31101b, a2, (short[]) null));
        crVar = aq.f31126a;
        be<ap> a3 = bc.a(crVar);
        this.e = a3;
        this.f = bc.a(new cm(this.f31101b, a3, (char[]) null));
        this.g = bc.a(new cp(this.f31101b));
        crVar2 = cl.f31249a;
        be<Executor> a4 = bc.a(crVar2);
        this.i = a4;
        this.j = bc.a(new bc(this.f31103d, this.h, this.e, a4));
        bb bbVar = new bb();
        this.k = bbVar;
        this.l = bc.a(new bc(this.f31103d, this.h, bbVar, this.e, (byte[]) null));
        this.m = bc.a(new bo(this.f31103d, (short[]) null));
        this.n = bc.a(new bo(this.f31103d));
        eVar = d.f31332a;
        be<c> a5 = bc.a(eVar);
        this.o = a5;
        this.p = bc.a(new bt(this.f31103d, this.h, this.j, this.i, this.e, a5));
        this.q = bc.a(new cm(this.f31103d, this.h, (int[]) null));
        be<ad> a6 = bc.a(new bo(this.h, (byte[]) null));
        this.r = a6;
        be<be> a7 = bc.a(new bc(this.j, this.f31103d, a6, this.o, (char[]) null));
        this.s = a7;
        this.t = bc.a(new an(this.j, this.h, this.l, this.m, this.n, this.p, this.q, a7));
        crVar3 = ag.f31098a;
        this.u = bc.a(crVar3);
        crVar4 = cq.f31258a;
        be<Executor> a8 = bc.a(crVar4);
        this.v = a8;
        bb.a(this.k, bc.a(new an(this.f31101b, this.j, this.t, this.h, this.e, this.u, this.i, a8, null)));
        be<bi> a9 = bc.a(new bt(this.g, this.k, this.e, this.f31101b, this.f31102c, this.i, null));
        this.w = a9;
        bb.a(this.h, bc.a(new cn(this.f31101b, this.f, a9)));
        be<ae> a10 = bc.a(j.a(this.f31101b));
        this.x = a10;
        be<ch> a11 = bc.a(new ci(this.f31103d, this.h, this.k, a10, this.j, this.e, this.u, this.i, this.o));
        this.y = a11;
        this.z = bc.a(new cm(a11, this.f31101b));
        this.A = bc.a(new cm(this.f31101b, this.f31103d, (byte[]) null));
    }

    @Override // com.google.android.play.core.assetpacks.d
    public final void a(AssetPackExtractionService assetPackExtractionService) {
        assetPackExtractionService.f31077a = this.A.a();
    }

    @Override // com.google.android.play.core.assetpacks.d
    public final void a(ExtractionForegroundService extractionForegroundService) {
        extractionForegroundService.f31078a = co.a(this.f31100a);
        extractionForegroundService.f31079b = this.y.a();
    }
}
