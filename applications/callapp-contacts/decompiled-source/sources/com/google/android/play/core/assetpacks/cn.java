package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cn.class */
public final class cn implements be<cs> {

    /* renamed from: a  reason: collision with root package name */
    private final be<Context> f31253a;

    /* renamed from: b  reason: collision with root package name */
    private final be<p> f31254b;

    /* renamed from: c  reason: collision with root package name */
    private final be<bi> f31255c;

    public cn(be<Context> beVar, be<p> beVar2, be<bi> beVar3) {
        this.f31253a = beVar;
        this.f31254b = beVar2;
        this.f31255c = beVar3;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ cs a() {
        cs csVar = (cs) (ck.a(co.a(((co) this.f31253a).f31256a)) == null ? bc.b(this.f31254b).a() : bc.b(this.f31255c).a());
        ah.a(csVar);
        return csVar;
    }
}
