package com.tmobile.services.nameid.Startup;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.Startup.i */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/i.class */
public final /* synthetic */ class C1594i implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1594i f13004f = new C1594i();

    private /* synthetic */ C1594i() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        LogUtil.m5631p("EULAPageActivity#", "Error loading initial call log: " + th.getMessage());
    }
}
