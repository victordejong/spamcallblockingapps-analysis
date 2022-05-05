package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.f1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/f1.class */
public final /* synthetic */ class C1709f1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1709f1 f13299f = new C1709f1();

    private /* synthetic */ C1709f1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("MetroApiWrapper#MetroApiWrapper", "Failure when unsubscribing", (Throwable) obj);
    }
}
