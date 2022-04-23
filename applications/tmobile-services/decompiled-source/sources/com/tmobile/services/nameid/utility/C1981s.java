package com.tmobile.services.nameid.utility;

import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.utility.s */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/s.class */
public final /* synthetic */ class C1981s implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1981s f14591f = new C1981s();

    private /* synthetic */ C1981s() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("FoRegistrationHelper#doRegistration", "*will retry up to 3 times*", (Throwable) obj);
    }
}
