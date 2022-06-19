package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaac.class */
public final class zzaac extends zzzu {
    public static final Parcelable.Creator<zzaac> CREATOR = new zzaab();
    public final String zza;
    public final String zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaac(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.zza = r1
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.zzb = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaac.<init>(android.os.Parcel):void");
    }

    public zzaac(String str, String str2, String str3) {
        super(str);
        this.zza = str2;
        this.zzb = str3;
    }

    private static List<Integer> zzb(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException e) {
            return new ArrayList();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaac.class != obj.getClass()) {
            return false;
        }
        zzaac zzaacVar = (zzaac) obj;
        return zzfn.zzP(this.zzf, zzaacVar.zzf) && zzfn.zzP(this.zza, zzaacVar.zza) && zzfn.zzP(this.zzb, zzaacVar.zzb);
    }

    public final int hashCode() {
        int m4793d = C1676a.m4793d(this.zzf, 527, 31);
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m4793d + hashCode) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 22, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C0082b.m8749m(sb, str, ": description=", str2, ": value=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzzu, com.google.android.gms.internal.ads.zzdc
    public final void zza(zzbc zzbcVar) {
        boolean z;
        String str = this.zzf;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
                zzbcVar.zzn(this.zzb);
                return;
            case true:
            case true:
                zzbcVar.zzd(this.zzb);
                return;
            case true:
            case true:
                zzbcVar.zzb(this.zzb);
                return;
            case true:
            case true:
                zzbcVar.zzc(this.zzb);
                return;
            case true:
            case true:
                String[] zzac = zzfn.zzac(this.zzb, "/");
                try {
                    int parseInt = Integer.parseInt(zzac[0]);
                    Integer valueOf = zzac.length > 1 ? Integer.valueOf(Integer.parseInt(zzac[1])) : null;
                    zzbcVar.zzp(Integer.valueOf(parseInt));
                    zzbcVar.zzo(valueOf);
                    return;
                } catch (NumberFormatException e) {
                    return;
                }
            case true:
            case true:
                try {
                    zzbcVar.zzj(Integer.valueOf(Integer.parseInt(this.zzb)));
                    return;
                } catch (NumberFormatException e2) {
                    return;
                }
            case true:
            case true:
                try {
                    int parseInt2 = Integer.parseInt(this.zzb.substring(2, 4));
                    int parseInt3 = Integer.parseInt(this.zzb.substring(0, 2));
                    zzbcVar.zzi(Integer.valueOf(parseInt2));
                    zzbcVar.zzh(Integer.valueOf(parseInt3));
                    return;
                } catch (NumberFormatException | StringIndexOutOfBoundsException e3) {
                    return;
                }
            case true:
                List<Integer> zzb = zzb(this.zzb);
                int size = zzb.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size != 3) {
                            return;
                        }
                        zzbcVar.zzh(zzb.get(2));
                    }
                    zzbcVar.zzi(zzb.get(1));
                }
                zzbcVar.zzj(zzb.get(0));
                return;
            case true:
                List<Integer> zzb2 = zzb(this.zzb);
                int size2 = zzb2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 != 3) {
                            return;
                        }
                        zzbcVar.zzk(zzb2.get(2));
                    }
                    zzbcVar.zzl(zzb2.get(1));
                }
                zzbcVar.zzm(zzb2.get(0));
                return;
            case true:
            case true:
                zzbcVar.zze(this.zzb);
                return;
            case true:
            case true:
                zzbcVar.zzf(this.zzb);
                return;
            case true:
            case true:
                zzbcVar.zzq(this.zzb);
                return;
            default:
                return;
        }
    }
}
