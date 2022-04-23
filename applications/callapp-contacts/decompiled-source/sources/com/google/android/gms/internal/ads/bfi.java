package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzb;
import com.google.api.client.googleapis.notifications.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfi.class */
public final class bfi {

    /* renamed from: a  reason: collision with root package name */
    final Context f24329a;

    /* renamed from: b  reason: collision with root package name */
    final die f24330b;

    /* renamed from: c  reason: collision with root package name */
    final zzbar f24331c;

    /* renamed from: d  reason: collision with root package name */
    final zzb f24332d;
    final ehk e;
    final Executor f;
    final zzaei g;
    final bfv h;
    final ScheduledExecutorService i;
    private final bey j;

    public bfi(Context context, bey beyVar, die dieVar, zzbar zzbarVar, zzb zzbVar, ehk ehkVar, Executor executor, cpo cpoVar, bfv bfvVar, ScheduledExecutorService scheduledExecutorService) {
        this.f24329a = context;
        this.j = beyVar;
        this.f24330b = dieVar;
        this.f24331c = zzbarVar;
        this.f24332d = zzbVar;
        this.e = ehkVar;
        this.f = executor;
        this.g = cpoVar.i;
        this.h = bfvVar;
        this.i = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> dbt<T> a(dbt<T> dbtVar) {
        return dac.a(dbtVar, Exception.class, new daq(null) { // from class: com.google.android.gms.internal.ads.bfo

            /* renamed from: a  reason: collision with root package name */
            private final Object f24343a = null;

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                Object obj2 = this.f24343a;
                zzd.zza("Error during loading assets.", (Exception) obj);
                return dbh.a(obj2);
            }
        }, zd.f);
    }

    private final dbt<de> a(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return dbh.a((Object) null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return dbh.a((Object) null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return dbh.a(new de(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return a(jSONObject.optBoolean("require"), daj.a(this.j.a(optString, optDouble, optBoolean), new cxu(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.bfk

            /* renamed from: a  reason: collision with root package name */
            private final String f24335a;

            /* renamed from: b  reason: collision with root package name */
            private final double f24336b;

            /* renamed from: c  reason: collision with root package name */
            private final int f24337c;

            /* renamed from: d  reason: collision with root package name */
            private final int f24338d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24335a = optString;
                this.f24336b = optDouble;
                this.f24337c = optInt;
                this.f24338d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                String str = this.f24335a;
                return new de(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f24336b, this.f24337c, this.f24338d);
            }
        }, this.f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> dbt<T> a(boolean z, final dbt<T> dbtVar) {
        return z ? daj.a(dbtVar, new daq(dbtVar) { // from class: com.google.android.gms.internal.ads.bfn

            /* renamed from: a  reason: collision with root package name */
            private final dbt f24342a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24342a = dbtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return obj != null ? this.f24342a : dbh.a((Throwable) new zzcwo(cqj.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
            }
        }, zd.f) : a(dbtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ene a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        ene eneVar = null;
        if (!TextUtils.isEmpty(optString)) {
            eneVar = TextUtils.isEmpty(optString2) ? null : new ene(optString, optString2);
        }
        return eneVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer b(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt(b.f31754a)));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final dbt<List<de>> a(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return dbh.a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(a(jSONArray.optJSONObject(i), z));
        }
        return daj.a(dbh.a((Iterable) arrayList), bfh.f24328a, this.f);
    }

    public final dbt<de> a(JSONObject jSONObject, String str) {
        return a(jSONObject.optJSONObject(str), this.g.zzdgx);
    }
}
