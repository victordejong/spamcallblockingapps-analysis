package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjf.class */
public final class zzjf {
    public static String zzd(zzfh zzfhVar) {
        zzji zzjiVar = new zzji(zzfhVar);
        StringBuilder sb = new StringBuilder(zzjiVar.size());
        for (int i = 0; i < zzjiVar.size(); i++) {
            byte zzan = zzjiVar.zzan(i);
            if (zzan == 34) {
                sb.append("\\\"");
            } else if (zzan == 39) {
                sb.append("\\'");
            } else if (zzan != 92) {
                switch (zzan) {
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
                        if (zzan < 32 || zzan > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzan >>> 6) & 3) + 48));
                            sb.append((char) (((zzan >>> 3) & 7) + 48));
                            sb.append((char) ((zzan & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzan);
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
