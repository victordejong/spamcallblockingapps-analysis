package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjt.class */
final class zzjt {
    public static String zze(zzfx zzfxVar) {
        zzjw zzjwVar = new zzjw(zzfxVar);
        StringBuilder sb = new StringBuilder(zzjwVar.size());
        for (int i = 0; i < zzjwVar.size(); i++) {
            byte zzv = zzjwVar.zzv(i);
            if (zzv == 34) {
                sb.append("\\\"");
            } else if (zzv == 39) {
                sb.append("\\'");
            } else if (zzv != 92) {
                switch (zzv) {
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
                        if (zzv < 32 || zzv > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzv >>> 6) & 3) + 48));
                            sb.append((char) (((zzv >>> 3) & 7) + 48));
                            sb.append((char) ((zzv & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzv);
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
