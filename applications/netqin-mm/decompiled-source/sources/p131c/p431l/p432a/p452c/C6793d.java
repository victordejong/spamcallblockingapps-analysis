package p131c.p431l.p432a.p452c;

import android.content.SharedPreferences;
import com.mopub.common.privacy.AdvertisingId;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6854m;
/* renamed from: c.l.a.c.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/c/d.class */
public class C6793d {

    /* renamed from: a */
    public static final SharedPreferences f20928a = C6854m.m19559a("InAppBilling");

    /* renamed from: b */
    public static boolean f20929b = false;

    /* renamed from: a */
    public static void m19786a(boolean z) {
        if (f20929b) {
            C6850i.m19579a(C6794e.f20930b, "版本更新，查询会员状态后，设置会员状态");
            f20929b = false;
        }
        C6854m.m19557b(f20928a, "IS_MEMBER", Boolean.valueOf(z));
    }

    /* renamed from: a */
    public static boolean m19787a() {
        boolean z = System.currentTimeMillis() - ((Long) C6854m.m19560a(f20928a, "CHECK_PURCHASE_TIME", 0L)).longValue() > AdvertisingId.ONE_DAY_MS;
        if (!z) {
            C6850i.m19579a(C6794e.f20930b, "距离上次成功查询订单时间不足24小时");
        }
        boolean z2 = true;
        if (!z) {
            z2 = f20929b;
        }
        return z2;
    }

    /* renamed from: b */
    public static void m19784b(boolean z) {
        C6854m.m19557b(f20928a, "IS_SUPPORTED_IAB", Boolean.valueOf(z));
    }

    /* renamed from: b */
    public static boolean m19785b() {
        int c = m19783c();
        return m19781e() && c >= 0 && c < 2;
    }

    /* renamed from: c */
    public static int m19783c() {
        return ((Integer) C6854m.m19560a(f20928a, "GUIDE_TIMES_MAIN_PAGE", 0)).intValue();
    }

    /* renamed from: d */
    public static boolean m19782d() {
        boolean booleanValue = ((Boolean) C6854m.m19560a(f20928a, "IS_MEMBER", false)).booleanValue();
        String str = booleanValue ? "会员" : "普通用户";
        String str2 = C6794e.f20930b;
        C6850i.m19579a(str2, "获取会员状态：" + str);
        return booleanValue;
    }

    /* renamed from: e */
    public static boolean m19781e() {
        return m19780f() && !m19782d();
    }

    /* renamed from: f */
    public static boolean m19780f() {
        boolean booleanValue = ((Boolean) C6854m.m19560a(f20928a, "IS_SUPPORTED_IAB", false)).booleanValue();
        String str = C6794e.f20930b;
        C6850i.m19579a(str, "是否支持应用内购买：" + booleanValue);
        return booleanValue;
    }

    /* renamed from: g */
    public static void m19779g() {
        int c = m19783c();
        int i = c;
        if (c < 2) {
            i = c + 1;
        }
        C6854m.m19557b(f20928a, "GUIDE_TIMES_MAIN_PAGE", Integer.valueOf(i));
    }
}
