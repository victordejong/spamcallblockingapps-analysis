package com.p488vk.api.sdk;

import android.content.Context;
import android.content.Intent;
import com.p488vk.api.sdk.AbstractC17689i;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.p496e.C17679i;
import com.p488vk.api.sdk.p498ui.VKCaptchaActivity;
import com.p488vk.api.sdk.p498ui.VKConfirmationActivity;
import com.p488vk.api.sdk.p498ui.VKWebViewAuthActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00100\nH\u0016J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, m4298d2 = {"Lcom/vk/api/sdk/VKDefaultValidationHandler;", "Lcom/vk/api/sdk/VKApiValidationHandler;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "checkCaptchaActivity", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "handleCaptcha", "img", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.j */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/j.class */
public final class C17697j implements AbstractC17689i {

    /* renamed from: a */
    private final Context f62524a;

    public C17697j(Context context) {
        C18524p.m3840d(context, "context");
        this.f62524a = context;
    }

    @Override // com.p488vk.api.sdk.AbstractC17689i
    /* renamed from: a */
    public final void mo4814a(VKApiExecutionException ex, C17685g apiManager) throws VKApiExecutionException {
        C18524p.m3840d(ex, "ex");
        C18524p.m3840d(apiManager, "apiManager");
        C18524p.m3840d(ex, "ex");
        C18524p.m3840d(apiManager, "apiManager");
        throw ex;
    }

    @Override // com.p488vk.api.sdk.AbstractC17689i
    /* renamed from: a */
    public final void mo4813a(String img, AbstractC17689i.C17690a<String> cb) {
        String str;
        String str2;
        C18524p.m3840d(img, "img");
        C18524p.m3840d(cb, "cb");
        VKCaptchaActivity.C17713a c17713a = VKCaptchaActivity.f62555a;
        Context context = this.f62524a;
        C18524p.m3840d(context, "context");
        C18524p.m3840d(img, "img");
        C17707o.m4797a(new VKCaptchaActivity.C17713a.RunnableC17714a(context, img));
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4833a();
        VKCaptchaActivity.C17713a c17713a2 = VKCaptchaActivity.f62555a;
        str = VKCaptchaActivity.f62556e;
        if (str == null) {
            cb.f62513b.countDown();
            return;
        }
        VKCaptchaActivity.C17713a c17713a3 = VKCaptchaActivity.f62555a;
        str2 = VKCaptchaActivity.f62556e;
        C18524p.m3851a((Object) str2);
        cb.m4825a(str2);
    }

    @Override // com.p488vk.api.sdk.AbstractC17689i
    /* renamed from: b */
    public final void mo4812b(String validationUrl, AbstractC17689i.C17690a<AbstractC17689i.C17691b> cb) {
        AbstractC17689i.C17691b c17691b;
        C18524p.m3840d(validationUrl, "validationUrl");
        C18524p.m3840d(cb, "cb");
        VKWebViewAuthActivity.C17725a c17725a = VKWebViewAuthActivity.f62576a;
        VKWebViewAuthActivity.f62577e = null;
        VKWebViewAuthActivity.C17725a c17725a2 = VKWebViewAuthActivity.f62576a;
        Context context = this.f62524a;
        C18524p.m3840d(context, "context");
        C18524p.m3840d(validationUrl, "validationUrl");
        Intent putExtra = new Intent(context, VKWebViewAuthActivity.class).putExtra("vk_validation_url", validationUrl);
        C18524p.m3843b(putExtra, "Intent(context, VKWebVie…ATION_URL, validationUrl)");
        context.startActivity(putExtra);
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4833a();
        VKWebViewAuthActivity.C17725a c17725a3 = VKWebViewAuthActivity.f62576a;
        c17691b = VKWebViewAuthActivity.f62577e;
        if (c17691b != null) {
            cb.m4825a(c17691b);
        } else {
            cb.f62513b.countDown();
        }
        VKWebViewAuthActivity.C17725a c17725a4 = VKWebViewAuthActivity.f62576a;
        VKWebViewAuthActivity.f62577e = null;
    }

    @Override // com.p488vk.api.sdk.AbstractC17689i
    /* renamed from: c */
    public final void mo4811c(String message, AbstractC17689i.C17690a<Boolean> cb) {
        boolean z;
        C18524p.m3840d(message, "confirmationText");
        C18524p.m3840d(cb, "cb");
        VKConfirmationActivity.C17720a c17720a = VKConfirmationActivity.f62569a;
        VKConfirmationActivity.f62570b = false;
        VKConfirmationActivity.C17720a c17720a2 = VKConfirmationActivity.f62569a;
        Context context = this.f62524a;
        C18524p.m3840d(context, "context");
        C18524p.m3840d(message, "message");
        C17707o.m4797a(new VKConfirmationActivity.C17720a.RunnableC17721a(context, message));
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4833a();
        VKConfirmationActivity.C17720a c17720a3 = VKConfirmationActivity.f62569a;
        z = VKConfirmationActivity.f62570b;
        cb.m4825a(Boolean.valueOf(z));
        VKConfirmationActivity.C17720a c17720a4 = VKConfirmationActivity.f62569a;
        VKConfirmationActivity.f62570b = false;
    }
}
