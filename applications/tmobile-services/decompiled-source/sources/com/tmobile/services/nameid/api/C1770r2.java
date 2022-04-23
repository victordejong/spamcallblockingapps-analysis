package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.r2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/r2.class */
public final /* synthetic */ class C1770r2 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1770r2 f13417f = new C1770r2();

    private /* synthetic */ C1770r2() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f(TmoApiWrapper.f13247a + "#setAccountStatus", "", (Throwable) obj);
    }
}
