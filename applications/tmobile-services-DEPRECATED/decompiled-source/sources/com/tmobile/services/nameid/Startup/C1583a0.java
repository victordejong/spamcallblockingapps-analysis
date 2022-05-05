package com.tmobile.services.nameid.Startup;

import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.Startup.a0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/a0.class */
public final /* synthetic */ class C1583a0 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1583a0 f12993f = new C1583a0();

    private /* synthetic */ C1583a0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        CategorySettingList categorySettingList = (CategorySettingList) obj;
        LogUtil.m5632o("IdentifyingNumbersActivity#", "Successfully got category list");
    }
}
