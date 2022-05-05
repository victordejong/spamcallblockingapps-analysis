package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.CallLog;
import com.tmobile.services.nameid.model.Caller;
import io.reactivex.functions.Function;
import java.util.List;
/* renamed from: com.tmobile.services.nameid.api.n0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/n0.class */
public final /* synthetic */ class C1748n0 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1748n0 f13377f = new C1748n0();

    private /* synthetic */ C1748n0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        List c;
        c = ApiUtils.m6868c((CallLog) obj, Caller.shouldSuppressCategory(), Caller.shouldSuppressName(), true);
        return c;
    }
}
