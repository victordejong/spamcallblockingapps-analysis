package com.google.android.gms.internal.clearcut;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzet.class */
public final class zzet {
    public static String zzc(zzbb zzbbVar) {
        String str;
        zzeu zzeuVar = new zzeu(zzbbVar);
        StringBuilder sb = new StringBuilder(zzeuVar.size());
        for (int i = 0; i < zzeuVar.size(); i++) {
            byte zzj = zzeuVar.zzj(i);
            if (zzj == 34) {
                str = "\\\"";
            } else if (zzj == 39) {
                str = "\\'";
            } else if (zzj != 92) {
                switch (zzj) {
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
                        if (zzj < 32 || zzj > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzj >>> 6) & 3) + 48));
                            sb.append((char) (((zzj >>> 3) & 7) + 48));
                            zzj = (zzj & 7) + 48;
                        }
                        sb.append((char) zzj);
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
