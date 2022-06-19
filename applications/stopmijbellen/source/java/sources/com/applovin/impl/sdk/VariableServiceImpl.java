package com.applovin.impl.sdk;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p057e.C1356m;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinVariableService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/VariableServiceImpl.class */
public class VariableServiceImpl implements AppLovinVariableService {

    /* renamed from: a */
    private final C1408l f4491a;

    /* renamed from: d */
    private AppLovinVariableService.OnVariablesUpdateListener f4494d;

    /* renamed from: e */
    private Bundle f4495e;

    /* renamed from: b */
    private final AtomicBoolean f4492b = new AtomicBoolean();

    /* renamed from: c */
    private final AtomicBoolean f4493c = new AtomicBoolean();

    /* renamed from: f */
    private final Object f4496f = new Object();

    public VariableServiceImpl(C1408l c1408l) {
        this.f4491a = c1408l;
        String str = (String) c1408l.m5509a(C1316d.f4994j);
        if (StringUtils.isValidString(str)) {
            updateVariables(JsonUtils.deserialize(str));
        }
    }

    /* renamed from: a */
    private Object m6070a(String str, Object obj, Class<?> cls) {
        if (TextUtils.isEmpty(str)) {
            C1479t.m5107i("AppLovinVariableService", "Unable to retrieve variable value for empty name");
            return obj;
        }
        if (!this.f4491a.m5469d()) {
            C1479t.m5108h("AppLovinSdk", "Attempted to retrieve variable before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        synchronized (this.f4496f) {
            if (this.f4495e == null) {
                C1479t.m5107i("AppLovinVariableService", "Unable to retrieve variable value for name \"" + str + "\". No variables returned by the server.");
                return obj;
            } else if (cls.equals(String.class)) {
                return this.f4495e.getString(str, (String) obj);
            } else if (cls.equals(Boolean.class)) {
                return Boolean.valueOf(this.f4495e.getBoolean(str, ((Boolean) obj).booleanValue()));
            } else {
                throw new IllegalStateException("Unable to retrieve variable value for " + str);
            }
        }
    }

    /* renamed from: a */
    private void m6072a() {
        Bundle bundle;
        synchronized (this.f4496f) {
            if (this.f4494d == null || (bundle = this.f4495e) == null) {
                return;
            }
            final Bundle bundle2 = (Bundle) bundle.clone();
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.VariableServiceImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    VariableServiceImpl.this.f4494d.onVariablesUpdate(bundle2);
                }
            });
        }
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) m6070a(str, Boolean.valueOf(z), Boolean.class)).booleanValue();
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str) {
        return getString(str, null);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str, String str2) {
        return (String) m6070a(str, str2, String.class);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    @Deprecated
    public void loadVariables() {
        String str;
        if (!this.f4491a.m5469d()) {
            str = "The AppLovin SDK is waiting for the initial variables to be returned upon completing initialization.";
        } else if (this.f4492b.compareAndSet(false, true)) {
            this.f4491a.m5525R().m5653a(new C1356m(this.f4491a, new C1356m.AbstractC1358a() { // from class: com.applovin.impl.sdk.VariableServiceImpl.1
                @Override // com.applovin.impl.sdk.p057e.C1356m.AbstractC1358a
                /* renamed from: a */
                public void mo5659a() {
                    VariableServiceImpl.this.f4492b.set(false);
                }
            }), C1362o.EnumC1364a.BACKGROUND);
            return;
        } else {
            str = "Ignored explicit variables load. Service is already in the process of retrieving the latest set of variables.";
        }
        C1479t.m5107i("AppLovinVariableService", str);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    @Deprecated
    public void setOnVariablesUpdateListener(AppLovinVariableService.OnVariablesUpdateListener onVariablesUpdateListener) {
        this.f4494d = onVariablesUpdateListener;
        synchronized (this.f4496f) {
            if (onVariablesUpdateListener != null) {
                if (this.f4495e != null && this.f4493c.compareAndSet(false, true)) {
                    this.f4491a.m5542A().m5116b("AppLovinVariableService", "Setting initial listener");
                    m6072a();
                }
            }
        }
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VariableService{variables=");
        m8752j.append(this.f4495e);
        m8752j.append(", listener=");
        m8752j.append(this.f4494d);
        m8752j.append('}');
        return m8752j.toString();
    }

    public void updateVariables(JSONObject jSONObject) {
        C1479t m5542A = this.f4491a.m5542A();
        m5542A.m5116b("AppLovinVariableService", "Updating variables: " + jSONObject + "...");
        synchronized (this.f4496f) {
            this.f4495e = JsonUtils.toBundle(jSONObject);
            m6072a();
            this.f4491a.m5508a((C1316d<C1316d<String>>) C1316d.f4994j, (C1316d<String>) jSONObject.toString());
        }
    }
}
