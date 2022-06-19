package com.applovin.impl.mediation.debugger;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1118a;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p044b.C1128a;
import com.applovin.impl.mediation.debugger.p045ui.p047b.C1158b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a.class */
public class C1113a implements C1442b.AbstractC1446c<JSONObject> {

    /* renamed from: a */
    private static WeakReference<MaxDebuggerActivity> f4007a;

    /* renamed from: b */
    private static final AtomicBoolean f4008b = new AtomicBoolean();

    /* renamed from: c */
    private final C1408l f4009c;

    /* renamed from: d */
    private final C1479t f4010d;

    /* renamed from: e */
    private final C1158b f4011e;

    /* renamed from: h */
    private boolean f4014h;

    /* renamed from: j */
    private boolean f4016j;

    /* renamed from: k */
    private final Context f4017k;

    /* renamed from: f */
    private final Map<String, C1123b> f4012f = new HashMap();

    /* renamed from: g */
    private final AtomicBoolean f4013g = new AtomicBoolean();

    /* renamed from: i */
    private int f4015i = 2;

    public C1113a(C1408l c1408l) {
        this.f4009c = c1408l;
        this.f4010d = c1408l.m5542A();
        Context m5532K = c1408l.m5532K();
        this.f4017k = m5532K;
        this.f4011e = new C1158b(m5532K);
    }

    /* renamed from: a */
    private List<C1123b> m6421a(JSONObject jSONObject, C1408l c1408l) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "networks", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                C1123b c1123b = new C1123b(jSONObject2, c1408l);
                arrayList.add(c1123b);
                this.f4012f.put(c1123b.m6369m(), c1123b);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    private List<C1118a> m6420a(JSONObject jSONObject, List<C1123b> list, C1408l c1408l) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ad_units", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new C1118a(jSONObject2, this.f4012f, c1408l));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    private void m6423a(List<C1123b> list) {
        boolean z;
        Iterator<C1123b> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            C1123b next = it2.next();
            if (next.m6377e() && next.m6386a() == C1123b.EnumC1124a.INVALID_INTEGRATION) {
                z = true;
                break;
            }
        }
        if (z) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.a.2
                @Override // java.lang.Runnable
                public void run() {
                    new AlertDialog.Builder(C1113a.this.f4009c.m5491ad().m6068a()).setTitle("Review Integration Errors").setMessage("Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected.").setPositiveButton("Show Mediation Debugger", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.a.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            C1113a.this.m6416c();
                        }
                    }).setNegativeButton("DISMISS", (DialogInterface.OnClickListener) null).create().show();
                }
            }, TimeUnit.SECONDS.toMillis(2L));
        }
    }

    /* renamed from: f */
    private void m6412f() {
        this.f4009c.m5491ad().m6067a(new AbstractC1485a() { // from class: com.applovin.impl.mediation.debugger.a.1
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    C1479t.m5110f("AppLovinSdk", "Mediation debugger destroyed");
                    WeakReference unused = C1113a.f4007a = null;
                }
            }

            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    C1479t.m5110f("AppLovinSdk", "Started mediation debugger");
                    if (!C1113a.this.m6411g() || C1113a.f4007a.get() != activity) {
                        MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                        WeakReference unused = C1113a.f4007a = new WeakReference(maxDebuggerActivity);
                        maxDebuggerActivity.setListAdapter(C1113a.this.f4011e, C1113a.this.f4009c.m5491ad());
                    }
                    C1113a.f4008b.set(false);
                }
            }
        });
    }

    /* renamed from: g */
    public boolean m6411g() {
        WeakReference<MaxDebuggerActivity> weakReference = f4007a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* renamed from: a */
    public void m6427a() {
        if (this.f4013g.compareAndSet(false, true)) {
            this.f4009c.m5525R().m5653a(new C1128a(this, this.f4009c), C1362o.EnumC1364a.MEDIATION_MAIN);
        }
    }

    /* renamed from: a */
    public void mo5331a(int i, String str, JSONObject jSONObject) {
        C1479t c1479t = this.f4010d;
        c1479t.m5111e("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i);
        C1479t.m5107i("AppLovinSdk", "Unable to show mediation debugger.");
        this.f4011e.m6295a(null, null, null, null, null, this.f4009c);
        this.f4013g.set(false);
    }

    /* renamed from: a */
    public void mo5330a(JSONObject jSONObject, int i) {
        List<C1123b> m6421a = m6421a(jSONObject, this.f4009c);
        List<C1118a> m6420a = m6420a(jSONObject, m6421a, this.f4009c);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "alert", (JSONObject) null);
        this.f4011e.m6295a(m6421a, m6420a, JsonUtils.getString(jSONObject2, "title", null), JsonUtils.getString(jSONObject2, "message", null), JsonUtils.getString(jSONObject, "account_id", null), this.f4009c);
        if (m6418b()) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.debugger.a.3
                @Override // java.lang.Runnable
                public void run() {
                    C1113a.this.m6416c();
                }
            }, TimeUnit.SECONDS.toMillis(this.f4015i));
        } else {
            m6423a(m6421a);
        }
    }

    /* renamed from: a */
    public void m6419a(boolean z, int i) {
        this.f4014h = z;
        this.f4015i = i;
    }

    /* renamed from: b */
    public boolean m6418b() {
        return this.f4014h;
    }

    /* renamed from: c */
    public void m6416c() {
        m6427a();
        if (m6411g() || !f4008b.compareAndSet(false, true)) {
            C1479t.m5107i("AppLovinSdk", "Mediation debugger is already showing");
            return;
        }
        if (!this.f4016j) {
            m6412f();
            this.f4016j = true;
        }
        Intent intent = new Intent(this.f4017k, MaxDebuggerActivity.class);
        intent.setFlags(268435456);
        C1479t.m5110f("AppLovinSdk", "Starting mediation debugger...");
        this.f4017k.startActivity(intent);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediationDebuggerService{, listAdapter=");
        m8752j.append(this.f4011e);
        m8752j.append("}");
        return m8752j.toString();
    }
}
