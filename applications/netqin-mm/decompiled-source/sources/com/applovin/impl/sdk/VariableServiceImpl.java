package com.applovin.impl.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinVariableService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/VariableServiceImpl.class */
public class VariableServiceImpl implements AppLovinVariableService {

    /* renamed from: a */
    public final C2341l f21595a;

    /* renamed from: d */
    public AppLovinVariableService.OnVariablesUpdateListener f21598d;

    /* renamed from: e */
    public Bundle f21599e;

    /* renamed from: b */
    public final AtomicBoolean f21596b = new AtomicBoolean();

    /* renamed from: c */
    public final AtomicBoolean f21597c = new AtomicBoolean();

    /* renamed from: f */
    public final Object f21600f = new Object();

    /* renamed from: com.applovin.impl.sdk.VariableServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/VariableServiceImpl$a.class */
    public class C7025a implements C2270g.C2320x.AbstractC2322b {
        public C7025a() {
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2320x.AbstractC2322b
        /* renamed from: a */
        public void mo19017a() {
            VariableServiceImpl.this.f21596b.set(false);
        }
    }

    /* renamed from: com.applovin.impl.sdk.VariableServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/VariableServiceImpl$b.class */
    public class RunnableC7026b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Bundle f21602a;

        public RunnableC7026b(Bundle bundle) {
            this.f21602a = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            VariableServiceImpl.this.f21598d.onVariablesUpdate(this.f21602a);
        }
    }

    public VariableServiceImpl(C2341l lVar) {
        this.f21595a = lVar;
        String str = (String) lVar.m30290a(C2251d.C2258g.f8801k);
        if (C2422o.m29851b(str)) {
            updateVariables(C2390i.m29942a(str, lVar));
        }
    }

    /* renamed from: a */
    public final Object m19019a(String str, Object obj, Class<?> cls) {
        if (TextUtils.isEmpty(str)) {
            C2374t.m30034j("AppLovinVariableService", "Unable to retrieve variable value for empty name");
            return obj;
        }
        if (!this.f21595a.m30310L()) {
            C2374t.m30035i(AppLovinSdk.TAG, "Attempted to retrieve variable before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        synchronized (this.f21600f) {
            if (this.f21599e == null) {
                C2374t.m30034j("AppLovinVariableService", "Unable to retrieve variable value for name \"" + str + "\", none retrieved from server yet. Please set a listener to be notified when values are retrieved from the server.");
                return obj;
            } else if (cls.equals(String.class)) {
                return this.f21599e.getString(str, (String) obj);
            } else if (cls.equals(Boolean.class)) {
                return Boolean.valueOf(this.f21599e.getBoolean(str, ((Boolean) obj).booleanValue()));
            } else {
                throw new IllegalStateException("Unable to retrieve variable value for " + str);
            }
        }
    }

    /* renamed from: a */
    public final void m19021a() {
        synchronized (this.f21600f) {
            if (!(this.f21598d == null || this.f21599e == null)) {
                AppLovinSdkUtils.runOnUiThread(true, new RunnableC7026b((Bundle) this.f21599e.clone()));
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) m19019a(str, Boolean.valueOf(z), Boolean.class)).booleanValue();
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str) {
        return getString(str, null);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str, String str2) {
        return (String) m19019a(str, str2, String.class);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public void loadVariables() {
        String str;
        if (!this.f21595a.m30310L()) {
            str = "The AppLovin SDK is waiting for the initial variables to be returned upon completing initialization.";
        } else if (this.f21596b.compareAndSet(false, true)) {
            this.f21595a.m30249j().m18826a(new C2270g.C2320x(this.f21595a, new C7025a()), C7048s.EnumC7049a.BACKGROUND);
            return;
        } else {
            str = "Ignored explicit variables load. Service is already in the process of retrieving the latest set of variables.";
        }
        C2374t.m30034j("AppLovinVariableService", str);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public void setOnVariablesUpdateListener(AppLovinVariableService.OnVariablesUpdateListener onVariablesUpdateListener) {
        this.f21598d = onVariablesUpdateListener;
        synchronized (this.f21600f) {
            if (onVariablesUpdateListener != null) {
                if (this.f21599e != null && this.f21597c.compareAndSet(false, true)) {
                    this.f21595a.m30262d0().m30044b("AppLovinVariableService", "Setting initial listener");
                    m19021a();
                }
            }
        }
    }

    public String toString() {
        return "VariableService{variables=" + this.f21599e + ", listener=" + this.f21598d + '}';
    }

    public void updateVariables(JSONObject jSONObject) {
        C2374t d0 = this.f21595a.m30262d0();
        d0.m30044b("AppLovinVariableService", "Updating variables: " + jSONObject + "...");
        synchronized (this.f21600f) {
            this.f21599e = C2390i.m29909c(jSONObject);
            m19021a();
            this.f21595a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8801k, (C2251d.C2258g<String>) jSONObject.toString());
        }
    }
}
