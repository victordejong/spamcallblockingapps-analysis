package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.UserPreferenceTransaction;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
/* renamed from: com.tmobile.services.nameid.api.d0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/d0.class */
public final /* synthetic */ class C1698d0 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1698d0 f13284f = new C1698d0();

    private /* synthetic */ C1698d0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ObservableSource x;
        x = ApiWrapper.m6753x(ApiUtils.m6828w(), ((UserPreferenceTransaction) obj).m6469id());
        return x;
    }
}
