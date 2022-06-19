package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.fk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fk.class */
public final class C6481fk {

    /* renamed from: a */
    private final int f22914a;

    /* renamed from: b */
    private final int f22915b;

    /* renamed from: c */
    private final int f22916c;

    /* renamed from: d */
    private final boolean f22917d;

    /* renamed from: e */
    private final C7074vk f22918e;

    /* renamed from: f */
    private final C6407dl f22919f;

    /* renamed from: n */
    private int f22927n;

    /* renamed from: g */
    private final Object f22920g = new Object();

    /* renamed from: h */
    private final ArrayList<String> f22921h = new ArrayList<>();

    /* renamed from: i */
    private final ArrayList<String> f22922i = new ArrayList<>();

    /* renamed from: j */
    private final ArrayList<C6926rk> f22923j = new ArrayList<>();

    /* renamed from: k */
    private int f22924k = 0;

    /* renamed from: l */
    private int f22925l = 0;

    /* renamed from: m */
    private int f22926m = 0;

    /* renamed from: o */
    private String f22928o = "";

    /* renamed from: p */
    private String f22929p = "";

    /* renamed from: q */
    private String f22930q = "";

    public C6481fk(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f22914a = i;
        this.f22915b = i2;
        this.f22916c = i3;
        this.f22917d = z;
        this.f22918e = new C7074vk(i4);
        this.f22919f = new C6407dl(i5, i6, i7);
    }

    /* renamed from: p */
    private final void m15162p(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.f22916c) {
            return;
        }
        synchronized (this.f22920g) {
            this.f22921h.add(str);
            this.f22924k += str.length();
            if (z) {
                this.f22922i.add(str);
                this.f22923j.add(new C6926rk(f, f2, f3, f4, this.f22922i.size() - 1));
            }
        }
    }

    /* renamed from: q */
    private static final String m15161q(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            sb.append(arrayList.get(i2));
            sb.append(' ');
            i2++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    /* renamed from: a */
    public final boolean m15177a() {
        boolean z;
        synchronized (this.f22920g) {
            z = this.f22926m == 0;
        }
        return z;
    }

    /* renamed from: b */
    public final String m15176b() {
        return this.f22928o;
    }

    /* renamed from: c */
    public final String m15175c() {
        return this.f22929p;
    }

    /* renamed from: d */
    public final String m15174d() {
        return this.f22930q;
    }

    /* renamed from: e */
    public final void m15173e() {
        synchronized (this.f22920g) {
            this.f22927n -= 100;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C6481fk)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((C6481fk) obj).f22928o;
        return str != null && str.equals(this.f22928o);
    }

    /* renamed from: f */
    public final void m15172f() {
        synchronized (this.f22920g) {
            this.f22926m--;
        }
    }

    /* renamed from: g */
    public final void m15171g() {
        synchronized (this.f22920g) {
            this.f22926m++;
        }
    }

    /* renamed from: h */
    public final void m15170h(String str, boolean z, float f, float f2, float f3, float f4) {
        m15162p(str, z, f, f2, f3, f4);
        synchronized (this.f22920g) {
            if (this.f22926m < 0) {
                ei0.m15469a("ActivityContent: negative number of WebViews.");
            }
            m15167k();
        }
    }

    public final int hashCode() {
        return this.f22928o.hashCode();
    }

    /* renamed from: i */
    public final void m15169i(String str, boolean z, float f, float f2, float f3, float f4) {
        m15162p(str, z, f, f2, f3, f4);
    }

    /* renamed from: j */
    public final void m15168j() {
        synchronized (this.f22920g) {
            int m15166l = m15166l(this.f22924k, this.f22925l);
            if (m15166l > this.f22927n) {
                this.f22927n = m15166l;
            }
        }
    }

    /* renamed from: k */
    public final void m15167k() {
        synchronized (this.f22920g) {
            int m15166l = m15166l(this.f22924k, this.f22925l);
            if (m15166l > this.f22927n) {
                this.f22927n = m15166l;
                if (!C5667s.m18156h().m12230p().mo17959e()) {
                    this.f22928o = this.f22918e.m9954a(this.f22921h);
                    this.f22929p = this.f22918e.m9954a(this.f22922i);
                }
                if (!C5667s.m18156h().m12230p().mo17958f()) {
                    this.f22930q = this.f22919f.m15775a(this.f22922i, this.f22923j);
                }
            }
        }
    }

    /* renamed from: l */
    final int m15166l(int i, int i2) {
        return this.f22917d ? this.f22915b : (i * this.f22914a) + (i2 * this.f22915b);
    }

    /* renamed from: m */
    public final int m15165m() {
        return this.f22927n;
    }

    /* renamed from: n */
    public final void m15164n(int i) {
        this.f22925l = i;
    }

    /* renamed from: o */
    public final int m15163o() {
        return this.f22924k;
    }

    public final String toString() {
        int i = this.f22925l;
        int i2 = this.f22927n;
        int i3 = this.f22924k;
        String m15161q = m15161q(this.f22921h, 100);
        String m15161q2 = m15161q(this.f22922i, 100);
        String str = this.f22928o;
        String str2 = this.f22929p;
        String str3 = this.f22930q;
        StringBuilder sb = new StringBuilder(String.valueOf(m15161q).length() + 165 + String.valueOf(m15161q2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(m15161q);
        sb.append("\n viewableText");
        sb.append(m15161q2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
