package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.model.C2029g;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.n */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/n.class */
public abstract class AbstractC2040n {
    /* renamed from: a */
    public static AbstractC2040n m35852a(@NonNull String str, @NonNull String str2, @NonNull EnumC1908a aVar, @NonNull AdSize adSize) {
        return new C2029g(str, str2, aVar == EnumC1908a.CRITEO_CUSTOM_NATIVE ? true : null, aVar == EnumC1908a.CRITEO_INTERSTITIAL ? true : null, Collections.singletonList(adSize.getFormattedSize()));
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2040n> m35853a(Gson gson) {
        return new C2029g.C2030a(gson);
    }

    @NonNull
    @AbstractC10120c("impId")
    /* renamed from: a */
    public abstract String mo35854a();

    @NonNull
    @AbstractC10120c("placementId")
    /* renamed from: b */
    public abstract String mo35851b();

    @NonNull
    @AbstractC10120c("sizes")
    /* renamed from: c */
    public abstract Collection<String> mo35850c();

    @Nullable
    @AbstractC10120c(AdType.INTERSTITIAL)
    /* renamed from: d */
    public abstract Boolean mo35849d();

    @Nullable
    @AbstractC10120c("isNative")
    /* renamed from: e */
    public abstract Boolean mo35848e();

    @NonNull
    /* renamed from: f */
    public JSONObject m35847f() throws JSONException {
        return new JSONObject(C1974i.m35912U().m35889t().m30988a(this));
    }
}
