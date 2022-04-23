package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bo.class */
public final class bo implements be<bn> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31188a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f31189b = 0;

    public bo(be<w> beVar) {
        this.f31188a = beVar;
    }

    public bo(be<cs> beVar, byte[] bArr) {
        this.f31188a = beVar;
    }

    public bo(be<Context> beVar, char[] cArr) {
        this.f31188a = beVar;
    }

    public bo(be<w> beVar, short[] sArr) {
        this.f31188a = beVar;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.ad] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.bu] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.cc] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ bn a() {
        int i = this.f31189b;
        return i != 0 ? i != 1 ? i != 2 ? new cc((w) this.f31188a.a()) : new bu(co.a(((co) this.f31188a).f31256a)) : new ad(bc.b(this.f31188a)) : new bn((w) this.f31188a.a());
    }
}
