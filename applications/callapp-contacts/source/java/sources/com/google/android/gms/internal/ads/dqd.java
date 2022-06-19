package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqd.class */
final class dqd {
    /* renamed from: a */
    public static String m16031a(dlw dlwVar) {
        dqf dqfVar = new dqf(dlwVar);
        StringBuilder sb = new StringBuilder(dqfVar.mo16030a());
        for (int i = 0; i < dqfVar.mo16030a(); i++) {
            byte mo16029a = dqfVar.mo16029a(i);
            if (mo16029a == 34) {
                sb.append("\\\"");
            } else if (mo16029a == 39) {
                sb.append("\\'");
            } else if (mo16029a != 92) {
                switch (mo16029a) {
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
                        if (mo16029a < 32 || mo16029a > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo16029a >>> 6) & 3) + 48));
                            sb.append((char) (((mo16029a >>> 3) & 7) + 48));
                            sb.append((char) ((mo16029a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo16029a);
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
