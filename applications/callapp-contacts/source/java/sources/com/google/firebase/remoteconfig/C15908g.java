package com.google.firebase.remoteconfig;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.AbstractC12100d;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.common.util.C12105i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.abt.C15583b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.remoteconfig.internal.C15911a;
import com.google.firebase.remoteconfig.internal.C15918f;
import com.google.firebase.remoteconfig.internal.C15921g;
import com.google.firebase.remoteconfig.internal.C15927l;
import com.google.firebase.remoteconfig.internal.C15929n;
import com.google.firebase.remoteconfig.internal.C15931o;
import com.google.firebase.remoteconfig.internal.C15932p;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/g.class */
public class C15908g {

    /* renamed from: a */
    private static final AbstractC12102f f56475a = C12105i.m19036d();

    /* renamed from: b */
    private static final Random f56476b = new Random();

    /* renamed from: c */
    private final Map<String, C15902a> f56477c;

    /* renamed from: d */
    private final Context f56478d;

    /* renamed from: e */
    private final ExecutorService f56479e;

    /* renamed from: f */
    private final C15601b f56480f;

    /* renamed from: g */
    private final AbstractC15822h f56481g;

    /* renamed from: h */
    private final C15583b f56482h;

    /* renamed from: i */
    private final AbstractC15587a f56483i;

    /* renamed from: j */
    private final String f56484j;

    /* renamed from: k */
    private Map<String, String> f56485k;

    public C15908g(Context context, C15601b c15601b, AbstractC15822h abstractC15822h, C15583b c15583b, AbstractC15587a abstractC15587a) {
        this(context, Executors.newCachedThreadPool(), c15601b, abstractC15822h, c15583b, abstractC15587a, true);
    }

    protected C15908g(Context context, ExecutorService executorService, C15601b c15601b, AbstractC15822h abstractC15822h, C15583b c15583b, AbstractC15587a abstractC15587a, boolean z) {
        this.f56477c = new HashMap();
        this.f56485k = new HashMap();
        this.f56478d = context;
        this.f56479e = executorService;
        this.f56480f = c15601b;
        this.f56481g = abstractC15822h;
        this.f56482h = c15583b;
        this.f56483i = abstractC15587a;
        this.f56484j = c15601b.m8574c().f56100b;
        if (z) {
            C14188k.m11462a(executorService, CallableC15909h.m8089a(this));
        }
    }

    /* renamed from: a */
    private C15902a m8093a(C15601b c15601b, String str, AbstractC15822h abstractC15822h, C15583b c15583b, Executor executor, C15911a c15911a, C15911a c15911a2, C15911a c15911a3, C15921g c15921g, C15927l c15927l, C15929n c15929n) {
        C15902a c15902a;
        synchronized (this) {
            if (!this.f56477c.containsKey(str)) {
                Context context = this.f56478d;
                if (!(str.equals("firebase") && m8094a(c15601b))) {
                    c15583b = null;
                }
                C15902a c15902a2 = new C15902a(context, c15601b, abstractC15822h, c15583b, executor, c15911a, c15911a2, c15911a3, c15921g, c15927l, c15929n);
                c15902a2.f56459d.m8076b();
                c15902a2.f56460e.m8076b();
                c15902a2.f56458c.m8076b();
                this.f56477c.put(str, c15902a2);
            }
            c15902a = this.f56477c.get(str);
        }
        return c15902a;
    }

    /* renamed from: a */
    private C15911a m8090a(String str, String str2) {
        return C15911a.m8077a(Executors.newCachedThreadPool(), C15931o.m8039a(this.f56478d, String.format("%s_%s_%s_%s.json", "frc", this.f56484j, str, str2)));
    }

    /* renamed from: a */
    private C15921g m8091a(String str, C15911a c15911a, C15929n c15929n) {
        C15921g c15921g;
        synchronized (this) {
            AbstractC15822h abstractC15822h = this.f56481g;
            AbstractC15587a abstractC15587a = m8094a(this.f56480f) ? this.f56483i : null;
            AbstractC15587a abstractC15587a2 = abstractC15587a;
            c15921g = new C15921g(abstractC15822h, abstractC15587a2, this.f56479e, f56475a, f56476b, c15911a, new ConfigFetchHttpClient(this.f56478d, this.f56480f.m8574c().f56100b, this.f56480f.m8574c().f56099a, str, c15929n.m8045a(), c15929n.m8045a()), c15929n, this.f56485k);
        }
        return c15921g;
    }

    /* renamed from: a */
    private static boolean m8094a(C15601b c15601b) {
        return c15601b.m8576b().equals("[DEFAULT]");
    }

    /* renamed from: a */
    public final C15902a m8092a(String str) {
        C15902a m8093a;
        synchronized (this) {
            C15911a m8090a = m8090a(str, "fetch");
            C15911a m8090a2 = m8090a(str, "activate");
            C15911a m8090a3 = m8090a(str, "defaults");
            C15929n c15929n = new C15929n(this.f56478d.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.f56484j, str, "settings"), 0));
            C15927l c15927l = new C15927l(this.f56479e, m8090a2, m8090a3);
            C15601b c15601b = this.f56480f;
            AbstractC15587a abstractC15587a = this.f56483i;
            C15932p c15932p = (!m8094a(c15601b) || !str.equals("firebase") || abstractC15587a == null) ? null : new C15932p(abstractC15587a);
            if (c15932p != null) {
                c15932p.getClass();
                AbstractC12100d<String, C15918f> abstractC12100d = new AbstractC12100d(c15932p) { // from class: com.google.firebase.remoteconfig.i

                    /* renamed from: a */
                    private final C15932p f56487a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f56487a = c15932p;
                    }

                    @Override // com.google.android.gms.common.util.AbstractC12100d
                    /* renamed from: a */
                    public final void mo8088a(Object obj, Object obj2) {
                        JSONObject optJSONObject;
                        C15932p c15932p3 = this.f56487a;
                        String str2 = (String) obj;
                        C15918f c15918f = (C15918f) obj2;
                        JSONObject jSONObject = c15918f.f56513d;
                        if (jSONObject.length() <= 0) {
                            return;
                        }
                        JSONObject jSONObject2 = c15918f.f56510a;
                        if (jSONObject2.length() <= 0 || (optJSONObject = jSONObject.optJSONObject(str2)) == null) {
                            return;
                        }
                        String optString = optJSONObject.optString("choiceId");
                        if (optString.isEmpty()) {
                            return;
                        }
                        synchronized (c15932p3.f56564b) {
                            if (optString.equals(c15932p3.f56564b.get(str2))) {
                                return;
                            }
                            c15932p3.f56564b.put(str2, optString);
                            Bundle bundle = new Bundle();
                            bundle.putString("arm_key", str2);
                            bundle.putString("arm_value", jSONObject2.optString(str2));
                            bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                            bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                            bundle.putString("group", optJSONObject.optString("group"));
                            c15932p3.f56563a.mo8597a("fp", "personalization_assignment", bundle);
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("_fpid", optString);
                            c15932p3.f56563a.mo8597a("fp", "_fpc", bundle2);
                        }
                    }
                };
                synchronized (c15927l.f56546d) {
                    c15927l.f56546d.add(abstractC12100d);
                }
            }
            m8093a = m8093a(this.f56480f, str, this.f56481g, this.f56482h, this.f56479e, m8090a, m8090a2, m8090a3, m8091a(str, m8090a, c15929n), c15927l, c15929n);
        }
        return m8093a;
    }
}
