package com.facebook.appevents.p279a;

import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.a.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/c.class */
public final class C9964c {

    /* renamed from: a */
    private static final String f33143a = "com.facebook.appevents.a.c";

    /* renamed from: b */
    private static final Set<C9964c> f33144b = new CopyOnWriteArraySet();

    /* renamed from: c */
    private String f33145c;

    /* renamed from: d */
    private List<String> f33146d;

    /* renamed from: e */
    private String f33147e;

    private C9964c(String str, List<String> list, String str2) {
        this.f33145c = str;
        this.f33146d = list;
        this.f33147e = str2;
    }

    /* renamed from: a */
    public static Set<C9964c> m23737a() {
        if (C10249a.m23108a(C9964c.class)) {
            return null;
        }
        try {
            return new HashSet(f33144b);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9964c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23736a(String str) {
        if (C10249a.m23108a(C9964c.class)) {
            return;
        }
        try {
            f33144b.clear();
            m23735a(new JSONObject(str));
        } catch (JSONException e) {
        } catch (Throwable th) {
            C10249a.m23106a(th, C9964c.class);
        }
    }

    /* renamed from: a */
    private static void m23735a(JSONObject jSONObject) {
        if (C10249a.m23108a(C9964c.class)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("k");
                    String optString2 = optJSONObject.optString("v");
                    if (!optString.isEmpty()) {
                        f33144b.add(new C9964c(next, Arrays.asList(optString.split(",")), optString2));
                    }
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C9964c.class);
        }
    }

    /* renamed from: e */
    public static Set<String> m23731e() {
        if (C10249a.m23108a(C9964c.class)) {
            return null;
        }
        try {
            HashSet hashSet = new HashSet();
            for (C9964c c9964c : f33144b) {
                hashSet.add(c9964c.m23734b());
            }
            return hashSet;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9964c.class);
            return null;
        }
    }

    /* renamed from: b */
    public final String m23734b() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f33145c;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: c */
    public final List<String> m23733c() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return new ArrayList(this.f33146d);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: d */
    public final String m23732d() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f33147e;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }
}
