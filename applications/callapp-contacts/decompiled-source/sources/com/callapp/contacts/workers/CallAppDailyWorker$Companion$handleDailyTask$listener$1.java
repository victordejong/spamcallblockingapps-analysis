package com.callapp.contacts.workers;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\r\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "photoUrl", "", "customizableSignature", "", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1.class */
final class CallAppDailyWorker$Companion$handleDailyTask$listener$1 extends r implements Function2<String, CharSequence, v> {

    /* renamed from: a  reason: collision with root package name */
    public static final CallAppDailyWorker$Companion$handleDailyTask$listener$1 f17028a = new CallAppDailyWorker$Companion$handleDailyTask$listener$1();

    CallAppDailyWorker$Companion$handleDailyTask$listener$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* synthetic */ v invoke(String str, CharSequence charSequence) {
        String str2 = str;
        CharSequence charSequence2 = charSequence;
        if (StringUtils.b((CharSequence) str2)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str2);
            glideRequestBuilder.e = CallAppApplication.get();
            if (StringUtils.b(charSequence2)) {
                glideRequestBuilder.r = String.valueOf(charSequence2);
            }
            glideRequestBuilder.b();
        }
        return v.f38654a;
    }
}
