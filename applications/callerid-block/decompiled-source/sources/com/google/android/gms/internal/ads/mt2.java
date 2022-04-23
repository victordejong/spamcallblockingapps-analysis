package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mt2.class */
public final class mt2 {

    /* renamed from: a */
    private final int f7643a;

    /* renamed from: b */
    private final int f7644b;

    /* renamed from: c */
    private final int f7645c;

    /* renamed from: d */
    private final boolean f7646d;

    /* renamed from: e */
    private final cu2 f7647e;

    /* renamed from: f */
    private final ku2 f7648f;

    /* renamed from: n */
    private int f7656n;

    /* renamed from: g */
    private final Object f7649g = new Object();

    /* renamed from: h */
    private final ArrayList<String> f7650h = new ArrayList<>();

    /* renamed from: i */
    private final ArrayList<String> f7651i = new ArrayList<>();

    /* renamed from: j */
    private final ArrayList<yt2> f7652j = new ArrayList<>();

    /* renamed from: k */
    private int f7653k = 0;

    /* renamed from: l */
    private int f7654l = 0;

    /* renamed from: m */
    private int f7655m = 0;

    /* renamed from: o */
    private String f7657o = "";

    /* renamed from: p */
    private String f7658p = "";

    /* renamed from: q */
    private String f7659q = "";

    public mt2(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f7643a = i;
        this.f7644b = i2;
        this.f7645c = i3;
        this.f7646d = z;
        this.f7647e = new cu2(i4);
        this.f7648f = new ku2(i5, i6, i7);
    }

    /* renamed from: p */
    private final void m6479p(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.f7645c) {
            synchronized (this.f7649g) {
                this.f7650h.add(str);
                this.f7653k += str.length();
                if (z) {
                    this.f7651i.add(str);
                    this.f7652j.add(new yt2(f, f2, f3, f4, this.f7651i.size() - 1));
                }
            }
        }
    }

    /* renamed from: q */
    private static final String m6478q(ArrayList<String> arrayList, int i) {
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
    public final boolean m6494a() {
        boolean z;
        synchronized (this.f7649g) {
            z = this.f7655m == 0;
        }
        return z;
    }

    /* renamed from: b */
    public final String m6493b() {
        return this.f7657o;
    }

    /* renamed from: c */
    public final String m6492c() {
        return this.f7658p;
    }

    /* renamed from: d */
    public final String m6491d() {
        return this.f7659q;
    }

    /* renamed from: e */
    public final void m6490e() {
        synchronized (this.f7649g) {
            this.f7656n -= 100;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof mt2)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((mt2) obj).f7657o;
        return str != null && str.equals(this.f7657o);
    }

    /* renamed from: f */
    public final void m6489f() {
        synchronized (this.f7649g) {
            this.f7655m--;
        }
    }

    /* renamed from: g */
    public final void m6488g() {
        synchronized (this.f7649g) {
            this.f7655m++;
        }
    }

    /* renamed from: h */
    public final void m6487h(String str, boolean z, float f, float f2, float f3, float f4) {
        m6479p(str, z, f, f2, f3, f4);
        synchronized (this.f7649g) {
            if (this.f7655m < 0) {
                C1894po.m6185a("ActivityContent: negative number of WebViews.");
            }
            m6484k();
        }
    }

    public final int hashCode() {
        return this.f7657o.hashCode();
    }

    /* renamed from: i */
    public final void m6486i(String str, boolean z, float f, float f2, float f3, float f4) {
        m6479p(str, z, f, f2, f3, f4);
    }

    /* renamed from: j */
    public final void m6485j() {
        synchronized (this.f7649g) {
            int l = m6483l(this.f7653k, this.f7654l);
            if (l > this.f7656n) {
                this.f7656n = l;
            }
        }
    }

    /* renamed from: k */
    public final void m6484k() {
        synchronized (this.f7649g) {
            int l = m6483l(this.f7653k, this.f7654l);
            if (l > this.f7656n) {
                this.f7656n = l;
                if (!C1407r.m8916h().m4585l().m8874f()) {
                    this.f7657o = this.f7647e.m7779a(this.f7650h);
                    this.f7658p = this.f7647e.m7779a(this.f7651i);
                }
                if (!C1407r.m8916h().m4585l().m8876e()) {
                    this.f7659q = this.f7648f.m6749a(this.f7651i, this.f7652j);
                }
            }
        }
    }

    /* renamed from: l */
    final int m6483l(int i, int i2) {
        return this.f7646d ? this.f7644b : (i * this.f7643a) + (i2 * this.f7644b);
    }

    /* renamed from: m */
    public final int m6482m() {
        return this.f7656n;
    }

    /* renamed from: n */
    public final void m6481n(int i) {
        this.f7654l = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public final int m6480o() {
        return this.f7653k;
    }

    public final String toString() {
        int i = this.f7654l;
        int i2 = this.f7656n;
        int i3 = this.f7653k;
        String q = m6478q(this.f7650h, 100);
        String q2 = m6478q(this.f7651i, 100);
        String str = this.f7657o;
        String str2 = this.f7658p;
        String str3 = this.f7659q;
        StringBuilder sb = new StringBuilder(String.valueOf(q).length() + 165 + String.valueOf(q2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(q);
        sb.append("\n viewableText");
        sb.append(q2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
