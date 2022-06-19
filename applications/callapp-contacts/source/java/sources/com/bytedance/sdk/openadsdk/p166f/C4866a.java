package com.bytedance.sdk.openadsdk.p166f;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.f.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/f/a.class */
public class C4866a implements AbstractC4868c {

    /* renamed from: a */
    private final C4557i f17807a;

    /* renamed from: b */
    private final AbstractC4867b f17808b;

    /* renamed from: c */
    private final Map<String, AbstractC3234c> f17809c = new HashMap();

    private C4866a(AbstractC4867b abstractC4867b, C4557i c4557i) {
        this.f17808b = abstractC4867b;
        this.f17807a = c4557i;
    }

    /* renamed from: a */
    private AbstractC3234c m33705a(Context context, C4557i c4557i, JSONObject jSONObject, String str, boolean z) {
        AbstractC3234c m39089a = C3235d.m39089a(context, c4557i, str);
        m39089a.mo39092c();
        return m39089a;
    }

    /* renamed from: a */
    private C4557i m33702a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        C4557i c4557i = new C4557i();
        c4557i.m35189b(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            c4557i.m35158k(str);
        }
        if (this.f17807a == null) {
            return c4557i;
        }
        String str2 = null;
        if (c4557i.m35230Q() != null) {
            str2 = c4557i.m35230Q().m35338a();
        }
        return TextUtils.isEmpty(str2) ? this.f17807a : (this.f17807a.m35230Q() == null || !str2.equals(this.f17807a.m35230Q().m35338a())) ? c4557i : this.f17807a;
    }

    /* renamed from: a */
    public static C4866a m33703a(AbstractC4867b abstractC4867b, C4557i c4557i) {
        return new C4866a(abstractC4867b, c4557i);
    }

    /* renamed from: a */
    private void m33707a(Context context, C4557i c4557i, String str) {
        if (context == null || c4557i == null) {
            return;
        }
        if (c4557i.m35230Q() == null) {
            C3235d.m39089a(context, c4557i, str).mo39091e();
            return;
        }
        AbstractC3234c abstractC3234c = this.f17809c.get(c4557i.m35230Q().m35338a());
        if (abstractC3234c != null) {
            abstractC3234c.mo39091e();
        }
        if (!(context instanceof AbstractC4687b)) {
            return;
        }
        ((AbstractC4687b) context).mo34500T();
    }

    /* renamed from: a */
    private void m33706a(Context context, C4557i c4557i, JSONObject jSONObject, int i, boolean z) {
        if (context == null || c4557i == null || c4557i.m35230Q() == null || jSONObject == null || this.f17808b == null || this.f17809c.get(c4557i.m35230Q().m35338a()) != null) {
            return;
        }
        String m32311a = C5438af.m32311a(i);
        if (TextUtils.isEmpty(m32311a)) {
            return;
        }
        this.f17809c.put(c4557i.m35230Q().m35338a(), m33705a(context, c4557i, jSONObject, m32311a, z));
    }

    /* renamed from: a */
    private void m33704a(C4557i c4557i, JSONObject jSONObject) {
        if (this.f17808b == null || c4557i == null || c4557i.m35230Q() == null) {
            return;
        }
        String m35338a = c4557i.m35230Q().m35338a();
        if (!this.f17809c.containsKey(m35338a)) {
            return;
        }
        this.f17809c.remove(m35338a);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("message", "success");
            jSONObject2.put("status", "unsubscribed");
            jSONObject2.put("appad", jSONObject);
            this.f17808b.mo33701a("app_ad_event", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: a */
    public void mo33700a() {
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: a */
    public void mo33699a(Context context, JSONObject jSONObject, String str) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        m33707a(context, m33702a(optJSONObject, (String) null), str);
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: a */
    public void mo33698a(Context context, JSONObject jSONObject, String str, int i, boolean z) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        m33706a(context, m33702a(optJSONObject, str), optJSONObject, i, z);
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: a */
    public void mo33697a(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        m33704a(m33702a(optJSONObject, (String) null), optJSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: b */
    public void mo33696b() {
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: b */
    public void mo33695b(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4868c
    /* renamed from: c */
    public void mo33694c() {
        this.f17809c.clear();
    }
}
