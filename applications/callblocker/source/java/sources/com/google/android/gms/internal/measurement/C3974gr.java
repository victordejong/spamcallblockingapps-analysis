package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gr.class */
final class C3974gr {
    /* renamed from: a */
    public static String m5341a(AbstractC3859ct abstractC3859ct) {
        C3977gu c3977gu = new C3977gu(abstractC3859ct);
        StringBuilder sb = new StringBuilder(c3977gu.mo5337a());
        for (int i = 0; i < c3977gu.mo5337a(); i++) {
            byte mo5336a = c3977gu.mo5336a(i);
            switch (mo5336a) {
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
                    if (mo5336a < 32 || mo5336a > 126) {
                        sb.append('\\');
                        sb.append((char) (((mo5336a >>> 6) & 3) + 48));
                        sb.append((char) (((mo5336a >>> 3) & 7) + 48));
                        sb.append((char) ((mo5336a & 7) + 48));
                        break;
                    } else {
                        sb.append((char) mo5336a);
                        break;
                    }
                    break;
            }
        }
        return sb.toString();
    }
}
