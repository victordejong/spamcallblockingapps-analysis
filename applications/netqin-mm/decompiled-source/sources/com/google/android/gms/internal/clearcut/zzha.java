package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzge;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzha.class */
public final class zzha extends zzfu<zzha> implements Cloneable {

    /* renamed from: i */
    public byte[] f29306i;

    /* renamed from: k */
    public byte[] f29308k;

    /* renamed from: r */
    public byte[] f29315r;

    /* renamed from: c */
    public long f29300c = 0;

    /* renamed from: d */
    public long f29301d = 0;

    /* renamed from: e */
    public String f29302e = "";

    /* renamed from: f */
    public int f29303f = 0;

    /* renamed from: g */
    public String f29304g = "";

    /* renamed from: h */
    public zzhb[] f29305h = zzhb.m10558k();

    /* renamed from: j */
    public zzge.zzd f29307j = null;

    /* renamed from: l */
    public String f29309l = "";

    /* renamed from: m */
    public String f29310m = "";

    /* renamed from: n */
    public zzgy f29311n = null;

    /* renamed from: o */
    public String f29312o = "";

    /* renamed from: p */
    public long f29313p = 180000;

    /* renamed from: q */
    public zzgz f29314q = null;

    /* renamed from: s */
    public String f29316s = "";

    /* renamed from: t */
    public int[] f29317t = zzgb.f29287a;

    /* renamed from: u */
    public zzge.zzs f29318u = null;

    /* renamed from: v */
    public boolean f29319v = false;

    public zzha() {
        byte[] bArr = zzgb.f29291e;
        this.f29306i = bArr;
        this.f29308k = bArr;
        this.f29315r = bArr;
        this.f29280b = null;
        this.f29286a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: a */
    public final void mo10563a(zzfs zzfsVar) throws IOException {
        long j = this.f29300c;
        if (j != 0) {
            zzfsVar.m10654a(1, j);
        }
        String str = this.f29302e;
        if (str != null && !str.equals("")) {
            zzfsVar.m10651a(2, this.f29302e);
        }
        zzhb[] zzhbVarArr = this.f29305h;
        int i = 0;
        if (zzhbVarArr != null && zzhbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzhb[] zzhbVarArr2 = this.f29305h;
                if (i2 >= zzhbVarArr2.length) {
                    break;
                }
                zzhb zzhbVar = zzhbVarArr2[i2];
                if (zzhbVar != null) {
                    zzfsVar.m10652a(3, zzhbVar);
                }
                i2++;
            }
        }
        if (!Arrays.equals(this.f29306i, zzgb.f29291e)) {
            zzfsVar.m10649a(4, this.f29306i);
        }
        if (!Arrays.equals(this.f29308k, zzgb.f29291e)) {
            zzfsVar.m10649a(6, this.f29308k);
        }
        zzgy zzgyVar = this.f29311n;
        if (zzgyVar != null) {
            zzfsVar.m10652a(7, zzgyVar);
        }
        String str2 = this.f29309l;
        if (str2 != null && !str2.equals("")) {
            zzfsVar.m10651a(8, this.f29309l);
        }
        zzge.zzd zzdVar = this.f29307j;
        if (zzdVar != null) {
            zzfsVar.m10653a(9, zzdVar);
        }
        int i3 = this.f29303f;
        if (i3 != 0) {
            zzfsVar.m10641b(11, i3);
        }
        String str3 = this.f29310m;
        if (str3 != null && !str3.equals("")) {
            zzfsVar.m10651a(13, this.f29310m);
        }
        String str4 = this.f29312o;
        if (str4 != null && !str4.equals("")) {
            zzfsVar.m10651a(14, this.f29312o);
        }
        long j2 = this.f29313p;
        if (j2 != 180000) {
            zzfsVar.m10655a(15, 0);
            zzfsVar.m10648a(zzfs.m10636b(j2));
        }
        zzgz zzgzVar = this.f29314q;
        if (zzgzVar != null) {
            zzfsVar.m10652a(16, zzgzVar);
        }
        long j3 = this.f29301d;
        if (j3 != 0) {
            zzfsVar.m10654a(17, j3);
        }
        if (!Arrays.equals(this.f29315r, zzgb.f29291e)) {
            zzfsVar.m10649a(18, this.f29315r);
        }
        int[] iArr = this.f29317t;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.f29317t;
                if (i >= iArr2.length) {
                    break;
                }
                zzfsVar.m10641b(20, iArr2[i]);
                i++;
            }
        }
        zzge.zzs zzsVar = this.f29318u;
        if (zzsVar != null) {
            zzfsVar.m10653a(23, zzsVar);
        }
        String str5 = this.f29316s;
        if (str5 != null && !str5.equals("")) {
            zzfsVar.m10651a(24, this.f29316s);
        }
        boolean z = this.f29319v;
        if (z) {
            zzfsVar.m10650a(25, z);
        }
        String str6 = this.f29304g;
        if (str6 != null && !str6.equals("")) {
            zzfsVar.m10651a(26, this.f29304g);
        }
        super.mo10563a(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: e */
    public final int mo10562e() {
        int[] iArr;
        int e = super.mo10562e();
        long j = this.f29300c;
        int i = e;
        if (j != 0) {
            i = e + zzfs.m10640b(1, j);
        }
        String str = this.f29302e;
        int i2 = i;
        if (str != null) {
            i2 = i;
            if (!str.equals("")) {
                i2 = i + zzfs.m10638b(2, this.f29302e);
            }
        }
        zzhb[] zzhbVarArr = this.f29305h;
        int i3 = 0;
        int i4 = i2;
        if (zzhbVarArr != null) {
            i4 = i2;
            if (zzhbVarArr.length > 0) {
                int i5 = 0;
                while (true) {
                    zzhb[] zzhbVarArr2 = this.f29305h;
                    i4 = i2;
                    if (i5 >= zzhbVarArr2.length) {
                        break;
                    }
                    zzhb zzhbVar = zzhbVarArr2[i5];
                    i2 = i2;
                    if (zzhbVar != null) {
                        i2 += zzfs.m10639b(3, zzhbVar);
                    }
                    i5++;
                }
            }
        }
        int i6 = i4;
        if (!Arrays.equals(this.f29306i, zzgb.f29291e)) {
            i6 = i4 + zzfs.m10637b(4, this.f29306i);
        }
        int i7 = i6;
        if (!Arrays.equals(this.f29308k, zzgb.f29291e)) {
            i7 = i6 + zzfs.m10637b(6, this.f29308k);
        }
        zzgy zzgyVar = this.f29311n;
        int i8 = i7;
        if (zzgyVar != null) {
            i8 = i7 + zzfs.m10639b(7, zzgyVar);
        }
        String str2 = this.f29309l;
        int i9 = i8;
        if (str2 != null) {
            i9 = i8;
            if (!str2.equals("")) {
                i9 = i8 + zzfs.m10638b(8, this.f29309l);
            }
        }
        zzge.zzd zzdVar = this.f29307j;
        int i10 = i9;
        if (zzdVar != null) {
            i10 = i9 + zzbn.m10801c(9, zzdVar);
        }
        int i11 = this.f29303f;
        int i12 = i10;
        if (i11 != 0) {
            i12 = i10 + zzfs.m10634c(11) + zzfs.m10632d(i11);
        }
        String str3 = this.f29310m;
        int i13 = i12;
        if (str3 != null) {
            i13 = i12;
            if (!str3.equals("")) {
                i13 = i12 + zzfs.m10638b(13, this.f29310m);
            }
        }
        String str4 = this.f29312o;
        int i14 = i13;
        if (str4 != null) {
            i14 = i13;
            if (!str4.equals("")) {
                i14 = i13 + zzfs.m10638b(14, this.f29312o);
            }
        }
        long j2 = this.f29313p;
        int i15 = i14;
        if (j2 != 180000) {
            i15 = i14 + zzfs.m10634c(15) + zzfs.m10633c(zzfs.m10636b(j2));
        }
        zzgz zzgzVar = this.f29314q;
        int i16 = i15;
        if (zzgzVar != null) {
            i16 = i15 + zzfs.m10639b(16, zzgzVar);
        }
        long j3 = this.f29301d;
        int i17 = i16;
        if (j3 != 0) {
            i17 = i16 + zzfs.m10640b(17, j3);
        }
        int i18 = i17;
        if (!Arrays.equals(this.f29315r, zzgb.f29291e)) {
            i18 = i17 + zzfs.m10637b(18, this.f29315r);
        }
        int[] iArr2 = this.f29317t;
        int i19 = i18;
        if (iArr2 != null) {
            i19 = i18;
            if (iArr2.length > 0) {
                int i20 = 0;
                while (true) {
                    iArr = this.f29317t;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    i20 += zzfs.m10632d(iArr[i3]);
                    i3++;
                }
                i19 = i18 + i20 + (iArr.length * 2);
            }
        }
        zzge.zzs zzsVar = this.f29318u;
        int i21 = i19;
        if (zzsVar != null) {
            i21 = i19 + zzbn.m10801c(23, zzsVar);
        }
        String str5 = this.f29316s;
        int i22 = i21;
        if (str5 != null) {
            i22 = i21;
            if (!str5.equals("")) {
                i22 = i21 + zzfs.m10638b(24, this.f29316s);
            }
        }
        int i23 = i22;
        if (this.f29319v) {
            i23 = i22 + zzfs.m10634c(25) + 1;
        }
        String str6 = this.f29304g;
        int i24 = i23;
        if (str6 != null) {
            i24 = i23;
            if (!str6.equals("")) {
                i24 = i23 + zzfs.m10638b(26, this.f29304g);
            }
        }
        return i24;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzha)) {
            return false;
        }
        zzha zzhaVar = (zzha) obj;
        if (this.f29300c != zzhaVar.f29300c || this.f29301d != zzhaVar.f29301d) {
            return false;
        }
        String str = this.f29302e;
        if (str == null) {
            if (zzhaVar.f29302e != null) {
                return false;
            }
        } else if (!str.equals(zzhaVar.f29302e)) {
            return false;
        }
        if (this.f29303f != zzhaVar.f29303f) {
            return false;
        }
        String str2 = this.f29304g;
        if (str2 == null) {
            if (zzhaVar.f29304g != null) {
                return false;
            }
        } else if (!str2.equals(zzhaVar.f29304g)) {
            return false;
        }
        if (!zzfy.m10621a(this.f29305h, zzhaVar.f29305h) || !Arrays.equals(this.f29306i, zzhaVar.f29306i)) {
            return false;
        }
        zzge.zzd zzdVar = this.f29307j;
        if (zzdVar == null) {
            if (zzhaVar.f29307j != null) {
                return false;
            }
        } else if (!zzdVar.equals(zzhaVar.f29307j)) {
            return false;
        }
        if (!Arrays.equals(this.f29308k, zzhaVar.f29308k)) {
            return false;
        }
        String str3 = this.f29309l;
        if (str3 == null) {
            if (zzhaVar.f29309l != null) {
                return false;
            }
        } else if (!str3.equals(zzhaVar.f29309l)) {
            return false;
        }
        String str4 = this.f29310m;
        if (str4 == null) {
            if (zzhaVar.f29310m != null) {
                return false;
            }
        } else if (!str4.equals(zzhaVar.f29310m)) {
            return false;
        }
        zzgy zzgyVar = this.f29311n;
        if (zzgyVar == null) {
            if (zzhaVar.f29311n != null) {
                return false;
            }
        } else if (!zzgyVar.equals(zzhaVar.f29311n)) {
            return false;
        }
        String str5 = this.f29312o;
        if (str5 == null) {
            if (zzhaVar.f29312o != null) {
                return false;
            }
        } else if (!str5.equals(zzhaVar.f29312o)) {
            return false;
        }
        if (this.f29313p != zzhaVar.f29313p) {
            return false;
        }
        zzgz zzgzVar = this.f29314q;
        if (zzgzVar == null) {
            if (zzhaVar.f29314q != null) {
                return false;
            }
        } else if (!zzgzVar.equals(zzhaVar.f29314q)) {
            return false;
        }
        if (!Arrays.equals(this.f29315r, zzhaVar.f29315r)) {
            return false;
        }
        String str6 = this.f29316s;
        if (str6 == null) {
            if (zzhaVar.f29316s != null) {
                return false;
            }
        } else if (!str6.equals(zzhaVar.f29316s)) {
            return false;
        }
        if (!zzfy.m10625a(this.f29317t, zzhaVar.f29317t)) {
            return false;
        }
        zzge.zzs zzsVar = this.f29318u;
        if (zzsVar == null) {
            if (zzhaVar.f29318u != null) {
                return false;
            }
        } else if (!zzsVar.equals(zzhaVar.f29318u)) {
            return false;
        }
        if (this.f29319v != zzhaVar.f29319v) {
            return false;
        }
        zzfw zzfwVar = this.f29280b;
        if (zzfwVar != null && !zzfwVar.m10629c()) {
            return this.f29280b.equals(zzhaVar.f29280b);
        }
        zzfw zzfwVar2 = zzhaVar.f29280b;
        return zzfwVar2 == null || zzfwVar2.m10629c();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: g */
    public final /* synthetic */ zzfz mo10561g() throws CloneNotSupportedException {
        return (zzha) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* renamed from: h */
    public final /* synthetic */ zzha mo10560h() throws CloneNotSupportedException {
        return (zzha) clone();
    }

    public final int hashCode() {
        int hashCode = zzha.class.getName().hashCode();
        long j = this.f29300c;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f29301d;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        String str = this.f29302e;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int i3 = this.f29303f;
        String str2 = this.f29304g;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        int i4 = 1237;
        int a = zzfy.m10622a(this.f29305h);
        int hashCode4 = Arrays.hashCode(this.f29306i);
        zzge.zzd zzdVar = this.f29307j;
        int hashCode5 = zzdVar == null ? 0 : zzdVar.hashCode();
        int hashCode6 = Arrays.hashCode(this.f29308k);
        String str3 = this.f29309l;
        int hashCode7 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f29310m;
        int hashCode8 = str4 == null ? 0 : str4.hashCode();
        zzgy zzgyVar = this.f29311n;
        int hashCode9 = zzgyVar == null ? 0 : zzgyVar.hashCode();
        String str5 = this.f29312o;
        int hashCode10 = str5 == null ? 0 : str5.hashCode();
        long j3 = this.f29313p;
        int i5 = (int) (j3 ^ (j3 >>> 32));
        zzgz zzgzVar = this.f29314q;
        int hashCode11 = zzgzVar == null ? 0 : zzgzVar.hashCode();
        int hashCode12 = Arrays.hashCode(this.f29315r);
        String str6 = this.f29316s;
        int hashCode13 = str6 == null ? 0 : str6.hashCode();
        int a2 = zzfy.m10626a(this.f29317t);
        zzge.zzs zzsVar = this.f29318u;
        int hashCode14 = zzsVar == null ? 0 : zzsVar.hashCode();
        if (this.f29319v) {
            i4 = 1231;
        }
        zzfw zzfwVar = this.f29280b;
        int i6 = 0;
        if (zzfwVar != null) {
            i6 = zzfwVar.m10629c() ? 0 : this.f29280b.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31 * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31 * 31) + 1237) * 31) + a) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i5) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31 * 31) + a2) * 31 * 31) + hashCode14) * 31) + i4) * 31) + i6;
    }

    /* renamed from: j */
    public final zzha clone() {
        try {
            zzha zzhaVar = (zzha) super.clone();
            zzhb[] zzhbVarArr = this.f29305h;
            if (zzhbVarArr != null && zzhbVarArr.length > 0) {
                zzhaVar.f29305h = new zzhb[zzhbVarArr.length];
                int i = 0;
                while (true) {
                    zzhb[] zzhbVarArr2 = this.f29305h;
                    if (i >= zzhbVarArr2.length) {
                        break;
                    }
                    if (zzhbVarArr2[i] != null) {
                        zzhaVar.f29305h[i] = (zzhb) zzhbVarArr2[i].clone();
                    }
                    i++;
                }
            }
            zzge.zzd zzdVar = this.f29307j;
            if (zzdVar != null) {
                zzhaVar.f29307j = zzdVar;
            }
            zzgy zzgyVar = this.f29311n;
            if (zzgyVar != null) {
                zzhaVar.f29311n = (zzgy) zzgyVar.clone();
            }
            zzgz zzgzVar = this.f29314q;
            if (zzgzVar != null) {
                zzhaVar.f29314q = (zzgz) zzgzVar.clone();
            }
            int[] iArr = this.f29317t;
            if (iArr != null && iArr.length > 0) {
                zzhaVar.f29317t = (int[]) iArr.clone();
            }
            zzge.zzs zzsVar = this.f29318u;
            if (zzsVar != null) {
                zzhaVar.f29318u = zzsVar;
            }
            return zzhaVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
