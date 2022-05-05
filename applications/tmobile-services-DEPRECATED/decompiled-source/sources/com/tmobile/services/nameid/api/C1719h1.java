package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.LicenseResponseItem;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.h1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/h1.class */
public final /* synthetic */ class C1719h1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1719h1 f13319f = new C1719h1();

    private /* synthetic */ C1719h1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        MetroApiWrapper.m6717r((LicenseResponseItem) obj);
    }
}
