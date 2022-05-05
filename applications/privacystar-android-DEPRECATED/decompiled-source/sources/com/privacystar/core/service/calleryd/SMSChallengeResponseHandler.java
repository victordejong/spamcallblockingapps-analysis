package com.privacystar.core.service.calleryd;

import com.firstorion.libcyd.ChallengeFailureReason;
import com.firstorion.libcyd.ChallengeFailureRemedyKind;
import com.firstorion.libcyd.ChallengeResponseHandler;
import com.privacystar.core.service.PreferenceUtil;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/calleryd/SMSChallengeResponseHandler.class */
public class SMSChallengeResponseHandler implements ChallengeResponseHandler {
    @Override // com.firstorion.libcyd.ChallengeResponseHandler
    public void onChallengeCompletionFailed(Object obj, ChallengeFailureReason challengeFailureReason, ChallengeFailureRemedyKind challengeFailureRemedyKind) {
        Timber.m37d("ENGAGE SMS verification failed: [%s], [%s]", challengeFailureReason.toString(), challengeFailureRemedyKind.toString());
        CallerYDHelper.INSTANCE.setCodeValidationResult(false);
    }

    @Override // com.firstorion.libcyd.ChallengeResponseHandler
    public void onChallengeCompletionSucceeded(Object obj) {
        Timber.m37d("ENGAGE SMS verification succeeded.", new Object[0]);
        CallerYDHelper.INSTANCE.setCodeValidationResult(true);
    }

    @Override // com.firstorion.libcyd.ChallengeResponseHandler
    public void onChallengeInitiationFailed(Object obj, ChallengeFailureReason challengeFailureReason, ChallengeFailureRemedyKind challengeFailureRemedyKind) {
        Timber.m37d("Challenge SMS Initiation failed: [%s], [%s]", challengeFailureReason.toString(), challengeFailureRemedyKind.toString());
        PreferenceUtil.putIsNumberVerifying(false);
        CallerYDHelper.INSTANCE.setChallengeInitResult(false);
    }

    @Override // com.firstorion.libcyd.ChallengeResponseHandler
    public void onChallengeInitiationSucceeded(Object obj) {
        Timber.m37d("Challenge SMS Initiation succeeded", new Object[0]);
        CallerYDHelper.INSTANCE.setChallengeInitResult(true);
    }
}
