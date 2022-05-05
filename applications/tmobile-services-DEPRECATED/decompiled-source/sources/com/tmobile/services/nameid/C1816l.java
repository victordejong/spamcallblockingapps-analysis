package com.tmobile.services.nameid;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.l */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/l.class */
public final /* synthetic */ class C1816l implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1816l f13497f = new C1816l();

    private /* synthetic */ C1816l() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5643d("MainActivity#", "Error receiving page change - " + ((Throwable) obj));
    }
}
