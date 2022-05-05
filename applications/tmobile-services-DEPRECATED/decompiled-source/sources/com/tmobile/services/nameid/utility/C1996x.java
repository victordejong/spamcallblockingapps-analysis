package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.TmoUserStatus;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.utility.x */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/x.class */
public final /* synthetic */ class C1996x implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1996x f14616f = new C1996x();

    private /* synthetic */ C1996x() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
        LogUtil.m5632o("IamHelper#", "Successfully updated status");
    }
}
