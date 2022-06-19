package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pf0.class */
public final class pf0 {

    /* renamed from: a */
    private Context f27954a;

    /* renamed from: b */
    private AbstractC6227e f27955b;

    /* renamed from: c */
    private AbstractC5728q1 f27956c;

    /* renamed from: d */
    private lg0 f27957d;

    public /* synthetic */ pf0(qf0 qf0Var) {
    }

    /* renamed from: a */
    public final pf0 m12302a(Context context) {
        Objects.requireNonNull(context);
        this.f27954a = context;
        return this;
    }

    /* renamed from: b */
    public final pf0 m12301b(AbstractC6227e abstractC6227e) {
        Objects.requireNonNull(abstractC6227e);
        this.f27955b = abstractC6227e;
        return this;
    }

    /* renamed from: c */
    public final pf0 m12300c(AbstractC5728q1 abstractC5728q1) {
        this.f27956c = abstractC5728q1;
        return this;
    }

    /* renamed from: d */
    public final pf0 m12299d(lg0 lg0Var) {
        this.f27957d = lg0Var;
        return this;
    }

    /* renamed from: e */
    public final mg0 m12298e() {
        kj3.m13878c(this.f27954a, Context.class);
        kj3.m13878c(this.f27955b, AbstractC6227e.class);
        kj3.m13878c(this.f27956c, AbstractC5728q1.class);
        kj3.m13878c(this.f27957d, lg0.class);
        return new rf0(this.f27954a, this.f27955b, this.f27956c, this.f27957d, null);
    }
}
