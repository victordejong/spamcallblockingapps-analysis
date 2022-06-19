package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1473p;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.network.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/g.class */
public class C1463g extends AbstractRunnableC1331a {

    /* renamed from: a */
    private static final long f5509a = TimeUnit.SECONDS.toMillis(5);

    /* renamed from: c */
    private final AtomicLong f5510c = new AtomicLong();

    /* renamed from: d */
    private final C1459f f5511d;

    /* renamed from: e */
    private final C1479t f5512e;

    public C1463g(C1459f c1459f, C1408l c1408l) {
        super("PersistentPostbackQueueSaveTask", c1408l);
        this.f5512e = c1408l.m5542A();
        this.f5511d = c1459f;
    }

    /* renamed from: a */
    private void m5237a(List<C1464h> list) {
        JSONArray jSONArray = new JSONArray();
        for (C1464h c1464h : list) {
            try {
                jSONArray.put(c1464h.m5223n());
            } catch (Throwable th) {
                this.f5512e.m5115b("PersistentPostbackQueueSaveTask", "Unable to serialize postback request to JSON.", th);
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pb", jSONArray);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(jSONObject.toString().getBytes("UTF-8"));
            C1473p m5517Z = this.f5113b.m5517Z();
            m5517Z.m5148a(byteArrayInputStream, m5517Z.m5147a("persistent_postback_cache.json", this.f5113b.m5532K()));
            this.f5512e.m5116b("PersistentPostbackQueueSaveTask", "Wrote updated postback queue to disk.");
        } catch (Throwable th2) {
            this.f5512e.m5115b("PersistentPostbackQueueSaveTask", "Failed to persist postbacks", th2);
        }
    }

    /* renamed from: a */
    public ArrayList<C1464h> m5238a(int i) {
        ArrayList<C1464h> arrayList = new ArrayList<>();
        try {
            C1473p m5517Z = this.f5113b.m5517Z();
            if (m5517Z.m5142b("persistent_postback_cache.json", this.f5113b.m5532K())) {
                String m5151a = m5517Z.m5151a(m5517Z.m5147a("persistent_postback_cache.json", this.f5113b.m5532K()));
                if (StringUtils.isValidString(m5151a)) {
                    JSONArray jSONArray = new JSONObject(m5151a).getJSONArray("pb");
                    this.f5512e.m5116b("PersistentPostbackQueueSaveTask", "Deserializing " + jSONArray.length() + " postback(s).");
                    arrayList.ensureCapacity(Math.max(1, jSONArray.length()));
                    int intValue = ((Integer) this.f5113b.m5511a(C1314b.f4834cK)).intValue();
                    for (int i2 = 0; i2 < jSONArray.length() && arrayList.size() < i; i2++) {
                        C1464h c1464h = new C1464h(jSONArray.getJSONObject(i2), this.f5113b);
                        if (c1464h.m5226k() < intValue) {
                            arrayList.add(c1464h);
                        } else {
                            this.f5512e.m5116b("PersistentPostbackQueueSaveTask", "Skipping deserialization because maximum attempt count exceeded for postback: " + c1464h);
                        }
                    }
                    this.f5512e.m5116b("PersistentPostbackQueueSaveTask", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
                }
            }
        } catch (Throwable th) {
            this.f5512e.m5115b("PersistentPostbackQueueSaveTask", "Failed to deserialize postback queue", th);
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m5239a() {
        this.f5510c.set(System.currentTimeMillis());
        this.f5113b.m5525R().m5652a(this, C1362o.EnumC1364a.POSTBACKS, f5509a);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f5511d.m5261a() > this.f5510c.get()) {
            m5237a(this.f5511d.m5253b());
        }
        m5239a();
    }
}
