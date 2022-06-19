package com.applovin.impl.sdk.p052a;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
/* renamed from: com.applovin.impl.sdk.a.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/f.class */
public class C1261f {

    /* renamed from: a */
    private final C1408l f4526a;

    /* renamed from: b */
    private final Context f4527b;

    /* renamed from: c */
    private String f4528c;

    public C1261f(C1408l c1408l) {
        this.f4526a = c1408l;
        this.f4527b = c1408l.m5532K();
    }

    /* renamed from: a */
    public String m6054a(String str) {
        try {
            return ScriptInjector.injectScriptContentIntoHtml(this.f4528c, str);
        } catch (Throwable th) {
            this.f4526a.m5542A().m5115b("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th);
            return str;
        }
    }

    /* renamed from: a */
    public void m6057a() {
        if (((Boolean) this.f4526a.m5511a(C1314b.f4761aq)).booleanValue()) {
            C1479t m5542A = this.f4526a.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Initializing Open Measurement SDK v");
            m8752j.append(m6051c());
            m8752j.append("...");
            m5542A.m5116b("OpenMeasurementService", m8752j.toString());
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.f.1
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    Omid.activate(C1261f.this.f4527b);
                    C1479t m5542A2 = C1261f.this.f4526a.m5542A();
                    StringBuilder m8752j2 = C0082b.m8752j("Init ");
                    m8752j2.append(C1261f.this.m6053b() ? "succeeded" : "failed");
                    m8752j2.append(" and took ");
                    m8752j2.append(System.currentTimeMillis() - currentTimeMillis);
                    m8752j2.append("ms");
                    m5542A2.m5116b("OpenMeasurementService", m8752j2.toString());
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(C1261f.this.f4527b.getResources().openRawResource(C1583R.raw.omsdk_v_1_0)));
                        try {
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                            }
                            C1261f.this.f4528c = sb.toString();
                        } catch (Throwable th) {
                        }
                        try {
                            bufferedReader.close();
                        } catch (IOException e) {
                        }
                    } catch (Throwable th2) {
                        C1261f.this.f4526a.m5542A().m5115b("OpenMeasurementService", "Failed to retrieve resource omskd_v_1_0.js", th2);
                    }
                }
            });
        }
    }

    /* renamed from: b */
    public boolean m6053b() {
        return Omid.isActive();
    }

    /* renamed from: c */
    public String m6051c() {
        return Omid.getVersion();
    }

    /* renamed from: d */
    public Partner m6050d() {
        return Partner.createPartner((String) this.f4526a.m5511a(C1314b.f4762ar), AppLovinSdk.VERSION);
    }

    /* renamed from: e */
    public String m6049e() {
        return this.f4528c;
    }
}
