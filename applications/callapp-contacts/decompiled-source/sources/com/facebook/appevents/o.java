package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.f.c;
import com.facebook.internal.ae;
import com.facebook.internal.b;
import com.facebook.internal.b.b.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/o.class */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19661a = "o";

    /* renamed from: d  reason: collision with root package name */
    private int f19664d;
    private b e;
    private String f;

    /* renamed from: b  reason: collision with root package name */
    private List<c> f19662b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<c> f19663c = new ArrayList();
    private final int g = 1000;

    public o(b bVar, String str) {
        this.e = bVar;
        this.f = str;
    }

    public final int a() {
        synchronized (this) {
            if (a.a(this)) {
                return 0;
            }
            return this.f19662b.size();
        }
    }

    public final int a(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        JSONObject jSONObject;
        if (a.a(this)) {
            return 0;
        }
        try {
            synchronized (this) {
                int i = this.f19664d;
                com.facebook.appevents.c.a.a(this.f19662b);
                this.f19663c.addAll(this.f19662b);
                this.f19662b.clear();
                JSONArray jSONArray = new JSONArray();
                for (c cVar : this.f19663c) {
                    if (!cVar.a()) {
                        new StringBuilder("Event with invalid checksum: ").append(cVar.toString());
                        ae.a();
                    } else if (z || !cVar.f19502b) {
                        jSONArray.put(cVar.f19501a);
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                if (!a.a(this)) {
                    try {
                        JSONObject a2 = c.a(c.a.CUSTOM_APP_EVENTS, this.e, this.f, z2, context);
                        jSONObject = a2;
                        if (this.f19664d > 0) {
                            a2.put("num_skipped_events", i);
                            jSONObject = a2;
                        }
                    } catch (JSONException e) {
                        jSONObject = new JSONObject();
                    }
                    graphRequest.f19372c = jSONObject;
                    Bundle bundle = graphRequest.f19373d;
                    Bundle bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    String jSONArray2 = jSONArray.toString();
                    if (jSONArray2 != null) {
                        bundle2.putString("custom_events", jSONArray2);
                        graphRequest.f = jSONArray2;
                    }
                    graphRequest.f19373d = bundle2;
                }
                return jSONArray.length();
            }
        } catch (Throwable th) {
            a.a(th, this);
            return 0;
        }
    }

    public final void a(c cVar) {
        synchronized (this) {
            if (!a.a(this)) {
                if (this.f19662b.size() + this.f19663c.size() >= (a.a(this) ? 0 : 1000)) {
                    this.f19664d++;
                } else {
                    this.f19662b.add(cVar);
                }
            }
        }
    }

    public final void a(boolean z) {
        synchronized (this) {
            if (!a.a(this)) {
                if (z) {
                    this.f19662b.addAll(this.f19663c);
                }
                this.f19663c.clear();
                this.f19664d = 0;
            }
        }
    }

    public final List<c> b() {
        synchronized (this) {
            if (a.a(this)) {
                return null;
            }
            List<c> list = this.f19662b;
            this.f19662b = new ArrayList();
            return list;
        }
    }
}
