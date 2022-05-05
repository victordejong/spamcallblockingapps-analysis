package com.tmobile.services.nameid.Startup;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.Startup.w */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/w.class */
public final /* synthetic */ class C1616w implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1616w f13039f = new C1616w();

    private /* synthetic */ C1616w() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("IdentifyingNumbersActivity#", "Error getting settings for caller", (Throwable) obj);
    }
}
