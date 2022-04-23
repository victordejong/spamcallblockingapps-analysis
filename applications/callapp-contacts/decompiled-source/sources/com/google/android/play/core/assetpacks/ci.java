package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.c;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.ae;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ci.class */
public final class ci implements be<ch> {

    /* renamed from: a  reason: collision with root package name */
    private final be<w> f31241a;

    /* renamed from: b  reason: collision with root package name */
    private final be<cs> f31242b;

    /* renamed from: c  reason: collision with root package name */
    private final be<t> f31243c;

    /* renamed from: d  reason: collision with root package name */
    private final be<ae> f31244d;
    private final be<bb> e;
    private final be<ap> f;
    private final be<af> g;
    private final be<Executor> h;
    private final be<c> i;

    public ci(be<w> beVar, be<cs> beVar2, be<t> beVar3, be<ae> beVar4, be<bb> beVar5, be<ap> beVar6, be<af> beVar7, be<Executor> beVar8, be<c> beVar9) {
        this.f31241a = beVar;
        this.f31242b = beVar2;
        this.f31243c = beVar3;
        this.f31244d = beVar4;
        this.e = beVar5;
        this.f = beVar6;
        this.g = beVar7;
        this.h = beVar8;
        this.i = beVar9;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ ch a() {
        w a2 = this.f31241a.a();
        ba b2 = bc.b(this.f31242b);
        t a3 = this.f31243c.a();
        ae a4 = this.f31244d.a();
        bb a5 = this.e.a();
        ap a6 = this.f.a();
        return new ch(a2, b2, a3, a4, a5, a6, this.g.a(), bc.b(this.h), this.i.a());
    }
}
