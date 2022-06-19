package com.facebook.appevents.p025h0;

import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import org.json.JSONObject;
import s1.f0.v;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\b\t\b\u0007\u0018�� \r2\u00020\u0001:\u0001\rB%\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058F¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/facebook/appevents/aam/MetadataRule;", "", AnalyticsConstants.NAME, "", "keyRules", "", "valRule", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getKeyRules", "()Ljava/util/List;", "getName", "()Ljava/lang/String;", "getValRule", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.h0.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/e.class */
public final class C0966e {

    /* renamed from: d */
    public static final C0966e f2659d = null;

    /* renamed from: e */
    public static final Set<C0966e> f2660e = new CopyOnWriteArraySet();

    /* renamed from: a */
    public final String f2661a;

    /* renamed from: b */
    public final String f2662b;

    /* renamed from: c */
    public final List<String> f2663c;

    public C0966e(String str, List list, String str2, f fVar) {
        this.f2661a = str;
        this.f2662b = str2;
        this.f2663c = list;
    }

    /* renamed from: a */
    public static final /* synthetic */ Set m41963a() {
        if (C1220a.m41623b(C0966e.class)) {
            return null;
        }
        try {
            return f2660e;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0966e.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final void m41962b(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject optJSONObject = jSONObject.optJSONObject(next);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("k");
                String optString2 = optJSONObject.optString("v");
                l.d(optString, "k");
                if (!(optString.length() == 0)) {
                    Set m41963a = m41963a();
                    l.d(next, AnalyticsConstants.KEY);
                    List U = v.U(optString, new String[]{","}, false, 0, 6);
                    l.d(optString2, "v");
                    m41963a.add(new C0966e(next, U, optString2, null));
                }
            }
        }
    }

    /* renamed from: c */
    public final List<String> m41961c() {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            return new ArrayList(this.f2663c);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: d */
    public final String m41960d() {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            return this.f2661a;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
