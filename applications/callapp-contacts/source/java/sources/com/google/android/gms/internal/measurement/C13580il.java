package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.il */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/il.class */
final class C13580il {
    /* renamed from: a */
    public static String m12574a(AbstractC13500fm abstractC13500fm) {
        StringBuilder sb = new StringBuilder(abstractC13500fm.mo12866a());
        for (int i = 0; i < abstractC13500fm.mo12866a(); i++) {
            byte mo12865a = abstractC13500fm.mo12865a(i);
            if (mo12865a == 34) {
                sb.append("\\\"");
            } else if (mo12865a == 39) {
                sb.append("\\'");
            } else if (mo12865a != 92) {
                switch (mo12865a) {
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
                        if (mo12865a < 32 || mo12865a > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo12865a >>> 6) & 3) + 48));
                            sb.append((char) (((mo12865a >>> 3) & 7) + 48));
                            sb.append((char) ((mo12865a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo12865a);
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
