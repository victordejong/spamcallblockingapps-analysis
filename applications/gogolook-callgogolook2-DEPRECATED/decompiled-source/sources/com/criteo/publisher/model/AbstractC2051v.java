package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.C2033i;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.v */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/v.class */
public abstract class AbstractC2051v {
    @NonNull
    /* renamed from: a */
    public static AbstractC2051v m35808a(@Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool2) {
        return new C2033i(bool, str, str2, str3, str4, bool2);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2051v> m35810a(Gson gson) {
        return new C2033i.C2034a(gson);
    }

    @NonNull
    /* renamed from: g */
    public static AbstractC2051v m35802g() {
        return m35808a(null, null, null, null, null, null);
    }

    @NonNull
    /* renamed from: a */
    public AbstractC2051v m35809a(@Nullable Boolean bool) {
        return m35808a(bool, mo35805d(), mo35806c(), mo35811a(), mo35807b(), mo35804e());
    }

    @Nullable
    @AbstractC10120c("AndroidAdTagDataMacro")
    /* renamed from: a */
    public abstract String mo35811a();

    @Nullable
    @AbstractC10120c("AndroidAdTagDataMode")
    /* renamed from: b */
    public abstract String mo35807b();

    @Nullable
    @AbstractC10120c("AndroidAdTagUrlMode")
    /* renamed from: c */
    public abstract String mo35806c();

    @Nullable
    @AbstractC10120c("AndroidDisplayUrlMacro")
    /* renamed from: d */
    public abstract String mo35805d();

    @Nullable
    /* renamed from: e */
    public abstract Boolean mo35804e();

    @Nullable
    /* renamed from: f */
    public abstract Boolean mo35803f();
}
