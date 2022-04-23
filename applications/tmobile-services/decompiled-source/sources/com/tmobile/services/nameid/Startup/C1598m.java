package com.tmobile.services.nameid.Startup;

import com.tmobile.services.nameid.api.ApiUtils;
import io.reactivex.functions.Consumer;
import java.util.List;
/* renamed from: com.tmobile.services.nameid.Startup.m */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/m.class */
public final /* synthetic */ class C1598m implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1598m f13008f = new C1598m();

    private /* synthetic */ C1598m() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        ApiUtils.m6863e0((List) obj, true, true, 50, true);
    }
}
