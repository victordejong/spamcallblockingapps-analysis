package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenx.class */
final class zzenx {
    public static String zzan(zzejr zzejrVar) {
        zzeoa zzeoaVar = new zzeoa(zzejrVar);
        StringBuilder sb = new StringBuilder(zzeoaVar.size());
        for (int i = 0; i < zzeoaVar.size(); i++) {
            byte zzfz = zzeoaVar.zzfz(i);
            if (zzfz == 34) {
                sb.append("\\\"");
            } else if (zzfz == 39) {
                sb.append("\\'");
            } else if (zzfz != 92) {
                switch (zzfz) {
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
                        if (zzfz < 32 || zzfz > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzfz >>> 6) & 3) + 48));
                            sb.append((char) (((zzfz >>> 3) & 7) + 48));
                            sb.append((char) ((zzfz & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzfz);
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
