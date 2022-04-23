package p459j.p460a.p474c0.p488f;

import android.os.Bundle;
import android.telephony.SubscriptionInfo;
import java.util.List;
import java.util.Map;
import p065f.p066a.p068b.p069a.AbstractC4246d;
import p081h.p203i.p316b.p318b.C9337o;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.f.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/f.class */
public class C11828f {

    /* renamed from: c */
    public static final Map<String, String> f26526c = C9337o.m15405a();

    /* renamed from: d */
    public static final Map<Integer, C11828f> f26527d = C9337o.m15405a();

    /* renamed from: e */
    public static final C11828f f26528e = new C11828f(-1, new Bundle());

    /* renamed from: a */
    public final Bundle f26529a;

    /* renamed from: b */
    public final int f26530b;

    /* renamed from: j.a.c0.f.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/f$a.class */
    public static final class RunnableC11829a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C11828f.m8173t();
        }
    }

    static {
        f26526c.put("enabledMMS", "bool");
        f26526c.put("enabledTransID", "bool");
        f26526c.put("enabledNotifyWapMMSC", "bool");
        f26526c.put("aliasEnabled", "bool");
        f26526c.put("allowAttachAudio", "bool");
        f26526c.put("enableMultipartSMS", "bool");
        f26526c.put("enableSMSDeliveryReports", "bool");
        f26526c.put("enableGroupMms", "bool");
        f26526c.put("supportMmsContentDisposition", "bool");
        f26526c.put("config_cellBroadcastAppLinks", "bool");
        f26526c.put("sendMultipartSmsAsSeparateMessages", "bool");
        f26526c.put("enableMMSReadReports", "bool");
        f26526c.put("enableMMSDeliveryReports", "bool");
        f26526c.put("supportHttpCharsetHeader", "bool");
        f26526c.put("maxMessageSize", "int");
        f26526c.put("maxImageHeight", "int");
        f26526c.put("maxImageWidth", "int");
        f26526c.put("recipientLimit", "int");
        f26526c.put("httpSocketTimeout", "int");
        f26526c.put("aliasMinChars", "int");
        f26526c.put("aliasMaxChars", "int");
        f26526c.put("smsToMmsTextThreshold", "int");
        f26526c.put("smsToMmsTextLengthThreshold", "int");
        f26526c.put("maxMessageTextSize", "int");
        f26526c.put("maxSubjectLength", "int");
        f26526c.put("mUaProfTagName", "string");
        f26526c.put("httpParams", "string");
        f26526c.put("emailGatewayNumber", "string");
        f26526c.put("naiSuffix", "string");
    }

    public C11828f(int i, Bundle bundle) {
        this.f26530b = i;
        this.f26529a = bundle;
    }

    /* renamed from: a */
    public static C11828f m8193a(int i) {
        int a = AbstractC12181l0.m6886t().mo6881a(i);
        synchronized (f26527d) {
            C11828f fVar = f26527d.get(Integer.valueOf(a));
            if (fVar != null) {
                return fVar;
            }
            C12153d0.m6987b("MessagingApp", "Get mms config failed: invalid subId. subId=" + i + ", real subId=" + a + ", map=" + f26527d.keySet());
            return f26528e;
        }
    }

    /* renamed from: a */
    public static void m8192a(C11828f fVar) {
        boolean z = true;
        if (C14017g4.m2804t() == (fVar.f26530b == -1)) {
            z = false;
        }
        C12151d.m6999b(z);
        f26527d.put(Integer.valueOf(fVar.f26530b), fVar);
    }

    /* renamed from: t */
    public static void m8173t() {
        synchronized (C11828f.class) {
            try {
                C11825d d = AbstractC11516a.m9413n().mo9405d();
                f26527d.clear();
                d.m8205a();
                if (C14017g4.m2804t()) {
                    List<SubscriptionInfo> b = AbstractC12181l0.m6886t().m6888r().mo6883b();
                    if (b == null) {
                        C12153d0.m6981e("MessagingApp", "Loading mms config failed: no active SIM");
                        return;
                    }
                    for (SubscriptionInfo subscriptionInfo : b) {
                        int subscriptionId = subscriptionInfo.getSubscriptionId();
                        m8192a(new C11828f(subscriptionId, d.get(subscriptionId)));
                    }
                } else {
                    m8192a(new C11828f(-1, d.get(-1)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: u */
    public static void m8172u() {
        AbstractAsyncTaskC12189n0.m6856a(new RunnableC11829a());
    }

    /* renamed from: a */
    public int m8194a() {
        return this.f26529a.getInt("aliasMaxChars", 48);
    }

    /* renamed from: b */
    public int m8191b() {
        return this.f26529a.getInt("aliasMinChars", 2);
    }

    /* renamed from: c */
    public String m8190c() {
        return this.f26529a.getString("emailGatewayNumber", AbstractC4246d.f10289a);
    }

    /* renamed from: d */
    public boolean m8189d() {
        return this.f26529a.getBoolean("enableGroupMms", true);
    }

    /* renamed from: e */
    public int m8188e() {
        return this.f26529a.getInt("maxImageHeight", 480);
    }

    /* renamed from: f */
    public int m8187f() {
        return this.f26529a.getInt("maxImageWidth", 640);
    }

    /* renamed from: g */
    public int m8186g() {
        return this.f26529a.getInt("maxMessageSize", 307200);
    }

    /* renamed from: h */
    public int m8185h() {
        return this.f26529a.getInt("maxSubjectLength", 40);
    }

    /* renamed from: i */
    public int m8184i() {
        int i = this.f26529a.getInt("maxMessageTextSize", -1);
        if (i <= -1) {
            i = 2000;
        }
        return i;
    }

    /* renamed from: j */
    public boolean m8183j() {
        return this.f26529a.getBoolean("enableMultipartSMS", true);
    }

    /* renamed from: k */
    public boolean m8182k() {
        return this.f26529a.getBoolean("enabledNotifyWapMMSC", false);
    }

    /* renamed from: l */
    public int m8181l() {
        int i = this.f26529a.getInt("recipientLimit", Integer.MAX_VALUE);
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MAX_VALUE;
        }
        return i2;
    }

    /* renamed from: m */
    public boolean m8180m() {
        return this.f26529a.getBoolean("enableSMSDeliveryReports", true);
    }

    /* renamed from: n */
    public boolean m8179n() {
        return this.f26529a.getBoolean("sendMultipartSmsAsSeparateMessages", false);
    }

    /* renamed from: o */
    public int m8178o() {
        return this.f26529a.getInt("smsToMmsTextLengthThreshold", -1);
    }

    /* renamed from: p */
    public int m8177p() {
        return this.f26529a.getInt("smsToMmsTextThreshold", -1);
    }

    /* renamed from: q */
    public boolean m8176q() {
        return this.f26529a.getBoolean("supportMmsContentDisposition", true);
    }

    /* renamed from: r */
    public boolean m8175r() {
        return this.f26529a.getBoolean("enabledTransID", false);
    }

    /* renamed from: s */
    public boolean m8174s() {
        return this.f26529a.getBoolean("aliasEnabled", false);
    }
}
