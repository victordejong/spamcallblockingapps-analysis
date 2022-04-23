package com.tmobile.services.nameid;

import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.i */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/i.class */
public final /* synthetic */ class C1813i implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1813i f13493f = new C1813i();

    private /* synthetic */ C1813i() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
        LogUtil.m5632o("MainActivity#", "Updated Tmobile user status");
    }
}
