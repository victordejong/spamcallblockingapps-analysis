package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.EventSummary;
import io.reactivex.functions.Function;
/* renamed from: com.tmobile.services.nameid.api.t3 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/t3.class */
public final /* synthetic */ class C1781t3 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1781t3 f13430f = new C1781t3();

    private /* synthetic */ C1781t3() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return ((EventSummary) obj).toRecentActivityDisplayables();
    }
}
