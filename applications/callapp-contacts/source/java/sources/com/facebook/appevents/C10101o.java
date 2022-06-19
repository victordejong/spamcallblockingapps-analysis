package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.p282c.C10006a;
import com.facebook.appevents.p285f.C10034c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10234b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.o */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/o.class */
public class C10101o {

    /* renamed from: a */
    private static final String f33448a = "o";

    /* renamed from: d */
    private int f33451d;

    /* renamed from: e */
    private C10234b f33452e;

    /* renamed from: f */
    private String f33453f;

    /* renamed from: b */
    private List<C10002c> f33449b = new ArrayList();

    /* renamed from: c */
    private List<C10002c> f33450c = new ArrayList();

    /* renamed from: g */
    private final int f33454g = 1000;

    public C10101o(C10234b c10234b, String str) {
        this.f33452e = c10234b;
        this.f33453f = str;
    }

    /* renamed from: a */
    public final int m23408a() {
        synchronized (this) {
            if (C10249a.m23108a(this)) {
                return 0;
            }
            return this.f33449b.size();
        }
    }

    /* renamed from: a */
    public final int m23407a(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        JSONObject jSONObject;
        if (C10249a.m23108a(this)) {
            return 0;
        }
        try {
            synchronized (this) {
                int i = this.f33451d;
                C10006a.m23638a(this.f33449b);
                this.f33450c.addAll(this.f33449b);
                this.f33449b.clear();
                JSONArray jSONArray = new JSONArray();
                for (C10002c c10002c : this.f33450c) {
                    if (!c10002c.m23645a()) {
                        new StringBuilder("Event with invalid checksum: ").append(c10002c.toString());
                        C10213ae.m23250a();
                    } else if (z || !c10002c.f33250b) {
                        jSONArray.put(c10002c.f33249a);
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                if (!C10249a.m23108a(this)) {
                    try {
                        JSONObject m23554a = C10034c.m23554a(C10034c.EnumC10036a.CUSTOM_APP_EVENTS, this.f33452e, this.f33453f, z2, context);
                        jSONObject = m23554a;
                        if (this.f33451d > 0) {
                            m23554a.put("num_skipped_events", i);
                            jSONObject = m23554a;
                        }
                    } catch (JSONException e) {
                        jSONObject = new JSONObject();
                    }
                    graphRequest.f33077c = jSONObject;
                    Bundle bundle = graphRequest.f33078d;
                    Bundle bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    String jSONArray2 = jSONArray.toString();
                    if (jSONArray2 != null) {
                        bundle2.putString("custom_events", jSONArray2);
                        graphRequest.f33080f = jSONArray2;
                    }
                    graphRequest.f33078d = bundle2;
                }
                return jSONArray.length();
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return 0;
        }
    }

    /* renamed from: a */
    public final void m23406a(C10002c c10002c) {
        synchronized (this) {
            if (C10249a.m23108a(this)) {
                return;
            }
            if (this.f33449b.size() + this.f33450c.size() >= (C10249a.m23108a(this) ? 0 : 1000)) {
                this.f33451d++;
            } else {
                this.f33449b.add(c10002c);
            }
        }
    }

    /* renamed from: a */
    public final void m23405a(boolean z) {
        synchronized (this) {
            if (C10249a.m23108a(this)) {
                return;
            }
            if (z) {
                this.f33449b.addAll(this.f33450c);
            }
            this.f33450c.clear();
            this.f33451d = 0;
        }
    }

    /* renamed from: b */
    public final List<C10002c> m23404b() {
        synchronized (this) {
            if (C10249a.m23108a(this)) {
                return null;
            }
            List<C10002c> list = this.f33449b;
            this.f33449b = new ArrayList();
            return list;
        }
    }
}
