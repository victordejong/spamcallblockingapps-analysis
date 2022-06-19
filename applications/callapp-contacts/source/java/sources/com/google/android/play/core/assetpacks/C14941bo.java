package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
/* renamed from: com.google.android.play.core.assetpacks.bo */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bo.class */
public final class C14941bo implements AbstractC15041be<C14940bn> {

    /* renamed from: a */
    private final AbstractC15041be f54545a;

    /* renamed from: b */
    private final /* synthetic */ int f54546b = 0;

    public C14941bo(AbstractC15041be<C14996w> abstractC15041be) {
        this.f54545a = abstractC15041be;
    }

    public C14941bo(AbstractC15041be<AbstractC14972cs> abstractC15041be, byte[] bArr) {
        this.f54545a = abstractC15041be;
    }

    public C14941bo(AbstractC15041be<Context> abstractC15041be, char[] cArr) {
        this.f54545a = abstractC15041be;
    }

    public C14941bo(AbstractC15041be<C14996w> abstractC15041be, short[] sArr) {
        this.f54545a = abstractC15041be;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.ad] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.bu] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.play.core.assetpacks.bn, com.google.android.play.core.assetpacks.cc] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14940bn mo9335a() {
        int i = this.f54546b;
        return i != 0 ? i != 1 ? i != 2 ? new C14956cc((C14996w) this.f54545a.mo9335a()) : new C14947bu(C14968co.m9701a(((C14968co) this.f54545a).f54641a)) : new C14903ad(C15039bc.m9573b(this.f54545a)) : new C14940bn((C14996w) this.f54545a.mo9335a());
    }
}
