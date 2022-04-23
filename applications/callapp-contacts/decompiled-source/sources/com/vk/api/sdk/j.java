package com.vk.api.sdk;

import android.content.Context;
import android.content.Intent;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.i;
import com.vk.api.sdk.ui.VKCaptchaActivity;
import com.vk.api.sdk.ui.VKConfirmationActivity;
import com.vk.api.sdk.ui.VKWebViewAuthActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00100\nH\u0016J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/VKDefaultValidationHandler;", "Lcom/vk/api/sdk/VKApiValidationHandler;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "checkCaptchaActivity", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "handleCaptcha", "img", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/j.class */
public final class j implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f36096a;

    public j(Context context) {
        p.d(context, "context");
        this.f36096a = context;
    }

    @Override // com.vk.api.sdk.i
    public final void a(VKApiExecutionException ex, g apiManager) throws VKApiExecutionException {
        p.d(ex, "ex");
        p.d(apiManager, "apiManager");
        p.d(ex, "ex");
        p.d(apiManager, "apiManager");
        throw ex;
    }

    @Override // com.vk.api.sdk.i
    public final void a(String img, i.a<String> cb) {
        p.d(img, "img");
        p.d(cb, "cb");
        VKCaptchaActivity.a aVar = VKCaptchaActivity.f36118a;
        Context context = this.f36096a;
        p.d(context, "context");
        p.d(img, "img");
        o.a(new VKCaptchaActivity.a.RunnableC0580a(context, img));
        com.vk.api.sdk.e.i iVar = com.vk.api.sdk.e.i.f36069a;
        com.vk.api.sdk.e.i.a();
        VKCaptchaActivity.a aVar2 = VKCaptchaActivity.f36118a;
        if (VKCaptchaActivity.a() != null) {
            VKCaptchaActivity.a aVar3 = VKCaptchaActivity.f36118a;
            String a2 = VKCaptchaActivity.a();
            p.a((Object) a2);
            cb.a(a2);
            return;
        }
        cb.f36085b.countDown();
    }

    @Override // com.vk.api.sdk.i
    public final void b(String validationUrl, i.a<i.b> cb) {
        p.d(validationUrl, "validationUrl");
        p.d(cb, "cb");
        VKWebViewAuthActivity.a aVar = VKWebViewAuthActivity.f36138a;
        VKWebViewAuthActivity.a((i.b) null);
        VKWebViewAuthActivity.a aVar2 = VKWebViewAuthActivity.f36138a;
        Context context = this.f36096a;
        p.d(context, "context");
        p.d(validationUrl, "validationUrl");
        Intent putExtra = new Intent(context, VKWebViewAuthActivity.class).putExtra("vk_validation_url", validationUrl);
        p.b(putExtra, "Intent(context, VKWebVie…ATION_URL, validationUrl)");
        context.startActivity(putExtra);
        com.vk.api.sdk.e.i iVar = com.vk.api.sdk.e.i.f36069a;
        com.vk.api.sdk.e.i.a();
        VKWebViewAuthActivity.a aVar3 = VKWebViewAuthActivity.f36138a;
        i.b a2 = VKWebViewAuthActivity.a();
        if (a2 != null) {
            cb.a(a2);
        } else {
            cb.f36085b.countDown();
        }
        VKWebViewAuthActivity.a aVar4 = VKWebViewAuthActivity.f36138a;
        VKWebViewAuthActivity.a((i.b) null);
    }

    @Override // com.vk.api.sdk.i
    public final void c(String message, i.a<Boolean> cb) {
        boolean z;
        p.d(message, "confirmationText");
        p.d(cb, "cb");
        VKConfirmationActivity.a aVar = VKConfirmationActivity.f36131a;
        VKConfirmationActivity.f36132b = false;
        VKConfirmationActivity.a aVar2 = VKConfirmationActivity.f36131a;
        Context context = this.f36096a;
        p.d(context, "context");
        p.d(message, "message");
        o.a(new VKConfirmationActivity.a.RunnableC0581a(context, message));
        com.vk.api.sdk.e.i iVar = com.vk.api.sdk.e.i.f36069a;
        com.vk.api.sdk.e.i.a();
        VKConfirmationActivity.a aVar3 = VKConfirmationActivity.f36131a;
        z = VKConfirmationActivity.f36132b;
        cb.a(Boolean.valueOf(z));
        VKConfirmationActivity.a aVar4 = VKConfirmationActivity.f36131a;
        VKConfirmationActivity.f36132b = false;
    }
}
