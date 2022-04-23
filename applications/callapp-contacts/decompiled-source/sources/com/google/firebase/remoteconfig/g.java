package com.google.firebase.remoteconfig;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.tasks.k;
import com.google.firebase.analytics.connector.a;
import com.google.firebase.b;
import com.google.firebase.installations.h;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.l;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.p;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final f f32588a = i.d();

    /* renamed from: b  reason: collision with root package name */
    private static final Random f32589b = new Random();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, a> f32590c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f32591d;
    private final ExecutorService e;
    private final b f;
    private final h g;
    private final com.google.firebase.abt.b h;
    private final a i;
    private final String j;
    private Map<String, String> k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, b bVar, h hVar, com.google.firebase.abt.b bVar2, a aVar) {
        this(context, Executors.newCachedThreadPool(), bVar, hVar, bVar2, aVar, true);
    }

    protected g(Context context, ExecutorService executorService, b bVar, h hVar, com.google.firebase.abt.b bVar2, a aVar, boolean z) {
        this.f32590c = new HashMap();
        this.k = new HashMap();
        this.f32591d = context;
        this.e = executorService;
        this.f = bVar;
        this.g = hVar;
        this.h = bVar2;
        this.i = aVar;
        this.j = bVar.c().f32315b;
        if (z) {
            k.a(executorService, h.a(this));
        }
    }

    private a a(b bVar, String str, h hVar, com.google.firebase.abt.b bVar2, Executor executor, com.google.firebase.remoteconfig.internal.a aVar, com.google.firebase.remoteconfig.internal.a aVar2, com.google.firebase.remoteconfig.internal.a aVar3, com.google.firebase.remoteconfig.internal.g gVar, l lVar, n nVar) {
        a aVar4;
        synchronized (this) {
            if (!this.f32590c.containsKey(str)) {
                Context context = this.f32591d;
                if (!(str.equals("firebase") && a(bVar))) {
                    bVar2 = null;
                }
                a aVar5 = new a(context, bVar, hVar, bVar2, executor, aVar, aVar2, aVar3, gVar, lVar, nVar);
                aVar5.f32580d.b();
                aVar5.e.b();
                aVar5.f32579c.b();
                this.f32590c.put(str, aVar5);
            }
            aVar4 = this.f32590c.get(str);
        }
        return aVar4;
    }

    private com.google.firebase.remoteconfig.internal.a a(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.a.a(Executors.newCachedThreadPool(), o.a(this.f32591d, String.format("%s_%s_%s_%s.json", "frc", this.j, str, str2)));
    }

    private com.google.firebase.remoteconfig.internal.g a(String str, com.google.firebase.remoteconfig.internal.a aVar, n nVar) {
        com.google.firebase.remoteconfig.internal.g gVar;
        synchronized (this) {
            h hVar = this.g;
            a aVar2 = a(this.f) ? this.i : null;
            gVar = new com.google.firebase.remoteconfig.internal.g(hVar, aVar2, this.e, f32588a, f32589b, aVar, new ConfigFetchHttpClient(this.f32591d, this.f.c().f32315b, this.f.c().f32314a, str, nVar.a(), nVar.a()), nVar, this.k);
        }
        return gVar;
    }

    private static boolean a(b bVar) {
        return bVar.b().equals("[DEFAULT]");
    }

    public final a a(String str) {
        a a2;
        synchronized (this) {
            com.google.firebase.remoteconfig.internal.a a3 = a(str, "fetch");
            com.google.firebase.remoteconfig.internal.a a4 = a(str, "activate");
            com.google.firebase.remoteconfig.internal.a a5 = a(str, "defaults");
            n nVar = new n(this.f32591d.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.j, str, "settings"), 0));
            l lVar = new l(this.e, a4, a5);
            b bVar = this.f;
            a aVar = this.i;
            final p pVar = (!a(bVar) || !str.equals("firebase") || aVar == null) ? null : new p(aVar);
            if (pVar != null) {
                pVar.getClass();
                d<String, com.google.firebase.remoteconfig.internal.f> iVar = new d(pVar) { // from class: com.google.firebase.remoteconfig.i

                    /* renamed from: a  reason: collision with root package name */
                    private final p f32593a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32593a = pVar;
                    }

                    @Override // com.google.android.gms.common.util.d
                    public final void a(Object obj, Object obj2) {
                        JSONObject optJSONObject;
                        p pVar2 = this.f32593a;
                        String str2 = (String) obj;
                        com.google.firebase.remoteconfig.internal.f fVar = (com.google.firebase.remoteconfig.internal.f) obj2;
                        JSONObject jSONObject = fVar.f32613d;
                        if (jSONObject.length() > 0) {
                            JSONObject jSONObject2 = fVar.f32610a;
                            if (jSONObject2.length() > 0 && (optJSONObject = jSONObject.optJSONObject(str2)) != null) {
                                String optString = optJSONObject.optString("choiceId");
                                if (!optString.isEmpty()) {
                                    synchronized (pVar2.f32652b) {
                                        if (!optString.equals(pVar2.f32652b.get(str2))) {
                                            pVar2.f32652b.put(str2, optString);
                                            Bundle bundle = new Bundle();
                                            bundle.putString("arm_key", str2);
                                            bundle.putString("arm_value", jSONObject2.optString(str2));
                                            bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                                            bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                                            bundle.putString("group", optJSONObject.optString("group"));
                                            pVar2.f32651a.a("fp", "personalization_assignment", bundle);
                                            Bundle bundle2 = new Bundle();
                                            bundle2.putString("_fpid", optString);
                                            pVar2.f32651a.a("fp", "_fpc", bundle2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                };
                synchronized (lVar.f32638d) {
                    lVar.f32638d.add(iVar);
                }
            }
            a2 = a(this.f, str, this.g, this.h, this.e, a3, a4, a5, a(str, a3, nVar), lVar, nVar);
        }
        return a2;
    }
}
