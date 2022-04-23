package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqd.class */
final class dqd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(dlw dlwVar) {
        dqf dqfVar = new dqf(dlwVar);
        StringBuilder sb = new StringBuilder(dqfVar.a());
        for (int i = 0; i < dqfVar.a(); i++) {
            byte a2 = dqfVar.a(i);
            if (a2 == 34) {
                sb.append("\\\"");
            } else if (a2 == 39) {
                sb.append("\\'");
            } else if (a2 != 92) {
                switch (a2) {
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
                        if (a2 < 32 || a2 > 126) {
                            sb.append('\\');
                            sb.append((char) (((a2 >>> 6) & 3) + 48));
                            sb.append((char) (((a2 >>> 3) & 7) + 48));
                            sb.append((char) ((a2 & 7) + 48));
                            break;
                        } else {
                            sb.append((char) a2);
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
