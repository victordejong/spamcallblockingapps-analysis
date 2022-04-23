package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eev.class */
public final class eev {
    int e;
    private final int i;
    private final int j;
    private final int k;
    private final boolean l;
    private final efk m;
    private final efs n;

    /* renamed from: a  reason: collision with root package name */
    final Object f27747a = new Object();
    private ArrayList<String> o = new ArrayList<>();
    private ArrayList<String> p = new ArrayList<>();
    private ArrayList<efi> q = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    int f27748b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f27749c = 0;

    /* renamed from: d  reason: collision with root package name */
    int f27750d = 0;
    String f = "";
    String g = "";
    String h = "";

    public eev(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.i = i;
        this.j = i2;
        this.k = i3;
        this.l = z;
        this.m = new efk(i4);
        this.n = new efs(i5, i6, i7);
    }

    private static String a(ArrayList<String> arrayList) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i, int i2) {
        return this.l ? this.j : (i * this.i) + (i2 * this.j);
    }

    public final void a(String str, boolean z, float f, float f2, float f3, float f4) {
        b(str, z, f, f2, f3, f4);
        synchronized (this.f27747a) {
            if (this.f27750d < 0) {
                zzd.zzdz("ActivityContent: negative number of WebViews.");
            }
            b();
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f27747a) {
            z = this.f27750d == 0;
        }
        return z;
    }

    public final void b() {
        synchronized (this.f27747a) {
            int a2 = a(this.f27748b, this.f27749c);
            if (a2 > this.e) {
                this.e = a2;
                if (!zzr.zzkz().d().zzzb()) {
                    this.f = this.m.a(this.o);
                    this.g = this.m.a(this.p);
                }
                if (!zzr.zzkz().d().zzzd()) {
                    this.h = this.n.a(this.p, this.q);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.k) {
            synchronized (this.f27747a) {
                this.o.add(str);
                this.f27748b += str.length();
                if (z) {
                    this.p.add(str);
                    this.q.add(new efi(f, f2, f3, f4, this.p.size() - 1));
                }
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
        String str = ((eev) obj).f;
        return str != null && str.equals(this.f);
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    public final String toString() {
        int i = this.f27749c;
        int i2 = this.e;
        int i3 = this.f27748b;
        String a2 = a(this.o);
        String a3 = a(this.p);
        String str = this.f;
        String str2 = this.g;
        String str3 = this.h;
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 165 + String.valueOf(a3).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(a2);
        sb.append("\n viewableText");
        sb.append(a3);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
