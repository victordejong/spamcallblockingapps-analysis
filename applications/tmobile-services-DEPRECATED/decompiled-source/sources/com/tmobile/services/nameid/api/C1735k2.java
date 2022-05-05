package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.k2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/k2.class */
public final /* synthetic */ class C1735k2 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1735k2 f13343f = new C1735k2();

    private /* synthetic */ C1735k2() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
        LogUtil.m5632o(TmoApiWrapper.f13247a, "successfully set user status");
    }
}
