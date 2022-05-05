package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.m2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/m2.class */
public final /* synthetic */ class C1745m2 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1745m2 f13366f = new C1745m2();

    private /* synthetic */ C1745m2() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
        LogUtil.m5639h(TmoApiWrapper.f13247a, "Successfully got userStatus after an addRemoveSoc.");
    }
}
