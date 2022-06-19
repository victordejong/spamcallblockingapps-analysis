package com.truecaller.callrecording.p154ui.onboarding;

import kotlin.Metadata;
/* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingMvp$Listener */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener.class */
public interface CallRecordingOnBoardingMvp$Listener {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;", "", "<init>", "(Ljava/lang/String;I)V", "DEFAULT_DIALER_CONTINUE", "INTRO_CONTINUE", "INTRO_DECLINED", "TERMS_ACCEPTED", "TERMS_DECLINED", "PERMISSIONS_CONTINUE", "ACCESSIBILITY_SETTINGS", "ACCESSIBILITY_GRANTED", "CONFIRMATION_SETUP_COMPLETE", "DISMISSED", "ENABLE_NOW", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingMvp$Listener$Action */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action.class */
    public enum Action {
        DEFAULT_DIALER_CONTINUE,
        INTRO_CONTINUE,
        INTRO_DECLINED,
        TERMS_ACCEPTED,
        TERMS_DECLINED,
        PERMISSIONS_CONTINUE,
        ACCESSIBILITY_SETTINGS,
        ACCESSIBILITY_GRANTED,
        CONFIRMATION_SETUP_COMPLETE,
        DISMISSED,
        ENABLE_NOW
    }

    /* renamed from: p6 */
    void mo17435p6(Action action);
}
