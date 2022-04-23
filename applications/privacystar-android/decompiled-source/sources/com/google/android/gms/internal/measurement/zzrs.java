package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzg;
import com.google.android.gms.tagmanager.zzdi;
import com.google.android.gms.tagmanager.zzgj;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrs.class */
public final class zzrs {
    private static zzp zza(int i, zzl zzlVar, zzp[] zzpVarArr, Set<Integer> set) throws zzsa {
        if (set.contains(Integer.valueOf(i))) {
            String valueOf = String.valueOf(set);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 90);
            sb.append("Value cycle detected.  Current value reference: ");
            sb.append(i);
            sb.append(".  Previous value references: ");
            sb.append(valueOf);
            sb.append(".");
            zzer(sb.toString());
        }
        zzp zzpVar = (zzp) zza(zzlVar.zzou, i, "values");
        if (zzpVarArr[i] != null) {
            return zzpVarArr[i];
        }
        zzp zzpVar2 = null;
        set.add(Integer.valueOf(i));
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        switch (zzpVar.type) {
            case 1:
            case 5:
            case 6:
            case 8:
                zzpVar2 = zzpVar;
                break;
            case 2:
                zzg.zza zzl = zzl(zzpVar);
                zzpVar2 = zzk(zzpVar);
                zzpVar2.zzqj = new zzp[zzl.zzpv.length];
                int[] iArr = zzl.zzpv;
                int length = iArr.length;
                int i5 = 0;
                while (i3 < length) {
                    zzpVar2.zzqj[i5] = zza(iArr[i3], zzlVar, zzpVarArr, set);
                    i3++;
                    i5++;
                }
                break;
            case 3:
                zzp zzk = zzk(zzpVar);
                zzg.zza zzl2 = zzl(zzpVar);
                if (zzl2.zzpw.length != zzl2.zzpx.length) {
                    int length2 = zzl2.zzpw.length;
                    int length3 = zzl2.zzpx.length;
                    StringBuilder sb2 = new StringBuilder(58);
                    sb2.append("Uneven map keys (");
                    sb2.append(length2);
                    sb2.append(") and map values (");
                    sb2.append(length3);
                    sb2.append(")");
                    zzer(sb2.toString());
                }
                zzk.zzqk = new zzp[zzl2.zzpw.length];
                zzk.zzql = new zzp[zzl2.zzpw.length];
                int[] iArr2 = zzl2.zzpw;
                int length4 = iArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length4) {
                    zzk.zzqk[i7] = zza(iArr2[i6], zzlVar, zzpVarArr, set);
                    i6++;
                    i7++;
                }
                int[] iArr3 = zzl2.zzpx;
                int length5 = iArr3.length;
                int i8 = 0;
                while (true) {
                    zzpVar2 = zzk;
                    if (i2 >= length5) {
                        break;
                    } else {
                        zzk.zzql[i8] = zza(iArr3[i2], zzlVar, zzpVarArr, set);
                        i2++;
                        i8++;
                    }
                }
            case 4:
                zzpVar2 = zzk(zzpVar);
                zzpVar2.zzqm = zzgj.zzc(zza(zzl(zzpVar).zzqa, zzlVar, zzpVarArr, set));
                break;
            case 7:
                zzp zzk2 = zzk(zzpVar);
                zzg.zza zzl3 = zzl(zzpVar);
                zzk2.zzqq = new zzp[zzl3.zzpz.length];
                int[] iArr4 = zzl3.zzpz;
                int length6 = iArr4.length;
                int i9 = 0;
                while (true) {
                    zzpVar2 = zzk2;
                    if (i4 >= length6) {
                        break;
                    } else {
                        zzk2.zzqq[i9] = zza(iArr4[i4], zzlVar, zzpVarArr, set);
                        i4++;
                        i9++;
                    }
                }
        }
        if (zzpVar2 == null) {
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 15);
            sb3.append("Invalid value: ");
            sb3.append(valueOf2);
            zzer(sb3.toString());
        }
        zzpVarArr[i] = zzpVar2;
        set.remove(Integer.valueOf(i));
        return zzpVar2;
    }

    private static zzru zza(zzh zzhVar, zzl zzlVar, zzp[] zzpVarArr, int i) throws zzsa {
        zzrv zzsp = zzru.zzsp();
        for (int i2 : zzhVar.zzoe) {
            zzk zzkVar = (zzk) zza(zzlVar.zzov, Integer.valueOf(i2).intValue(), "properties");
            String str = (String) zza(zzlVar.zzot, zzkVar.key, "keys");
            zzp zzpVar = (zzp) zza(zzpVarArr, zzkVar.value, "values");
            if (zzb.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzsp.zzm(zzpVar);
            } else {
                zzsp.zzb(str, zzpVar);
            }
        }
        return zzsp.zzsq();
    }

    public static zzrw zza(zzl zzlVar) throws zzsa {
        zzm[] zzmVarArr;
        zzp[] zzpVarArr = new zzp[zzlVar.zzou.length];
        for (int i = 0; i < zzlVar.zzou.length; i++) {
            zza(i, zzlVar, zzpVarArr, new HashSet(0));
        }
        zzrx zzsr = zzrw.zzsr();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < zzlVar.zzox.length; i2++) {
            arrayList.add(zza(zzlVar.zzox[i2], zzlVar, zzpVarArr, i2));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < zzlVar.zzoy.length; i3++) {
            arrayList2.add(zza(zzlVar.zzoy[i3], zzlVar, zzpVarArr, i3));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < zzlVar.zzow.length; i4++) {
            zzru zza = zza(zzlVar.zzow[i4], zzlVar, zzpVarArr, i4);
            zzsr.zzc(zza);
            arrayList3.add(zza);
        }
        for (zzm zzmVar : zzlVar.zzoz) {
            zzrz zzrzVar = new zzrz();
            for (int i5 : zzmVar.zzpj) {
                zzrzVar.zzd((zzru) arrayList2.get(Integer.valueOf(i5).intValue()));
            }
            for (int i6 : zzmVar.zzpk) {
                zzrzVar.zze((zzru) arrayList2.get(Integer.valueOf(i6).intValue()));
            }
            for (int i7 : zzmVar.zzpl) {
                zzrzVar.zzf((zzru) arrayList.get(Integer.valueOf(i7).intValue()));
            }
            for (int i8 : zzmVar.zzpn) {
                zzrzVar.zzff(zzlVar.zzou[Integer.valueOf(i8).intValue()].string);
            }
            for (int i9 : zzmVar.zzpm) {
                zzrzVar.zzg((zzru) arrayList.get(Integer.valueOf(i9).intValue()));
            }
            for (int i10 : zzmVar.zzpo) {
                zzrzVar.zzfg(zzlVar.zzou[Integer.valueOf(i10).intValue()].string);
            }
            for (int i11 : zzmVar.zzpp) {
                zzrzVar.zzh((zzru) arrayList3.get(Integer.valueOf(i11).intValue()));
            }
            for (int i12 : zzmVar.zzpr) {
                zzrzVar.zzfh(zzlVar.zzou[Integer.valueOf(i12).intValue()].string);
            }
            for (int i13 : zzmVar.zzpq) {
                zzrzVar.zzi((zzru) arrayList3.get(Integer.valueOf(i13).intValue()));
            }
            for (int i14 : zzmVar.zzps) {
                zzrzVar.zzfi(zzlVar.zzou[Integer.valueOf(i14).intValue()].string);
            }
            zzsr.zzb(zzrzVar.zzsw());
        }
        zzsr.zzfe(zzlVar.version);
        zzsr.zzag(zzlVar.zzph);
        return zzsr.zzst();
    }

    private static <T> T zza(T[] tArr, int i, String str) throws zzsa {
        if (i < 0 || i >= tArr.length) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45);
            sb.append("Index out of bounds detected: ");
            sb.append(i);
            sb.append(" in ");
            sb.append(str);
            zzer(sb.toString());
        }
        return tArr[i];
    }

    public static void zza(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void zzer(String str) throws zzsa {
        zzdi.m329e(str);
        throw new zzsa(str);
    }

    public static zzp zzk(zzp zzpVar) {
        zzp zzpVar2 = new zzp();
        zzpVar2.type = zzpVar.type;
        zzpVar2.zzqr = (int[]) zzpVar.zzqr.clone();
        if (zzpVar.zzqs) {
            zzpVar2.zzqs = zzpVar.zzqs;
        }
        return zzpVar2;
    }

    private static zzg.zza zzl(zzp zzpVar) throws zzsa {
        if (((zzg.zza) zzpVar.zza(zzg.zza.zzpt)) == null) {
            String valueOf = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 54);
            sb.append("Expected a ServingValue and didn't get one. Value is: ");
            sb.append(valueOf);
            zzer(sb.toString());
        }
        return (zzg.zza) zzpVar.zza(zzg.zza.zzpt);
    }
}
