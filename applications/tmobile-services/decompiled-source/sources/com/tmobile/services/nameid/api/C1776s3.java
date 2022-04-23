package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.LookupResponse;
import io.reactivex.functions.Function;
/* renamed from: com.tmobile.services.nameid.api.s3 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/s3.class */
public final /* synthetic */ class C1776s3 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1776s3 f13423f = new C1776s3();

    private /* synthetic */ C1776s3() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return ((LookupResponse) obj).getName();
    }
}
