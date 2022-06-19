package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PixelFormat;
import android.hardware.SensorManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.telephony.PhoneNumberUtils;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.URLUtil;
import android.widget.ExpandableListView;
import com.amazon.device.ads.DtbConstants;
import com.appsflyer.AFLogger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.c */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c.class */
public final class C0788c {
    private static char[] AFInAppEventParameterName = {24, 28, 'M', 'a', 'J', '4', 'L', 'N', '7', '2', 'J', 'c', 'c', 'c', 'a', 'a', 'I', '1', '0', '1', 'L', 'K', '5', 'N', 'J', '2', 'L', 'L', 'L', 'L', 'M', 'M', '3', 'Z', 187, 189, 191, 196, 192, 186, 157, 162, 197, 164, 140, 165, 190, 200, 192, 191, 201, 183, 171, 187, 187, 184, 186, 191, '@', 133, 128, 'p', 'q', '~', 137, 140, 'p', 'M', 'f', 135, 'd', '_', '|', 130, 134, 129, 127, '}', 26, 'L', '9', 'm', 'f', 'j', 'n', 'p', 'Q', 'N', 'l', 'K', 'G', 'k', 'k', 'e', 206, 208, 137, 216, 221, 137, 205, 206, 213, 210, 202, 175, 137, 163, 215, 216, 210, 221, 217, 206, 204, 225, 206, 137, 209, 221, 210, 224, 137, 209, 221, 202, 217, 137, 206, 209, 204, 202, 204, 137, 221};
    private static long AFInAppEventType = 9088409587802389276L;
    private static int valueOf = 0;
    private static int values = 1;

    /* renamed from: com.appsflyer.internal.c$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c$d.class */
    public static final class C0789d extends HashMap<String, Object> {
        private static int AFVersionDeclaration = 1;
        private static int getLevel;
        private final Context AFKeystoreWrapper;
        private final Map<String, Object> values;
        private static char[] AFInAppEventType = {45871, 57605, 5963, 17853, 64403, 10690, 24101, 35846, 8786, 20666, 34529, 13521, 54318, 34306, 28773, 8869, 40070, 20160, 14624, 60191, 15890, 27697, 39493, 58167, 45333, 18297, 5541, 43921, 31228, 3646, 56351, 29271, 167, 55035, 25850, 14636, 53100, 40258, 38571, 50334, 13043, 24628, 56857, 5831, 17641, 45725, 57415, 24176, 35873, 64411, 10667, 34809, 62720, 8963, 37235, 52360, 14986, 26849, 50742, 13380, 25184, 'b', '&', 21086, '&', 21085};
        private static long valueOf = -6884389957348077011L;
        private static int[] AFInAppEventParameterName = {264022428, -820998946, -1835969172, 545826097, 1791829078, 35725697, -876159950, -884180872, 791409275, -2126541223, 1035454124, -679804399, -620917022, 1978309802, 824869615, -147598075, -461163612, -436180871};

        /* renamed from: com.appsflyer.internal.c$d$b */
        /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/c$d$b.class */
        public static final class C0790b {
            public final Boolean AFKeystoreWrapper;
            public Boolean valueOf;
            public final String values;

            public C0790b() {
            }

            public C0790b(String str, Boolean bool) {
                this.values = str;
                this.AFKeystoreWrapper = bool;
            }

            public static byte[] AFInAppEventParameterName(@NonNull byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            @NonNull
            public static String AFInAppEventType(@NonNull byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b : bArr) {
                    String hexString = Integer.toHexString(b);
                    String str = hexString;
                    if (hexString.length() == 1) {
                        str = DtbConstants.NETWORK_TYPE_UNKNOWN.concat(hexString);
                    }
                    sb.append(str);
                }
                return sb.toString();
            }

            @NonNull
            public static byte[] AFInAppEventType(@NonNull String str) throws Exception {
                return str.getBytes();
            }
        }

        public C0789d(Map<String, Object> map, Context context) {
            this.values = map;
            this.AFKeystoreWrapper = context;
            put(AFKeystoreWrapper(), AFInAppEventParameterName());
        }

        private String AFInAppEventParameterName() {
            String str;
            String str2;
            int i;
            String str3;
            int i2;
            try {
                String obj = this.values.get(AFInAppEventParameterName(TextUtils.getTrimmedLength(""), (char) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 45903), 12 - ExpandableListView.getPackedPositionType(0L)).intern()).toString();
                String obj2 = this.values.get(AFInAppEventParameterName(24 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) (58193 - View.MeasureSpec.makeMeasureSpec(0, 0)), 15 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern()).toString();
                String replaceAll = AFInAppEventParameterName(38 - View.MeasureSpec.getSize(0), (char) (38557 - ExpandableListView.getPackedPositionType(0L)), 5 - ((Process.getThreadPriority(0) + 20) >> 6)).intern().replaceAll(values(new int[]{554720026, 810846395, -1353340409, 1995249900}, TextUtils.indexOf((CharSequence) "", '0', 0) + 6).intern(), "");
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(obj2);
                sb.append(replaceAll);
                String AFInAppEventParameterName2 = RunnableC0725ah.AFInAppEventParameterName(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(AFInAppEventParameterName2.substring(0, 16));
                str = sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(values(new int[]{640847658, -233831226, 620669702, -1347693514, 1083507952, -1102549683, -450369102, -1732957970, 393969182, 886873569, -1952655995, 1892296752, 1890815725, -1673734706, 1444084348, -987179240, 1094281385, 992383361, 17585538, 973864474, -432527319, -1739858274}, TextUtils.lastIndexOf("", '0') + 45).intern());
                sb3.append(e);
                AFLogger.AFInAppEventParameterName(sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("");
                sb4.append(AFInAppEventParameterName(42 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (5797 - (ViewConfiguration.getDoubleTapTimeout() >> 16)), AndroidCharacter.getMirror('0') - 30).intern());
                str = sb4.toString();
            }
            try {
                Intent registerReceiver = this.AFKeystoreWrapper.registerReceiver(null, new IntentFilter(values(new int[]{-248593871, 418937694, 1034627370, 175927361, -56373222, 1046364932, 687343027, -368521510, 1427030466, 1568180991, -741401460, -1800867994, 1331349556, 1216887738, -1608381182, -1947019990, 948188064, 1315957742, -1365079188, 1790179928}, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 37).intern()));
                i = -2700;
                if (registerReceiver != null) {
                    i = registerReceiver.getIntExtra(values(new int[]{998518318, -1660110958, -513052711, 611993354, 508697840, 1938850892}, PhoneNumberUtils.toaFromString("") - 118).intern(), -2700);
                } else {
                    AFVersionDeclaration = (getLevel + 121) % 128;
                }
                str3 = this.AFKeystoreWrapper.getApplicationInfo().nativeLibraryDir;
            } catch (Exception e2) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(values(new int[]{640847658, -233831226, 620669702, -1347693514, 1083507952, -1102549683, -450369102, -1732957970, 393969182, 886873569, -1952655995, 1892296752, 1890815725, -1673734706, 1444084348, -987179240, 1094281385, 992383361, 17585538, 973864474, -432527319, -1739858274}, 44 - (ViewConfiguration.getTapTimeout() >> 16)).intern());
                sb5.append(e2);
                AFLogger.AFInAppEventParameterName(sb5.toString());
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(values(new int[]{-828854563, 475996213, 640677171, -1604617094, -1550728992, -1021112346, 2006942107, 297401137}, TextUtils.getCapsMode("", 0, 0) + 16).intern());
                str2 = sb6.toString();
            }
            if (str3 != null) {
                if (str3.contains(values(new int[]{-1675036583, 1271474483}, 2 - ImageFormat.getBitsPerPixel(0)).intern())) {
                    int i3 = getLevel + 61;
                    AFVersionDeclaration = i3 % 128;
                    if (i3 % 2 == 0 ? true : true) {
                        i2 = 1;
                        int size = ((SensorManager) this.AFKeystoreWrapper.getSystemService(values(new int[]{-2108098182, 924452591, -880754948, 1430040891}, 6 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern())).getSensorList(-1).size();
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(AFInAppEventParameterName(TextUtils.getCapsMode("", 0, 0) + 61, (char) (ViewConfiguration.getTapTimeout() >> 16), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 1).intern());
                        sb7.append(i);
                        sb7.append(values(new int[]{1802121942, -851730084}, KeyEvent.getDeadChar(0, 0) + 2).intern());
                        sb7.append(i2);
                        sb7.append(AFInAppEventParameterName((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 61, (char) TextUtils.getCapsMode("", 0, 0), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 1).intern());
                        sb7.append(size);
                        sb7.append(AFInAppEventParameterName(Color.blue(0) + 64, (char) TextUtils.getCapsMode("", 0, 0), 6 - AndroidCharacter.getEastAsianWidth('0')).intern());
                        sb7.append(this.values.size());
                        String obj3 = sb7.toString();
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(str);
                        sb8.append(C0790b.AFInAppEventType(C0790b.AFInAppEventParameterName(C0790b.AFInAppEventType(obj3))));
                        str2 = sb8.toString();
                        return str2;
                    }
                }
            }
            i2 = 0;
            int size2 = ((SensorManager) this.AFKeystoreWrapper.getSystemService(values(new int[]{-2108098182, 924452591, -880754948, 1430040891}, 6 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern())).getSensorList(-1).size();
            StringBuilder sb72 = new StringBuilder();
            sb72.append(AFInAppEventParameterName(TextUtils.getCapsMode("", 0, 0) + 61, (char) (ViewConfiguration.getTapTimeout() >> 16), (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 1).intern());
            sb72.append(i);
            sb72.append(values(new int[]{1802121942, -851730084}, KeyEvent.getDeadChar(0, 0) + 2).intern());
            sb72.append(i2);
            sb72.append(AFInAppEventParameterName((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 61, (char) TextUtils.getCapsMode("", 0, 0), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 1).intern());
            sb72.append(size2);
            sb72.append(AFInAppEventParameterName(Color.blue(0) + 64, (char) TextUtils.getCapsMode("", 0, 0), 6 - AndroidCharacter.getEastAsianWidth('0')).intern());
            sb72.append(this.values.size());
            String obj32 = sb72.toString();
            StringBuilder sb82 = new StringBuilder();
            sb82.append(str);
            sb82.append(C0790b.AFInAppEventType(C0790b.AFInAppEventParameterName(C0790b.AFInAppEventType(obj32))));
            str2 = sb82.toString();
            return str2;
        }

        private static String AFInAppEventParameterName(int i, char c, int i2) {
            int i3 = AFVersionDeclaration + 27;
            getLevel = i3 % 128;
            if (i3 % 2 != 0) {
            }
            char[] cArr = new char[i2];
            int i4 = 0;
            while (true) {
                if (i4 < i2) {
                    int i5 = AFVersionDeclaration + 63;
                    getLevel = i5 % 128;
                    if (i5 % 2 != 0) {
                        cArr[i4] = (char) ((AFInAppEventType[i << i4] ^ (i4 | valueOf)) * c);
                        i4 += 126;
                    } else {
                        cArr[i4] = (char) ((AFInAppEventType[i + i4] ^ (i4 * valueOf)) ^ c);
                        i4++;
                    }
                } else {
                    return new String(cArr);
                }
            }
        }

        private static StringBuilder AFInAppEventType(@NonNull String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                if (!(i < 3)) {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            AFVersionDeclaration = (getLevel + 9) % 128;
            int i2 = 0;
            while (true) {
                if (!(i2 < intValue ? true : true)) {
                    getLevel = (AFVersionDeclaration + 75) % 128;
                    Integer num = null;
                    for (int i3 = 0; i3 < 3; i3++) {
                        char charAt = strArr[i3].charAt(i2);
                        if (num == null) {
                            getLevel = (AFVersionDeclaration + 25) % 128;
                        } else {
                            charAt ^= num.intValue();
                        }
                        num = Integer.valueOf(charAt);
                    }
                    sb.append(Integer.toHexString(num.intValue()));
                    i2++;
                } else {
                    return sb;
                }
            }
        }

        @NonNull
        private String AFKeystoreWrapper() {
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.values.get(AFInAppEventParameterName((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (TextUtils.lastIndexOf("", '0', 0) + 45903), 11 - ExpandableListView.getPackedPositionChild(0L)).intern()).toString();
                String obj2 = this.values.get(values(new int[]{-1400612638, 722893263, 1201510708, 1839577259}, Color.red(0) + 5).intern()).toString();
                String str = obj2;
                if (obj2 == null) {
                    AFVersionDeclaration = (getLevel + 111) % 128;
                    str = AFInAppEventParameterName(12 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (54368 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), 8 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern();
                }
                StringBuilder sb = new StringBuilder(obj);
                sb.reverse();
                StringBuilder AFInAppEventType2 = AFInAppEventType(num, str, sb.toString());
                int length = AFInAppEventType2.length();
                if (!(length > 4 ? true : true)) {
                    int i = length;
                    while (true) {
                        if (!(i < 4 ? true : true)) {
                            break;
                        }
                        i++;
                        AFInAppEventType2.append('1');
                    }
                } else {
                    int i2 = getLevel + 63;
                    AFVersionDeclaration = i2 % 128;
                    if (i2 % 2 == 0) {
                        AFInAppEventType2.delete(5, length);
                    } else {
                        AFInAppEventType2.delete(4, length);
                    }
                }
                AFInAppEventType2.insert(0, AFInAppEventParameterName((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 19, (char) (TextUtils.indexOf("", "", 0) + 15993), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 2).intern());
                return AFInAppEventType2.toString();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(values(new int[]{640847658, -233831226, 620669702, -1347693514, 1083507952, -1102549683, -450369102, -1732957970, 393969182, 886873569, -1907198063, -659358675, -1220524838, -426323891, 726030888, -1625741836, 826016106, -853521743, -1716907684, 603768842, 752977807, -1933892853}, View.getDefaultSize(0, 0) + 42).intern());
                sb2.append(e);
                AFLogger.AFInAppEventParameterName(sb2.toString());
                return values(new int[]{180447687, -652056002, 277827748, -169691734}, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 7).intern();
            }
        }

        private static String values(int[] iArr, int i) {
            AFVersionDeclaration = (getLevel + 29) % 128;
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) AFInAppEventParameterName.clone();
            getLevel = (AFVersionDeclaration + 1) % 128;
            int i2 = 0;
            while (true) {
                if (!(i2 >= iArr.length)) {
                    AFVersionDeclaration = (getLevel + 5) % 128;
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    int i3 = i2 + 1;
                    cArr[2] = (char) (iArr[i3] >> 16);
                    cArr[3] = (char) iArr[i3];
                    C0807cu.values(cArr, iArr2, false);
                    int i4 = i2 << 1;
                    cArr2[i4] = cArr[0];
                    cArr2[i4 + 1] = cArr[1];
                    cArr2[i4 + 2] = cArr[2];
                    cArr2[i4 + 3] = cArr[3];
                    i2 += 2;
                } else {
                    return new String(cArr2, 0, i);
                }
            }
        }
    }

    private static String AFInAppEventParameterName(Context context) {
        int i = values + 33;
        valueOf = i % 128;
        try {
            String str = (i % 2 != 0 ? context.getPackageManager().getPackageInfo(context.getPackageName(), 1) : context.getPackageManager().getPackageInfo(context.getPackageName(), 0)).packageName;
            valueOf = (values + 55) % 128;
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    private static boolean AFInAppEventParameterName(String str) {
        values = (valueOf + 17) % 128;
        try {
            Class.forName(str);
            int i = valueOf + 53;
            values = i % 128;
            if (!(i % 2 == 0 ? true : true)) {
                return true;
            }
            throw null;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private static String AFInAppEventType(Context context) {
        String str;
        if (!(System.getProperties().containsKey(valueOf("��\u0001\u0001��\u0001\u0001��\u0001��\u0001\u0001\u0001\u0001\u0001", new int[]{80, 14, 0, 0}, URLUtil.isJavaScriptUrl("javascript:")).intern()))) {
            str = null;
        } else {
            try {
                Matcher matcher = Pattern.compile(values("獬穏獂䅹镹\ue36e\uef30齁常曟\uf7f9쏒\uab88劬").intern()).matcher(context.getCacheDir().getPath().replace(values("潨씤潇﹛煋ܒ헨荟擟�").intern(), ""));
                str = null;
                if (!(matcher.find() ? true : true)) {
                    int i = valueOf + 95;
                    values = i % 128;
                    str = i % 2 == 0 ? matcher.group(0) : matcher.group(1);
                    valueOf = (values + 93) % 128;
                }
            } catch (Exception e) {
                C0739aj AFInAppEventParameterName2 = C0739aj.AFInAppEventParameterName();
                String intern = values("쭱」쬲\u0b79胩\uf6b4蜒✩㘥Ⲇ\ue234\uab8c᎗\u18fd쾒뱴ฒୡ묈䃮窜").intern();
                StringBuilder sb = new StringBuilder();
                sb.append(valueOf(null, new int[]{94, 41, 105, 12}, TextUtils.regionMatches("", 0, "", 0, 0)).intern());
                sb.append(e);
                AFInAppEventParameterName2.AFInAppEventType(null, intern, sb.toString());
                return null;
            }
        }
        valueOf = (values + 121) % 128;
        return str;
    }

    @Nullable
    public static String AFKeystoreWrapper(Context context, long j) {
        String values2;
        String str;
        String str2;
        String values3;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        if (!(!AFInAppEventParameterName(values("㎆䌿㏧硍ᄅ杙ﮄ�䪢徨珉흈\ueb73比幱샳\uf6c7硉⫢㱨艞钿㚩⧓궻ꅤԝՎ뤨붟ᆤ焛䒖쨏ﰬ抡倂\ue6a3").intern()))) {
            valueOf = (values + 91) % 128;
            values2 = valueOf("\u0001", new int[]{0, 1, 0, 0}, !PhoneNumberUtils.isNonSeparator('0'));
        } else {
            values2 = values("迻迋䟅િꌖ");
        }
        sb2.append(values2.intern());
        StringBuilder sb4 = new StringBuilder();
        String packageName = context.getPackageName();
        String valueOf2 = valueOf(packageName);
        sb2.append(valueOf("\u0001", new int[]{0, 1, 0, 0}, PhoneNumberUtils.isGlobalPhoneNumber("")).intern());
        sb4.append(valueOf2);
        if (!(AFInAppEventType(context) != null)) {
            sb2.append(values("迻迋䟅િꌖ").intern());
            sb4.append(packageName);
        } else {
            sb2.append(valueOf("\u0001", new int[]{0, 1, 0, 0}, !TextUtils.isEmpty("")).intern());
            sb4.append(packageName);
        }
        String AFInAppEventParameterName2 = AFInAppEventParameterName(context);
        if (AFInAppEventParameterName2 == null) {
            int i = values + 31;
            valueOf = i % 128;
            if (i % 2 != 0) {
                sb2.append(values("迻迋䟅િꌖ").intern());
                sb4.append(packageName);
                throw new ArithmeticException("divide by zero");
            }
            sb2.append(values("迻迋䟅િꌖ").intern());
            sb4.append(packageName);
        } else {
            sb2.append(valueOf("\u0001", new int[]{0, 1, 0, 0}, !URLUtil.isHttpsUrl(DtbConstants.HTTPS)).intern());
            sb4.append(AFInAppEventParameterName2);
        }
        sb4.append(Boolean.TRUE.toString());
        sb.append(sb4.toString());
        try {
            sb.append(new SimpleDateFormat(values("ꏄﻂꎽ얧䋱㒰响俠\ue5e0\ue266—砉笹혿බ澜暥얦礔錷ሎ⤡").intern(), Locale.US).format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
            values = (valueOf + 57) % 128;
            sb.append(j);
            if (AFInAppEventParameterName(valueOf("\u0001\u0001����\u0001��\u0001��\u0001��\u0001��\u0001\u0001��\u0001\u0001\u0001����\u0001\u0001����\u0001", new int[]{33, 25, 84, 0}, !TextUtils.isDigitsOnly("")).intern())) {
                valueOf = (values + 5) % 128;
                str = valueOf("\u0001", new int[]{0, 1, 0, 0}, !PhoneNumberUtils.isDialable('0')).intern();
                valueOf = (values + 1) % 128;
            } else {
                str = values("迻迋䟅િꌖ").intern();
            }
            sb3.append(str);
            sb3.append((!(AFInAppEventParameterName(values("ꓽ묋꒜聹욭냱舺䢃㌜\ua79cꑡ껶簔鏤觇륌憻聴ﵗ䗝ᕲ泶\ue130偦㫟奚튷").intern()) ? true : true) ? values("迻迋䟅િꌖ") : valueOf("\u0001", new int[]{0, 1, 0, 0}, !PhoneNumberUtils.isDialable('0'))).intern());
            sb3.append((AFInAppEventParameterName(valueOf("\u0001����\u0001\u0001\u0001\u0001����\u0001\u0001��\u0001��\u0001��\u0001����\u0001", new int[]{58, 20, 22, 0}, URLUtil.isNetworkUrl(DtbConstants.HTTP)).intern()) ? valueOf("\u0001", new int[]{0, 1, 0, 0}, PixelFormat.formatHasAlpha(0)) : values("迻迋䟅િꌖ")).intern());
            if (AFInAppEventParameterName(values("\uf6ee輠\uf68f둒ᨼ池ꘀ᪐ᜦ鎷磰諌⸁\ua7cb啐鴼㎊둌⇝").intern())) {
                int i2 = valueOf + 45;
                values = i2 % 128;
                if (i2 % 2 == 0 ? true : true) {
                    str2 = valueOf("\u0001", new int[]{0, 1, 0, 0}, URLUtil.isContentUrl("content:")).intern();
                    sb3.append(str2);
                    String AFInAppEventType2 = RunnableC0725ah.AFInAppEventType(RunnableC0725ah.AFInAppEventParameterName(sb.toString()));
                    String obj = sb2.toString();
                    StringBuilder sb5 = new StringBuilder(AFInAppEventType2);
                    sb5.setCharAt(17, Integer.toString(Integer.parseInt(obj, 2), 16).charAt(0));
                    String obj2 = sb5.toString();
                    String obj3 = sb3.toString();
                    StringBuilder sb6 = new StringBuilder(obj2);
                    sb6.setCharAt(27, Integer.toString(Integer.parseInt(obj3, 2), 16).charAt(0));
                    return valueOf(sb6.toString(), Long.valueOf(j));
                }
                values3 = valueOf("\u0001", new int[]{0, 1, 0, 0}, true ^ URLUtil.isContentUrl("content:"));
            } else {
                values3 = values("迻迋䟅િꌖ");
            }
            str2 = values3.intern();
            sb3.append(str2);
            String AFInAppEventType22 = RunnableC0725ah.AFInAppEventType(RunnableC0725ah.AFInAppEventParameterName(sb.toString()));
            String obj4 = sb2.toString();
            StringBuilder sb52 = new StringBuilder(AFInAppEventType22);
            sb52.setCharAt(17, Integer.toString(Integer.parseInt(obj4, 2), 16).charAt(0));
            String obj22 = sb52.toString();
            String obj32 = sb3.toString();
            StringBuilder sb62 = new StringBuilder(obj22);
            sb62.setCharAt(27, Integer.toString(Integer.parseInt(obj32, 2), 16).charAt(0));
            return valueOf(sb62.toString(), Long.valueOf(j));
        } catch (PackageManager.NameNotFoundException e) {
            return valueOf("\u0001\u0001\u0001����\u0001\u0001��\u0001\u0001����\u0001\u0001\u0001\u0001��\u0001����\u0001��\u0001����\u0001\u0001\u0001\u0001����\u0001", new int[]{1, 32, 0, 15}, TextUtils.isDigitsOnly("")).intern();
        }
    }

    private static String valueOf(String str) {
        values = (valueOf + 63) % 128;
        if (!(str.contains(values("ỢỌ剙뭌�").intern()))) {
            int i = values + 57;
            valueOf = i % 128;
            if (!(i % 2 != 0 ? true : true)) {
                return str;
            }
            throw new ArithmeticException("divide by zero");
        }
        String[] split = str.split(valueOf("\u0001��", new int[]{78, 2, 7, 1}, !URLUtil.isAboutUrl("about:")).intern());
        int length = split.length;
        StringBuilder sb = new StringBuilder();
        int i2 = length - 1;
        sb.append(split[i2]);
        sb.append(values("ỢỌ剙뭌�").intern());
        for (int i3 = 1; i3 < i2; i3++) {
            valueOf = (values + 45) % 128;
            sb.append(split[i3]);
            sb.append(values("ỢỌ剙뭌�").intern());
        }
        sb.append(split[0]);
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    private static String valueOf(String str, Long l) {
        char c;
        if (str == null || l == null || str.length() != 32) {
            return valueOf("\u0001\u0001\u0001����\u0001\u0001��\u0001\u0001����\u0001\u0001\u0001\u0001��\u0001����\u0001��\u0001����\u0001\u0001\u0001\u0001����\u0001", new int[]{1, 32, 0, 15}, !Gravity.isVertical(0)).intern();
        }
        StringBuilder sb = new StringBuilder(str);
        String obj = l.toString();
        char c2 = 0;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!(i < obj.length() ? true : true)) {
                break;
            }
            i2 += Character.getNumericValue(obj.charAt(i));
            i++;
            values = (valueOf + 5) % 128;
        }
        String hexString = Integer.toHexString(i2);
        sb.replace(7, hexString.length() + 7, hexString);
        int i3 = 0;
        while (true) {
            c = c2;
            if (i3 < sb.length()) {
                c2 += Character.getNumericValue(sb.charAt(i3));
                i3++;
            }
        }
        while (true) {
            if (!(c > 100)) {
                break;
            }
            int i4 = valueOf + 21;
            values = i4 % 128;
            c = i4 % 2 == 0 ? c - 'd' : c % 'd';
        }
        sb.insert(23, c);
        if (c < 10) {
            sb.insert(23, values("迻迋䟅િꌖ").intern());
        }
        String obj2 = sb.toString();
        int i5 = valueOf + 121;
        values = i5 % 128;
        if (i5 % 2 != 0) {
            return obj2;
        }
        throw null;
    }

    private static String valueOf(String str, int[] iArr, boolean z) {
        if (str != null) {
            str = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) str;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        char[] cArr = new char[i2];
        System.arraycopy(AFInAppEventParameterName, i, cArr, 0, i2);
        char[] cArr2 = cArr;
        if (!(bArr != null ? true : true)) {
            values = (valueOf + 37) % 128;
            cArr2 = new char[i2];
            int i5 = 0;
            char c = 0;
            while (true) {
                if (!(i5 < i2)) {
                    break;
                }
                if (!(bArr[i5] != 1)) {
                    cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c);
                } else {
                    cArr2[i5] = (char) ((cArr[i5] << 1) - c);
                }
                c = cArr2[i5];
                i5++;
            }
        }
        if (i4 > 0) {
            char[] cArr3 = new char[i2];
            System.arraycopy(cArr2, 0, cArr3, 0, i2);
            int i6 = i2 - i4;
            System.arraycopy(cArr3, 0, cArr2, i6, i4);
            System.arraycopy(cArr3, i4, cArr2, 0, i6);
        }
        char[] cArr4 = cArr2;
        if (z) {
            cArr4 = new char[i2];
            int i7 = 0;
            while (true) {
                if (!(i7 < i2)) {
                    break;
                }
                int i8 = values + 79;
                valueOf = i8 % 128;
                if (!(i8 % 2 == 0)) {
                    cArr4[i7] = cArr2[(i2 % i7) >>> 1];
                    i7 += 5;
                } else {
                    cArr4[i7] = cArr2[(i2 - i7) - 1];
                    i7++;
                }
            }
        }
        if (i3 > 0) {
            for (int i9 = 0; i9 < i2; i9++) {
                cArr4[i9] = (char) (cArr4[i9] - iArr[2]);
            }
        }
        return new String(cArr4);
    }

    private static String values(String str) {
        int i = values + 89;
        valueOf = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        char[] cArr = str;
        if (!(str == null)) {
            cArr = str.toCharArray();
            values = (valueOf + 85) % 128;
        }
        char[] AFKeystoreWrapper = C0806cr.AFKeystoreWrapper(AFInAppEventType, cArr);
        for (int i2 = 4; i2 < AFKeystoreWrapper.length; i2++) {
            AFKeystoreWrapper[i2] = (char) ((AFKeystoreWrapper[i2] ^ AFKeystoreWrapper[i2 % 4]) ^ ((i2 - 4) * AFInAppEventType));
        }
        String str2 = new String(AFKeystoreWrapper, 4, AFKeystoreWrapper.length - 4);
        int i3 = values + 7;
        valueOf = i3 % 128;
        if (!(i3 % 2 != 0 ? true : true)) {
            return str2;
        }
        throw null;
    }
}
