package com.facebook.p094a;

import android.content.Context;
import android.os.Bundle;
import com.facebook.C2102k;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p098c.C1852a;
import com.facebook.p094a.p099d.C1863c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.o */
/* loaded from: classes-dex2jar.jar:com/facebook/a/o.class */
public class C1931o {

    /* renamed from: c */
    private int f5815c;

    /* renamed from: d */
    private C1994a f5816d;

    /* renamed from: e */
    private String f5817e;

    /* renamed from: a */
    private List<C1848c> f5813a = new ArrayList();

    /* renamed from: b */
    private List<C1848c> f5814b = new ArrayList();

    /* renamed from: f */
    private final int f5818f = 1000;

    public C1931o(C1994a c1994a, String str) {
        this.f5816d = c1994a;
        this.f5817e = str;
    }

    /* renamed from: a */
    private void m15842a(C2102k c2102k, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            JSONObject m16059a = C1863c.m16059a(C1863c.EnumC1865a.CUSTOM_APP_EVENTS, this.f5816d, this.f5817e, z, context);
            jSONObject = m16059a;
            if (this.f5815c > 0) {
                m16059a.put("num_skipped_events", i);
                jSONObject = m16059a;
            }
        } catch (JSONException e) {
            jSONObject = new JSONObject();
        }
        c2102k.m15318a(jSONObject);
        Bundle m15302e = c2102k.m15302e();
        Bundle bundle = m15302e;
        if (m15302e == null) {
            bundle = new Bundle();
        }
        String jSONArray2 = jSONArray.toString();
        if (jSONArray2 != null) {
            bundle.putString("custom_events", jSONArray2);
            c2102k.m15328a((Object) jSONArray2);
        }
        c2102k.m15341a(bundle);
    }

    /* renamed from: a */
    public int m15844a() {
        int size;
        synchronized (this) {
            size = this.f5813a.size();
        }
        return size;
    }

    /* renamed from: a */
    public int m15841a(C2102k c2102k, Context context, boolean z, boolean z2) {
        int length;
        synchronized (this) {
            int i = this.f5815c;
            C1852a.m16098a(this.f5814b);
            this.f5814b.addAll(this.f5813a);
            this.f5813a.clear();
            JSONArray jSONArray = new JSONArray();
            for (C1848c c1848c : this.f5814b) {
                if (!c1848c.m16101d()) {
                    C2079x.m15449b("Event with invalid checksum: %s", c1848c.toString());
                } else if (z || !c1848c.m16104b()) {
                    jSONArray.put(c1848c.m16102c());
                }
            }
            if (jSONArray.length() == 0) {
                length = 0;
            } else {
                m15842a(c2102k, context, i, jSONArray, z2);
                length = jSONArray.length();
            }
        }
        return length;
    }

    /* renamed from: a */
    public void m15843a(C1848c c1848c) {
        synchronized (this) {
            if (this.f5813a.size() + this.f5814b.size() >= 1000) {
                this.f5815c++;
            } else {
                this.f5813a.add(c1848c);
            }
        }
    }

    /* renamed from: a */
    public void m15840a(boolean z) {
        synchronized (this) {
            if (z) {
                this.f5813a.addAll(this.f5814b);
            }
            this.f5814b.clear();
            this.f5815c = 0;
        }
    }

    /* renamed from: b */
    public List<C1848c> m15839b() {
        List<C1848c> list;
        synchronized (this) {
            list = this.f5813a;
            this.f5813a = new ArrayList();
        }
        return list;
    }
}
