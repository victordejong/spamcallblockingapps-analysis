package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejb.class */
public final class ejb {

    /* renamed from: a */
    public static final ejb f49085a = new ejb();

    protected ejb() {
    }

    /* renamed from: a */
    public static final /* synthetic */ int m14861a(String str, String str2) {
        return RequestConfiguration.zzadz.indexOf(str) - RequestConfiguration.zzadz.indexOf(str2);
    }

    /* renamed from: a */
    public static zzavt m14862a(Context context, emr emrVar, String str) {
        return new zzavt(m14863a(context, emrVar), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1 */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* renamed from: a */
    public static zzvq m14863a(Context context, emr emrVar) {
        zzvf zzvfVar;
        String str;
        Date date = emrVar.f49177a;
        ?? time = date != null ? date.getTime() : true;
        String str2 = emrVar.f49178b;
        int i = emrVar.f49179c;
        Set<String> set = emrVar.f49180d;
        List unmodifiableList = !set.isEmpty() ? Collections.unmodifiableList(new ArrayList(set)) : null;
        boolean m14778a = emrVar.m14778a(context);
        Location location = emrVar.f49181e;
        Bundle m14776b = emrVar.m14776b(AdMobAdapter.class);
        if (emrVar.f49192p != null) {
            zzvfVar = new zzvf(emrVar.f49192p.getAdString(), ekb.m14827i().containsKey(emrVar.f49192p.getQueryInfo()) ? ekb.m14827i().get(emrVar.f49192p.getQueryInfo()) : "");
        } else {
            zzvfVar = null;
        }
        boolean z = emrVar.f49182f;
        String str3 = emrVar.f49185i;
        SearchAdRequest searchAdRequest = emrVar.f49187k;
        zzaav zzaavVar = searchAdRequest != null ? new zzaav(searchAdRequest) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            ekb.m14835a();
            str = C13077yq.m13939a(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean z2 = emrVar.f49191o;
        RequestConfiguration requestConfiguration = emy.m14729a().f49256c;
        return new zzvq(8, time == true ? 1L : 0L, m14776b, i, unmodifiableList, m14778a, Math.max(emrVar.f49188l, requestConfiguration.getTagForChildDirectedTreatment()), z, str3, zzaavVar, location, str2, emrVar.f49183g, emrVar.f49189m, Collections.unmodifiableList(new ArrayList(emrVar.f49190n)), emrVar.f49186j, str, z2, zzvfVar, Math.max(emrVar.f49193q, requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(emrVar.f49194r, requestConfiguration.getMaxAdContentRating()), ejd.f49086a), emrVar.m14779a(), emrVar.f49195s);
    }
}
