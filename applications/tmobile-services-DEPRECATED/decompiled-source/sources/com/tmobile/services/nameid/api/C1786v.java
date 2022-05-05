package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.v */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/v.class */
public final /* synthetic */ class C1786v implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1786v f13440f = new C1786v();

    private /* synthetic */ C1786v() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("ApiWrapper#", "Error deleting setting", (Throwable) obj);
    }
}
