package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.e1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/e1.class */
public final /* synthetic */ class C1704e1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1704e1 f13292f = new C1704e1();

    private /* synthetic */ C1704e1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("MetroApiWrapper#pullBlockListForMigrate", "Failure when pulling block list", (Throwable) obj);
    }
}
