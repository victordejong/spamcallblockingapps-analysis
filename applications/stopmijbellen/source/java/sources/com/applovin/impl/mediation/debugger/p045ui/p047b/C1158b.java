package com.applovin.impl.mediation.debugger.p045ui.p047b;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1118a;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a;
import com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1157b;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1176e;
import com.applovin.impl.sdk.C1393i;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1491f;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.mediation.debugger.ui.b.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/b.class */
public class C1158b extends AbstractView$OnClickListenerC1173d implements AppLovinCommunicatorSubscriber {

    /* renamed from: a */
    private C1408l f4166a;

    /* renamed from: b */
    private List<C1118a> f4167b;

    /* renamed from: d */
    private String f4168d;

    /* renamed from: e */
    private String f4169e;

    /* renamed from: f */
    private String f4170f;

    /* renamed from: g */
    private final StringBuilder f4171g = new StringBuilder("");

    /* renamed from: h */
    private final AtomicBoolean f4172h = new AtomicBoolean();

    /* renamed from: i */
    private boolean f4173i = false;

    /* renamed from: j */
    private List<C1123b> f4174j = new ArrayList();

    /* renamed from: k */
    private List<C1123b> f4175k = new ArrayList();

    /* renamed from: l */
    private List<C1123b> f4176l = new ArrayList();

    /* renamed from: m */
    private List<C1123b> f4177m = new ArrayList();

    /* renamed from: n */
    private List<C1169c> f4178n = new ArrayList();

    /* renamed from: o */
    private List<C1169c> f4179o = new ArrayList();

    /* renamed from: p */
    private List<C1169c> f4180p = new ArrayList();

    /* renamed from: q */
    private List<C1169c> f4181q = new ArrayList();

    /* renamed from: r */
    private List<C1169c> f4182r = new ArrayList();

    /* renamed from: s */
    private List<C1169c> f4183s = new ArrayList();

    /* renamed from: t */
    private List<C1169c> f4184t = new ArrayList();

    /* renamed from: com.applovin.impl.mediation.debugger.ui.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/b$a.class */
    public enum EnumC1160a {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        COUNT
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/b$b.class */
    public enum EnumC1161b {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    public C1158b(Context context) {
        super(context);
    }

    /* renamed from: a */
    private C1169c m6298a(String str, String str2) {
        C1169c.C1171a m6238a = C1169c.m6243p().m6238a(str);
        if (StringUtils.isValidString(str2)) {
            m6238a.m6234b(str2);
        } else {
            m6238a.m6241a(C1583R.C1585drawable.applovin_ic_x_mark);
            m6238a.m6232c(C1491f.m5077a(C1583R.C1584color.applovin_sdk_xmarkColor, this.f4262c));
        }
        return m6238a.m6242a();
    }

    /* renamed from: a */
    private void m6299a(C1169c.C1171a c1171a, String str) {
        c1171a.m6231c("MAX Ad Review").m6230d(str).m6241a(C1583R.C1585drawable.applovin_ic_x_mark).m6232c(C1491f.m5077a(C1583R.C1584color.applovin_sdk_xmarkColor, this.f4262c)).m6237a(true);
    }

    /* renamed from: a */
    private void m6297a(StringBuilder sb, String str) {
        String sb2 = sb.toString();
        if (str.length() + sb2.length() >= ((Integer) this.f4166a.m5511a(C1314b.f4756al)).intValue()) {
            C1479t.m5110f("MediationDebuggerListAdapter", sb2);
            this.f4171g.append(sb2);
            sb.setLength(1);
        }
        sb.append(str);
    }

    /* renamed from: a */
    private void m6296a(List<C1123b> list) {
        List<C1123b> list2;
        for (C1123b c1123b : list) {
            if (!c1123b.m6375g()) {
                if (c1123b.m6386a() == C1123b.EnumC1124a.INCOMPLETE_INTEGRATION || c1123b.m6386a() == C1123b.EnumC1124a.INVALID_INTEGRATION) {
                    list2 = this.f4174j;
                } else if (c1123b.m6386a() == C1123b.EnumC1124a.COMPLETE) {
                    this.f4175k.add(c1123b);
                    list2 = this.f4177m;
                } else if (c1123b.m6386a() == C1123b.EnumC1124a.MISSING) {
                    list2 = this.f4176l;
                }
                list2.add(c1123b);
            }
        }
    }

    /* renamed from: b */
    private List<C1169c> m6293b(List<C1123b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (C1123b c1123b : list) {
            arrayList.add(new C1156a(c1123b, this.f4262c));
        }
        return arrayList;
    }

    /* renamed from: j */
    private void m6286j() {
        Map<String, String> metaData;
        StringBuilder sb = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb.append("\n========== APP INFO ==========");
        StringBuilder m8752j = C0082b.m8752j("\nDev Build - ");
        m8752j.append(Utils.isPubInDebugMode(this.f4262c));
        sb.append(m8752j.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nTest Mode - ");
        sb2.append(this.f4166a.m5534I().m6192a() ? "enabled" : "disabled");
        sb.append(sb2.toString());
        sb.append("\nTarget SDK - " + this.f4166a.m5522U().m5395h().get("target_sdk"));
        sb.append("\n========== MAX ==========");
        String str = AppLovinSdk.VERSION;
        String str2 = (String) this.f4166a.m5511a(C1314b.f4926dy);
        String safedkVersion = Utils.getSafedkVersion();
        sb.append("\nSDK Version - " + str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\nPlugin Version - ");
        if (!StringUtils.isValidString(str2)) {
            str2 = "None";
        }
        sb3.append(str2);
        sb.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("\nAd Review Version - ");
        sb4.append(StringUtils.isValidString(safedkVersion) ? safedkVersion : "Disabled");
        sb.append(sb4.toString());
        if (this.f4166a.m5463g() && (metaData = Utils.getMetaData(this.f4166a.m5454p())) != null) {
            String str3 = metaData.get("UnityVersion");
            StringBuilder m8752j2 = C0082b.m8752j("\nUnity Version - ");
            String str4 = "None";
            if (StringUtils.isValidString(str3)) {
                str4 = str3;
            }
            m8752j2.append(str4);
            sb.append(m8752j2.toString());
        }
        sb.append("\n========== PRIVACY ==========");
        sb.append(C1393i.m5579a(this.f4262c));
        sb.append("\n========== NETWORKS ==========");
        for (C1123b c1123b : this.f4175k) {
            m6297a(sb, c1123b.m6359w());
        }
        for (C1123b c1123b2 : this.f4174j) {
            m6297a(sb, c1123b2.m6359w());
        }
        sb.append("\n========== AD UNITS ==========");
        for (C1118a c1118a : this.f4167b) {
            m6297a(sb, c1118a.m6404f());
        }
        sb.append("\n========== END ==========");
        C1479t.m5110f("MediationDebuggerListAdapter", sb.toString());
        this.f4171g.append(sb.toString());
    }

    /* renamed from: k */
    private List<C1169c> m6285k() {
        String str;
        ArrayList arrayList = new ArrayList(5);
        try {
            str = this.f4262c.getPackageManager().getPackageInfo(this.f4262c.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            str = null;
        }
        arrayList.add(C1169c.m6243p().m6238a("Package Name").m6234b(this.f4262c.getPackageName()).m6242a());
        C1169c.C1171a m6238a = C1169c.m6243p().m6238a("App Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(m6238a.m6234b(str).m6242a());
        arrayList.add(C1169c.m6243p().m6238a("OS").m6234b(Utils.getAndroidOSInfo()).m6242a());
        arrayList.add(C1169c.m6243p().m6238a("Account").m6234b(StringUtils.isValidString(this.f4170f) ? this.f4170f : "None").m6242a());
        C1169c.C1171a m6238a2 = C1169c.m6243p().m6238a("Mediation Provider");
        String str2 = "None";
        if (StringUtils.isValidString(this.f4166a.m5450t())) {
            str2 = this.f4166a.m5450t();
        }
        arrayList.add(m6238a2.m6234b(str2).m6242a());
        arrayList.add(C1169c.m6243p().m6238a("OM SDK Version").m6234b(this.f4166a.m5485aj().m6051c()).m6242a());
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x010a  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c> m6284l() {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.p045ui.p047b.C1158b.m6284l():java.util.List");
    }

    /* renamed from: m */
    private List<C1169c> m6283m() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(new C1157b(C1393i.m5580a(), true, this.f4262c));
        arrayList.add(new C1157b(C1393i.m5575b(), false, this.f4262c));
        arrayList.add(new C1157b(C1393i.m5573c(), true, this.f4262c));
        return arrayList;
    }

    /* renamed from: n */
    private List<C1169c> m6282n() {
        ArrayList arrayList = new ArrayList(2);
        C1169c.C1171a m6243p = C1169c.m6243p();
        StringBuilder m8752j = C0082b.m8752j("View Ad Units (");
        m8752j.append(this.f4167b.size());
        m8752j.append(")");
        arrayList.add(m6243p.m6238a(m8752j.toString()).m6240a(this.f4262c).m6237a(true).m6242a());
        arrayList.add(m6281o());
        return arrayList;
    }

    /* renamed from: o */
    private C1169c m6281o() {
        C1169c.C1171a m6243p = C1169c.m6243p();
        if (!this.f4166a.m5534I().m6192a()) {
            m6243p.m6240a(this.f4262c);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4166a.m5534I().m6186c() != null ? "" : "Select ");
        sb.append("Live Network");
        return m6243p.m6238a(sb.toString()).m6234b(this.f4166a.m5534I().m6192a() ? "Enable" : null).m6236b(-16776961).m6230d("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").m6237a(true).m6242a();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: a */
    public int mo6218a(int i) {
        return (i == EnumC1161b.APP_INFO.ordinal() ? this.f4178n : i == EnumC1161b.MAX.ordinal() ? this.f4179o : i == EnumC1161b.PRIVACY.ordinal() ? this.f4180p : i == EnumC1161b.ADS.ordinal() ? this.f4181q : i == EnumC1161b.INCOMPLETE_NETWORKS.ordinal() ? this.f4182r : i == EnumC1161b.COMPLETED_NETWORKS.ordinal() ? this.f4183s : this.f4184t).size();
    }

    /* renamed from: a */
    public void m6295a(List<C1123b> list, List<C1118a> list2, String str, String str2, String str3, C1408l c1408l) {
        this.f4166a = c1408l;
        this.f4167b = list2;
        this.f4168d = str;
        this.f4169e = str2;
        this.f4170f = str3;
        if (list != null && this.f4172h.compareAndSet(false, true)) {
            c1408l.m5542A().m5116b("MediationDebuggerListAdapter", "Populating networks...");
            m6296a(list);
            this.f4178n.addAll(m6285k());
            this.f4179o.addAll(m6284l());
            this.f4180p.addAll(m6283m());
            this.f4181q.addAll(m6282n());
            this.f4182r = m6293b(this.f4174j);
            this.f4183s = m6293b(this.f4175k);
            this.f4184t = m6293b(this.f4176l);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            AppLovinCommunicator.getInstance(this.f4262c).subscribe(this, arrayList);
            m6286j();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                C1158b.this.notifyDataSetChanged();
            }
        });
    }

    /* renamed from: a */
    public void m6294a(boolean z) {
        this.f4173i = z;
    }

    /* renamed from: a */
    public boolean m6300a() {
        return this.f4172h.get();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public int mo6217b() {
        return EnumC1161b.COUNT.ordinal();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public C1169c mo6216b(int i) {
        return i == EnumC1161b.APP_INFO.ordinal() ? new C1176e("APP INFO") : i == EnumC1161b.MAX.ordinal() ? new C1176e("MAX") : i == EnumC1161b.PRIVACY.ordinal() ? new C1176e("PRIVACY") : i == EnumC1161b.ADS.ordinal() ? new C1176e("ADS") : i == EnumC1161b.INCOMPLETE_NETWORKS.ordinal() ? new C1176e("INCOMPLETE INTEGRATIONS") : i == EnumC1161b.COMPLETED_NETWORKS.ordinal() ? new C1176e("COMPLETED INTEGRATIONS") : new C1176e("MISSING INTEGRATIONS");
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: c */
    public List<C1169c> mo6215c(int i) {
        return i == EnumC1161b.APP_INFO.ordinal() ? this.f4178n : i == EnumC1161b.MAX.ordinal() ? this.f4179o : i == EnumC1161b.PRIVACY.ordinal() ? this.f4180p : i == EnumC1161b.ADS.ordinal() ? this.f4181q : i == EnumC1161b.INCOMPLETE_NETWORKS.ordinal() ? this.f4182r : i == EnumC1161b.COMPLETED_NETWORKS.ordinal() ? this.f4183s : this.f4184t;
    }

    /* renamed from: c */
    public boolean m6292c() {
        return this.f4173i;
    }

    /* renamed from: d */
    public C1408l m6291d() {
        return this.f4166a;
    }

    /* renamed from: e */
    public List<C1118a> m6290e() {
        return this.f4167b;
    }

    /* renamed from: f */
    public String m6289f() {
        return this.f4168d;
    }

    /* renamed from: g */
    public String m6288g() {
        return this.f4169e;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    /* renamed from: h */
    public List<C1123b> m6287h() {
        return this.f4177m;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.f4180p = m6283m();
        } else if (!"network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            return;
        } else {
            this.f4182r = m6293b(this.f4174j);
            this.f4183s = m6293b(this.f4175k);
        }
        m6223i();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediationDebuggerListAdapter{isInitialized=");
        m8752j.append(this.f4172h.get());
        m8752j.append("}");
        return m8752j.toString();
    }
}
