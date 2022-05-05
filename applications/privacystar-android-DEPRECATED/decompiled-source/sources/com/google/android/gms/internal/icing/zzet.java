package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzet.class */
final class zzet {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzc(zzbi zzbiVar) {
        String str;
        zzeu zzeuVar = new zzeu(zzbiVar);
        StringBuilder sb = new StringBuilder(zzeuVar.size());
        for (int i = 0; i < zzeuVar.size(); i++) {
            int zzi = zzeuVar.zzi(i);
            if (zzi == 34) {
                str = "\\\"";
            } else if (zzi == 39) {
                str = "\\'";
            } else if (zzi != 92) {
                switch (zzi) {
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
                        if (zzi < 32 || zzi > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzi >>> 6) & 3) + 48));
                            sb.append((char) (((zzi >>> 3) & 7) + 48));
                            zzi = (zzi & 7) + 48;
                        }
                        sb.append((char) zzi);
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
