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
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b.class */
public final class b {

    /* renamed from: ǃ  reason: contains not printable characters */
    private static int f234 = 0;

    /* renamed from: Ι  reason: contains not printable characters */
    private static int f235 = 1;

    /* renamed from: ι  reason: contains not printable characters */
    private static char[] f236 = {'a', 7475, 15070, 22629, 29979, 37560, 45130, 52645, 60060, 2080, 9678, 17050, 24620, 32209, 39801, 47133, 54697, 62211, 4318, 11650, 19240, 26820, 34190, 41779, 49367, 56955, 64267, 6274, 13901, 21479, 28807, 36388, 43973, 51343, 58819, '0', 'y', 7460, 15043, 22638, 30041, 37532, 45155, 52646, 60044, 2081, 9725, 17079, 24596, 32212, 39803, 47104, 54691, 62327, 21471, 20097, 26981, 3023, 9896, 49417, 58275, 40451, 47468, 23452, 30250, 4465, 13184, 11878, 51346, 60413, 34393, 41206, 17155, 32319, 6349, 15225, 54903, 61654, 37729, 36241, 43262, 19220, 26019, 4, 9066, 56783, 59110, 64436, 56409, 48866, 37788, 29759, 22221, 11042, 3072, 61105, 49931, 42042, 34490, 39754, 32229, 24209, 13093, 5587, 63040, 51969, 44461, 36423, 25374, 17849, 9805, 22895, 17469, 25552, 363, 11285, 52150, 59716, 38059, 45966, 20778, 31966, 7061, 14629, 9430, 49770, 57624, 36080, 43632, 18913, 29831, 4665, 12736, 56450, 56109, 50815, 57746, 33577, 44631, 18932, 27398, 5865, 12747, 54138, 65216, 39410, 47971, 42636, 16436, 25436, 3784, 10240, 52149, 63168, 'a', 7475, 15070, 22629, 29979, 37560, 45130, 52645, 60038, 2080, 9686, 17105, 24585, 32203, 39807, 61791, 53786, 53045, 'j', 7484, 15052, 22646, 30042, 37560, 45121, 52645, 60060, 2088, 9682, 17051, 24629, 32203, 49450, 56379, 64478, 39281, 46105, 21425, 62495, 59718, 52900, 44154, 33078, 26314, 17463, 14740, 7923, 64605, 29111, 27841, 19243, 10624, 1259, 58198, 49583, 48146, 39769, 31177, 21557, 13166, 4568, 3129, 60043, 51688, 42058, 43436, 46294, 37689, 61841, 56571, 15199, 6628, 25621, 17261, 41359, 35887, 60272, 51650, 54387, 12959, 4600, 31833, 23215, 47365, 33837, 58078, 49450, 11360, 2777, 26994, 30600, 21233, 45393, 40878, 64067, 55657, 10193, 553, 24946, 20416, 43561, 34967, 38900, 62026, 53499, 16194, 43178, 46581, 37379, 61587, 56791, 14959, 6295, 25895, 16969, 41188, 36106, 59990, 51408, 54532, 13227, 4306, 32116, 23427, 47142, 34142, 58336, 49155, 11613, 3045, 40223, 32873, 42883, 50472, 59459, 4094, 11527, 20666, 30694, 38268, 47256, 57295, 64869, 57478, 1598, 9578, 18676, 28178, 36275, 45259, 54892, 62868, 6349, 15977, 'F', 7484, 15059, 22651, 29969, 37557, 45070, 52706, 60038, 2099, 9677, 17044, 24633, 32153, 39780, 47126, 54710, 62273, 4335, 11652, 19248, 26820, 34202, 41851, 49365, 56944, 64262, 6311, 13891, 21485, 28870, 36404, 43977, 51337, 58930, 919, 8561, 15881, 23469, 31054, 38648, 45969, 53547, 61168, 2962, 10595, 18070};

    /* renamed from: ı  reason: contains not printable characters */
    private static long f233 = 1905531472624098653L;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$a.class */
    public static final class a extends HashMap<String, Object> {

        /* renamed from: ǃ  reason: contains not printable characters */
        private static int f237 = 0;

        /* renamed from: ɩ  reason: contains not printable characters */
        private static char[] f238 = {21118, 61061, 11192, 25759, 41350, 58014, 16274, 30856, 46475, 63138, 13226, 19643, 44815, 5091, 55028, 39415, 23801, 45582, 3827, 52199, 34038, 16866, 749, 57318, 39136, 60365, 22335, 37432, 36700, 13223, 63147, 47522, 31919, 16306, 58098, 42425, 26815, 11144, 61063, 37276, 21643, 6018, 55963, 40336, 16541, 934, 50921, 35307, 19692, 4022, 45817, 30203, 14563, 64390, 48853, 25031, 9438, 59358, 43666, 28123, 4290, 54053, 38439, 22846, 7230, 57151, 33341, 17712, 2144, 52038, 34263, 14629, 64546, 45937, 30325, 13673, 59501, 'f', 48277, 31114, 13959, 62340, 45216, 28041, 10897, 59278, 42175, 25008, 7824, 56241, 39096, 21933, 16220, 33723, 18085, 2483, 52399, 52015, 30604, 45721, 64984, 14552, 52962, 29209, 46869, 63516, 15633, 32268, 41804, 58375, 10497, 27190, 44857, 53282, 5429, 22076, 39717, 56366, 291, 16920, 34647, 51285, 3410, 19976, 62298, 13377, 31048, 47725, 65401, 8240, 25955, 42593, 60280, 11368, 20772, 37533, 55172, 6291, 23953, 40600, 50072, 1161, 18827, 35510, 53222, 28912, 3462, 45433, 29822, 15221, 65141, 48493, 24636, 10037, 59952, 43272, 27736, 4873, 54789, 38222, 22558, 7952, 49685, 33120, 55955, 26208, 41838, 60532, 10605, 27255, 46974, 61496, 15739, 32320, 47966, 50243, 332, 16970, 36628, 51287, 5457, 22074, 37667, 56361, 6444, 23152, 59160, 8215, 27910, 44602, 60207, 13364, 28987, 45601, 65337, 14398, 17715, 34496, 50125, 3267, 18886, 53951, 28242, 43870, 58447, 8542, 25173, 48962, 63579, 13662, 30309, 45942, 'x', 48324, 31182, 58553, 22611, 40284, 53837, 5973, 21588, 'b', 32695, 49941, 52625, 28984, 38401, 10923, 'f', 48332, 31113, 14020, 62337, 45277, 28056, 10965, 59280, 42222, 25066, 7863, 56248, 39096, 21929, 4777};

        /* renamed from: ι  reason: contains not printable characters */
        private static long f239 = 4451731269474565372L;

        /* renamed from: Ӏ  reason: contains not printable characters */
        private static int f240 = 1;

        /* renamed from: ı  reason: contains not printable characters */
        private final Context f241;

        /* renamed from: Ι  reason: contains not printable characters */
        private final Map<String, Object> f242;

        /* renamed from: com.appsflyer.internal.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$a$a.class */
        public static final class C0133a {

            /* renamed from: ǃ  reason: contains not printable characters */
            private long f243;

            /* renamed from: ɩ  reason: contains not printable characters */
            public String f244;

            /* renamed from: Ι  reason: contains not printable characters */
            private final Object f245;

            C0133a() {
            }

            public C0133a(long j, String str) {
                this.f245 = new Object();
                this.f243 = 0L;
                this.f244 = "";
                this.f243 = j;
                this.f244 = str;
            }

            /* renamed from: ı  reason: contains not printable characters */
            static String m987(byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b2 : bArr) {
                    String hexString = Integer.toHexString(b2);
                    String str = hexString;
                    if (hexString.length() == 1) {
                        str = "0".concat(String.valueOf(hexString));
                    }
                    sb.append(str);
                }
                return sb.toString();
            }

            /* renamed from: ǃ  reason: contains not printable characters */
            static byte[] m988(byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            /* renamed from: ɩ  reason: contains not printable characters */
            public static C0133a m989(String str) {
                if (str == null) {
                    return new C0133a(0L, "");
                }
                String[] split = str.split(",");
                return split.length < 2 ? new C0133a(0L, "") : new C0133a(Long.parseLong(split[0]), split[1]);
            }

            /* renamed from: ɩ  reason: contains not printable characters */
            private boolean m990(long j) {
                return j - this.f243 > 2000;
            }

            /* renamed from: ι  reason: contains not printable characters */
            private boolean m991(long j, String str) {
                synchronized (this.f245) {
                    if (str != null) {
                        if (!str.equals(this.f244) && m990(j)) {
                            this.f243 = j;
                            this.f244 = str;
                            return true;
                        }
                    }
                    return false;
                }
            }

            /* renamed from: ι  reason: contains not printable characters */
            static byte[] m992(String str) throws Exception {
                return str.getBytes();
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f243);
                sb.append(",");
                sb.append(this.f244);
                return sb.toString();
            }

            /* renamed from: ǃ  reason: contains not printable characters */
            public final boolean m993(C0133a aVar) {
                return m991(aVar.f243, aVar.f244);
            }
        }

        public a(Map<String, Object> map, Context context) {
            this.f242 = map;
            this.f241 = context;
            put(m983(), m985());
        }

        /* renamed from: ı  reason: contains not printable characters */
        private String m983() {
            f240 = (f237 + 89) % 128;
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.f242.get(m986(0, (char) 21023, 12).intern()).toString();
                String obj2 = this.f242.get(m986(12, (char) 44909, 5).intern()).toString();
                if ((obj2 != null ? (char) 3 : (char) 6) != 3) {
                    f240 = (f237 + 19) % 128;
                    obj2 = m986(17, (char) 45632, 8).intern();
                }
                StringBuilder sb = new StringBuilder(obj);
                sb.reverse();
                StringBuilder sb2 = m984(num, obj2, sb.toString());
                int length = sb2.length();
                int i = length;
                if (length <= 4) {
                    while (true) {
                        if (!(i < 4)) {
                            break;
                        }
                        f237 = (f240 + 121) % 128;
                        i++;
                        sb2.append('1');
                    }
                } else {
                    sb2.delete(4, length);
                }
                sb2.insert(0, m986(25, (char) 60326, 3).intern());
                return sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m986(28, (char) 36666, 42).intern());
                sb3.append(e);
                AFLogger.afRDLog(sb3.toString());
                return m986(70, (char) 34236, 7).intern();
            }
        }

        /* renamed from: ɩ  reason: contains not printable characters */
        private static StringBuilder m984(String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            f240 = (f237 + 49) % 128;
            int i = 0;
            while (true) {
                if (!(i < 3)) {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
                f237 = (f240 + 83) % 128;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < intValue; i2++) {
                f240 = (f237 + 115) % 128;
                Integer num = null;
                int i3 = 0;
                while (true) {
                    if (i3 >= 3) {
                        break;
                    }
                    f237 = (f240 + 79) % 128;
                    int charAt = strArr[i3].charAt(i2);
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

        /* renamed from: Ι  reason: contains not printable characters */
        private String m985() {
            String str;
            String str2;
            int i;
            String str3;
            int i2;
            try {
                String obj = this.f242.get(m986(0, (char) 21023, 12).intern()).toString();
                String obj2 = this.f242.get(m986(77, (char) 0, 15).intern()).toString();
                String replaceAll = m986(92, (char) 16233, 5).intern().replaceAll(m986(97, (char) 51970, 5).intern(), "");
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(obj2);
                sb.append(replaceAll);
                String str4 = ac.m932(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(str4.substring(0, 16));
                str = sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m986(102, (char) 52868, 44).intern());
                sb3.append(e);
                AFLogger.afRDLog(sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("");
                sb4.append(m986(146, (char) 3556, 18).intern());
                str = sb4.toString();
            }
            try {
                Intent registerReceiver = this.f241.registerReceiver(null, new IntentFilter(m986(164, (char) 56050, 37).intern()));
                i = -2700;
                if (registerReceiver != null) {
                    f237 = (f240 + 51) % 128;
                    i = registerReceiver.getIntExtra(m986(201, (char) 53963, 11).intern(), -2700);
                }
                str3 = this.f241.getApplicationInfo().nativeLibraryDir;
            } catch (Exception e2) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(m986(102, (char) 52868, 44).intern());
                sb5.append(e2);
                AFLogger.afRDLog(sb5.toString());
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(m986(228, (char) 0, 16).intern());
                str2 = sb6.toString();
            }
            if (str3 != null) {
                if (!(!str3.contains(m986(LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, (char) 0, 3).intern()))) {
                    i2 = 1;
                    int size = ((SensorManager) this.f241.getSystemService(m986(215, (char) 58570, 6).intern())).getSensorList(-1).size();
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(m986(221, (char) 0, 1).intern());
                    sb7.append(i);
                    sb7.append(m986(222, (char) 32657, 2).intern());
                    sb7.append(i2);
                    sb7.append(m986(224, (char) 52663, 2).intern());
                    sb7.append(size);
                    sb7.append(m986(226, (char) 38439, 2).intern());
                    sb7.append(this.f242.size());
                    String obj3 = sb7.toString();
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(str);
                    sb8.append(C0133a.m987(C0133a.m988(C0133a.m992(obj3))));
                    str2 = sb8.toString();
                    f237 = (f240 + 121) % 128;
                    return str2;
                }
            }
            f240 = (f237 + 3) % 128;
            i2 = 0;
            int size2 = ((SensorManager) this.f241.getSystemService(m986(215, (char) 58570, 6).intern())).getSensorList(-1).size();
            StringBuilder sb72 = new StringBuilder();
            sb72.append(m986(221, (char) 0, 1).intern());
            sb72.append(i);
            sb72.append(m986(222, (char) 32657, 2).intern());
            sb72.append(i2);
            sb72.append(m986(224, (char) 52663, 2).intern());
            sb72.append(size2);
            sb72.append(m986(226, (char) 38439, 2).intern());
            sb72.append(this.f242.size());
            String obj32 = sb72.toString();
            StringBuilder sb82 = new StringBuilder();
            sb82.append(str);
            sb82.append(C0133a.m987(C0133a.m988(C0133a.m992(obj32))));
            str2 = sb82.toString();
            f237 = (f240 + 121) % 128;
            return str2;
        }

        /* renamed from: ι  reason: contains not printable characters */
        private static String m986(int i, char c2, int i2) {
            char[] cArr = new char[i2];
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    f237 = (f240 + 25) % 128;
                    cArr[i3] = (char) ((f238[i + i3] ^ (i3 * f239)) ^ c2);
                    i3++;
                } else {
                    String str = new String(cArr);
                    f237 = (f240 + 53) % 128;
                    return str;
                }
            }
        }
    }

    b() {
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static String m974(String str, Long l) {
        if ((str == null ? '&' : 'F') == '&' || l == null || str.length() != 32) {
            return m976(54, (char) 21437, 32).intern();
        }
        StringBuilder sb = new StringBuilder(str);
        String obj = l.toString();
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (i < obj.length()) {
            int i3 = f235 + 59;
            f234 = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 11 : 'H') != 'H') {
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
            if ((i4 >= sb.length() ? (char) 1 : 'L') != 'L') {
                break;
            }
            f234 = (f235 + 95) % 128;
            j += Character.getNumericValue(sb.charAt(i4));
            i4++;
        }
        while (j > 100) {
            j %= 100;
        }
        sb.insert(23, (int) j);
        if (j < 10) {
            int i5 = f235 + 7;
            f234 = i5 % 128;
            if (i5 % 2 != 0) {
                sb.insert(44, m976(106, (char) 0, 1).intern());
            } else {
                sb.insert(23, m976(35, (char) 0, 1).intern());
            }
        }
        return sb.toString();
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static boolean m975(String str) {
        int i = f235 + 39;
        f234 = i % 128;
        r6 = false;
        boolean z = false;
        try {
            if ((i % 2 == 0 ? (char) 27 : (char) 6) != 6) {
                Class.forName(str);
                z = true;
            } else {
                Class.forName(str);
            }
            f235 = (f234 + 19) % 128;
        } catch (ClassNotFoundException e) {
        }
        return z;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static String m976(int i, char c2, int i2) {
        f235 = (f234 + 37) % 128;
        char[] cArr = new char[i2];
        int i3 = 0;
        while (true) {
            if (!(i3 >= i2)) {
                f234 = (f235 + 13) % 128;
                cArr[i3] = (char) ((f236[i + i3] ^ (i3 * f233)) ^ c2);
                i3++;
            } else {
                String str = new String(cArr);
                f235 = (f234 + 29) % 128;
                return str;
            }
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static String m977(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            int i = (f235 + 85) % 128;
            f234 = i;
            f235 = (i + 83) % 128;
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static String m978(String str) {
        if (str.contains(m976(169, (char) 61809, 1).intern())) {
            String[] split = str.split(m976(170, (char) 53830, 2).intern());
            int length = split.length;
            StringBuilder sb = new StringBuilder();
            int i = length - 1;
            sb.append(split[i]);
            sb.append(m976(169, (char) 61809, 1).intern());
            int i2 = 1;
            while (true) {
                if ((i2 >= i ? 'Y' : '0') != '0') {
                    sb.append(split[0]);
                    String obj = sb.toString();
                    f235 = (f234 + 25) % 128;
                    return obj;
                }
                sb.append(split[i2]);
                sb.append(m976(169, (char) 61809, 1).intern());
                i2++;
            }
        } else {
            f234 = (f235 + 93) % 128;
            return str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        if ((java.lang.System.getProperties().containsKey(m976(172, 0, 14).intern())) != false) goto L_0x0065;
     */
    /* renamed from: Ι  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m979(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.m979(android.content.Context):java.lang.String");
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
    /* renamed from: Ι  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m980(android.content.Context r5, long r6) {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.b.m980(android.content.Context, long):java.lang.String");
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static String m981(Context context, String str) {
        f235 = (f234 + 51) % 128;
        try {
            Iterator it2 = ((List) PackageManager.class.getDeclaredMethod(m976(260, (char) 43213, 24).intern(), Integer.TYPE).invoke(context.getPackageManager(), 0)).iterator();
            while (true) {
                if (it2.hasNext()) {
                    int i = f234 + 89;
                    f235 = i % 128;
                    if (i % 2 == 0) {
                        if (((PackageItemInfo) ((ApplicationInfo) it2.next())).packageName.equals(str)) {
                            break;
                        }
                        f234 = (f235 + 53) % 128;
                    } else {
                        if ((!((PackageItemInfo) ((ApplicationInfo) it2.next())).packageName.equals(str) ? '(' : 'L') != '(') {
                            break;
                        }
                        f234 = (f235 + 53) % 128;
                    }
                } else {
                    break;
                }
            }
            int i2 = f235 + 103;
            f234 = i2 % 128;
            return i2 % 2 != 0 ? Boolean.TRUE.toString() : Boolean.TRUE.toString();
        } catch (IllegalAccessException e) {
            ae aeVar = ae.m938();
            String intern = m976(284, (char) 40284, 24).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m976(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb.append(e);
            aeVar.m948(null, intern, sb.toString());
        } catch (NoSuchMethodException e2) {
            ae aeVar2 = ae.m938();
            String intern2 = m976(284, (char) 40284, 24).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m976(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb2.append(e2);
            aeVar2.m948(null, intern2, sb2.toString());
        } catch (InvocationTargetException e3) {
            ae aeVar3 = ae.m938();
            String intern3 = m976(284, (char) 40284, 24).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(m976(StatusLine.HTTP_PERM_REDIRECT, (char) 0, 47).intern());
            sb3.append(e3);
            aeVar3.m948(null, intern3, sb3.toString());
        }
        return Boolean.FALSE.toString();
    }
}
