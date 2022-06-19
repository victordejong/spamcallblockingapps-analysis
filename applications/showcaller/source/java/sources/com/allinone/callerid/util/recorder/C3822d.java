package com.allinone.callerid.util.recorder;

import android.os.Build;
import com.allinone.callerid.bean.recorder.AudioSourceInfo;
import com.allinone.callerid.p157f.p159k.C2647c;
import com.allinone.callerid.util.C3718c0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.util.recorder.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/d.class */
public class C3822d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/d$a.class */
    public class RunnableC3823a implements Runnable {
        RunnableC3823a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<AudioSourceInfo> m26957c = C2647c.m26958b().m26957c();
            if (m26957c == null || m26957c.size() <= 0) {
                ArrayList arrayList = new ArrayList();
                String str = Build.MODEL;
                String str2 = Build.MANUFACTURER;
                String str3 = Build.VERSION.RELEASE;
                String m23999i = C3822d.m23999i(str2);
                int m24006b = C3822d.m24006b();
                C3820b.m24023m(m24006b);
                AudioSourceInfo audioSourceInfo = new AudioSourceInfo();
                audioSourceInfo.setShowname(m23999i + " " + str + " Android " + str3);
                audioSourceInfo.setAudiosource(m24006b);
                audioSourceInfo.setIsselected(true);
                audioSourceInfo.setPhonemodel(str);
                AudioSourceInfo m24000h = C3822d.m24000h("Android 6/7/8 (a)", 1);
                AudioSourceInfo m24000h2 = C3822d.m24000h("Android 6/7/8 (b)", 7);
                AudioSourceInfo m24000h3 = C3822d.m24000h("Android 7.1.1/2", 1);
                AudioSourceInfo m24000h4 = C3822d.m24000h("Android 4/5", 4);
                AudioSourceInfo m24000h5 = C3822d.m24000h("Samsung Android 7", 7);
                AudioSourceInfo m24000h6 = C3822d.m24000h("Samsung S6/S7/N5/N7 Android 6", 7);
                AudioSourceInfo m24000h7 = C3822d.m24000h("Samsung USA S6/S7/N5/N7 Android 6", 1);
                AudioSourceInfo m24000h8 = C3822d.m24000h("Samsung S5/N4/Edge Android 6", 1);
                AudioSourceInfo m24000h9 = C3822d.m24000h("Asus ZEN Phone 2 Android 6", 4);
                AudioSourceInfo m24000h10 = C3822d.m24000h("BlackBerry Android 6", 1);
                AudioSourceInfo m24000h11 = C3822d.m24000h("HTC M8 Android 5", 7);
                AudioSourceInfo m24000h12 = C3822d.m24000h("Huawei Android 8", 1);
                AudioSourceInfo m24000h13 = C3822d.m24000h("Huawei Android 6/7", 1);
                AudioSourceInfo m24000h14 = C3822d.m24000h("Google Pixel/XL Android 8.1", 1);
                AudioSourceInfo m24000h15 = C3822d.m24000h("Google Pixel/XL Android 8", 1);
                AudioSourceInfo m24000h16 = C3822d.m24000h("Google Pixel 2 Android 8/8.1", 1);
                AudioSourceInfo m24000h17 = C3822d.m24000h("Google Pixel 2 XL Android 8.1", 1);
                AudioSourceInfo m24000h18 = C3822d.m24000h("Google Pixel 2 XL Android 8", 1);
                AudioSourceInfo m24000h19 = C3822d.m24000h("LG Android 4/5/6", 4);
                AudioSourceInfo m24000h20 = C3822d.m24000h("LG Android 6 (b)", 1);
                AudioSourceInfo m24000h21 = C3822d.m24000h("Micromax Canvas 4/5/6", 7);
                AudioSourceInfo m24000h22 = C3822d.m24000h("Motorola G4 Android 6/7", 7);
                AudioSourceInfo m24000h23 = C3822d.m24000h("One Plus Android 7.1/8", 4);
                AudioSourceInfo m24000h24 = C3822d.m24000h("Wiko Android 5/6", 7);
                arrayList.add(audioSourceInfo);
                arrayList.add(m24000h);
                arrayList.add(m24000h2);
                arrayList.add(m24000h3);
                arrayList.add(m24000h4);
                arrayList.add(m24000h5);
                arrayList.add(m24000h6);
                arrayList.add(m24000h7);
                arrayList.add(m24000h8);
                arrayList.add(m24000h9);
                arrayList.add(m24000h10);
                arrayList.add(m24000h11);
                arrayList.add(m24000h12);
                arrayList.add(m24000h13);
                arrayList.add(m24000h14);
                arrayList.add(m24000h15);
                arrayList.add(m24000h16);
                arrayList.add(m24000h17);
                arrayList.add(m24000h18);
                arrayList.add(m24000h19);
                arrayList.add(m24000h20);
                arrayList.add(m24000h21);
                arrayList.add(m24000h22);
                arrayList.add(m24000h23);
                arrayList.add(m24000h24);
                C2647c.m26958b().m26959a(arrayList);
            }
        }
    }

    /* renamed from: b */
    public static int m24006b() {
        try {
            String str = Build.MODEL;
            Locale locale = Locale.ENGLISH;
            String upperCase = str.toUpperCase(locale);
            String lowerCase = Build.MANUFACTURER.toLowerCase(locale);
            String str2 = Build.VERSION.RELEASE;
            int i = Build.VERSION.SDK_INT;
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "model: " + upperCase);
                C3718c0.m24436a("wbb", "carrier: " + lowerCase);
                C3718c0.m24436a("wbb", "VERSION: " + str2);
                C3718c0.m24436a("wbb", "sdk: " + i);
            }
            if ("lge".equals(lowerCase) && i == 23) {
                return 1;
            }
            if ("oneplus".equals(lowerCase) && "7.1.1".equals(str2)) {
                return 4;
            }
            if ("motorola".equals(lowerCase) && i >= 21 && i < 23) {
                return 1;
            }
            if ("zopo".equals(lowerCase) && i < 21 && i >= 14) {
                return 1;
            }
            if (m24004d()) {
                return 4;
            }
            if ("blackberry".equals(lowerCase) && upperCase.contains("STV100") && i >= 21 && i < 23) {
                return 7;
            }
            if ("htc".equals(lowerCase) && i >= 23 && i <= 24) {
                return 7;
            }
            if ("htc".equals(lowerCase) && upperCase.contains("M8") && i >= 21 && i < 23) {
                return 7;
            }
            if ("micromax".equals(lowerCase) && upperCase.contains("CANVAS") && i >= 14 && i <= 23) {
                return 7;
            }
            if ("motorola".equals(lowerCase) && upperCase.contains("G4") && i >= 23 && i <= 24) {
                return 7;
            }
            if ("samsung".equals(lowerCase) && ((m24002f() || m24003e()) && i == 23)) {
                return 7;
            }
            if ("samsung".equals(lowerCase) && m24001g() && i == 23) {
                return 1;
            }
            if ("samsung".equals(lowerCase) && i == 24) {
                return 7;
            }
            if ("wiko".equals(lowerCase) && i >= 21 && i <= 24) {
                return 7;
            }
            if ("huawei".equals(lowerCase) && i >= 23) {
                return 7;
            }
            return i < 23 ? 4 : 1;
        } catch (Exception e) {
            return Build.VERSION.SDK_INT < 23 ? 4 : 1;
        }
    }

    /* renamed from: c */
    public static void m24005c() {
        new Thread(new RunnableC3823a()).start();
    }

    /* renamed from: d */
    public static boolean m24004d() {
        try {
            if (Build.VERSION.SDK_INT < 21 || !Build.MANUFACTURER.toUpperCase(Locale.ENGLISH).equals("ASUS")) {
                return false;
            }
            return Build.SUPPORTED_ABIS[0].contains("x86");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m24003e() {
        String upperCase = Build.MODEL.toUpperCase(Locale.ENGLISH);
        return upperCase.contains("SM-N910") || upperCase.contains("SM-N915") || upperCase.contains("SCL24") || upperCase.contains("SC-01G");
    }

    /* renamed from: f */
    public static boolean m24002f() {
        String upperCase = Build.MODEL.toUpperCase(Locale.ENGLISH);
        return upperCase.contains("SM-G900") || upperCase.contains("SC-04F") || upperCase.contains("SCL23") || upperCase.contains("SM-G87") || upperCase.contains("SM-G800") || upperCase.contains("SM-G906") || upperCase.contains("SM-G903");
    }

    /* renamed from: g */
    public static boolean m24001g() {
        String upperCase = Build.MODEL.toUpperCase(Locale.ENGLISH);
        return upperCase.contains("SM-G935AZ") || upperCase.contains("SM-G935A") || upperCase.contains("SM-G935T1") || upperCase.contains("SM-G935R6") || upperCase.contains("SM-G935R7") || upperCase.contains("SM-G935P") || upperCase.contains("SM-G935T") || upperCase.contains("SM-G935R4") || upperCase.contains("SM-G935V") || upperCase.contains("SM-G935U") || upperCase.contains("SM-G930AZ") || upperCase.contains("SM-G930A") || upperCase.contains("SM-G930T1") || upperCase.contains("SM-G930R6") || upperCase.contains("SM-G930R7") || upperCase.contains("SM-G930P") || upperCase.contains("SM-G930T") || upperCase.contains("SM-G930R4") || upperCase.contains("SM-G930V") || upperCase.contains("SM-G930U");
    }

    /* renamed from: h */
    public static AudioSourceInfo m24000h(String str, int i) {
        AudioSourceInfo audioSourceInfo = new AudioSourceInfo();
        audioSourceInfo.setShowname(str);
        audioSourceInfo.setAudiosource(i);
        return audioSourceInfo;
    }

    /* renamed from: i */
    public static String m23999i(String str) {
        if (Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }
}
