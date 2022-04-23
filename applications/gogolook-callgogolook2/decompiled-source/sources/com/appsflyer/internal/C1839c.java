package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.mp4.MetadataUtil;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.TsExtractor;
import androidx.media2.exoplayer.external.upstream.DefaultHttpDataSource;
import com.appsflyer.AFLogger;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.c */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c.class */
public final class C1839c {

    /* renamed from: ǃ */
    public static int f1833 = 0;

    /* renamed from: ι */
    public static int f1835 = 1;

    /* renamed from: ı */
    public static char[] f1832 = {61163, 22514, 40130, 50618, 2749, 29581, 47210, 57662, 9806, 28457, 54330, 7453, 17394, 35068, 61905, 13998, 32659, 42194, 60754, 21069, 39774, 49185, 2334, 19992, 46325, 64962, 8911, 27541, 53379, 6554, 24191, 34631, 52271, 13614, 52353, 60956, 4935, 43601, 24939, 14341, 63307, 36381, 17911, 7305, 56298, 37532, 10685, 57476, 48766, 30029, 3175, 51975, 33325, 22802, 21602, 60791, 9806, 32551, 45113, 51467, 692, 23471, 40073, 54690, 28393, 42945, 63849, 12924, 19213, 35961, 50516, 7696, 22456, 59591, 8588, 31403, 46032, 62666, 3700, 18207, 38925, 53556, 27226, 41806, 58533, 15771, 47429, '\\', 52076, 37396, 23827, 9251, 61380, 46736, 29179, 14481, 33750, 19092, 5197, 57166, 42596, 24843, 10294, 62251, 47845, 1511, 52466, 38795, 24231, 6587, 58182, 30898, 49579, 2715, 21475, 40164, 58836, 11827, 30567, 45067, 63860, 17021, 35653, 54700, 7852, 26517, 41212, 59805, 13046, 31546, 50207, 3352, 22130, 40773, 42262, 7183, 55103, 36423, 16704, 14448, 62359, 43715, 28072, 9410, 40837, 22212, 2060, 49936, 47661, 32094, 13379, 61280, 42632, 6590, 'a', 47480, 29256, 11056, 58423, 40199, 22240, 4020, 51422, 33187, 15016, 62428, 44381, 26220, 8029, 49716, 45998, 2762, 64061, 17184, 34829, 53620, 7713, 26448, 44220, 62947, 12947, 31740, 49403, 2497, 22326, 39995, '/', 47477, 29261, 11041, 58416, 40203, 13489, 36259, 18076, 8065, 53428, 43483, 25139, 15147, 64517, 46448, 'C', 47486, 29257, 11041, 58419, 40221, 22257, 4087, 51445, 33214, 15039, 62359, 44408, 26218, 8029, 55333, 37134, 50529, 31824, 46946, 60937, 8474, 22573, 37763, 51913, 3576, 17601, 65436, 14000, 26715, 41753, 55920, 7436, 21540, 36665, 50894, 31141, 45295, 60296, 8887, 26037, 40727, 54902, 2418, 16385, 64295, 12921, 30166, 44277, 59268, 7828, 20923, 35665, 49750, 1382, 48141, 63303, 11895, 17313, 64181, 12702, 26829, 42992, 57051, 5430, 19517, 35610, 49772, 31103, 45136, 61071, 9640, 23682, 39904, 53967, 2515, 16427, 65296, 13847, 28007, 42060, 58191, 48803, 1950, 52393, 38337, 23251, 9213, 59409, 45335, 30210, 16195, 33882, 19838, 5005, 55453, 41376, 26351, 12280, 62709, 48393, 562, 52012, 36935, 22891, 7796, 48359, 1494, 52964, 38799, 22684, 8619, 59909, 45906, 29823, 15633, 34322, 20280, 4556, 55967, 41959, 25742, 11687, 63163, 48968, '`', 51565, 37386, 23329, 7291, 59100, 45026, 28905, 14747, 33446, 19387, 3093, 54652, 40456, 26371, 10277, 62083, 48092, 31991, 50566, 36510, 22433, 6227, 57684, 43644, 29447, 13381, 64885};

    /* renamed from: Ι */
    public static long f1834 = 5583085843407419670L;

    /* renamed from: com.appsflyer.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c$a.class */
    public static final class C1840a extends HashMap<String, Object> {

        /* renamed from: Ι */
        public static int f1837 = 0;

        /* renamed from: І */
        public static int f1839 = 1;

        /* renamed from: ı */
        public final Map<String, Object> f1840;

        /* renamed from: ɩ */
        public final Context f1841;

        /* renamed from: ι */
        public static char[] f1838 = {'a', 61894, 58143, 54420, 50921, 47181, 43429, 39699, 36212, 32449, 28717, 24976, 'b', 61906, 58145, 54414, 50916, 'N', 61935, 58143, 54434, 50898, 47201, 43406, 39716, 'k', 61893, 58150, 'f', 61889, 58153, 54412, 50917, 47172, 43488, 39687, 36197, 32462, 28709, 24978, 21473, 17748, 13993, 10254, 6759, 2944, 64811, 61061, 57574, 53760, 50091, 46341, 42873, 39040, 35383, 31625, 28148, 24392, 20704, 16901, 13432, 9667, 5925, 2192, 64244, 60489, 56751, 53006, 49466, 45696, 14536, 51558, 56197, 60538, 65050, 32954, 37210, 'f', 61897, 58162, 54419, 50932, 47212, 43425, 39701, 36206, 32451, 28712, 24996, 21473, 17748, 13989, '5', 61838, 58228, 54478, 50864, 24553, 44566, 48359, 35594, 39278, 14334, 50777, 54449, 58132, 61821, 36828, 40568, 44191, 47869, 18774, 18365, 22026, 25721, 29388, 305, 8086, 11775, 15384, 51891, 55581, 55166, 58776, 62510, 33433, 37108, 44877, 48573, 19544, 23151, 26833, 26412, 30096, 952, 4701, 8352, 16155, 52605, 56264, 59948, 63633, 63223, 34134, 37858, 41560, 51824, 15315, 10544, 7831, 3315, 29271, 25570, 20807, 18214, 46210, 47670, 43979, 39331, 36692, 64736, 57922, 53283, 49546, 'a', 61902, 58148, 54418, 50927, 47177, 43428, 39758, 36201, 32462, 28724, 24965, 21486, 17748, 14062, 10241, 6755, 3028, 64809, 61071, 57582, 53774, 50050, 46369, 42836, 39156, 35333, 31666, 28121, 24447, 20611, 16936, 13377, 9710, 5895, 2213, 64196, 't', 61893, 58157, 54416, 50917, 47186, 43425, 39700, 36213, 32466, 28709, 64752, 3344, 8190, 26734, 39384, 35635, 48270, 44786, 53327, 24021, 33232, 28718, '&', 61907, '&', 61904, 'f', 61840, 58161, 54480, 50929, 47121, 43440, 39761, 36208, 32402, 28786, 24963, 21480, 17748, 13985, 10253};

        /* renamed from: ǃ */
        public static long f1836 = -8771784815112425056L;

        /* renamed from: com.appsflyer.internal.c$a$c */
        /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c$a$c.class */
        public static final class C1841c {

            /* renamed from: ı */
            public final Object f1842;

            /* renamed from: ɩ */
            public String f1843;

            /* renamed from: Ι */
            public long f1844;

            public C1841c() {
            }

            public C1841c(long j, String str) {
                this.f1842 = new Object();
                this.f1844 = 0L;
                this.f1843 = "";
                this.f1844 = j;
                this.f1843 = str;
            }

            /* renamed from: ı */
            private boolean m36139(long j, String str) {
                synchronized (this.f1842) {
                    if (str != null) {
                        if (!str.equals(this.f1843) && m36135(j)) {
                            this.f1844 = j;
                            this.f1843 = str;
                            return true;
                        }
                    }
                    return false;
                }
            }

            @NonNull
            /* renamed from: ɩ */
            public static byte[] m36137(@NonNull String str) throws Exception {
                return str.getBytes();
            }

            /* renamed from: Ι */
            public static byte[] m36136(@NonNull byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            @NonNull
            /* renamed from: ι */
            public static C1841c m36134(String str) {
                if (str == null) {
                    return new C1841c(0L, "");
                }
                String[] split = str.split(",");
                return split.length < 2 ? new C1841c(0L, "") : new C1841c(Long.parseLong(split[0]), split[1]);
            }

            @NonNull
            /* renamed from: ι */
            public static String m36133(@NonNull byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b : bArr) {
                    String hexString = Integer.toHexString(b);
                    String str = hexString;
                    if (hexString.length() == 1) {
                        str = "0".concat(String.valueOf(hexString));
                    }
                    sb.append(str);
                }
                return sb.toString();
            }

            /* renamed from: ι */
            private boolean m36135(long j) {
                return j - this.f1844 > 2000;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f1844);
                sb.append(",");
                sb.append(this.f1843);
                return sb.toString();
            }

            /* renamed from: ɩ */
            public final boolean m36138(C1841c cVar) {
                return m36139(cVar.f1844, cVar.f1843);
            }
        }

        public C1840a(Map<String, Object> map, Context context) {
            this.f1840 = map;
            this.f1841 = context;
            put(m36141(), m36143());
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x02cb  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x02d1  */
        /* renamed from: ı */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String m36143() {
            /*
                Method dump skipped, instructions count: 813
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1839c.C1840a.m36143():java.lang.String");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0074 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:5:0x001b  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
        /* renamed from: ɩ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String m36142(int r9, char r10, int r11) {
            /*
                int r0 = com.appsflyer.internal.C1839c.C1840a.f1837
                r1 = 19
                int r0 = r0 + r1
                r12 = r0
                r0 = r12
                r1 = 128(0x80, float:1.794E-43)
                int r0 = r0 % r1
                com.appsflyer.internal.C1839c.C1840a.f1839 = r0
                r0 = r11
                char[] r0 = new char[r0]
                r13 = r0
                r0 = 0
                r12 = r0
            L_0x0016:
                r0 = r12
                r1 = r11
                if (r0 >= r1) goto L_0x0021
                r0 = 1
                r14 = r0
                goto L_0x0024
            L_0x0021:
                r0 = 0
                r14 = r0
            L_0x0024:
                r0 = r14
                if (r0 == 0) goto L_0x0074
                int r0 = com.appsflyer.internal.C1839c.C1840a.f1839
                r1 = 95
                int r0 = r0 + r1
                r14 = r0
                r0 = r14
                r1 = 128(0x80, float:1.794E-43)
                int r0 = r0 % r1
                com.appsflyer.internal.C1839c.C1840a.f1837 = r0
                r0 = r13
                r1 = r12
                char[] r2 = com.appsflyer.internal.C1839c.C1840a.f1838
                r3 = r9
                r4 = r12
                int r3 = r3 + r4
                char r2 = r2[r3]
                long r2 = (long) r2
                r3 = r12
                long r3 = (long) r3
                long r4 = com.appsflyer.internal.C1839c.C1840a.f1836
                long r3 = r3 * r4
                long r2 = r2 ^ r3
                r3 = r10
                long r3 = (long) r3
                long r2 = r2 ^ r3
                int r2 = (int) r2
                char r2 = (char) r2
                char r2 = (char) r2
                r0[r1] = r2
                int r12 = r12 + 1
                int r0 = com.appsflyer.internal.C1839c.C1840a.f1837
                r1 = 125(0x7d, float:1.75E-43)
                int r0 = r0 + r1
                r14 = r0
                r0 = r14
                r1 = 128(0x80, float:1.794E-43)
                int r0 = r0 % r1
                com.appsflyer.internal.C1839c.C1840a.f1839 = r0
                r0 = r14
                r1 = 2
                int r0 = r0 % r1
                if (r0 != 0) goto L_0x0071
                goto L_0x0016
            L_0x0071:
                goto L_0x0016
            L_0x0074:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                r2 = r13
                r1.<init>(r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1839c.C1840a.m36142(int, char, int):java.lang.String");
        }

        @NonNull
        /* renamed from: Ι */
        private String m36141() {
            f1837 = (f1839 + 49) % 128;
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.f1840.get(m36142(0, (char) 0, 12).intern()).toString();
                String obj2 = this.f1840.get(m36142(12, (char) 0, 5).intern()).toString();
                if (obj2 == null) {
                    obj2 = m36142(17, (char) 0, 8).intern();
                    int i = f1839 + 117;
                    f1837 = i % 128;
                    if (i % 2 != 0) {
                    }
                }
                StringBuilder sb = new StringBuilder(obj);
                sb.reverse();
                StringBuilder sb2 = m36140(num, obj2, sb.toString());
                int length = sb2.length();
                int i2 = length;
                if (length > 4) {
                    int i3 = f1839 + 73;
                    f1837 = i3 % 128;
                    if (!(i3 % 2 == 0)) {
                        sb2.delete(3, length);
                    } else {
                        sb2.delete(4, length);
                    }
                } else {
                    while (true) {
                        if (i2 >= 4) {
                            break;
                        }
                        i2++;
                        sb2.append('1');
                        f1837 = (f1839 + 67) % 128;
                    }
                }
                sb2.insert(0, m36142(25, (char) 0, 3).intern());
                return sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m36142(28, (char) 0, 42).intern());
                sb3.append(e);
                AFLogger.afRDLog(sb3.toString());
                return m36142(70, (char) 14499, 7).intern();
            }
        }

        /* renamed from: Ι */
        public static StringBuilder m36140(@NonNull String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                if ((i < 3 ? (char) 22 : '\r') == '\r') {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < intValue; i2++) {
                f1839 = (f1837 + 105) % 128;
                Integer num = null;
                int i3 = 0;
                while (true) {
                    if (!(i3 < 3)) {
                        break;
                    }
                    int charAt = strArr[i3].charAt(i2);
                    if (num == null) {
                        f1839 = (f1837 + 95) % 128;
                    } else {
                        charAt ^= num.intValue();
                    }
                    num = Integer.valueOf(charAt);
                    i3++;
                    f1839 = (f1837 + 87) % 128;
                }
                sb.append(Integer.toHexString(num.intValue()));
            }
            return sb;
        }
    }

    /* renamed from: ı */
    public static String m36151(Context context) {
        String str = null;
        if ((System.getProperties().containsKey(m36145(TsExtractor.TS_STREAM_TYPE_AC4, (char) 64087, 14).intern()) ? '.' : 'C') != 'C') {
            f1835 = (f1833 + 51) % 128;
            try {
                Matcher matcher = Pattern.compile(m36145(PsExtractor.AUDIO_STREAM, (char) 13471, 10).intern()).matcher(context.getCacheDir().getPath().replace(m36145(MatroskaExtractor.ID_PIXEL_HEIGHT, (char) 0, 6).intern(), ""));
                if ((matcher.find() ? ')' : 'c') != ')') {
                    str = null;
                } else {
                    int i = f1835 + 89;
                    f1833 = i % 128;
                    if (i % 2 != 0) {
                    }
                    str = matcher.group(1);
                }
            } catch (Exception e) {
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                    f1835 = (f1833 + 87) % 128;
                }
                C1830ai aiVar = C1830ai.f1791;
                String intern = m36145(202, (char) 0, 17).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(m36145(219, (char) 50471, 41).intern());
                sb.append(e);
                aiVar.m36172(null, intern, sb.toString());
                str = null;
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02c9  */
    @androidx.annotation.Nullable
    /* renamed from: ı */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36150(android.content.Context r5, long r6) {
        /*
            Method dump skipped, instructions count: 908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1839c.m36150(android.content.Context, long):java.lang.String");
    }

    /* renamed from: ı */
    public static boolean m36149(String str) {
        f1835 = (f1833 + 89) % 128;
        try {
            Class.forName(str);
            f1833 = (f1835 + 49) % 128;
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: ǃ */
    public static String m36148(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            f1835 = (f1833 + 83) % 128;
            f1833 = (f1835 + 79) % 128;
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: Ι */
    public static String m36147(Context context, String str) {
        Iterator it;
        f1833 = (f1835 + 27) % 128;
        try {
            it = ((List) PackageManager.class.getDeclaredMethod(m36145(260, (char) 17350, 24).intern(), Integer.TYPE).invoke(context.getPackageManager(), 0)).iterator();
            f1833 = (f1835 + 1) % 128;
        } catch (IllegalAccessException e) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai aiVar = C1830ai.f1791;
            String intern = m36145(284, (char) 48864, 24).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m36145(DefaultHttpDataSource.HTTP_STATUS_PERMANENT_REDIRECT, (char) 48289, 47).intern());
            sb.append(e);
            aiVar.m36172(null, intern, sb.toString());
        } catch (NoSuchMethodException e2) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
                int i = f1833 + 25;
                f1835 = i % 128;
                if (i % 2 == 0) {
                }
            }
            C1830ai aiVar2 = C1830ai.f1791;
            String intern2 = m36145(284, (char) 48864, 24).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m36145(DefaultHttpDataSource.HTTP_STATUS_PERMANENT_REDIRECT, (char) 48289, 47).intern());
            sb2.append(e2);
            aiVar2.m36172(null, intern2, sb2.toString());
        } catch (InvocationTargetException e3) {
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai aiVar3 = C1830ai.f1791;
            String intern3 = m36145(284, (char) 48864, 24).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(m36145(DefaultHttpDataSource.HTTP_STATUS_PERMANENT_REDIRECT, (char) 48289, 47).intern());
            sb3.append(e3);
            aiVar3.m36172(null, intern3, sb3.toString());
        }
        do {
            if ((it.hasNext() ? '7' : (char) 7) != '7') {
                return Boolean.FALSE.toString();
            }
        } while (!(((PackageItemInfo) ((ApplicationInfo) it.next())).packageName.equals(str)));
        int i2 = f1833 + 101;
        f1835 = i2 % 128;
        if (i2 % 2 != 0) {
            return Boolean.TRUE.toString();
        }
        Boolean.TRUE.toString();
        throw new ArithmeticException("divide by zero");
    }

    /* renamed from: Ι */
    public static String m36146(String str) {
        f1833 = (f1835 + 65) % 128;
        String str2 = str;
        if (str.contains(m36145(MetadataUtil.TYPE_TOP_BYTE_COPYRIGHT, (char) 49690, 1).intern())) {
            String[] split = str.split(m36145(170, (char) 46066, 2).intern());
            int length = split.length;
            StringBuilder sb = new StringBuilder();
            int i = length - 1;
            sb.append(split[i]);
            sb.append(m36145(MetadataUtil.TYPE_TOP_BYTE_COPYRIGHT, (char) 49690, 1).intern());
            f1835 = (f1833 + 103) % 128;
            int i2 = 1;
            while (true) {
                if (!(i2 < i)) {
                    break;
                }
                f1835 = (f1833 + 61) % 128;
                sb.append(split[i2]);
                sb.append(m36145(MetadataUtil.TYPE_TOP_BYTE_COPYRIGHT, (char) 49690, 1).intern());
                i2++;
            }
            sb.append(split[0]);
            str2 = sb.toString();
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000d  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /* renamed from: ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36145(int r9, char r10, int r11) {
        /*
            r0 = r11
            char[] r0 = new char[r0]
            r12 = r0
            r0 = 0
            r13 = r0
        L_0x0007:
            r0 = r13
            r1 = r11
            if (r0 >= r1) goto L_0x0014
            r0 = 74
            r14 = r0
            goto L_0x0018
        L_0x0014:
            r0 = 89
            r14 = r0
        L_0x0018:
            r0 = r14
            r1 = 89
            if (r0 == r1) goto L_0x0094
            int r0 = com.appsflyer.internal.C1839c.f1835
            r1 = 85
            int r0 = r0 + r1
            r14 = r0
            r0 = r14
            r1 = 128(0x80, float:1.794E-43)
            int r0 = r0 % r1
            com.appsflyer.internal.C1839c.f1833 = r0
            r0 = r14
            r1 = 2
            int r0 = r0 % r1
            if (r0 == 0) goto L_0x0058
            r0 = r12
            r1 = r13
            char[] r2 = com.appsflyer.internal.C1839c.f1832
            r3 = r9
            r4 = r13
            int r3 = r3 + r4
            char r2 = r2[r3]
            long r2 = (long) r2
            r3 = r13
            long r3 = (long) r3
            long r4 = com.appsflyer.internal.C1839c.f1834
            long r3 = r3 % r4
            long r2 = r2 | r3
            r3 = r10
            long r3 = (long) r3
            long r2 = r2 * r3
            int r2 = (int) r2
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            int r13 = r13 + 37
            goto L_0x0076
        L_0x0058:
            r0 = r12
            r1 = r13
            char[] r2 = com.appsflyer.internal.C1839c.f1832
            r3 = r9
            r4 = r13
            int r3 = r3 + r4
            char r2 = r2[r3]
            long r2 = (long) r2
            r3 = r13
            long r3 = (long) r3
            long r4 = com.appsflyer.internal.C1839c.f1834
            long r3 = r3 * r4
            long r2 = r2 ^ r3
            r3 = r10
            long r3 = (long) r3
            long r2 = r2 ^ r3
            int r2 = (int) r2
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            int r13 = r13 + 1
        L_0x0076:
            int r0 = com.appsflyer.internal.C1839c.f1835
            r1 = 109(0x6d, float:1.53E-43)
            int r0 = r0 + r1
            r14 = r0
            r0 = r14
            r1 = 128(0x80, float:1.794E-43)
            int r0 = r0 % r1
            com.appsflyer.internal.C1839c.f1833 = r0
            r0 = r14
            r1 = 2
            int r0 = r0 % r1
            if (r0 == 0) goto L_0x0091
            goto L_0x0007
        L_0x0091:
            goto L_0x0007
        L_0x0094:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r12
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1839c.m36145(int, char, int):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36144(java.lang.String r6, java.lang.Long r7) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1839c.m36144(java.lang.String, java.lang.Long):java.lang.String");
    }
}
