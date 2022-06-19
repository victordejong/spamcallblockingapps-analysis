package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.m4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m4.class */
public final class C6725m4 {

    /* renamed from: a */
    private boolean f26414a;

    /* renamed from: b */
    public C6318b6 f26415b;

    /* renamed from: c */
    public int f26416c;

    /* renamed from: d */
    public boolean f26417d;

    /* renamed from: e */
    public int f26418e;

    /* renamed from: f */
    public boolean f26419f;

    /* renamed from: g */
    public int f26420g;

    public C6725m4(C6318b6 c6318b6) {
        this.f26415b = c6318b6;
    }

    /* renamed from: b */
    public final void m13365b(int i) {
        boolean z = true;
        if (1 != ((this.f26414a ? 1 : 0) | i)) {
            z = false;
        }
        this.f26414a = z;
        this.f26416c += i;
    }

    /* renamed from: c */
    public final void m13364c(C6318b6 c6318b6) {
        this.f26414a |= this.f26415b != c6318b6;
        this.f26415b = c6318b6;
    }

    /* renamed from: d */
    public final void m13363d(int i) {
        boolean z = true;
        if (!this.f26417d || this.f26418e == 5) {
            this.f26414a = true;
            this.f26417d = true;
            this.f26418e = i;
            return;
        }
        if (i != 5) {
            z = false;
        }
        C7173y8.m8898a(z);
    }

    /* renamed from: e */
    public final void m13362e(int i) {
        this.f26414a = true;
        this.f26419f = true;
        this.f26420g = i;
    }
}
