package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import com.google.android.gms.common.util.AbstractC1610f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bm.class */
public final class C1666bm {

    /* renamed from: a */
    private Context f6163a;

    /* renamed from: b */
    private AbstractC1610f f6164b;

    /* renamed from: c */
    private AbstractC1409a1 f6165c;

    /* renamed from: d */
    private C2021wm f6166d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1666bm(C1650am amVar) {
    }

    /* renamed from: a */
    public final C1666bm m7962a(Context context) {
        context.getClass();
        this.f6163a = context;
        return this;
    }

    /* renamed from: b */
    public final C1666bm m7961b(AbstractC1610f fVar) {
        fVar.getClass();
        this.f6164b = fVar;
        return this;
    }

    /* renamed from: c */
    public final C1666bm m7960c(AbstractC1409a1 a1Var) {
        this.f6165c = a1Var;
        return this;
    }

    /* renamed from: d */
    public final C1666bm m7959d(C2021wm wmVar) {
        this.f6166d = wmVar;
        return this;
    }

    /* renamed from: e */
    public final AbstractC2037xm m7958e() {
        jh2.m6969c(this.f6163a, Context.class);
        jh2.m6969c(this.f6164b, AbstractC1610f.class);
        jh2.m6969c(this.f6165c, AbstractC1409a1.class);
        jh2.m6969c(this.f6166d, C2021wm.class);
        return new dm(this.f6163a, this.f6164b, this.f6165c, this.f6166d, (C1650am) null);
    }
}
