package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgc.class */
public final class cgc implements chb<cfz> {

    /* renamed from: a  reason: collision with root package name */
    final dbs f25767a;

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f25768b;

    /* renamed from: c  reason: collision with root package name */
    final byp f25769c;

    /* renamed from: d  reason: collision with root package name */
    final Context f25770d;
    final cpo e;
    final bym f;
    String g;

    public cgc(dbs dbsVar, ScheduledExecutorService scheduledExecutorService, String str, byp bypVar, Context context, cpo cpoVar, bym bymVar) {
        this.f25767a = dbsVar;
        this.f25768b = scheduledExecutorService;
        this.g = str;
        this.f25769c = bypVar;
        this.f25770d = context;
        this.e = cpoVar;
        this.f = bymVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cfz> a() {
        return ((Boolean) ekb.e().a(aq.aW)).booleanValue() ? dbh.a(new dar(this) { // from class: com.google.android.gms.internal.ads.cgb

            /* renamed from: a  reason: collision with root package name */
            private final cgc f25766a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25766a = this;
            }

            @Override // com.google.android.gms.internal.ads.dar
            public final dbt a() {
                Map map;
                final cgc cgcVar = this.f25766a;
                byp bypVar = cgcVar.f25769c;
                String str = cgcVar.g;
                String str2 = cgcVar.e.f;
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    map = Collections.emptyMap();
                } else {
                    Map<String, List<bys>> map2 = bypVar.f25403a.get(str);
                    if (map2 != null) {
                        List<bys> list = map2.get(str2);
                        List<bys> list2 = list;
                        if (list == null) {
                            list2 = map2.get(bjl.a(bypVar.f25405c, str2, str));
                        }
                        if (list2 != null) {
                            HashMap hashMap = new HashMap();
                            Iterator<bys> it2 = list2.iterator();
                            while (true) {
                                map = hashMap;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                bys next = it2.next();
                                String str3 = next.f25409a;
                                if (!hashMap.containsKey(str3)) {
                                    hashMap.put(str3, new ArrayList());
                                }
                                ((List) hashMap.get(str3)).add(next.f25410b);
                            }
                        } else {
                            map = Collections.emptyMap();
                        }
                    } else {
                        map = Collections.emptyMap();
                    }
                }
                final ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : map.entrySet()) {
                    final String str4 = (String) entry.getKey();
                    final List list3 = (List) entry.getValue();
                    final Bundle bundle = cgcVar.e.f26227d.zzcih != null ? cgcVar.e.f26227d.zzcih.getBundle(str4) : null;
                    arrayList.add(dbc.c(dbh.a(new dar(cgcVar, str4, list3, bundle) { // from class: com.google.android.gms.internal.ads.cge

                        /* renamed from: a  reason: collision with root package name */
                        private final cgc f25772a;

                        /* renamed from: b  reason: collision with root package name */
                        private final String f25773b;

                        /* renamed from: c  reason: collision with root package name */
                        private final List f25774c;

                        /* renamed from: d  reason: collision with root package name */
                        private final Bundle f25775d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25772a = cgcVar;
                            this.f25773b = str4;
                            this.f25774c = list3;
                            this.f25775d = bundle;
                        }

                        @Override // com.google.android.gms.internal.ads.dar
                        public final dbt a() {
                            cgc cgcVar2 = this.f25772a;
                            String str5 = this.f25773b;
                            List list4 = this.f25774c;
                            Bundle bundle2 = this.f25775d;
                            zp zpVar = new zp();
                            bym bymVar = cgcVar2.f;
                            try {
                                bjg bjgVar = bymVar.f25401b;
                                os d2 = bjgVar.a().d(str5);
                                bjgVar.f24542a.a(str5, d2);
                                bymVar.f25400a.put(str5, d2);
                            } catch (RemoteException e) {
                                zzd.zzc("Couldn't create RTB adapter : ", e);
                            }
                            os a2 = cgcVar2.f.a(str5);
                            Objects.requireNonNull(a2);
                            a2.a(d.a(cgcVar2.f25770d), cgcVar2.g, bundle2, (Bundle) list4.get(0), cgcVar2.e.e, new byv(str5, a2, zpVar));
                            return zpVar;
                        }
                    }, cgcVar.f25767a)).a(((Long) ekb.e().a(aq.aV)).longValue(), TimeUnit.MILLISECONDS, cgcVar.f25768b).a(Throwable.class, new cxu(str4) { // from class: com.google.android.gms.internal.ads.cgd

                        /* renamed from: a  reason: collision with root package name */
                        private final String f25771a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25771a = str4;
                        }

                        @Override // com.google.android.gms.internal.ads.cxu
                        public final Object a(Object obj) {
                            String valueOf = String.valueOf(this.f25771a);
                            zzd.zzex(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                            return null;
                        }
                    }, cgcVar.f25767a));
                }
                return dbh.b(arrayList).a(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.cgg

                    /* renamed from: a  reason: collision with root package name */
                    private final List f25780a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25780a = arrayList;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        List<dbt> list4 = this.f25780a;
                        JSONArray jSONArray = new JSONArray();
                        for (dbt dbtVar : list4) {
                            if (((JSONObject) dbtVar.get()) != null) {
                                jSONArray.put(dbtVar.get());
                            }
                        }
                        if (jSONArray.length() == 0) {
                            return null;
                        }
                        return new cfz(jSONArray.toString());
                    }
                }, cgcVar.f25767a);
            }
        }, this.f25767a) : dbh.a((Object) null);
    }
}
