package com.facebook.login;

import android.content.Context;
import com.facebook.internal.AbstractServiceConnectionC1155m0;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0014¨\u0006\u000b"}, d2 = {"Lcom/facebook/login/GetTokenClient;", "Lcom/facebook/internal/PlatformServiceClient;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "request", "Lcom/facebook/login/LoginClient$Request;", "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V", "populateRequestBundle", "", RemoteMessageConst.DATA, "Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.o */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/o.class */
public final class C1276o extends AbstractServiceConnectionC1155m0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1276o(Context context, LoginClient.Request request) {
        super(context, 65536, 65537, 20121101, request.f3381d, request.f3392o);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(request, "request");
    }
}
