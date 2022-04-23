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

    /* renamed from: a  reason: collision with root package name */
    public static final ejb f27877a = new ejb();

    protected ejb() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int a(String str, String str2) {
        return RequestConfiguration.zzadz.indexOf(str) - RequestConfiguration.zzadz.indexOf(str2);
    }

    public static zzavt a(Context context, emr emrVar, String str) {
        return new zzavt(a(context, emrVar), str);
    }

    public static zzvq a(Context context, emr emrVar) {
        zzvf zzvfVar;
        String str;
        Date date = emrVar.f27952a;
        long time = date != null ? date.getTime() : -1L;
        String str2 = emrVar.f27953b;
        int i = emrVar.f27954c;
        Set<String> set = emrVar.f27955d;
        List unmodifiableList = !set.isEmpty() ? Collections.unmodifiableList(new ArrayList(set)) : null;
        boolean a2 = emrVar.a(context);
        Location location = emrVar.e;
        Bundle b2 = emrVar.b(AdMobAdapter.class);
        if (emrVar.p != null) {
            zzvfVar = new zzvf(emrVar.p.getAdString(), ekb.i().containsKey(emrVar.p.getQueryInfo()) ? ekb.i().get(emrVar.p.getQueryInfo()) : "");
        } else {
            zzvfVar = null;
        }
        boolean z = emrVar.f;
        String str3 = emrVar.i;
        SearchAdRequest searchAdRequest = emrVar.k;
        zzaav zzaavVar = searchAdRequest != null ? new zzaav(searchAdRequest) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            ekb.a();
            str = yq.a(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean z2 = emrVar.o;
        RequestConfiguration requestConfiguration = emy.a().f27973c;
        return new zzvq(8, time, b2, i, unmodifiableList, a2, Math.max(emrVar.l, requestConfiguration.getTagForChildDirectedTreatment()), z, str3, zzaavVar, location, str2, emrVar.g, emrVar.m, Collections.unmodifiableList(new ArrayList(emrVar.n)), emrVar.j, str, z2, zzvfVar, Math.max(emrVar.q, requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(emrVar.r, requestConfiguration.getMaxAdContentRating()), ejd.f27878a), emrVar.a(), emrVar.s);
    }
}
