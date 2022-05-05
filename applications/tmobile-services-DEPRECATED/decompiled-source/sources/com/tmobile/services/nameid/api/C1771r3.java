package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.EventSummary;
import io.reactivex.functions.Function;
/* renamed from: com.tmobile.services.nameid.api.r3 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/r3.class */
public final /* synthetic */ class C1771r3 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1771r3 f13418f = new C1771r3();

    private /* synthetic */ C1771r3() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return ((EventSummary) obj).toEventSummaryItems();
    }
}
