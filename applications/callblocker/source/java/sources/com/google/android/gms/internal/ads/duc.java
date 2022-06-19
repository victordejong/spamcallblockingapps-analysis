package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duc.class */
public final class duc {

    /* renamed from: a */
    private final int f15756a;

    /* renamed from: b */
    private final int f15757b;

    /* renamed from: c */
    private final int f15758c;

    /* renamed from: d */
    private final boolean f15759d;

    /* renamed from: e */
    private final dur f15760e;

    /* renamed from: f */
    private final duy f15761f;

    /* renamed from: n */
    private int f15769n;

    /* renamed from: g */
    private final Object f15762g = new Object();

    /* renamed from: h */
    private ArrayList<String> f15763h = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<String> f15764i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<dup> f15765j = new ArrayList<>();

    /* renamed from: k */
    private int f15766k = 0;

    /* renamed from: l */
    private int f15767l = 0;

    /* renamed from: m */
    private int f15768m = 0;

    /* renamed from: o */
    private String f15770o = "";

    /* renamed from: p */
    private String f15771p = "";

    /* renamed from: q */
    private String f15772q = "";

    public duc(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f15756a = i;
        this.f15757b = i2;
        this.f15758c = i3;
        this.f15759d = z;
        this.f15760e = new dur(i4);
        this.f15761f = new duy(i5, i6, i7);
    }

    /* renamed from: a */
    private final int m8583a(int i, int i2) {
        return this.f15759d ? this.f15757b : (this.f15756a * i) + (this.f15757b * i2);
    }

    /* renamed from: a */
    private static String m8581a(ArrayList<String> arrayList, int i) {
        String str;
        if (arrayList.isEmpty()) {
            str = "";
        } else {
            StringBuilder sb = new StringBuilder();
            ArrayList<String> arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                i2++;
                sb.append(arrayList2.get(i2));
                sb.append(' ');
                if (sb.length() > 100) {
                    break;
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            String sb2 = sb.toString();
            str = sb2;
            if (sb2.length() >= 100) {
                str = sb2.substring(0, 100);
            }
        }
        return str;
    }

    /* renamed from: c */
    private final void m8577c(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.f15758c) {
            return;
        }
        synchronized (this.f15762g) {
            this.f15763h.add(str);
            this.f15766k += str.length();
            if (z) {
                this.f15764i.add(str);
                this.f15765j.add(new dup(f, f2, f3, f4, this.f15764i.size() - 1));
            }
        }
    }

    /* renamed from: a */
    public final void m8584a(int i) {
        this.f15767l = i;
    }

    /* renamed from: a */
    public final void m8582a(String str, boolean z, float f, float f2, float f3, float f4) {
        m8577c(str, z, f, f2, f3, f4);
        synchronized (this.f15762g) {
            if (this.f15768m < 0) {
                C3556uu.m6751b("ActivityContent: negative number of WebViews.");
            }
            m8571i();
        }
    }

    /* renamed from: a */
    public final boolean m8585a() {
        boolean z;
        synchronized (this.f15762g) {
            z = this.f15768m == 0;
        }
        return z;
    }

    /* renamed from: b */
    public final String m8580b() {
        return this.f15770o;
    }

    /* renamed from: b */
    public final void m8579b(String str, boolean z, float f, float f2, float f3, float f4) {
        m8577c(str, z, f, f2, f3, f4);
    }

    /* renamed from: c */
    public final String m8578c() {
        return this.f15771p;
    }

    /* renamed from: d */
    public final String m8576d() {
        return this.f15772q;
    }

    /* renamed from: e */
    public final void m8575e() {
        synchronized (this.f15762g) {
            this.f15769n -= 100;
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof duc)) {
            z = false;
        } else if (obj == this) {
            z = true;
        } else {
            duc ducVar = (duc) obj;
            z = false;
            if (ducVar.f15770o != null) {
                z = false;
                if (ducVar.f15770o.equals(this.f15770o)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final void m8574f() {
        synchronized (this.f15762g) {
            this.f15768m--;
        }
    }

    /* renamed from: g */
    public final void m8573g() {
        synchronized (this.f15762g) {
            this.f15768m++;
        }
    }

    /* renamed from: h */
    public final void m8572h() {
        synchronized (this.f15762g) {
            int m8583a = m8583a(this.f15766k, this.f15767l);
            if (m8583a > this.f15769n) {
                this.f15769n = m8583a;
            }
        }
    }

    public final int hashCode() {
        return this.f15770o.hashCode();
    }

    /* renamed from: i */
    public final void m8571i() {
        synchronized (this.f15762g) {
            int m8583a = m8583a(this.f15766k, this.f15767l);
            if (m8583a > this.f15769n) {
                this.f15769n = m8583a;
                if (!C2341q.m14740g().m7084h().mo7032b()) {
                    this.f15770o = this.f15760e.m8531a(this.f15763h);
                    this.f15771p = this.f15760e.m8531a(this.f15764i);
                }
                if (!C2341q.m14740g().m7084h().mo7024d()) {
                    this.f15772q = this.f15761f.m8519a(this.f15764i, this.f15765j);
                }
            }
        }
    }

    /* renamed from: j */
    public final int m8570j() {
        return this.f15769n;
    }

    /* renamed from: k */
    public final int m8569k() {
        return this.f15766k;
    }

    public final String toString() {
        int i = this.f15767l;
        int i2 = this.f15769n;
        int i3 = this.f15766k;
        String m8581a = m8581a(this.f15763h, 100);
        String m8581a2 = m8581a(this.f15764i, 100);
        String str = this.f15770o;
        String str2 = this.f15771p;
        String str3 = this.f15772q;
        return new StringBuilder(String.valueOf(m8581a).length() + 165 + String.valueOf(m8581a2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append("ActivityContent fetchId: ").append(i).append(" score:").append(i2).append(" total_length:").append(i3).append("\n text: ").append(m8581a).append("\n viewableText").append(m8581a2).append("\n signture: ").append(str).append("\n viewableSignture: ").append(str2).append("\n viewableSignatureForVertical: ").append(str3).toString();
    }
}
