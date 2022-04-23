package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
import java.util.List;
/* renamed from: com.tmobile.services.nameid.api.u0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/u0.class */
public final /* synthetic */ class C1783u0 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1783u0 f13433f = new C1783u0();

    private /* synthetic */ C1783u0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        List list = (List) obj;
        LogUtil.m5632o("ApiWrapper#", "Got call log");
    }
}
