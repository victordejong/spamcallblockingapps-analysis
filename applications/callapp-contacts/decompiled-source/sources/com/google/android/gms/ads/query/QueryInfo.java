package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.eja;
import com.google.android.gms.internal.ads.ejb;
import com.google.android.gms.internal.ads.end;
import com.google.android.gms.internal.ads.rt;
import com.google.android.gms.internal.ads.ru;
import com.google.android.gms.internal.ads.xo;
import com.google.android.gms.internal.ads.zzazi;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/QueryInfo.class */
public class QueryInfo {
    private final end zzhva;

    public QueryInfo(end endVar) {
        this.zzhva = endVar;
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        ru ruVar = new ru(context, adFormat, adRequest == null ? null : adRequest.zzdt());
        xo a2 = ru.a(ruVar.f28358a);
        if (a2 == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        try {
            a2.a(d.a(ruVar.f28358a), new zzazi(null, ruVar.f28359b.name(), null, ruVar.f28360c == null ? new eja().a() : ejb.a(ruVar.f28358a, ruVar.f28360c)), new rt(ruVar, queryInfoGenerationCallback));
        } catch (RemoteException e) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }

    public String getQuery() {
        return this.zzhva.f27979a;
    }

    public Bundle getQueryBundle() {
        return this.zzhva.f27980b;
    }

    public String getRequestId() {
        return end.a(this);
    }
}
