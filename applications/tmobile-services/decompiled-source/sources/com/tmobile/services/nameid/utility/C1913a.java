package com.tmobile.services.nameid.utility;

import io.reactivex.functions.Consumer;
import retrofit2.Response;
/* renamed from: com.tmobile.services.nameid.utility.a */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/a.class */
public final /* synthetic */ class C1913a implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1913a f14488f = new C1913a();

    private /* synthetic */ C1913a() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        AnalyticsSender.m5893i((Response) obj);
    }
}
