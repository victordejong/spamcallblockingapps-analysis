package com.tmobile.services.nameid.utility;

import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.utility.p1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/p1.class */
public final /* synthetic */ class C1974p1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1974p1 f14583f = new C1974p1();

    private /* synthetic */ C1974p1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        LogUtil.m5643d("SimChangeReceiver", "Failed to fetch current MSISDN");
    }
}
