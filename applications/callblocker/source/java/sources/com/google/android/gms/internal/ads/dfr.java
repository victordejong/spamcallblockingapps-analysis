package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfr.class */
final class dfr {
    /* renamed from: a */
    public static String m9755a(dbi dbiVar) {
        dfq dfqVar = new dfq(dbiVar);
        StringBuilder sb = new StringBuilder(dfqVar.mo9754a());
        for (int i = 0; i < dfqVar.mo9754a(); i++) {
            byte mo9753a = dfqVar.mo9753a(i);
            switch (mo9753a) {
                case 7:
                    sb.append("\\a");
                    break;
                case 8:
                    sb.append("\\b");
                    break;
                case 9:
                    sb.append("\\t");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 11:
                    sb.append("\\v");
                    break;
                case 12:
                    sb.append("\\f");
                    break;
                case 13:
                    sb.append("\\r");
                    break;
                case 34:
                    sb.append("\\\"");
                    break;
                case 39:
                    sb.append("\\'");
                    break;
                case 92:
                    sb.append("\\\\");
                    break;
                default:
                    if (mo9753a < 32 || mo9753a > 126) {
                        sb.append('\\');
                        sb.append((char) (((mo9753a >>> 6) & 3) + 48));
                        sb.append((char) (((mo9753a >>> 3) & 7) + 48));
                        sb.append((char) ((mo9753a & 7) + 48));
                        break;
                    } else {
                        sb.append((char) mo9753a);
                        break;
                    }
                    break;
            }
        }
        return sb.toString();
    }
}
