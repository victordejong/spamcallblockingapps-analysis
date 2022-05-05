package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p288n.C9104h;
import p081h.p203i.p204a.p224e.p288n.C9105i;
import p081h.p203i.p204a.p224e.p288n.C9107k;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/phenotype/zzi.class */
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new C9105i();

    /* renamed from: a */
    public final String f7200a;

    /* renamed from: b */
    public final long f7201b;

    /* renamed from: c */
    public final boolean f7202c;

    /* renamed from: d */
    public final double f7203d;

    /* renamed from: e */
    public final String f7204e;

    /* renamed from: f */
    public final byte[] f7205f;

    /* renamed from: g */
    public final int f7206g;

    /* renamed from: h */
    public final int f7207h;

    static {
        new C9104h();
    }

    public zzi(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.f7200a = str;
        this.f7201b = j;
        this.f7202c = z;
        this.f7203d = d;
        this.f7204e = str2;
        this.f7205f = bArr;
        this.f7206g = i;
        this.f7207h = i2;
    }

    /* renamed from: a */
    public static int m31653a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        int compareTo = this.f7200a.compareTo(zziVar2.f7200a);
        if (compareTo != 0) {
            return compareTo;
        }
        int a = m31653a(this.f7206g, zziVar2.f7206g);
        if (a != 0) {
            return a;
        }
        int i = this.f7206g;
        if (i == 1) {
            int i2 = (this.f7201b > zziVar2.f7201b ? 1 : (this.f7201b == zziVar2.f7201b ? 0 : -1));
            if (i2 < 0) {
                return -1;
            }
            return i2 == 0 ? 0 : 1;
        } else if (i == 2) {
            boolean z = this.f7202c;
            if (z == zziVar2.f7202c) {
                return 0;
            }
            return z ? 1 : -1;
        } else if (i == 3) {
            return Double.compare(this.f7203d, zziVar2.f7203d);
        } else {
            if (i == 4) {
                String str = this.f7204e;
                String str2 = zziVar2.f7204e;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            } else if (i == 5) {
                byte[] bArr = this.f7205f;
                byte[] bArr2 = zziVar2.f7205f;
                if (bArr == bArr2) {
                    return 0;
                }
                if (bArr == null) {
                    return -1;
                }
                if (bArr2 == null) {
                    return 1;
                }
                for (int i3 = 0; i3 < Math.min(this.f7205f.length, zziVar2.f7205f.length); i3++) {
                    int i4 = this.f7205f[i3] - zziVar2.f7205f[i3];
                    if (i4 != 0) {
                        return i4;
                    }
                }
                return m31653a(this.f7205f.length, zziVar2.f7205f.length);
            } else {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i);
                throw new AssertionError(sb.toString());
            }
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof zzi)) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        if (!C9107k.m16083a(this.f7200a, zziVar.f7200a) || (i = this.f7206g) != zziVar.f7206g || this.f7207h != zziVar.f7207h) {
            return false;
        }
        if (i == 1) {
            return this.f7201b == zziVar.f7201b;
        }
        if (i == 2) {
            return this.f7202c == zziVar.f7202c;
        }
        if (i == 3) {
            return this.f7203d == zziVar.f7203d;
        }
        if (i == 4) {
            return C9107k.m16083a(this.f7204e, zziVar.f7204e);
        }
        if (i == 5) {
            return Arrays.equals(this.f7205f, zziVar.f7205f);
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("Invalid enum value: ");
        sb.append(i);
        throw new AssertionError(sb.toString());
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.f7200a);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        int i = this.f7206g;
        if (i == 1) {
            sb.append(this.f7201b);
        } else if (i == 2) {
            sb.append(this.f7202c);
        } else if (i != 3) {
            if (i == 4) {
                sb.append("'");
                str = this.f7204e;
            } else if (i != 5) {
                String str2 = this.f7200a;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str2);
                sb2.append(UserProfile.CARD_CATE_SEPARATOR);
                sb2.append(i);
                throw new AssertionError(sb2.toString());
            } else if (this.f7205f == null) {
                sb.append(C14247d.f31851f);
            } else {
                sb.append("'");
                str = Base64.encodeToString(this.f7205f, 3);
            }
            sb.append(str);
            sb.append("'");
        } else {
            sb.append(this.f7203d);
        }
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(this.f7206g);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(this.f7207h);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7200a, false);
        C7031b.m21224a(parcel, 3, this.f7201b);
        C7031b.m21212a(parcel, 4, this.f7202c);
        C7031b.m21227a(parcel, 5, this.f7203d);
        C7031b.m21215a(parcel, 6, this.f7204e, false);
        C7031b.m21211a(parcel, 7, this.f7205f, false);
        C7031b.m21225a(parcel, 8, this.f7206g);
        C7031b.m21225a(parcel, 9, this.f7207h);
        C7031b.m21229a(parcel, a);
    }
}
