package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC13048xo;
import com.google.android.gms.internal.ads.BinderC12889rt;
import com.google.android.gms.internal.ads.C12890ru;
import com.google.android.gms.internal.ads.eja;
import com.google.android.gms.internal.ads.ejb;
import com.google.android.gms.internal.ads.end;
import com.google.android.gms.internal.ads.zzazi;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/QueryInfo.class */
public class QueryInfo {
    private final end zzhva;

    public QueryInfo(end endVar) {
        this.zzhva = endVar;
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        C12890ru c12890ru = new C12890ru(context, adFormat, adRequest == null ? null : adRequest.zzdt());
        AbstractC13048xo m14206a = C12890ru.m14206a(c12890ru.f49765a);
        if (m14206a == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        try {
            m14206a.mo13997a(BinderC12129d.m18979a(c12890ru.f49765a), new zzazi(null, c12890ru.f49766b.name(), null, c12890ru.f49767c == null ? new eja().m14864a() : ejb.m14863a(c12890ru.f49765a, c12890ru.f49767c)), new BinderC12889rt(c12890ru, queryInfoGenerationCallback));
        } catch (RemoteException e) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }

    public String getQuery() {
        return this.zzhva.f49266a;
    }

    public Bundle getQueryBundle() {
        return this.zzhva.f49267b;
    }

    public String getRequestId() {
        return end.m14715a(this);
    }
}
