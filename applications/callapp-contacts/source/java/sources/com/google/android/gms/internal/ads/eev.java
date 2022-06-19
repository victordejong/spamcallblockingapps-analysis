package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eev.class */
public final class eev {

    /* renamed from: e */
    int f48898e;

    /* renamed from: i */
    private final int f48902i;

    /* renamed from: j */
    private final int f48903j;

    /* renamed from: k */
    private final int f48904k;

    /* renamed from: l */
    private final boolean f48905l;

    /* renamed from: m */
    private final efk f48906m;

    /* renamed from: n */
    private final efs f48907n;

    /* renamed from: a */
    final Object f48894a = new Object();

    /* renamed from: o */
    private ArrayList<String> f48908o = new ArrayList<>();

    /* renamed from: p */
    private ArrayList<String> f48909p = new ArrayList<>();

    /* renamed from: q */
    private ArrayList<efi> f48910q = new ArrayList<>();

    /* renamed from: b */
    int f48895b = 0;

    /* renamed from: c */
    int f48896c = 0;

    /* renamed from: d */
    int f48897d = 0;

    /* renamed from: f */
    String f48899f = "";

    /* renamed from: g */
    String f48900g = "";

    /* renamed from: h */
    String f48901h = "";

    public eev(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f48902i = i;
        this.f48903j = i2;
        this.f48904k = i3;
        this.f48905l = z;
        this.f48906m = new efk(i4);
        this.f48907n = new efs(i5, i6, i7);
    }

    /* renamed from: a */
    private static String m15117a(ArrayList<String> arrayList) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            sb.append(arrayList2.get(i));
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    /* renamed from: a */
    public final int m15119a(int i, int i2) {
        return this.f48905l ? this.f48903j : (i * this.f48902i) + (i2 * this.f48903j);
    }

    /* renamed from: a */
    public final void m15118a(String str, boolean z, float f, float f2, float f3, float f4) {
        m15115b(str, z, f, f2, f3, f4);
        synchronized (this.f48894a) {
            if (this.f48897d < 0) {
                zzd.zzdz("ActivityContent: negative number of WebViews.");
            }
            m15116b();
        }
    }

    /* renamed from: a */
    public final boolean m15120a() {
        boolean z;
        synchronized (this.f48894a) {
            z = this.f48897d == 0;
        }
        return z;
    }

    /* renamed from: b */
    public final void m15116b() {
        synchronized (this.f48894a) {
            int m15119a = m15119a(this.f48895b, this.f48896c);
            if (m15119a > this.f48898e) {
                this.f48898e = m15119a;
                if (!zzr.zzkz().m13975d().zzzb()) {
                    this.f48899f = this.f48906m.m15093a(this.f48908o);
                    this.f48900g = this.f48906m.m15093a(this.f48909p);
                }
                if (!zzr.zzkz().m13975d().zzzd()) {
                    this.f48901h = this.f48907n.m15083a(this.f48909p, this.f48910q);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m15115b(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.f48904k) {
            return;
        }
        synchronized (this.f48894a) {
            this.f48908o.add(str);
            this.f48895b += str.length();
            if (z) {
                this.f48909p.add(str);
                this.f48910q.add(new efi(f, f2, f3, f4, this.f48909p.size() - 1));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof eev)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((eev) obj).f48899f;
        return str != null && str.equals(this.f48899f);
    }

    public final int hashCode() {
        return this.f48899f.hashCode();
    }

    public final String toString() {
        int i = this.f48896c;
        int i2 = this.f48898e;
        int i3 = this.f48895b;
        String m15117a = m15117a(this.f48908o);
        String m15117a2 = m15117a(this.f48909p);
        String str = this.f48899f;
        String str2 = this.f48900g;
        String str3 = this.f48901h;
        StringBuilder sb = new StringBuilder(String.valueOf(m15117a).length() + 165 + String.valueOf(m15117a2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(m15117a);
        sb.append("\n viewableText");
        sb.append(m15117a2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
