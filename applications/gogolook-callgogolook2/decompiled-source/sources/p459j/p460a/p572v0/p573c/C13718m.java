package p459j.p460a.p572v0.p573c;

import gogolook.callgogolook2.gson.SmsScanConfig;
import gogolook.callgogolook2.gson.SmsScanConfigHelper;
import java.util.List;
import p459j.p460a.p568u.C13640c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.m */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/m.class */
public final class C13718m implements AbstractC13717l {

    /* renamed from: a */
    public final C13640c f30800a;

    public C13718m(C13640c cVar) {
        C15149k.m377b(cVar, "firebaseRemoteConfigManager");
        this.f30800a = cVar;
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13717l
    /* renamed from: a */
    public SmsScanConfig mo3611a(String str) {
        C15149k.m377b(str, "region");
        return SmsScanConfigHelper.m28183a(str);
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13717l
    /* renamed from: a */
    public List<String> mo3612a() {
        List<String> c = this.f30800a.m3746c("sms_url_scan_source");
        C15149k.m383a((Object) c, "firebaseRemoteConfigMana….KEY_SMS_URL_SCAN_SOURCE)");
        return c;
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13717l
    /* renamed from: b */
    public int mo3610b() {
        return (int) this.f30800a.m3748b("url_redirect_check_max_v2");
    }
}
