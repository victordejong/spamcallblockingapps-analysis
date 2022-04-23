package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmt.class */
public final class bmt implements dbi<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bmi f24722a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bmt(bmi bmiVar) {
        this.f24722a = bmiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(String str) {
        final String str2 = str;
        synchronized (this) {
            this.f24722a.f24698b = true;
            this.f24722a.a("com.google.android.gms.ads.MobileAds", true, "", (int) (zzr.zzlc().b() - this.f24722a.f24699c));
            this.f24722a.h.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.bms

                /* renamed from: a  reason: collision with root package name */
                private final bmt f24720a;

                /* renamed from: b  reason: collision with root package name */
                private final String f24721b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24720a = this;
                    this.f24721b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str3 = "data";
                    bmt bmtVar = this.f24720a;
                    String str4 = this.f24721b;
                    bmi bmiVar = bmtVar.f24722a;
                    try {
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObject = new JSONObject(str4).getJSONObject("initializer_settings").getJSONObject("config");
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            Object obj = new Object();
                            zp zpVar = new zp();
                            dbt a2 = dbh.a(zpVar, ((Long) ekb.e().a(aq.bj)).longValue(), TimeUnit.SECONDS, bmiVar.j);
                            bmiVar.k.a(next);
                            bmiVar.l.a(next);
                            long b2 = zzr.zzlc().b();
                            a2.addListener(new Runnable(bmiVar, obj, zpVar, next, b2) { // from class: com.google.android.gms.internal.ads.bmp

                                /* renamed from: a  reason: collision with root package name */
                                private final bmi f24710a;

                                /* renamed from: b  reason: collision with root package name */
                                private final Object f24711b;

                                /* renamed from: c  reason: collision with root package name */
                                private final zp f24712c;

                                /* renamed from: d  reason: collision with root package name */
                                private final String f24713d;
                                private final long e;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f24710a = bmiVar;
                                    this.f24711b = obj;
                                    this.f24712c = zpVar;
                                    this.f24713d = next;
                                    this.e = b2;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    bmi bmiVar2 = this.f24710a;
                                    Object obj2 = this.f24711b;
                                    zp zpVar2 = this.f24712c;
                                    String str5 = this.f24713d;
                                    long j = this.e;
                                    synchronized (obj2) {
                                        if (!zpVar2.isDone()) {
                                            bmiVar2.a(str5, false, "Timeout.", (int) (zzr.zzlc().b() - j));
                                            bmiVar2.k.a(str5, "timeout");
                                            bmiVar2.l.a(str5, "timeout");
                                            zpVar2.set(Boolean.FALSE);
                                        }
                                    }
                                }
                            }, bmiVar.h);
                            arrayList.add(a2);
                            bmv bmvVar = new bmv(bmiVar, obj, next, b2, zpVar);
                            JSONObject optJSONObject = jSONObject.optJSONObject(next);
                            ArrayList arrayList2 = new ArrayList();
                            str3 = str3;
                            if (optJSONObject != null) {
                                try {
                                    JSONArray jSONArray = optJSONObject.getJSONArray(str3);
                                    int i = 0;
                                    while (true) {
                                        str3 = str3;
                                        if (i >= jSONArray.length()) {
                                            break;
                                        }
                                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                        String optString = jSONObject2.optString("format", "");
                                        JSONObject optJSONObject2 = jSONObject2.optJSONObject(str3);
                                        Bundle bundle = new Bundle();
                                        str3 = str3;
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys2 = optJSONObject2.keys();
                                            while (true) {
                                                str3 = str3;
                                                if (!keys2.hasNext()) {
                                                    break;
                                                }
                                                String next2 = keys2.next();
                                                str3 = str3;
                                                try {
                                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                                    str3 = str3;
                                                } catch (JSONException e) {
                                                }
                                            }
                                        }
                                        arrayList2.add(new zzajw(optString, bundle));
                                        i++;
                                    }
                                } catch (JSONException e2) {
                                    str3 = str3;
                                }
                            }
                            bmiVar.a(next, false, "", 0);
                            try {
                                bmiVar.i.execute(new Runnable(bmiVar, bmiVar.g.a(next, new JSONObject()), bmvVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.bmr

                                    /* renamed from: a  reason: collision with root package name */
                                    private final bmi f24716a;

                                    /* renamed from: b  reason: collision with root package name */
                                    private final cqe f24717b;

                                    /* renamed from: c  reason: collision with root package name */
                                    private final io f24718c;

                                    /* renamed from: d  reason: collision with root package name */
                                    private final List f24719d;
                                    private final String e;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f24716a = bmiVar;
                                        this.f24717b = r5;
                                        this.f24718c = bmvVar;
                                        this.f24719d = arrayList2;
                                        this.e = next;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        bmi bmiVar2 = this.f24716a;
                                        cqe cqeVar = this.f24717b;
                                        io ioVar = this.f24718c;
                                        List<zzajw> list = this.f24719d;
                                        String str5 = this.e;
                                        try {
                                            Context context = bmiVar2.f.get();
                                            if (context == null) {
                                                context = bmiVar2.e;
                                            }
                                            cqeVar.f26255a.a(d.a(context), ioVar, list);
                                        } catch (zzdpq e3) {
                                            try {
                                                StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 74);
                                                sb.append("Failed to initialize adapter. ");
                                                sb.append(str5);
                                                sb.append(" does not implement the initialize() method.");
                                                ioVar.a(sb.toString());
                                            } catch (RemoteException e4) {
                                                za.zzc("", e4);
                                            }
                                        }
                                    }
                                });
                            } catch (zzdpq e3) {
                                try {
                                    bmvVar.a("Failed to create Adapter.");
                                } catch (RemoteException e4) {
                                    za.zzc("", e4);
                                }
                            }
                        }
                        new dbm(false, cyz.a((Iterable) arrayList), null).a(new Callable(bmiVar) { // from class: com.google.android.gms.internal.ads.bmo

                            /* renamed from: a  reason: collision with root package name */
                            private final bmi f24709a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24709a = bmiVar;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                this.f24709a.f24700d.set(Boolean.TRUE);
                                return null;
                            }
                        }, bmiVar.h);
                    } catch (JSONException e5) {
                        zzd.zza("Malformed CLD response", e5);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        synchronized (this) {
            this.f24722a.f24698b = true;
            this.f24722a.a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (zzr.zzlc().b() - this.f24722a.f24699c));
            this.f24722a.f24700d.setException(new Exception());
        }
    }
}
