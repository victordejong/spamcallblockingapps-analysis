package com.applovin.impl.mediation.debugger.p045ui.testmode;

import android.os.Bundle;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/testmode/b.class */
public class C1187b implements AppLovinCommunicatorSubscriber {

    /* renamed from: a */
    private final C1408l f4308a;

    /* renamed from: b */
    private boolean f4309b;

    /* renamed from: c */
    private boolean f4310c;

    /* renamed from: d */
    private String f4311d;

    public C1187b(C1408l c1408l) {
        this.f4308a = c1408l;
        C1316d<String> c1316d = C1316d.f4983B;
        this.f4311d = (String) c1408l.m5478b((C1316d<C1316d<String>>) c1316d, (C1316d<String>) null);
        c1408l.m5479b(c1316d);
        if (StringUtils.isValidString(this.f4311d)) {
            this.f4310c = true;
        }
        C1316d<Boolean> c1316d2 = C1316d.f4984C;
        this.f4309b = ((Boolean) c1408l.m5478b((C1316d<C1316d<Boolean>>) c1316d2, (C1316d<Boolean>) Boolean.FALSE)).booleanValue();
        c1408l.m5479b(c1316d2);
        AppLovinCommunicator.getInstance(c1408l.m5532K()).subscribe(this, "test_mode_settings");
    }

    /* renamed from: a */
    public void m6191a(String str) {
        this.f4311d = str;
    }

    /* renamed from: a */
    public void m6190a(JSONObject jSONObject) {
        if (this.f4309b) {
            return;
        }
        this.f4309b = JsonUtils.containsCaseInsensitiveString(this.f4308a.m5522U().m5392k().f5376b, JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray())) || this.f4308a.m5522U().m5396g() || this.f4308a.m5522U().m5390m();
    }

    /* renamed from: a */
    public void m6189a(boolean z) {
        this.f4310c = z;
    }

    /* renamed from: a */
    public boolean m6192a() {
        return this.f4309b;
    }

    /* renamed from: b */
    public void m6187b(String str) {
        this.f4308a.m5508a((C1316d<C1316d<String>>) C1316d.f4983B, (C1316d<String>) str);
    }

    /* renamed from: b */
    public boolean m6188b() {
        return this.f4310c;
    }

    /* renamed from: c */
    public String m6186c() {
        return this.f4311d;
    }

    /* renamed from: d */
    public void m6185d() {
        this.f4308a.m5508a((C1316d<C1316d<Boolean>>) C1316d.f4984C, (C1316d<Boolean>) Boolean.TRUE);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "b";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("test_mode_settings".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            String string = BundleUtils.getString("force_ad_network", messageData);
            if (StringUtils.isValidString(string)) {
                this.f4310c = true;
                this.f4311d = string;
            }
            String string2 = BundleUtils.getString("test_mode_network_next_session", messageData);
            if (!StringUtils.isValidString(string2)) {
                return;
            }
            m6185d();
            m6187b(string2);
        }
    }
}
