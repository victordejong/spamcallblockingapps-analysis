package com.tmobile.services.nameid;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.d */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/d.class */
public final /* synthetic */ class C1808d implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1808d f13473f = new C1808d();

    private /* synthetic */ C1808d() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5643d("MainActivity#", "Error receiving page change - " + ((Throwable) obj));
    }
}
