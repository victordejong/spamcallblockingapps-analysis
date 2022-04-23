package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/an.class */
public final class an implements be<am> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31117a;

    /* renamed from: b  reason: collision with root package name */
    private final be f31118b;

    /* renamed from: c  reason: collision with root package name */
    private final be f31119c;

    /* renamed from: d  reason: collision with root package name */
    private final be f31120d;
    private final be e;
    private final be f;
    private final be g;
    private final be h;
    private final /* synthetic */ int i = 0;

    public an(be<bb> beVar, be<cs> beVar2, be<ak> beVar3, be<cc> beVar4, be<bn> beVar5, be<bs> beVar6, be<bw> beVar7, be<be> beVar8) {
        this.f31117a = beVar;
        this.f31118b = beVar2;
        this.f31119c = beVar3;
        this.f31120d = beVar4;
        this.e = beVar5;
        this.f = beVar6;
        this.g = beVar7;
        this.h = beVar8;
    }

    public an(be<Context> beVar, be<bb> beVar2, be<am> beVar3, be<cs> beVar4, be<ap> beVar5, be<af> beVar6, be<Executor> beVar7, be<Executor> beVar8, byte[] bArr) {
        this.f31117a = beVar;
        this.g = beVar2;
        this.h = beVar3;
        this.f31118b = beVar4;
        this.e = beVar5;
        this.f = beVar6;
        this.f31119c = beVar7;
        this.f31120d = beVar8;
    }

    /* JADX WARN: Type inference failed for: r0v53, types: [com.google.android.play.core.assetpacks.am, com.google.android.play.core.assetpacks.t] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ am a() {
        if (this.i != 0) {
            Context a2 = co.a(((co) this.f31117a).f31256a);
            Object a3 = this.g.a();
            Object a4 = this.h.a();
            ba b2 = bc.b(this.f31118b);
            Object a5 = this.e.a();
            return new t(a2, (bb) a3, (am) a4, b2, (ap) a5, (af) this.f.a(), bc.b(this.f31119c), bc.b(this.f31120d));
        }
        Object a6 = this.f31117a.a();
        return new am((bb) a6, bc.b(this.f31118b), (ak) this.f31119c.a(), (cc) this.f31120d.a(), (bn) this.e.a(), (bs) this.f.a(), (bw) this.g.a(), (be) this.h.a());
    }
}
