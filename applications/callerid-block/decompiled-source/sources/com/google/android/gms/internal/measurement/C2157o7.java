package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.o7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/o7.class */
final class C2157o7 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m4225a(zzgr zzgrVar) {
        String str;
        StringBuilder sb = new StringBuilder(zzgrVar.zzc());
        for (int i = 0; i < zzgrVar.zzc(); i++) {
            int zza = zzgrVar.zza(i);
            if (zza == 34) {
                str = "\\\"";
            } else if (zza == 39) {
                str = "\\'";
            } else if (zza != 92) {
                switch (zza) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (zza < 32 || zza > 126) {
                            sb.append('\\');
                            sb.append((char) (((zza >>> 6) & 3) + 48));
                            sb.append((char) (((zza >>> 3) & 7) + 48));
                            zza = (zza & 7) + 48;
                        }
                        sb.append((char) zza);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
