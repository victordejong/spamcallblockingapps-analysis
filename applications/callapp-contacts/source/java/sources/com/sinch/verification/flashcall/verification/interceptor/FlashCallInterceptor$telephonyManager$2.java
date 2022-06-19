package com.sinch.verification.flashcall.verification.interceptor;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.callapp.contacts.model.Constants;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Landroid/telephony/TelephonyManager;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$telephonyManager$2.class */
public final class FlashCallInterceptor$telephonyManager$2 extends AbstractC18526r implements Function0<TelephonyManager> {
    final /* synthetic */ FlashCallInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallInterceptor$telephonyManager$2(FlashCallInterceptor flashCallInterceptor) {
        super(0);
        this.this$0 = flashCallInterceptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TelephonyManager invoke() {
        Context context;
        context = this.this$0.context;
        Object systemService = context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (systemService != null) {
            return (TelephonyManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
    }
}
