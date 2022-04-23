package com.google.android.gms.internal.clearcut;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgy.class */
public final class zzgy extends zzfu<zzgy> implements Cloneable {

    /* renamed from: c */
    public String[] f29292c;

    /* renamed from: d */
    public String[] f29293d;

    /* renamed from: e */
    public int[] f29294e = zzgb.f29287a;

    /* renamed from: f */
    public long[] f29295f;

    /* renamed from: g */
    public long[] f29296g;

    public zzgy() {
        String[] strArr = zzgb.f29289c;
        this.f29292c = strArr;
        this.f29293d = strArr;
        long[] jArr = zzgb.f29288b;
        this.f29295f = jArr;
        this.f29296g = jArr;
        this.f29280b = null;
        this.f29286a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: a */
    public final void mo10563a(zzfs zzfsVar) throws IOException {
        String[] strArr = this.f29292c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f29292c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    zzfsVar.m10651a(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.f29293d;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.f29293d;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    zzfsVar.m10651a(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.f29294e;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f29294e;
                if (i4 >= iArr2.length) {
                    break;
                }
                zzfsVar.m10641b(3, iArr2[i4]);
                i4++;
            }
        }
        long[] jArr = this.f29295f;
        if (jArr != null && jArr.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr2 = this.f29295f;
                if (i5 >= jArr2.length) {
                    break;
                }
                zzfsVar.m10654a(4, jArr2[i5]);
                i5++;
            }
        }
        long[] jArr3 = this.f29296g;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.f29296g;
                if (i >= jArr4.length) {
                    break;
                }
                zzfsVar.m10654a(5, jArr4[i]);
                i++;
            }
        }
        super.mo10563a(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: e */
    public final int mo10562e() {
        long[] jArr;
        long[] jArr2;
        int[] iArr;
        int e = super.mo10562e();
        String[] strArr = this.f29292c;
        int i = 0;
        int i2 = e;
        if (strArr != null) {
            i2 = e;
            if (strArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    String[] strArr2 = this.f29292c;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i3];
                    i4 = i4;
                    i5 = i5;
                    if (str != null) {
                        i5++;
                        i4 += zzfs.m10645a(str);
                    }
                    i3++;
                }
                i2 = e + i4 + (i5 * 1);
            }
        }
        String[] strArr3 = this.f29293d;
        int i6 = i2;
        if (strArr3 != null) {
            i6 = i2;
            if (strArr3.length > 0) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    String[] strArr4 = this.f29293d;
                    if (i7 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i7];
                    i8 = i8;
                    i9 = i9;
                    if (str2 != null) {
                        i9++;
                        i8 += zzfs.m10645a(str2);
                    }
                    i7++;
                }
                i6 = i2 + i8 + (i9 * 1);
            }
        }
        int[] iArr2 = this.f29294e;
        int i10 = i6;
        if (iArr2 != null) {
            i10 = i6;
            if (iArr2.length > 0) {
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    iArr = this.f29294e;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    i12 += zzfs.m10632d(iArr[i11]);
                    i11++;
                }
                i10 = i6 + i12 + (iArr.length * 1);
            }
        }
        long[] jArr3 = this.f29295f;
        int i13 = i10;
        if (jArr3 != null) {
            i13 = i10;
            if (jArr3.length > 0) {
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    jArr2 = this.f29295f;
                    if (i14 >= jArr2.length) {
                        break;
                    }
                    i15 += zzfs.m10633c(jArr2[i14]);
                    i14++;
                }
                i13 = i10 + i15 + (jArr2.length * 1);
            }
        }
        long[] jArr4 = this.f29296g;
        int i16 = i13;
        if (jArr4 != null) {
            i16 = i13;
            if (jArr4.length > 0) {
                int i17 = 0;
                while (true) {
                    jArr = this.f29296g;
                    if (i >= jArr.length) {
                        break;
                    }
                    i17 += zzfs.m10633c(jArr[i]);
                    i++;
                }
                i16 = i13 + i17 + (jArr.length * 1);
            }
        }
        return i16;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgy)) {
            return false;
        }
        zzgy zzgyVar = (zzgy) obj;
        if (!zzfy.m10621a(this.f29292c, zzgyVar.f29292c) || !zzfy.m10621a(this.f29293d, zzgyVar.f29293d) || !zzfy.m10625a(this.f29294e, zzgyVar.f29294e) || !zzfy.m10623a(this.f29295f, zzgyVar.f29295f) || !zzfy.m10623a(this.f29296g, zzgyVar.f29296g)) {
            return false;
        }
        zzfw zzfwVar = this.f29280b;
        if (zzfwVar != null && !zzfwVar.m10629c()) {
            return this.f29280b.equals(zzgyVar.f29280b);
        }
        zzfw zzfwVar2 = zzgyVar.f29280b;
        return zzfwVar2 == null || zzfwVar2.m10629c();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: g */
    public final /* synthetic */ zzfz mo10561g() throws CloneNotSupportedException {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* renamed from: h */
    public final /* synthetic */ zzgy mo10560h() throws CloneNotSupportedException {
        return (zzgy) clone();
    }

    public final int hashCode() {
        int hashCode = zzgy.class.getName().hashCode();
        int a = zzfy.m10622a(this.f29292c);
        int a2 = zzfy.m10622a(this.f29293d);
        int a3 = zzfy.m10626a(this.f29294e);
        int a4 = zzfy.m10624a(this.f29295f);
        int a5 = zzfy.m10624a(this.f29296g);
        zzfw zzfwVar = this.f29280b;
        return ((((((((((((hashCode + 527) * 31) + a) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + a5) * 31) + ((zzfwVar == null || zzfwVar.m10629c()) ? 0 : this.f29280b.hashCode());
    }

    /* renamed from: j */
    public final zzgy clone() {
        try {
            zzgy zzgyVar = (zzgy) super.clone();
            String[] strArr = this.f29292c;
            if (strArr != null && strArr.length > 0) {
                zzgyVar.f29292c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.f29293d;
            if (strArr2 != null && strArr2.length > 0) {
                zzgyVar.f29293d = (String[]) strArr2.clone();
            }
            int[] iArr = this.f29294e;
            if (iArr != null && iArr.length > 0) {
                zzgyVar.f29294e = (int[]) iArr.clone();
            }
            long[] jArr = this.f29295f;
            if (jArr != null && jArr.length > 0) {
                zzgyVar.f29295f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.f29296g;
            if (jArr2 != null && jArr2.length > 0) {
                zzgyVar.f29296g = (long[]) jArr2.clone();
            }
            return zzgyVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
