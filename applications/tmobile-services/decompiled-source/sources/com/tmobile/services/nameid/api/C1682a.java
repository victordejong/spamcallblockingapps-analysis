package com.tmobile.services.nameid.api;

import io.reactivex.functions.Function;
import retrofit2.Response;
/* renamed from: com.tmobile.services.nameid.api.a */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/a.class */
public final /* synthetic */ class C1682a implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1682a f13259f = new C1682a();

    private /* synthetic */ C1682a() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Response response = (Response) obj;
        ApiUtils.m6858h(response);
        return response;
    }
}
