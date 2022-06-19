package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakf.class */
public final class zzakf extends zzajx {
    public static final Parcelable.Creator<zzakf> CREATOR = new zzake();
    public final String zza;
    public final String zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzakf(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakf.<init>(android.os.Parcel):void");
    }

    public zzakf(String str, String str2, String str3) {
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
        if (obj == null || zzakf.class != obj.getClass()) {
            return false;
        }
        zzakf zzakfVar = (zzakf) obj;
        return zzamq.zzc(this.zzf, zzakfVar.zzf) && zzamq.zzc(this.zza, zzakfVar.zza) && zzamq.zzc(this.zzb, zzakfVar.zzb);
    }

    public final int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.zzf, 527, 31);
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m8579q2 + hashCode) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zza;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(str).length(), 22, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C22128a.m8666T0(sb, str, ": description=", str2, ": value=");
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
    @Override // com.google.android.gms.internal.ads.zzajx, com.google.android.gms.internal.ads.zzaiu
    public final void zza(zzagm zzagmVar) {
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
                zzagmVar.zzs(this.zzb);
                return;
            case true:
            case true:
                zzagmVar.zzt(this.zzb);
                return;
            case true:
            case true:
                zzagmVar.zzv(this.zzb);
                return;
            case true:
            case true:
                zzagmVar.zzu(this.zzb);
                return;
            case true:
            case true:
                String[] zzt = zzamq.zzt(this.zzb, StringConstant.SLASH);
                try {
                    int parseInt = Integer.parseInt(zzt[0]);
                    Integer valueOf = zzt.length > 1 ? Integer.valueOf(Integer.parseInt(zzt[1])) : null;
                    zzagmVar.zzy(Integer.valueOf(parseInt));
                    zzagmVar.zzz(valueOf);
                    return;
                } catch (NumberFormatException e) {
                    return;
                }
            case true:
            case true:
                try {
                    zzagmVar.zzA(Integer.valueOf(Integer.parseInt(this.zzb)));
                    return;
                } catch (NumberFormatException e2) {
                    return;
                }
            case true:
            case true:
                try {
                    int parseInt2 = Integer.parseInt(this.zzb.substring(2, 4));
                    int parseInt3 = Integer.parseInt(this.zzb.substring(0, 2));
                    zzagmVar.zzB(Integer.valueOf(parseInt2));
                    zzagmVar.zzC(Integer.valueOf(parseInt3));
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
                        zzagmVar.zzC(zzb.get(2));
                    }
                    zzagmVar.zzB(zzb.get(1));
                }
                zzagmVar.zzA(zzb.get(0));
                return;
            case true:
                List<Integer> zzb2 = zzb(this.zzb);
                int size2 = zzb2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 != 3) {
                            return;
                        }
                        zzagmVar.zzF(zzb2.get(2));
                    }
                    zzagmVar.zzE(zzb2.get(1));
                }
                zzagmVar.zzD(zzb2.get(0));
                return;
            case true:
            case true:
                zzagmVar.zzH(this.zzb);
                return;
            case true:
            case true:
                zzagmVar.zzI(this.zzb);
                return;
            case true:
            case true:
                zzagmVar.zzG(this.zzb);
                return;
            default:
                return;
        }
    }
}
