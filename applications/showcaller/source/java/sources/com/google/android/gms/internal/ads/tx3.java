package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tx3.class */
public final class tx3 {

    /* renamed from: a */
    private final String f30414a;

    /* renamed from: b */
    private final int f30415b;

    /* renamed from: c */
    private final int f30416c;

    /* renamed from: d */
    private int f30417d;

    /* renamed from: e */
    private String f30418e;

    public tx3(int i, int i2, int i3) {
        String str;
        if (i != Integer.MIN_VALUE) {
            StringBuilder sb = new StringBuilder(12);
            sb.append(i);
            sb.append("/");
            str = sb.toString();
        } else {
            str = "";
        }
        this.f30414a = str;
        this.f30415b = i2;
        this.f30416c = i3;
        this.f30417d = Integer.MIN_VALUE;
        this.f30418e = "";
    }

    /* renamed from: d */
    private final void m10472d() {
        if (this.f30417d != Integer.MIN_VALUE) {
            return;
        }
        throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
    }

    /* renamed from: a */
    public final void m10475a() {
        int i = this.f30417d;
        int i2 = i == Integer.MIN_VALUE ? this.f30415b : i + this.f30416c;
        this.f30417d = i2;
        String str = this.f30414a;
        StringBuilder sb = new StringBuilder(str.length() + 11);
        sb.append(str);
        sb.append(i2);
        this.f30418e = sb.toString();
    }

    /* renamed from: b */
    public final int m10474b() {
        m10472d();
        return this.f30417d;
    }

    /* renamed from: c */
    public final String m10473c() {
        m10472d();
        return this.f30418e;
    }
}
