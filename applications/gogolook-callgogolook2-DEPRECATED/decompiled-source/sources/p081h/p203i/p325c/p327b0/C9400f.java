package p081h.p203i.p325c.p327b0;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.XmlRes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p327b0.p328p.C9416e;
import p081h.p203i.p325c.p327b0.p328p.C9419f;
import p081h.p203i.p325c.p327b0.p328p.C9426k;
import p081h.p203i.p325c.p327b0.p328p.C9429m;
import p081h.p203i.p325c.p327b0.p328p.C9430n;
import p081h.p203i.p325c.p327b0.p328p.C9433p;
import p081h.p203i.p325c.p329j.C9447a;
import p081h.p203i.p325c.p329j.C9449c;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* renamed from: h.i.c.b0.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/f.class */
public class C9400f {

    /* renamed from: a */
    public final Context f21441a;
    @Nullable

    /* renamed from: b */
    public final C9449c f21442b;

    /* renamed from: c */
    public final Executor f21443c;

    /* renamed from: d */
    public final C9416e f21444d;

    /* renamed from: e */
    public final C9416e f21445e;

    /* renamed from: f */
    public final C9416e f21446f;

    /* renamed from: g */
    public final C9426k f21447g;

    /* renamed from: h */
    public final C9429m f21448h;

    /* renamed from: i */
    public final C9430n f21449i;

    public C9400f(Context context, C9435c cVar, AbstractC9941h hVar, @Nullable C9449c cVar2, Executor executor, C9416e eVar, C9416e eVar2, C9416e eVar3, C9426k kVar, C9429m mVar, C9430n nVar) {
        this.f21441a = context;
        this.f21442b = cVar2;
        this.f21443c = executor;
        this.f21444d = eVar;
        this.f21445e = eVar2;
        this.f21446f = eVar3;
        this.f21447g = kVar;
        this.f21448h = mVar;
        this.f21449i = nVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9143h m15310a(C9400f fVar, AbstractC9143h hVar, AbstractC9143h hVar2, AbstractC9143h hVar3) throws Exception {
        if (!hVar.mo16009e() || hVar.mo16014b() == null) {
            return C9148k.m15999a(false);
        }
        C9419f fVar2 = (C9419f) hVar.mo16014b();
        return (!hVar2.mo16009e() || m15306a(fVar2, (C9419f) hVar2.mo16014b())) ? fVar.f21445e.m15264a(fVar2).mo16020a(fVar.f21443c, C9395a.m15320a(fVar)) : C9148k.m15999a(false);
    }

    @NonNull
    /* renamed from: a */
    public static C9400f m15304a(@NonNull C9435c cVar) {
        return ((C9410n) cVar.m15176a(C9410n.class)).m15285a();
    }

    /* renamed from: a */
    public static boolean m15306a(C9419f fVar, @Nullable C9419f fVar2) {
        return fVar2 == null || !fVar.m15253c().equals(fVar2.m15253c());
    }

    @VisibleForTesting
    /* renamed from: b */
    public static List<Map<String, String>> m15298b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: c */
    public static C9400f m15297c() {
        return m15304a(C9435c.m15163j());
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Boolean> m15315a() {
        AbstractC9143h<C9419f> b = this.f21444d.m15261b();
        AbstractC9143h<C9419f> b2 = this.f21445e.m15261b();
        return C9148k.m15993b(b, b2).mo16012b(this.f21443c, C9396b.m15319a(this, b, b2));
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> m15314a(@XmlRes int i) {
        return m15302a(C9433p.m15185a(this.f21441a, i));
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> m15313a(long j) {
        return this.f21447g.m15223b(j).mo16022a(C9397c.m15318a());
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> m15308a(@NonNull C9405k kVar) {
        return C9148k.m15997a(this.f21443c, CallableC9398d.m15317a(this, kVar));
    }

    /* renamed from: a */
    public final AbstractC9143h<Void> m15302a(Map<String, String> map) {
        try {
            C9419f.C9421b f = C9419f.m15250f();
            f.m15247a(map);
            return this.f21446f.m15264a(f.m15249a()).mo16022a(C9399e.m15316a());
        } catch (JSONException e) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e);
            return C9148k.m15999a((Object) null);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m15301a(@NonNull JSONArray jSONArray) {
        if (this.f21442b != null) {
            try {
                this.f21442b.m15134b(m15298b(jSONArray));
            } catch (C9447a e) {
            } catch (JSONException e2) {
                Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m15312a(AbstractC9143h<C9419f> hVar) {
        if (!hVar.mo16009e()) {
            return false;
        }
        this.f21444d.m15269a();
        if (hVar.mo16014b() != null) {
            m15301a(hVar.mo16014b().m15256a());
            return true;
        }
        Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
        return true;
    }

    /* renamed from: a */
    public boolean m15303a(@NonNull String str) {
        return this.f21448h.m15209a(str);
    }

    /* renamed from: b */
    public long m15299b(@NonNull String str) {
        return this.f21448h.m15205b(str);
    }

    /* renamed from: b */
    public void m15300b() {
        this.f21445e.m15261b();
        this.f21446f.m15261b();
        this.f21444d.m15261b();
    }

    @NonNull
    /* renamed from: c */
    public String m15296c(@NonNull String str) {
        return this.f21448h.m15204c(str);
    }
}
