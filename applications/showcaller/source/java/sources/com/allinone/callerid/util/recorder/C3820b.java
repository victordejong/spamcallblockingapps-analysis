package com.allinone.callerid.util.recorder;

import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3726e0;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.util.recorder.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/b.class */
public class C3820b {

    /* renamed from: a */
    private static int f12101a = C3822d.m24006b();

    /* renamed from: a */
    public static int m24035a() {
        return C3726e0.m24413b("RecordMode", "AUDIOSOURCE", f12101a);
    }

    /* renamed from: b */
    public static String m24034b() {
        return C3726e0.m24410e("RecordMode", "CLEARRECORDDATA", "");
    }

    /* renamed from: c */
    public static Boolean m24033c() {
        return Boolean.valueOf(C3726e0.m24414a("RecordMode", "ISFIRSTENTER", true));
    }

    /* renamed from: d */
    public static boolean m24032d() {
        return C3726e0.m24414a("RecordMode", "HOMERECORDERNEWTIPVIEW", false);
    }

    /* renamed from: e */
    public static boolean m24031e() {
        return C3726e0.m24414a("RecordMode", "ISOPENRECORD", false);
    }

    /* renamed from: f */
    public static boolean m24030f() {
        return C3726e0.m24414a("RecordMode", "RECORDERGUIDE", false);
    }

    /* renamed from: g */
    public static boolean m24029g() {
        return C3726e0.m24414a("RecordMode", "RecordContactCall", false);
    }

    /* renamed from: h */
    public static int m24028h() {
        return C3726e0.m24413b("RecordMode", "RecordMode", 1);
    }

    /* renamed from: i */
    public static boolean m24027i() {
        return C3726e0.m24414a("RecordMode", "RecordUnknownCall", false);
    }

    /* renamed from: j */
    public static boolean m24026j() {
        return C3726e0.m24414a("RecordMode", "show_accept_dialog", true);
    }

    /* renamed from: k */
    public static boolean m24025k() {
        return C3726e0.m24414a("RecordMode", "show_guide_dialog", true);
    }

    /* renamed from: l */
    public static boolean m24024l() {
        return C3726e0.m24414a("RecordMode", "show_permission_acctpt_dialog", true);
    }

    /* renamed from: m */
    public static void m24023m(int i) {
        C3726e0.m24408g("RecordMode", "AUDIOSOURCE", i);
    }

    /* renamed from: n */
    public static void m24022n(String str) {
        C3726e0.m24406i("RecordMode", "CLEARRECORDDATA", str);
    }

    /* renamed from: o */
    public static void m24021o(Boolean bool) {
        C3726e0.m24409f("RecordMode", "ISFIRSTENTER", bool.booleanValue());
    }

    /* renamed from: p */
    public static void m24020p(boolean z) {
        C3726e0.m24409f("RecordMode", "HOMERECORDERNEWTIPVIEW", z);
    }

    /* renamed from: q */
    public static void m24019q(boolean z) {
        C3726e0.m24409f("RecordMode", "ISOPENRECORD", z);
        if (!z) {
            C3810q.m24071b().m24070c("recorder_close_record_function_count");
            return;
        }
        if (C3711a1.m24472x() != 0 && C3771i.m24204f(C3711a1.m24472x()).equals(C3771i.m24204f(System.currentTimeMillis()))) {
            C3810q.m24071b().m24070c("recorder_open_record_first_count");
        }
        C3810q.m24071b().m24070c("recorder_open_record_function_count");
    }

    /* renamed from: r */
    public static void m24018r(boolean z) {
        C3726e0.m24409f("RecordMode", "RECORDERGUIDE", z);
    }

    /* renamed from: s */
    public static void m24017s(boolean z) {
        C3726e0.m24409f("RecordMode", "RecordContactCall", z);
    }

    /* renamed from: t */
    public static void m24016t(int i) {
        C3726e0.m24408g("RecordMode", "RecordMode", i);
    }

    /* renamed from: u */
    public static void m24015u(boolean z) {
        C3726e0.m24409f("RecordMode", "RecordUnknownCall", z);
    }

    /* renamed from: v */
    public static void m24014v(boolean z) {
        C3726e0.m24409f("RecordMode", "show_accept_dialog", z);
    }

    /* renamed from: w */
    public static void m24013w(boolean z) {
        C3726e0.m24409f("RecordMode", "show_guide_dialog", z);
    }

    /* renamed from: x */
    public static void m24012x(boolean z) {
        C3726e0.m24409f("RecordMode", "show_permission_acctpt_dialog", z);
    }
}
