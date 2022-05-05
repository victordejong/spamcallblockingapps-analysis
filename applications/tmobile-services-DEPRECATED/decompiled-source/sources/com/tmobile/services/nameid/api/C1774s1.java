package com.tmobile.services.nameid.api;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.model.MetroBlockListPullRes;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.s1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/s1.class */
public final /* synthetic */ class C1774s1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1774s1 f13421f = new C1774s1();

    private /* synthetic */ C1774s1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        MetroBlockListPullRes metroBlockListPullRes = (MetroBlockListPullRes) obj;
        LogUtil.m5632o("MetroApiWrapper#pullBlockListForMigrate", FirebaseAnalytics.Param.SUCCESS);
    }
}
