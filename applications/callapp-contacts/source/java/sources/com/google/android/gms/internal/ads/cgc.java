package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
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

    /* renamed from: a */
    final dbs f45703a;

    /* renamed from: b */
    final ScheduledExecutorService f45704b;

    /* renamed from: c */
    final byp f45705c;

    /* renamed from: d */
    final Context f45706d;

    /* renamed from: e */
    final cpo f45707e;

    /* renamed from: f */
    final bym f45708f;

    /* renamed from: g */
    String f45709g;

    public cgc(dbs dbsVar, ScheduledExecutorService scheduledExecutorService, String str, byp bypVar, Context context, cpo cpoVar, bym bymVar) {
        this.f45703a = dbsVar;
        this.f45704b = scheduledExecutorService;
        this.f45709g = str;
        this.f45705c = bypVar;
        this.f45706d = context;
        this.f45707e = cpoVar;
        this.f45708f = bymVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cfz> mo17449a() {
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42660aW)).booleanValue() ? dbh.m16903a(new dar(this) { // from class: com.google.android.gms.internal.ads.cgb

            /* renamed from: a */
            private final cgc f45702a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45702a = this;
            }

            @Override // com.google.android.gms.internal.ads.dar
            /* renamed from: a */
            public final dbt mo16921a() {
                HashMap hashMap;
                final cgc cgcVar = this.f45702a;
                byp bypVar = cgcVar.f45705c;
                String str = cgcVar.f45709g;
                String str2 = cgcVar.f45707e.f46326f;
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    hashMap = Collections.emptyMap();
                } else {
                    Map<String, List<bys>> map = bypVar.f45101a.get(str);
                    if (map != null) {
                        List<bys> list = map.get(str2);
                        List<bys> list2 = list;
                        if (list == null) {
                            list2 = map.get(bjl.m17806a(bypVar.f45103c, str2, str));
                        }
                        if (list2 != null) {
                            HashMap hashMap2 = new HashMap();
                            Iterator<bys> it2 = list2.iterator();
                            while (true) {
                                hashMap = hashMap2;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                bys next = it2.next();
                                String str3 = next.f45107a;
                                if (!hashMap2.containsKey(str3)) {
                                    hashMap2.put(str3, new ArrayList());
                                }
                                ((List) hashMap2.get(str3)).add(next.f45108b);
                            }
                        } else {
                            hashMap = Collections.emptyMap();
                        }
                    } else {
                        hashMap = Collections.emptyMap();
                    }
                }
                final List arrayList = new ArrayList();
                for (Map.Entry entry : hashMap.entrySet()) {
                    final String str4 = (String) entry.getKey();
                    final List list3 = (List) entry.getValue();
                    final Bundle bundle = cgcVar.f45707e.f46324d.zzcih != null ? cgcVar.f45707e.f46324d.zzcih.getBundle(str4) : null;
                    arrayList.add(dbc.m16907c(dbh.m16903a(new dar(cgcVar, str4, list3, bundle) { // from class: com.google.android.gms.internal.ads.cge

                        /* renamed from: a */
                        private final cgc f45711a;

                        /* renamed from: b */
                        private final String f45712b;

                        /* renamed from: c */
                        private final List f45713c;

                        /* renamed from: d */
                        private final Bundle f45714d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45711a = cgcVar;
                            this.f45712b = str4;
                            this.f45713c = list3;
                            this.f45714d = bundle;
                        }

                        @Override // com.google.android.gms.internal.ads.dar
                        /* renamed from: a */
                        public final dbt mo16921a() {
                            cgc cgcVar2 = this.f45711a;
                            String str5 = this.f45712b;
                            List list4 = this.f45713c;
                            Bundle bundle2 = this.f45714d;
                            C13103zp c13103zp = new C13103zp();
                            bym bymVar = cgcVar2.f45708f;
                            try {
                                bjg bjgVar = bymVar.f45099b;
                                AbstractC12807os mo14484d = bjgVar.m17812a().mo14484d(str5);
                                bjgVar.f44092a.m17815a(str5, mo14484d);
                                bymVar.f45098a.put(str5, mo14484d);
                            } catch (RemoteException e) {
                                zzd.zzc("Couldn't create RTB adapter : ", e);
                            }
                            AbstractC12807os m17564a = cgcVar2.f45708f.m17564a(str5);
                            Objects.requireNonNull(m17564a);
                            m17564a.mo14282a(BinderC12129d.m18979a(cgcVar2.f45706d), cgcVar2.f45709g, bundle2, (Bundle) list4.get(0), cgcVar2.f45707e.f46325e, new byv(str5, m17564a, c13103zp));
                            return c13103zp;
                        }
                    }, cgcVar.f45703a)).m16912a(((Long) ekb.m14831e().m18571a(C12187aq.f42659aV)).longValue(), TimeUnit.MILLISECONDS, cgcVar.f45704b).m16909a(Throwable.class, new cxu(str4) { // from class: com.google.android.gms.internal.ads.cgd

                        /* renamed from: a */
                        private final String f45710a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45710a = str4;
                        }

                        @Override // com.google.android.gms.internal.ads.cxu
                        /* renamed from: a */
                        public final Object mo14064a(Object obj) {
                            String valueOf = String.valueOf(this.f45710a);
                            zzd.zzex(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                            return null;
                        }
                    }, cgcVar.f45703a));
                }
                return dbh.m16895b(arrayList).m16893a(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.cgg

                    /* renamed from: a */
                    private final List f45722a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45722a = arrayList;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        List<dbt> list4 = this.f45722a;
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
                }, cgcVar.f45703a);
            }
        }, this.f45703a) : dbh.m16899a((Object) null);
    }
}
