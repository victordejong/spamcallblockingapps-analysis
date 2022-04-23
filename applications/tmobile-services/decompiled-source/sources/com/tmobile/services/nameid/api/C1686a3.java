package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.a3 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/a3.class */
public final /* synthetic */ class C1686a3 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1686a3 f13264f = new C1686a3();

    private /* synthetic */ C1686a3() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f(TmoApiWrapper.f13247a, "error setting user status", (Throwable) obj);
    }
}
