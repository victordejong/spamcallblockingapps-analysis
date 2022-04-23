package com.facebook.appevents.a;

import com.facebook.internal.b.b.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19421a = "com.facebook.appevents.a.c";

    /* renamed from: b  reason: collision with root package name */
    private static final Set<c> f19422b = new CopyOnWriteArraySet();

    /* renamed from: c  reason: collision with root package name */
    private String f19423c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f19424d;
    private String e;

    private c(String str, List<String> list, String str2) {
        this.f19423c = str;
        this.f19424d = list;
        this.e = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<c> a() {
        if (a.a(c.class)) {
            return null;
        }
        try {
            return new HashSet(f19422b);
        } catch (Throwable th) {
            a.a(th, c.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        if (!a.a(c.class)) {
            try {
                f19422b.clear();
                a(new JSONObject(str));
            } catch (JSONException e) {
            } catch (Throwable th) {
                a.a(th, c.class);
            }
        }
    }

    private static void a(JSONObject jSONObject) {
        if (!a.a(c.class)) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject optJSONObject = jSONObject.optJSONObject(next);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("k");
                        String optString2 = optJSONObject.optString("v");
                        if (!optString.isEmpty()) {
                            f19422b.add(new c(next, Arrays.asList(optString.split(",")), optString2));
                        }
                    }
                }
            } catch (Throwable th) {
                a.a(th, c.class);
            }
        }
    }

    public static Set<String> e() {
        if (a.a(c.class)) {
            return null;
        }
        try {
            HashSet hashSet = new HashSet();
            for (c cVar : f19422b) {
                hashSet.add(cVar.b());
            }
            return hashSet;
        } catch (Throwable th) {
            a.a(th, c.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        if (a.a(this)) {
            return null;
        }
        try {
            return this.f19423c;
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<String> c() {
        if (a.a(this)) {
            return null;
        }
        try {
            return new ArrayList(this.f19424d);
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        if (a.a(this)) {
            return null;
        }
        try {
            return this.e;
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }
}
