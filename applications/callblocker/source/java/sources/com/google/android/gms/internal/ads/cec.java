package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cec.class */
final class cec<R> implements cjn {

    /* renamed from: a */
    public final cex<R> f12812a;

    /* renamed from: b */
    public final cew f12813b;

    /* renamed from: c */
    public final dya f12814c;

    /* renamed from: d */
    public final String f12815d;

    /* renamed from: e */
    public final Executor f12816e;

    /* renamed from: f */
    public final dyk f12817f;
    @Nullable

    /* renamed from: g */
    private final cjb f12818g;

    public cec(cex<R> cexVar, cew cewVar, dya dyaVar, String str, Executor executor, dyk dykVar, @Nullable cjb cjbVar) {
        this.f12812a = cexVar;
        this.f12813b = cewVar;
        this.f12814c = dyaVar;
        this.f12815d = str;
        this.f12816e = executor;
        this.f12817f = dykVar;
        this.f12818g = cjbVar;
    }

    @Override // com.google.android.gms.internal.ads.cjn
    /* renamed from: a */
    public final Executor mo11198a() {
        return this.f12816e;
    }

    @Override // com.google.android.gms.internal.ads.cjn
    @Nullable
    /* renamed from: b */
    public final cjb mo11197b() {
        return this.f12818g;
    }

    @Override // com.google.android.gms.internal.ads.cjn
    /* renamed from: c */
    public final cjn mo11196c() {
        return new cec(this.f12812a, this.f12813b, this.f12814c, this.f12815d, this.f12816e, this.f12817f, this.f12818g);
    }
}
