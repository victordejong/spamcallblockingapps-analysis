package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import com.explorestack.protobuf.openrtb.LossReason;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.appsflyer.internal.b */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b.class */
public final class C3418b {

    /* renamed from: ǃ */
    private static int f12910 = 0;

    /* renamed from: Ι */
    private static int f12911 = 1;

    /* renamed from: ι */
    private static char[] f12912 = {'a', 7475, 15070, 22629, 29979, 37560, 45130, 52645, 60060, 2080, 9678, 17050, 24620, 32209, 39801, 47133, 54697, 62211, 4318, 11650, 19240, 26820, 34190, 41779, 49367, 56955, 64267, 6274, 13901, 21479, 28807, 36388, 43973, 51343, 58819, '0', 'y', 7460, 15043, 22638, 30041, 37532, 45155, 52646, 60044, 2081, 9725, 17079, 24596, 32212, 39803, 47104, 54691, 62327, 21471, 20097, 26981, 3023, 9896, 49417, 58275, 40451, 47468, 23452, 30250, 4465, 13184, 11878, 51346, 60413, 34393, 41206, 17155, 32319, 6349, 15225, 54903, 61654, 37729, 36241, 43262, 19220, 26019, 4, 9066, 56783, 59110, 64436, 56409, 48866, 37788, 29759, 22221, 11042, 3072, 61105, 49931, 42042, 34490, 39754, 32229, 24209, 13093, 5587, 63040, 51969, 44461, 36423, 25374, 17849, 9805, 22895, 17469, 25552, 363, 11285, 52150, 59716, 38059, 45966, 20778, 31966, 7061, 14629, 9430, 49770, 57624, 36080, 43632, 18913, 29831, 4665, 12736, 56450, 56109, 50815, 57746, 33577, 44631, 18932, 27398, 5865, 12747, 54138, 65216, 39410, 47971, 42636, 16436, 25436, 3784, 10240, 52149, 63168, 'a', 7475, 15070, 22629, 29979, 37560, 45130, 52645, 60038, 2080, 9686, 17105, 24585, 32203, 39807, 61791, 53786, 53045, 'j', 7484, 15052, 22646, 30042, 37560, 45121, 52645, 60060, 2088, 9682, 17051, 24629, 32203, 49450, 56379, 64478, 39281, 46105, 21425, 62495, 59718, 52900, 44154, 33078, 26314, 17463, 14740, 7923, 64605, 29111, 27841, 19243, 10624, 1259, 58198, 49583, 48146, 39769, 31177, 21557, 13166, 4568, 3129, 60043, 51688, 42058, 43436, 46294, 37689, 61841, 56571, 15199, 6628, 25621, 17261, 41359, 35887, 60272, 51650, 54387, 12959, 4600, 31833, 23215, 47365, 33837, 58078, 49450, 11360, 2777, 26994, 30600, 21233, 45393, 40878, 64067, 55657, 10193, 553, 24946, 20416, 43561, 34967, 38900, 62026, 53499, 16194, 43178, 46581, 37379, 61587, 56791, 14959, 6295, 25895, 16969, 41188, 36106, 59990, 51408, 54532, 13227, 4306, 32116, 23427, 47142, 34142, 58336, 49155, 11613, 3045, 40223, 32873, 42883, 50472, 59459, 4094, 11527, 20666, 30694, 38268, 47256, 57295, 64869, 57478, 1598, 9578, 18676, 28178, 36275, 45259, 54892, 62868, 6349, 15977, 'F', 7484, 15059, 22651, 29969, 37557, 45070, 52706, 60038, 2099, 9677, 17044, 24633, 32153, 39780, 47126, 54710, 62273, 4335, 11652, 19248, 26820, 34202, 41851, 49365, 56944, 64262, 6311, 13891, 21485, 28870, 36404, 43977, 51337, 58930, 919, 8561, 15881, 23469, 31054, 38648, 45969, 53547, 61168, 2962, 10595, 18070};

    /* renamed from: ı */
    private static long f12909 = 1905531472624098653L;

    /* renamed from: com.appsflyer.internal.b$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$a.class */
    public static final class C3419a extends HashMap<String, Object> {

        /* renamed from: ǃ */
        private static int f12913 = 0;

        /* renamed from: ɩ */
        private static char[] f12914 = {21118, 61061, 11192, 25759, 41350, 58014, 16274, 30856, 46475, 63138, 13226, 19643, 44815, 5091, 55028, 39415, 23801, 45582, 3827, 52199, 34038, 16866, 749, 57318, 39136, 60365, 22335, 37432, 36700, 13223, 63147, 47522, 31919, 16306, 58098, 42425, 26815, 11144, 61063, 37276, 21643, 6018, 55963, 40336, 16541, 934, 50921, 35307, 19692, 4022, 45817, 30203, 14563, 64390, 48853, 25031, 9438, 59358, 43666, 28123, 4290, 54053, 38439, 22846, 7230, 57151, 33341, 17712, 2144, 52038, 34263, 14629, 64546, 45937, 30325, 13673, 59501, 'f', 48277, 31114, 13959, 62340, 45216, 28041, 10897, 59278, 42175, 25008, 7824, 56241, 39096, 21933, 16220, 33723, 18085, 2483, 52399, 52015, 30604, 45721, 64984, 14552, 52962, 29209, 46869, 63516, 15633, 32268, 41804, 58375, 10497, 27190, 44857, 53282, 5429, 22076, 39717, 56366, 291, 16920, 34647, 51285, 3410, 19976, 62298, 13377, 31048, 47725, 65401, 8240, 25955, 42593, 60280, 11368, 20772, 37533, 55172, 6291, 23953, 40600, 50072, 1161, 18827, 35510, 53222, 28912, 3462, 45433, 29822, 15221, 65141, 48493, 24636, 10037, 59952, 43272, 27736, 4873, 54789, 38222, 22558, 7952, 49685, 33120, 55955, 26208, 41838, 60532, 10605, 27255, 46974, 61496, 15739, 32320, 47966, 50243, 332, 16970, 36628, 51287, 5457, 22074, 37667, 56361, 6444, 23152, 59160, 8215, 27910, 44602, 60207, 13364, 28987, 45601, 65337, 14398, 17715, 34496, 50125, 3267, 18886, 53951, 28242, 43870, 58447, 8542, 25173, 48962, 63579, 13662, 30309, 45942, 'x', 48324, 31182, 58553, 22611, 40284, 53837, 5973, 21588, 'b', 32695, 49941, 52625, 28984, 38401, 10923, 'f', 48332, 31113, 14020, 62337, 45277, 28056, 10965, 59280, 42222, 25066, 7863, 56248, 39096, 21929, 4777};

        /* renamed from: ι */
        private static long f12915 = 4451731269474565372L;

        /* renamed from: Ӏ */
        private static int f12916 = 1;

        /* renamed from: ı */
        private final Context f12917;

        /* renamed from: Ι */
        private final Map<String, Object> f12918;

        /* renamed from: com.appsflyer.internal.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$a$a.class */
        public static final class C3420a {

            /* renamed from: ǃ */
            private long f12919;

            /* renamed from: ɩ */
            public String f12920;

            /* renamed from: Ι */
            private final Object f12921;

            C3420a() {
            }

            public C3420a(long j, String str) {
                this.f12921 = new Object();
                this.f12919 = 0L;
                this.f12920 = "";
                this.f12919 = j;
                this.f12920 = str;
            }

            /* renamed from: ı */
            static String m37978(byte[] bArr) throws Exception {
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

            /* renamed from: ǃ */
            static byte[] m37976(byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            /* renamed from: ɩ */
            public static C3420a m37974(String str) {
                if (str == null) {
                    return new C3420a(0L, "");
                }
                String[] split = str.split(",");
                return split.length < 2 ? new C3420a(0L, "") : new C3420a(Long.parseLong(split[0]), split[1]);
            }

            /* renamed from: ɩ */
            private boolean m37975(long j) {
                return j - this.f12919 > 2000;
            }

            /* renamed from: ι */
            private boolean m37973(long j, String str) {
                synchronized (this.f12921) {
                    if (str != null) {
                        if (!str.equals(this.f12920) && m37975(j)) {
                            this.f12919 = j;
                            this.f12920 = str;
                            return true;
                        }
                    }
                    return false;
                }
            }

            /* renamed from: ι */
            static byte[] m37972(String str) throws Exception {
                return str.getBytes();
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f12919);
                sb.append(",");
                sb.append(this.f12920);
                return sb.toString();
            }

            /* renamed from: ǃ */
            public final boolean m37977(C3420a c3420a) {
                return m37973(c3420a.f12919, c3420a.f12920);
            }
        }

        public C3419a(Map<String, Object> map, Context context) {
            this.f12918 = map;
            this.f12917 = context;
            put(m37982(), m37980());
        }

        /* renamed from: ı */
        private String m37982() {
            f12916 = (f12913 + 89) % 128;
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.f12918.get(m37979(0, (char) 21023, 12).intern()).toString();
                String obj2 = this.f12918.get(m37979(12, (char) 44909, 5).intern()).toString();
                if (!(obj2 != null ? true : true)) {
                    f12916 = (f12913 + 19) % 128;
                    obj2 = m37979(17, (char) 45632, 8).intern();
                }
                StringBuilder sb = new StringBuilder(obj);
                sb.reverse();
                StringBuilder m37981 = m37981(num, obj2, sb.toString());
                int length = m37981.length();
                int i = length;
                if (length <= 4) {
                    while (true) {
                        if (!(i < 4)) {
                            break;
                        }
                        f12913 = (f12916 + 121) % 128;
                        i++;
                        m37981.append('1');
                    }
                } else {
                    m37981.delete(4, length);
                }
                m37981.insert(0, m37979(25, (char) 60326, 3).intern());
                return m37981.toString();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(m37979(28, (char) 36666, 42).intern());
                sb2.append(e);
                AFLogger.afRDLog(sb2.toString());
                return m37979(70, (char) 34236, 7).intern();
            }
        }

        /* renamed from: ɩ */
        private static StringBuilder m37981(String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            f12916 = (f12913 + 49) % 128;
            int i = 0;
            while (true) {
                if (!(i < 3)) {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
                f12913 = (f12916 + 83) % 128;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < intValue; i2++) {
                f12916 = (f12913 + 115) % 128;
                Integer num = null;
                int i3 = 0;
                while (true) {
                    if (i3 >= 3) {
                        break;
                    }
                    f12913 = (f12916 + 79) % 128;
                    char charAt = strArr[i3].charAt(i2);
                    if (num != null) {
                        charAt ^= num.intValue();
                    }
                    num = Integer.valueOf(charAt);
                    i3++;
                }
                sb.append(Integer.toHexString(num.intValue()));
            }
            return sb;
        }

        /* renamed from: Ι */
        private String m37980() {
            String str;
            String str2;
            int i;
            String str3;
            int i2;
            try {
                String obj = this.f12918.get(m37979(0, (char) 21023, 12).intern()).toString();
                String obj2 = this.f12918.get(m37979(77, (char) 0, 15).intern()).toString();
                String replaceAll = m37979(92, (char) 16233, 5).intern().replaceAll(m37979(97, (char) 51970, 5).intern(), "");
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(obj2);
                sb.append(replaceAll);
                String m38027 = C3403ac.m38027(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(m38027.substring(0, 16));
                str = sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m37979(102, (char) 52868, 44).intern());
                sb3.append(e);
                AFLogger.afRDLog(sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("");
                sb4.append(m37979(146, (char) 3556, 18).intern());
                str = sb4.toString();
            }
            try {
                Intent registerReceiver = this.f12917.registerReceiver(null, new IntentFilter(m37979(164, (char) 56050, 37).intern()));
                i = -2700;
                if (registerReceiver != null) {
                    f12913 = (f12916 + 51) % 128;
                    i = registerReceiver.getIntExtra(m37979(201, (char) 53963, 11).intern(), -2700);
                }
                str3 = this.f12917.getApplicationInfo().nativeLibraryDir;
            } catch (Exception e2) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(m37979(102, (char) 52868, 44).intern());
                sb5.append(e2);
                AFLogger.afRDLog(sb5.toString());
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(m37979(228, (char) 0, 16).intern());
                str2 = sb6.toString();
            }
            if (str3 != null) {
                if (!(!str3.contains(m37979(LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, (char) 0, 3).intern()))) {
                    i2 = 1;
                    int size = ((SensorManager) this.f12917.getSystemService(m37979(215, (char) 58570, 6).intern())).getSensorList(-1).size();
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(m37979(221, (char) 0, 1).intern());
                    sb7.append(i);
                    sb7.append(m37979(222, (char) 32657, 2).intern());
                    sb7.append(i2);
                    sb7.append(m37979(224, (char) 52663, 2).intern());
                    sb7.append(size);
                    sb7.append(m37979(226, (char) 38439, 2).intern());
                    sb7.append(this.f12918.size());
                    String obj3 = sb7.toString();
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(str);
                    sb8.append(C3420a.m37978(C3420a.m37976(C3420a.m37972(obj3))));
                    str2 = sb8.toString();
                    f12913 = (f12916 + 121) % 128;
                    return str2;
                }
            }
            f12916 = (f12913 + 3) % 128;
            i2 = 0;
            int size2 = ((SensorManager) this.f12917.getSystemService(m37979(215, (char) 58570, 6).intern())).getSensorList(-1).size();
            StringBuilder sb72 = new StringBuilder();
            sb72.append(m37979(221, (char) 0, 1).intern());
            sb72.append(i);
            sb72.append(m37979(222, (char) 32657, 2).intern());
            sb72.append(i2);
            sb72.append(m37979(224, (char) 52663, 2).intern());
            sb72.append(size2);
            sb72.append(m37979(226, (char) 38439, 2).intern());
            sb72.append(this.f12918.size());
            String obj32 = sb72.toString();
            StringBuilder sb82 = new StringBuilder();
            sb82.append(str);
            sb82.append(C3420a.m37978(C3420a.m37976(C3420a.m37972(obj32))));
            str2 = sb82.toString();
            f12913 = (f12916 + 121) % 128;
            return str2;
        }

        /* renamed from: ι */
        private static String m37979(int i, char c, int i2) {
            char[] cArr = new char[i2];
            int i3 = 0;
            while (true) {
                if (!(i3 < i2)) {
                    String str = new String(cArr);
                    f12913 = (f12916 + 53) % 128;
                    return str;
                }
                f12913 = (f12916 + 25) % 128;
                cArr[i3] = (char) ((f12914[i + i3] ^ (i3 * f12915)) ^ c);
                i3++;
            }
        }
    }

    C3418b() {
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* renamed from: ı */
    private static String m37989(String str, Long l) {
        if ((str == null ? true : true) || l == null || str.length() != 32) {
            return m37988(54, (char) 21437, 32).intern();
        }
        StringBuilder sb = new StringBuilder(str);
        String obj = l.toString();
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (i < obj.length()) {
            int i3 = f12911 + 59;
            f12910 = i3 % 128;
            if (!(i3 % 2 == 0 ? true : true)) {
                i2 += Character.getNumericValue(obj.charAt(i));
                i++;
            } else {
                i2 /= Character.getNumericValue(obj.charAt(i));
                i += 93;
            }
        }
        String hexString = Integer.toHexString(i2);
        sb.replace(7, hexString.length() + 7, hexString);
        int i4 = 0;
        while (true) {
            if (!(i4 >= sb.length() ? true : true)) {
                break;
            }
            f12910 = (f12911 + 95) % 128;
            c += Character.getNumericValue(sb.charAt(i4));
            i4++;
        }
        while (c > 100) {
            c %= 'd';
        }
        sb.insert(23, c);
        if (c < 10) {
            int i5 = f12911 + 7;
            f12910 = i5 % 128;
            if (i5 % 2 != 0) {
                sb.insert(44, m37988(106, (char) 0, 1).intern());
            } else {
                sb.insert(23, m37988(35, (char) 0, 1).intern());
            }
        }
        return sb.toString();
    }

    /* renamed from: ı */
    private static boolean m37990(String str) {
        int i = f12911 + 39;
        f12910 = i % 128;
        boolean z = false;
        try {
            if (!(i % 2 == 0 ? true : true)) {
                Class.forName(str);
                z = true;
            } else {
                Class.forName(str);
            }
            f12911 = (f12910 + 19) % 128;
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: ǃ */
    private static String m37988(int i, char c, int i2) {
        f12911 = (f12910 + 37) % 128;
        char[] cArr = new char[i2];
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                String str = new String(cArr);
                f12911 = (f12910 + 29) % 128;
                return str;
            }
            f12910 = (f12911 + 13) % 128;
            cArr[i3] = (char) ((f12912[i + i3] ^ (i3 * f12909)) ^ c);
            i3++;
        }
    }

    /* renamed from: ǃ */
    private static String m37987(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            int i = (f12911 + 85) % 128;
            f12910 = i;
            f12911 = (i + 83) % 128;
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: ɩ */
    private static String m37986(String str) {
        if (!str.contains(m37988(169, (char) 61809, 1).intern())) {
            f12910 = (f12911 + 93) % 128;
            return str;
        }
        String[] split = str.split(m37988(170, (char) 53830, 2).intern());
        int length = split.length;
        StringBuilder sb = new StringBuilder();
        int i = length - 1;
        sb.append(split[i]);
        sb.append(m37988(169, (char) 61809, 1).intern());
        int i2 = 1;
        while (true) {
            if (!(i2 >= i ? true : true)) {
                sb.append(split[0]);
                String obj = sb.toString();
                f12911 = (f12910 + 25) % 128;
                return obj;
            }
            sb.append(split[i2]);
            sb.append(m37988(169, (char) 61809, 1).intern());
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        if ((java.lang.System.getProperties().containsKey(m37988(172, 0, 14).intern())) != false) goto L31;
     */
    /* renamed from: Ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m37985(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C3418b.m37985(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02d9  */
    /* renamed from: Ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m37984(android.content.Context r5, long r6) {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C3418b.m37984(android.content.Context, long):java.lang.String");
    }

    /* renamed from: ι */
    private static String m37983(Context context, String str) {
        f12911 = (f12910 + 51) % 128;
        try {
            Iterator it2 = ((List) PackageManager.class.getDeclaredMethod(m37988(260, (char) 43213, 24).intern(), Integer.TYPE).invoke(context.getPackageManager(), 0)).iterator();
            while (true) {
                if (it2.hasNext()) {
                    int i = f12910 + 89;
                    f12911 = i % 128;
                    if (i % 2 == 0) {
                        if (((PackageItemInfo) ((ApplicationInfo) it2.next())).packageName.equals(str)) {
                            break;
                        }
                        f12910 = (f12911 + 53) % 128;
                    } else {
                        if (!(!((PackageItemInfo) ((ApplicationInfo) it2.next())).packageName.equals(str) ? true : true)) {
                            break;
                        }
                        f12910 = (f12911 + 53) % 128;
                    }
                } else {
                    break;
                }
            }
            int i2 = f12911 + 103;
            f12910 = i2 % 128;
            return i2 % 2 != 0 ? Boolean.TRUE.toString() : Boolean.TRUE.toString();
        } catch (IllegalAccessException e) {
            C3406ae m38019 = C3406ae.m38019();
            String intern = m37988(284, (char) 40284, 24).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m37988(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb.append(e);
            m38019.m38018(null, intern, sb.toString());
        } catch (NoSuchMethodException e2) {
            C3406ae m380192 = C3406ae.m38019();
            String intern2 = m37988(284, (char) 40284, 24).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m37988(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb2.append(e2);
            m380192.m38018(null, intern2, sb2.toString());
        } catch (InvocationTargetException e3) {
            C3406ae m380193 = C3406ae.m38019();
            String intern3 = m37988(284, (char) 40284, 24).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(m37988(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb3.append(e3);
            m380193.m38018(null, intern3, sb3.toString());
        }
        return Boolean.FALSE.toString();
    }
}
