package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.dc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dc.class */
public final class C6398dc implements AbstractC7171y6 {

    /* renamed from: b */
    private AbstractC6816ol f21576b;

    /* renamed from: c */
    private String f21577c;

    /* renamed from: f */
    private boolean f21580f;

    /* renamed from: a */
    private final C6776ni f21575a = new C6776ni();

    /* renamed from: d */
    private int f21578d = 8000;

    /* renamed from: e */
    private int f21579e = 8000;

    /* renamed from: a */
    public final C6398dc m15839a(String str) {
        this.f21577c = str;
        return this;
    }

    /* renamed from: b */
    public final C6398dc m15838b(int i) {
        this.f21578d = i;
        return this;
    }

    /* renamed from: c */
    public final C6398dc m15837c(int i) {
        this.f21579e = i;
        return this;
    }

    /* renamed from: d */
    public final C6398dc m15836d(boolean z) {
        this.f21580f = true;
        return this;
    }

    /* renamed from: e */
    public final C6398dc m15835e(AbstractC6816ol abstractC6816ol) {
        this.f21576b = abstractC6816ol;
        return this;
    }

    /* renamed from: f */
    public final C7215zd zza() {
        C7215zd c7215zd = new C7215zd(this.f21577c, this.f21578d, this.f21579e, this.f21580f, this.f21575a, null, false, null);
        AbstractC6816ol abstractC6816ol = this.f21576b;
        if (abstractC6816ol != null) {
            c7215zd.mo8765f(abstractC6816ol);
        }
        return c7215zd;
    }
}
