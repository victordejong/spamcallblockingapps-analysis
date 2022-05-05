package com.privacystar.core.service.calleryd;

import com.firstorion.libcyd.SMSChallengeBroadcastReceiver;
import com.firstorion.libcyd.SMSChallengeBroadcastReceiverOptions;
import com.privacystar.core.PSApplication;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Lcom/firstorion/libcyd/SMSChallengeBroadcastReceiver;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/calleryd/CallerYDHelper$smsChallengeBroadcastReceiver$2.class */
final class CallerYDHelper$smsChallengeBroadcastReceiver$2 extends Lambda implements Function0<SMSChallengeBroadcastReceiver> {
    public static final CallerYDHelper$smsChallengeBroadcastReceiver$2 INSTANCE = new CallerYDHelper$smsChallengeBroadcastReceiver$2();

    CallerYDHelper$smsChallengeBroadcastReceiver$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final SMSChallengeBroadcastReceiver invoke() {
        Timber.m37d("CYDApplication enabled: [%s]", Boolean.valueOf(CallerYDHelper.INSTANCE.getCydApp().getIsEnabled(PSApplication.context())));
        SMSChallengeBroadcastReceiver sMSChallengeBroadcastReceiver = new SMSChallengeBroadcastReceiver(new SMSChallengeResponseHandler());
        sMSChallengeBroadcastReceiver.register(PSApplication.context(), SMSChallengeBroadcastReceiverOptions.UseBuiltInTextSMSListener);
        return sMSChallengeBroadcastReceiver;
    }
}
