package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.w7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w7.class */
final class C7598w7 {
    /* renamed from: a */
    public static String m6793a(zzgr zzgrVar) {
        StringBuilder sb = new StringBuilder(zzgrVar.zzc());
        for (int i = 0; i < zzgrVar.zzc(); i++) {
            byte zza = zzgrVar.zza(i);
            if (zza == 34) {
                sb.append("\\\"");
            } else if (zza == 39) {
                sb.append("\\'");
            } else if (zza != 92) {
                switch (zza) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (zza < 32 || zza > 126) {
                            sb.append('\\');
                            sb.append((char) (((zza >>> 6) & 3) + 48));
                            sb.append((char) (((zza >>> 3) & 7) + 48));
                            sb.append((char) ((zza & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zza);
                            continue;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
