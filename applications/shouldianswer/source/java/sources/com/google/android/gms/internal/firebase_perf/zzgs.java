package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgs.class */
final class zzgs {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.firebase_perf.zzgv, com.google.android.gms.internal.firebase_perf.zzgu] */
    public static String zzd(zzdd zzddVar) {
        ?? zzgvVar = new zzgv(zzddVar);
        StringBuilder sb = new StringBuilder(zzgvVar.size());
        for (int i = 0; i < zzgvVar.size(); i++) {
            byte zzq = zzgvVar.zzq(i);
            if (zzq == 34) {
                sb.append("\\\"");
            } else if (zzq == 39) {
                sb.append("\\'");
            } else if (zzq != 92) {
                switch (zzq) {
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
                        if (zzq < 32 || zzq > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzq >>> 6) & 3) + 48));
                            sb.append((char) (((zzq >>> 3) & 7) + 48));
                            sb.append((char) ((zzq & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzq);
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
