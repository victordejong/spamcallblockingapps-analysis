package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmt.class */
public final class bmt implements dbi<String> {

    /* renamed from: a */
    final /* synthetic */ bmi f44298a;

    public bmt(bmi bmiVar) {
        this.f44298a = bmiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(String str) {
        String str2 = str;
        synchronized (this) {
            this.f44298a.f44260b = true;
            this.f44298a.m17734a("com.google.android.gms.ads.MobileAds", true, "", (int) (zzr.zzlc().mo19038b() - this.f44298a.f44261c));
            this.f44298a.f44266h.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.bms

                /* renamed from: a */
                private final bmt f44296a;

                /* renamed from: b */
                private final String f44297b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44296a = this;
                    this.f44297b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str3 = "data";
                    bmt bmtVar = this.f44296a;
                    String str4 = this.f44297b;
                    bmi bmiVar = bmtVar.f44298a;
                    try {
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObject = new JSONObject(str4).getJSONObject("initializer_settings").getJSONObject("config");
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            Object obj = new Object();
                            C13103zp c13103zp = new C13103zp();
                            dbt m16902a = dbh.m16902a(c13103zp, ((Long) ekb.m14831e().m18571a(C12187aq.f42726bj)).longValue(), TimeUnit.SECONDS, bmiVar.f44268j);
                            bmiVar.f44269k.m17757a(next);
                            bmiVar.f44270l.mo17675a(next);
                            long mo19038b = zzr.zzlc().mo19038b();
                            m16902a.addListener(new Runnable(bmiVar, obj, c13103zp, next, mo19038b) { // from class: com.google.android.gms.internal.ads.bmp

                                /* renamed from: a */
                                private final bmi f44284a;

                                /* renamed from: b */
                                private final Object f44285b;

                                /* renamed from: c */
                                private final C13103zp f44286c;

                                /* renamed from: d */
                                private final String f44287d;

                                /* renamed from: e */
                                private final long f44288e;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f44284a = bmiVar;
                                    this.f44285b = obj;
                                    this.f44286c = c13103zp;
                                    this.f44287d = next;
                                    this.f44288e = mo19038b;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    bmi bmiVar2 = this.f44284a;
                                    Object obj2 = this.f44285b;
                                    C13103zp c13103zp2 = this.f44286c;
                                    String str5 = this.f44287d;
                                    long j = this.f44288e;
                                    synchronized (obj2) {
                                        if (!c13103zp2.isDone()) {
                                            bmiVar2.m17734a(str5, false, "Timeout.", (int) (zzr.zzlc().mo19038b() - j));
                                            bmiVar2.f44269k.m17756a(str5, "timeout");
                                            bmiVar2.f44270l.mo17674a(str5, "timeout");
                                            c13103zp2.set(Boolean.FALSE);
                                        }
                                    }
                                }
                            }, bmiVar.f44266h);
                            arrayList.add(m16902a);
                            AbstractC12640io bmvVar = new bmv(bmiVar, obj, next, mo19038b, c13103zp);
                            JSONObject optJSONObject = jSONObject.optJSONObject(next);
                            List arrayList2 = new ArrayList();
                            String str5 = str3;
                            if (optJSONObject != null) {
                                String str6 = str3;
                                try {
                                    JSONArray jSONArray = optJSONObject.getJSONArray(str3);
                                    int i = 0;
                                    while (true) {
                                        str5 = str3;
                                        if (i >= jSONArray.length()) {
                                            break;
                                        }
                                        String str7 = str3;
                                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                        String str8 = str3;
                                        String optString = jSONObject2.optString("format", "");
                                        String str9 = str3;
                                        JSONObject optJSONObject2 = jSONObject2.optJSONObject(str3);
                                        String str10 = str3;
                                        String str11 = str3;
                                        Bundle bundle = new Bundle();
                                        String str12 = str3;
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys2 = optJSONObject2.keys();
                                            while (true) {
                                                str12 = str3;
                                                if (!keys2.hasNext()) {
                                                    break;
                                                }
                                                String str13 = str3;
                                                String next2 = keys2.next();
                                                String str14 = str3;
                                                str3 = str14;
                                                try {
                                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                                    str3 = str14;
                                                } catch (JSONException e) {
                                                }
                                            }
                                        }
                                        String str15 = str12;
                                        zzajw zzajwVar = new zzajw(optString, bundle);
                                        String str16 = str12;
                                        arrayList2.add(zzajwVar);
                                        i++;
                                        str3 = str12;
                                    }
                                } catch (JSONException e2) {
                                    str5 = str6;
                                }
                            }
                            str3 = str5;
                            bmiVar.m17734a(next, false, "", 0);
                            try {
                                bmiVar.f44267i.execute(new Runnable(bmiVar, bmiVar.f44265g.m17810a(next, new JSONObject()), bmvVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.bmr

                                    /* renamed from: a */
                                    private final bmi f44291a;

                                    /* renamed from: b */
                                    private final cqe f44292b;

                                    /* renamed from: c */
                                    private final AbstractC12640io f44293c;

                                    /* renamed from: d */
                                    private final List f44294d;

                                    /* renamed from: e */
                                    private final String f44295e;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f44291a = bmiVar;
                                        this.f44292b = r5;
                                        this.f44293c = bmvVar;
                                        this.f44294d = arrayList2;
                                        this.f44295e = next;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        bmi bmiVar2 = this.f44291a;
                                        cqe cqeVar = this.f44292b;
                                        AbstractC12640io abstractC12640io = this.f44293c;
                                        List<zzajw> list = this.f44294d;
                                        String str17 = this.f44295e;
                                        try {
                                            Context context = bmiVar2.f44264f.get();
                                            if (context == null) {
                                                context = bmiVar2.f44263e;
                                            }
                                            cqeVar.f46377a.mo14368a(BinderC12129d.m18979a(context), abstractC12640io, list);
                                        } catch (zzdpq e3) {
                                            try {
                                                StringBuilder sb = new StringBuilder(String.valueOf(str17).length() + 74);
                                                sb.append("Failed to initialize adapter. ");
                                                sb.append(str17);
                                                sb.append(" does not implement the initialize() method.");
                                                abstractC12640io.mo14596a(sb.toString());
                                            } catch (RemoteException e4) {
                                                C13088za.zzc("", e4);
                                            }
                                        }
                                    }
                                });
                            } catch (zzdpq e3) {
                                try {
                                    bmvVar.mo14596a("Failed to create Adapter.");
                                } catch (RemoteException e4) {
                                    C13088za.zzc("", e4);
                                }
                            }
                        }
                        new dbm(false, cyz.m17037a((Iterable) arrayList), null).m16893a(new Callable(bmiVar) { // from class: com.google.android.gms.internal.ads.bmo

                            /* renamed from: a */
                            private final bmi f44283a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f44283a = bmiVar;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                this.f44283a.f44262d.set(Boolean.TRUE);
                                return null;
                            }
                        }, bmiVar.f44266h);
                    } catch (JSONException e5) {
                        zzd.zza("Malformed CLD response", e5);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        synchronized (this) {
            this.f44298a.f44260b = true;
            this.f44298a.m17734a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (zzr.zzlc().mo19038b() - this.f44298a.f44261c));
            this.f44298a.f44262d.setException(new Exception());
        }
    }
}
