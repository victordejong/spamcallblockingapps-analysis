package com.applovin.impl.sdk.p057e;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.adview.C0984d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1467i;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/g.class */
public class C1344g extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C1467i f5136a;

    /* renamed from: c */
    private final AppLovinPostbackListener f5137c;

    /* renamed from: d */
    private final C1362o.EnumC1364a f5138d;

    public C1344g(C1467i c1467i, C1362o.EnumC1364a enumC1364a, C1408l c1408l, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", c1408l);
        if (c1467i != null) {
            this.f5136a = c1467i;
            this.f5137c = appLovinPostbackListener;
            this.f5138d = enumC1364a;
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* renamed from: a */
    public void m5684a() {
        AbstractC1378u<Object> abstractC1378u = new AbstractC1378u<Object>(this.f5136a, m5729d()) { // from class: com.applovin.impl.sdk.e.g.2

            /* renamed from: a */
            public final String f5140a;

            {
                C1344g.this = this;
                this.f5140a = this.f5136a.m5329a();
            }

            @Override // com.applovin.impl.sdk.p057e.AbstractC1378u, com.applovin.impl.sdk.network.C1442b.AbstractC1446c
            /* renamed from: a */
            public void mo5331a(int i, String str, Object obj) {
                StringBuilder m8751k = C0082b.m8751k("Failed to dispatch postback. Error code: ", i, " URL: ");
                m8751k.append(this.f5140a);
                m5728d(m8751k.toString());
                if (C1344g.this.f5137c != null) {
                    C1344g.this.f5137c.onPostbackFailure(this.f5140a, i);
                }
                if (C1344g.this.f5136a.m5199p()) {
                    this.f5113b.m5490ae().m5583a(C1344g.this.f5136a.m5198q(), this.f5140a, i, obj, str, false);
                }
            }

            @Override // com.applovin.impl.sdk.p057e.AbstractC1378u, com.applovin.impl.sdk.network.C1442b.AbstractC1446c
            /* renamed from: a */
            public void mo5330a(Object obj, int i) {
                if (obj instanceof String) {
                    for (String str : this.f5113b.m5480b(C1314b.f4734aP)) {
                        if (str.startsWith(str)) {
                            String str2 = (String) obj;
                            if (!TextUtils.isEmpty(str2)) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str2);
                                    C1493h.m5052d(jSONObject, this.f5113b);
                                    C1493h.m5053c(jSONObject, this.f5113b);
                                    C1493h.m5050e(jSONObject, this.f5113b);
                                    break;
                                } catch (JSONException e) {
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                if (C1344g.this.f5137c != null) {
                    C1344g.this.f5137c.onPostbackSuccess(this.f5140a);
                }
                if (C1344g.this.f5136a.m5199p()) {
                    this.f5113b.m5490ae().m5583a(C1344g.this.f5136a.m5198q(), this.f5140a, i, obj, null, true);
                }
            }
        };
        abstractC1378u.m5626a(this.f5138d);
        m5729d().m5525R().m5654a(abstractC1378u);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (StringUtils.isValidString(this.f5136a.m5329a())) {
            if (this.f5136a.m5197r()) {
                C0984d.m6880a(this.f5136a, m5729d(), new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.e.g.1
                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackFailure(String str, int i) {
                        C1344g.this.m5684a();
                    }

                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackSuccess(String str) {
                        if (C1344g.this.f5137c != null) {
                            C1344g.this.f5137c.onPostbackSuccess(C1344g.this.f5136a.m5329a());
                        }
                    }
                });
                return;
            } else {
                m5684a();
                return;
            }
        }
        m5731b("Requested URL is not valid; nothing to do...");
        AppLovinPostbackListener appLovinPostbackListener = this.f5137c;
        if (appLovinPostbackListener == null) {
            return;
        }
        appLovinPostbackListener.onPostbackFailure(this.f5136a.m5329a(), AppLovinErrorCodes.INVALID_URL);
    }
}
