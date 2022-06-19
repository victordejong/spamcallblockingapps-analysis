package com.callapp.contacts.workers;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\r\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "photoUrl", "", "customizableSignature", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1.class */
final class CallAppDailyWorker$Companion$handleDailyTask$listener$1 extends AbstractC18526r implements Function2<String, CharSequence, C20128v> {

    /* renamed from: a */
    public static final CallAppDailyWorker$Companion$handleDailyTask$listener$1 f29576a = new CallAppDailyWorker$Companion$handleDailyTask$listener$1();

    CallAppDailyWorker$Companion$handleDailyTask$listener$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* synthetic */ C20128v invoke(String str, CharSequence charSequence) {
        String str2 = str;
        CharSequence charSequence2 = charSequence;
        if (StringUtils.m26045b((CharSequence) str2)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str2);
            glideRequestBuilder.f28239e = CallAppApplication.get();
            if (StringUtils.m26045b(charSequence2)) {
                glideRequestBuilder.f28252r = String.valueOf(charSequence2);
            }
            glideRequestBuilder.m27019b();
        }
        return C20128v.f66529a;
    }
}
