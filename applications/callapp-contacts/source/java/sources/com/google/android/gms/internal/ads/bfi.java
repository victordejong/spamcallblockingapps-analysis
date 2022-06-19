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
import com.google.api.client.googleapis.notifications.C15291b;
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

    /* renamed from: a */
    final Context f43797a;

    /* renamed from: b */
    final die f43798b;

    /* renamed from: c */
    final zzbar f43799c;

    /* renamed from: d */
    final zzb f43800d;

    /* renamed from: e */
    final ehk f43801e;

    /* renamed from: f */
    final Executor f43802f;

    /* renamed from: g */
    final zzaei f43803g;

    /* renamed from: h */
    final bfv f43804h;

    /* renamed from: i */
    final ScheduledExecutorService f43805i;

    /* renamed from: j */
    private final bey f43806j;

    public bfi(Context context, bey beyVar, die dieVar, zzbar zzbarVar, zzb zzbVar, ehk ehkVar, Executor executor, cpo cpoVar, bfv bfvVar, ScheduledExecutorService scheduledExecutorService) {
        this.f43797a = context;
        this.f43806j = beyVar;
        this.f43798b = dieVar;
        this.f43799c = zzbarVar;
        this.f43800d = zzbVar;
        this.f43801e = ehkVar;
        this.f43802f = executor;
        this.f43803g = cpoVar.f46329i;
        this.f43804h = bfvVar;
        this.f43805i = scheduledExecutorService;
    }

    /* renamed from: a */
    public static <T> dbt<T> m17889a(dbt<T> dbtVar) {
        return dac.m16972a(dbtVar, Exception.class, new daq(null) { // from class: com.google.android.gms.internal.ads.bfo

            /* renamed from: a */
            private final Object f43817a = null;

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                Object obj2 = this.f43817a;
                zzd.zza("Error during loading assets.", (Exception) obj);
                return dbh.m16899a(obj2);
            }
        }, C13091zd.f50123f);
    }

    /* renamed from: a */
    private final dbt<BinderC12325de> m17885a(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return dbh.m16899a((Object) null);
        }
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return dbh.m16899a((Object) null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt("width", -1);
        int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return dbh.m16899a(new BinderC12325de(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m17884a(jSONObject.optBoolean("require"), daj.m16942a(this.f43806j.m17892a(optString, optDouble, optBoolean), new cxu(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.bfk

            /* renamed from: a */
            private final String f43809a;

            /* renamed from: b */
            private final double f43810b;

            /* renamed from: c */
            private final int f43811c;

            /* renamed from: d */
            private final int f43812d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43809a = optString;
                this.f43810b = optDouble;
                this.f43811c = optInt;
                this.f43812d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                String str = this.f43809a;
                return new BinderC12325de(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f43810b, this.f43811c, this.f43812d);
            }
        }, this.f43802f));
    }

    /* renamed from: a */
    public static <T> dbt<T> m17884a(boolean z, dbt<T> dbtVar) {
        return z ? daj.m16941a(dbtVar, new daq(dbtVar) { // from class: com.google.android.gms.internal.ads.bfn

            /* renamed from: a */
            private final dbt f43816a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43816a = dbtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return obj != null ? this.f43816a : dbh.m16898a((Throwable) new zzcwo(cqj.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
            }
        }, C13091zd.f50123f) : m17889a(dbtVar);
    }

    /* renamed from: a */
    public static ene m17887a(JSONObject jSONObject) {
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

    /* renamed from: b */
    public static Integer m17883b(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt(C15291b.f55271a)));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final dbt<List<BinderC12325de>> m17888a(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return dbh.m16899a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(m17885a(jSONArray.optJSONObject(i), z));
        }
        return daj.m16942a(dbh.m16900a((Iterable) arrayList), bfh.f43796a, this.f43802f);
    }

    /* renamed from: a */
    public final dbt<BinderC12325de> m17886a(JSONObject jSONObject, String str) {
        return m17885a(jSONObject.optJSONObject(str), this.f43803g.zzdgx);
    }
}
