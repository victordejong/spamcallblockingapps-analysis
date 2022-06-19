package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zzi.class */
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new zzk();
    private static final Comparator<zzi> zzai = new zzj();
    public final String name;
    private final long zzab;
    private final boolean zzac;
    private final double zzad;
    private final String zzae;
    private final byte[] zzaf;
    private final int zzag;
    public final int zzah;

    public zzi(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.name = str;
        this.zzab = j;
        this.zzac = z;
        this.zzad = d;
        this.zzae = str2;
        this.zzaf = bArr;
        this.zzag = i;
        this.zzah = i2;
    }

    private static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        int compareTo = this.name.compareTo(zziVar2.name);
        if (compareTo != 0) {
            return compareTo;
        }
        int compare = compare(this.zzag, zziVar2.zzag);
        if (compare != 0) {
            return compare;
        }
        int i = this.zzag;
        if (i == 1) {
            int i2 = (this.zzab > zziVar2.zzab ? 1 : (this.zzab == zziVar2.zzab ? 0 : -1));
            if (i2 < 0) {
                return -1;
            }
            return i2 == 0 ? 0 : 1;
        } else if (i == 2) {
            boolean z = this.zzac;
            if (z == zziVar2.zzac) {
                return 0;
            }
            return z ? 1 : -1;
        } else if (i == 3) {
            return Double.compare(this.zzad, zziVar2.zzad);
        } else {
            if (i == 4) {
                String str = this.zzae;
                String str2 = zziVar2.zzae;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 != null) {
                    return str.compareTo(str2);
                }
                return 1;
            } else if (i != 5) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i);
                throw new AssertionError(sb.toString());
            } else {
                byte[] bArr = this.zzaf;
                byte[] bArr2 = zziVar2.zzaf;
                if (bArr == bArr2) {
                    return 0;
                }
                if (bArr == null) {
                    return -1;
                }
                if (bArr2 == null) {
                    return 1;
                }
                for (int i3 = 0; i3 < Math.min(this.zzaf.length, zziVar2.zzaf.length); i3++) {
                    int i4 = this.zzaf[i3] - zziVar2.zzaf[i3];
                    if (i4 != 0) {
                        return i4;
                    }
                }
                return compare(this.zzaf.length, zziVar2.zzaf.length);
            }
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            if (!zzn.equals(this.name, zziVar.name) || (i = this.zzag) != zziVar.zzag || this.zzah != zziVar.zzah) {
                return false;
            }
            if (i == 1) {
                return this.zzab == zziVar.zzab;
            } else if (i == 2) {
                return this.zzac == zziVar.zzac;
            } else if (i == 3) {
                return this.zzad == zziVar.zzad;
            } else if (i == 4) {
                return zzn.equals(this.zzae, zziVar.zzae);
            } else {
                if (i == 5) {
                    return Arrays.equals(this.zzaf, zziVar.zzaf);
                }
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i);
                throw new AssertionError(sb.toString());
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.name);
        sb.append(", ");
        int i = this.zzag;
        if (i == 1) {
            sb.append(this.zzab);
        } else if (i == 2) {
            sb.append(this.zzac);
        } else if (i != 3) {
            if (i == 4) {
                sb.append("'");
                str = this.zzae;
            } else if (i != 5) {
                String str2 = this.name;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str2);
                sb2.append(", ");
                sb2.append(i);
                throw new AssertionError(sb2.toString());
            } else if (this.zzaf == null) {
                sb.append("null");
            } else {
                sb.append("'");
                str = Base64.encodeToString(this.zzaf, 3);
            }
            sb.append(str);
            sb.append("'");
        } else {
            sb.append(this.zzad);
        }
        sb.append(", ");
        sb.append(this.zzag);
        sb.append(", ");
        sb.append(this.zzah);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzab);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzac);
        SafeParcelWriter.writeDouble(parcel, 5, this.zzad);
        SafeParcelWriter.writeString(parcel, 6, this.zzae, false);
        SafeParcelWriter.writeByteArray(parcel, 7, this.zzaf, false);
        SafeParcelWriter.writeInt(parcel, 8, this.zzag);
        SafeParcelWriter.writeInt(parcel, 9, this.zzah);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
