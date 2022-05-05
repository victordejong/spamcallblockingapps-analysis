package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.p038s.C2335c;
import com.facebook.appevents.p040u.C2360a;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2408g0;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.o */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/o.class */
public class C2287o {

    /* renamed from: a */
    public List<C2257c> f2709a = new ArrayList();

    /* renamed from: b */
    public List<C2257c> f2710b = new ArrayList();

    /* renamed from: c */
    public int f2711c;

    /* renamed from: d */
    public C2381b f2712d;

    /* renamed from: e */
    public String f2713e;

    public C2287o(C2381b bVar, String str) {
        this.f2712d = bVar;
        this.f2713e = str;
    }

    /* renamed from: a */
    public int m35286a() {
        int size;
        synchronized (this) {
            size = this.f2709a.size();
        }
        return size;
    }

    /* renamed from: a */
    public int m35284a(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f2711c;
            C2360a.m35030a(this.f2710b);
            this.f2710b.addAll(this.f2709a);
            this.f2709a.clear();
            JSONArray jSONArray = new JSONArray();
            for (C2257c cVar : this.f2710b) {
                if (!cVar.m35363e()) {
                    C2408g0.m34821c("Event with invalid checksum: %s", cVar.toString());
                } else if (z || !cVar.m35367b()) {
                    jSONArray.put(cVar.m35365c());
                }
            }
            if (jSONArray.length() == 0) {
                return 0;
            }
            m35285a(graphRequest, context, i, jSONArray, z2);
            return jSONArray.length();
        }
    }

    /* renamed from: a */
    public final void m35285a(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            JSONObject a = C2335c.m35123a(C2335c.EnumC2337b.CUSTOM_APP_EVENTS, this.f2712d, this.f2713e, z, context);
            jSONObject = a;
            if (this.f2711c > 0) {
                a.put("num_skipped_events", i);
                jSONObject = a;
            }
        } catch (JSONException e) {
            jSONObject = new JSONObject();
        }
        graphRequest.m35441a(jSONObject);
        Bundle j = graphRequest.m35414j();
        Bundle bundle = j;
        if (j == null) {
            bundle = new Bundle();
        }
        String jSONArray2 = jSONArray.toString();
        if (jSONArray2 != null) {
            bundle.putString("custom_events", jSONArray2);
            graphRequest.m35451a((Object) jSONArray2);
        }
        graphRequest.m35464a(bundle);
    }

    /* renamed from: a */
    public void m35283a(C2257c cVar) {
        synchronized (this) {
            if (this.f2709a.size() + this.f2710b.size() >= 1000) {
                this.f2711c++;
            } else {
                this.f2709a.add(cVar);
            }
        }
    }

    /* renamed from: a */
    public void m35282a(boolean z) {
        synchronized (this) {
            if (z) {
                this.f2709a.addAll(this.f2710b);
            }
            this.f2710b.clear();
            this.f2711c = 0;
        }
    }

    /* renamed from: b */
    public List<C2257c> m35281b() {
        List<C2257c> list;
        synchronized (this) {
            list = this.f2709a;
            this.f2709a = new ArrayList();
        }
        return list;
    }
}
