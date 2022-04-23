package com.inmobi.p507b;

import com.inmobi.ads.C8197c;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p510b.AbstractC8342e;
import com.inmobi.commons.core.p510b.C8337a;
import com.inmobi.commons.core.p510b.C8339c;
import com.inmobi.commons.core.p510b.C8340d;
import com.inmobi.commons.core.p514f.C8377a;
import com.inmobi.commons.core.p514f.C8378b;
import com.inmobi.commons.core.utilities.p516b.C8397a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.commons.p508a.C8327b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.b.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/b/a.class */
public class C8321a implements AbstractC8342e, C8348b.AbstractC8351c {

    /* renamed from: f */
    public static final String f32361f = "a";

    /* renamed from: h */
    public static volatile C8321a f32363h;

    /* renamed from: c */
    public C8197c f32365c;

    /* renamed from: e */
    public String f32367e;

    /* renamed from: i */
    public C8340d f32368i;

    /* renamed from: g */
    public static final Object f32362g = new Object();

    /* renamed from: b */
    public static AtomicBoolean f32360b = new AtomicBoolean(false);

    /* renamed from: d */
    public C8377a f32366d = new C8377a();

    /* renamed from: a */
    public ExecutorService f32364a = Executors.newSingleThreadExecutor();

    public C8321a() {
        C8197c cVar = new C8197c();
        this.f32365c = cVar;
        this.f32367e = cVar.f31983b;
    }

    /* renamed from: a */
    public static C8321a m5908a() {
        C8321a aVar = f32363h;
        C8321a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32362g) {
                C8321a aVar3 = f32363h;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8321a();
                    f32363h = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: a */
    public static String m5904a(List<C8378b> list) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.putAll(C8398b.m5689a(false));
            hashMap.put("im-accid", C8326a.m5885e());
            hashMap.put("version", "2.0.0");
            hashMap.put("component", "trc");
            hashMap.put("adtype", list.get(0).f32580j);
            hashMap.put("mk-version", C8327b.m5881a());
            hashMap.putAll(C8397a.m5693a().f32654b);
            JSONObject jSONObject = new JSONObject(hashMap);
            JSONArray jSONArray = new JSONArray();
            for (C8378b bVar : list) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("event-id", bVar.f32572b);
                jSONObject2.put("ad-markup-type", bVar.f32573c);
                jSONObject2.put("event-name", bVar.f32574d);
                jSONObject2.put("im-plid", bVar.f32575e);
                jSONObject2.put("request-id", bVar.f32576f);
                jSONObject2.put("event-type", bVar.f32577g);
                jSONObject2.put("d-nettype-raw", bVar.f32578h);
                jSONObject2.put("ts", bVar.f32579i);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("extra-info", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5907a(C8321a aVar) {
        aVar.m5901b("banner");
        aVar.m5901b("int");
        aVar.m5901b("native");
    }

    /* renamed from: a */
    public static /* synthetic */ void m5906a(C8321a aVar, C8378b bVar) {
        C8197c.C8198a b = aVar.f32365c.m6196b(bVar.f32580j);
        aVar.f32366d.mo5759b(b.f32002b, bVar.f32580j);
        if (aVar.f32366d.mo5762a(bVar.f32580j) - b.f32003c >= 0) {
            C8377a.m5755d(bVar.f32580j);
        }
        C8377a.m5763a(bVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5905a(C8321a aVar, String str) {
        if (!f32360b.get()) {
            C8197c.C8198a b = aVar.f32365c.m6196b(str);
            int i = b.f32001a;
            long j = b.f32002b;
            long j2 = b.f32004d;
            long j3 = b.f32005e;
            C8197c.C8207j jVar = b.f32007g;
            int i2 = jVar.f32050b;
            int i3 = jVar.f32051c;
            C8197c.C8207j jVar2 = b.f32006f;
            C8337a aVar2 = new C8337a(i, j, j2, j3, i2, i3, jVar2.f32050b, jVar2.f32051c, jVar.f32049a, jVar2.f32049a);
            aVar2.f32426e = aVar.f32367e;
            aVar2.f32423b = str;
            C8340d dVar = aVar.f32368i;
            if (dVar == null) {
                aVar.f32368i = new C8340d(aVar.f32366d, aVar, aVar2);
            } else {
                dVar.m5862a(aVar2);
            }
            aVar.f32368i.m5860a(str);
        }
    }

    /* renamed from: b */
    private void m5901b(final String str) {
        this.f32364a.execute(new Runnable() { // from class: com.inmobi.b.a.4
            @Override // java.lang.Runnable
            public final void run() {
                C8377a aVar = C8321a.this.f32366d;
                if (C8377a.m5756c(str)) {
                    C8321a.m5905a(C8321a.this, str);
                }
            }
        });
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8342e
    /* renamed from: a */
    public final C8339c mo5791a(String str) {
        C8339c cVar;
        C8197c.C8198a b = this.f32365c.m6196b(str);
        List<C8378b> a = C8398b.m5691a() != 1 ? C8377a.m5766a(b.f32006f.f32051c, str) : C8377a.m5766a(b.f32007g.f32051c, str);
        if (!a.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (C8378b bVar : a) {
                arrayList.add(Integer.valueOf(bVar.f32571a));
            }
            String a2 = m5904a(a);
            if (a2 != null) {
                cVar = new C8339c(arrayList, a2, false);
                return cVar;
            }
        }
        cVar = null;
        return cVar;
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        C8197c cVar = (C8197c) aVar;
        this.f32365c = cVar;
        this.f32367e = cVar.f31983b;
    }
}
