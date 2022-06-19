package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cr0.class */
final class cr0 implements yd2 {

    /* renamed from: a */
    private final fs0 f21359a;

    /* renamed from: b */
    private Context f21360b;

    /* renamed from: c */
    private String f21361c;

    public /* synthetic */ cr0(fs0 fs0Var, wr0 wr0Var) {
        this.f21359a = fs0Var;
    }

    @Override // com.google.android.gms.internal.ads.yd2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ yd2 mo8844a(Context context) {
        Objects.requireNonNull(context);
        this.f21360b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.yd2
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ yd2 mo8843r(String str) {
        Objects.requireNonNull(str);
        this.f21361c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.yd2
    public final zd2 zza() {
        kj3.m13878c(this.f21360b, Context.class);
        kj3.m13878c(this.f21361c, String.class);
        return new dr0(this.f21359a, this.f21360b, this.f21361c, null);
    }
}
