package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.r1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/r1.class */
public final /* synthetic */ class C1769r1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1769r1 f13416f = new C1769r1();

    private /* synthetic */ C1769r1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("MetroApiWrapper#pullBlockListForMigrate", "Error when attempting to pull block list: " + r0.getMessage(), (Throwable) obj);
    }
}
