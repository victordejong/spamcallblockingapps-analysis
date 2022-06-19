package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.abt.AbtException;
import com.google.firebase.abt.C15583b;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.remoteconfig.internal.C15911a;
import com.google.firebase.remoteconfig.internal.C15918f;
import com.google.firebase.remoteconfig.internal.C15921g;
import com.google.firebase.remoteconfig.internal.C15927l;
import com.google.firebase.remoteconfig.internal.C15929n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/a.class */
public final class C15902a {

    /* renamed from: a */
    public static final byte[] f56456a = new byte[0];

    /* renamed from: b */
    public final Executor f56457b;

    /* renamed from: c */
    public final C15911a f56458c;

    /* renamed from: d */
    public final C15911a f56459d;

    /* renamed from: e */
    final C15911a f56460e;

    /* renamed from: f */
    public final C15927l f56461f;

    /* renamed from: g */
    private final Context f56462g;

    /* renamed from: h */
    private final C15601b f56463h;

    /* renamed from: i */
    private final C15583b f56464i;

    /* renamed from: j */
    private final C15921g f56465j;

    /* renamed from: k */
    private final C15929n f56466k;

    /* renamed from: l */
    private final AbstractC15822h f56467l;

    public C15902a(Context context, C15601b c15601b, AbstractC15822h abstractC15822h, C15583b c15583b, Executor executor, C15911a c15911a, C15911a c15911a2, C15911a c15911a3, C15921g c15921g, C15927l c15927l, C15929n c15929n) {
        this.f56462g = context;
        this.f56463h = c15601b;
        this.f56467l = abstractC15822h;
        this.f56464i = c15583b;
        this.f56457b = executor;
        this.f56458c = c15911a;
        this.f56459d = c15911a2;
        this.f56460e = c15911a3;
        this.f56465j = c15921g;
        this.f56461f = c15927l;
        this.f56466k = c15929n;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14185h m8104a(C15902a c15902a, AbstractC14185h abstractC14185h, AbstractC14185h abstractC14185h2) throws Exception {
        if (!abstractC14185h.mo11478b() || abstractC14185h.mo11475d() == null) {
            return C14188k.m11464a(Boolean.FALSE);
        }
        C15918f c15918f = (C15918f) abstractC14185h.mo11475d();
        if (abstractC14185h2.mo11478b()) {
            C15918f c15918f2 = (C15918f) abstractC14185h2.mo11475d();
            if (!(c15918f2 == null || !c15918f.f56511b.equals(c15918f2.f56511b))) {
                return C14188k.m11464a(Boolean.FALSE);
            }
        }
        return c15902a.f56459d.m8078a(c15918f).mo11484a(c15902a.f56457b, new AbstractC14179b(c15902a) { // from class: com.google.firebase.remoteconfig.b

            /* renamed from: a */
            private final C15902a f56468a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56468a = c15902a;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h3) {
                boolean m8107a;
                m8107a = this.f56468a.m8107a(abstractC14185h3);
                return Boolean.valueOf(m8107a);
            }
        });
    }

    /* renamed from: a */
    public static C15902a m8106a(C15601b c15601b) {
        return ((C15908g) c15601b.m8577a(C15908g.class)).m8092a("firebase");
    }

    /* renamed from: a */
    public boolean m8107a(AbstractC14185h<C15918f> abstractC14185h) {
        if (abstractC14185h.mo11478b()) {
            C15911a c15911a = this.f56458c;
            synchronized (c15911a) {
                c15911a.f56499b = C14188k.m11464a((Object) null);
            }
            c15911a.f56498a.m8037b();
            if (abstractC14185h.mo11475d() == null) {
                Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
                return true;
            }
            JSONArray jSONArray = abstractC14185h.mo11475d().f56512c;
            if (this.f56464i == null) {
                return true;
            }
            try {
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
                C15583b c15583b = this.f56464i;
                c15583b.m8631a();
                c15583b.m8628a(C15583b.m8625b(arrayList));
                return true;
            } catch (AbtException e) {
                Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
                return true;
            } catch (JSONException e2) {
                Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final AbstractC14185h<Void> m8108a() {
        return this.f56465j.m8062a().mo11486a(C15905d.m8097a());
    }

    /* renamed from: a */
    public final AbstractC14185h<Void> m8102a(Map<String, String> map) {
        try {
            C15918f.C15920a m8069a = C15918f.m8069a();
            m8069a.f56515a = new JSONObject(map);
            return this.f56460e.m8078a(m8069a.m8066a()).mo11486a(C15907f.m8095a());
        } catch (JSONException e) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e);
            return C14188k.m11464a((Object) null);
        }
    }

    /* renamed from: a */
    public final String m8103a(String str) {
        return this.f56461f.m8050a(str);
    }

    /* renamed from: b */
    public final AbstractC14185h<Void> m8101b() {
        return this.f56465j.m8061a(0L).mo11486a(C15906e.m8096a());
    }
}
