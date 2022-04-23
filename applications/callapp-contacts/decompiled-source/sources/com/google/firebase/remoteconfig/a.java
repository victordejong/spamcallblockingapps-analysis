package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.k;
import com.google.firebase.abt.AbtException;
import com.google.firebase.b;
import com.google.firebase.installations.h;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.g;
import com.google.firebase.remoteconfig.internal.l;
import com.google.firebase.remoteconfig.internal.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f32577a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public final Executor f32578b;

    /* renamed from: c  reason: collision with root package name */
    public final com.google.firebase.remoteconfig.internal.a f32579c;

    /* renamed from: d  reason: collision with root package name */
    public final com.google.firebase.remoteconfig.internal.a f32580d;
    final com.google.firebase.remoteconfig.internal.a e;
    public final l f;
    private final Context g;
    private final b h;
    private final com.google.firebase.abt.b i;
    private final g j;
    private final n k;
    private final h l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, b bVar, h hVar, com.google.firebase.abt.b bVar2, Executor executor, com.google.firebase.remoteconfig.internal.a aVar, com.google.firebase.remoteconfig.internal.a aVar2, com.google.firebase.remoteconfig.internal.a aVar3, g gVar, l lVar, n nVar) {
        this.g = context;
        this.h = bVar;
        this.l = hVar;
        this.i = bVar2;
        this.f32578b = executor;
        this.f32579c = aVar;
        this.f32580d = aVar2;
        this.e = aVar3;
        this.j = gVar;
        this.f = lVar;
        this.k = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.tasks.h a(final a aVar, com.google.android.gms.tasks.h hVar, com.google.android.gms.tasks.h hVar2) throws Exception {
        if (!hVar.b() || hVar.d() == null) {
            return k.a(Boolean.FALSE);
        }
        f fVar = (f) hVar.d();
        if (hVar2.b()) {
            f fVar2 = (f) hVar2.d();
            if (!(fVar2 == null || !fVar.f32611b.equals(fVar2.f32611b))) {
                return k.a(Boolean.FALSE);
            }
        }
        return aVar.f32580d.a(fVar).a(aVar.f32578b, new com.google.android.gms.tasks.b(aVar) { // from class: com.google.firebase.remoteconfig.b

            /* renamed from: a  reason: collision with root package name */
            private final a f32581a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32581a = aVar;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(com.google.android.gms.tasks.h hVar3) {
                boolean a2;
                a2 = this.f32581a.a(hVar3);
                return Boolean.valueOf(a2);
            }
        });
    }

    public static a a(b bVar) {
        return ((g) bVar.a(g.class)).a("firebase");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(com.google.android.gms.tasks.h<f> hVar) {
        if (!hVar.b()) {
            return false;
        }
        com.google.firebase.remoteconfig.internal.a aVar = this.f32579c;
        synchronized (aVar) {
            aVar.f32600b = k.a((Object) null);
        }
        aVar.f32599a.b();
        if (hVar.d() != null) {
            JSONArray jSONArray = hVar.d().f32612c;
            if (this.i == null) {
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
                com.google.firebase.abt.b bVar = this.i;
                bVar.a();
                bVar.a(com.google.firebase.abt.b.b(arrayList));
                return true;
            } catch (AbtException e) {
                Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
                return true;
            } catch (JSONException e2) {
                Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
                return true;
            }
        } else {
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            return true;
        }
    }

    public final com.google.android.gms.tasks.h<Void> a() {
        return this.j.a().a(d.a());
    }

    public final com.google.android.gms.tasks.h<Void> a(Map<String, String> map) {
        try {
            f.a a2 = f.a();
            a2.f32614a = new JSONObject(map);
            return this.e.a(a2.a()).a(f.a());
        } catch (JSONException e) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e);
            return k.a((Object) null);
        }
    }

    public final String a(String str) {
        return this.f.a(str);
    }

    public final com.google.android.gms.tasks.h<Void> b() {
        return this.j.a(0L).a(e.a());
    }
}
