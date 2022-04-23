package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
import retrofit2.Response;
/* renamed from: com.tmobile.services.nameid.api.h0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/h0.class */
public final /* synthetic */ class C1718h0 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1718h0 f13318f = new C1718h0();

    private /* synthetic */ C1718h0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Response response = (Response) obj;
        LogUtil.m5632o("ApiWrapper#", "Successfully deleted setting");
    }
}
