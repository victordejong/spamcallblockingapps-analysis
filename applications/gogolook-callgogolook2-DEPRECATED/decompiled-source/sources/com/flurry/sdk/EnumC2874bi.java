package com.flurry.sdk;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
/* renamed from: com.flurry.sdk.bi */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bi.class */
public enum EnumC2874bi {
    EV_UNKNOWN("unknown"),
    EV_REQUESTED("requested"),
    EV_REQUEST_AD_COMPONENTS("requestAdComponents"),
    EV_FILLED("filled"),
    EV_UNFILLED("unfilled"),
    EV_RENDERED("rendered"),
    EV_RENDER_FAILED("renderFailed"),
    EV_CLICKED("clicked"),
    EV_VIDEO_START("videoStart"),
    EV_VIDEO_COMPLETED("videoCompleted"),
    EV_VIDEO_PROGRESSED("videoProgressed"),
    EV_SENT_TO_URL("sentToUrl"),
    EV_ASYNC_NOTIFICATION("asyncNotification"),
    EV_URL_VERIFIED("urlVerified"),
    EV_URL_NOT_VERIFIED("urlNotVerified"),
    EV_PACKAGE_VERIFIED("packageVerified"),
    EV_PACKAGE_NOT_VERIFIED("packageNotVerified"),
    EV_LAUNCH_URL_FAILED("launchUrlFailed"),
    EV_USER_CONFIRMED("userConfirmed"),
    EV_USER_CANCELLED("userCanceled"),
    EV_AD_WILL_CLOSE("adWillClose"),
    EV_AD_CLOSED("adClosed"),
    EV_VIDEO_CLOSED("videoClosed"),
    EV_REQUEST_AD_EXPAND(MraidParser.MRAID_COMMAND_EXPAND),
    EV_REQUEST_AD_COLLAPSE("collapse"),
    EV_REQUEST_LAUNCH_URL(MraidParser.MRAID_COMMAND_OPEN),
    EV_AD_LISTENER_ADDED("eventListenerAdded"),
    EV_FILLED_FROM_SERVER("filledFromServer"),
    EV_FILLED_FROM_CACHE("filledFromCache"),
    EV_COMPLETED_FULL_LOAD("didCompleteFullLoad"),
    EV_CAP_EXHAUSTED("capExhausted"),
    EV_CAP_NOT_EXHAUSTED("capNotExhausted"),
    EV_LOADING_VIDEO_CLOSED("loadingVideoClosed"),
    EV_VIDEO_FIRST_QUARTILE("videoFirstQuartile"),
    EV_VIDEO_MIDPOINT("videoMidpoint"),
    EV_VIDEO_THIRD_QUARTILE("videoThirdQuartile"),
    EV_VIDEO_CLICKED("videoClicked"),
    EV_VIDEO_VIEWED("videoView"),
    EV_VIDEO_VIEWED_3P("videoView3P"),
    EV_STATIC_VIEWED_3P("staticView3P"),
    EV_PARTIAL_VIEWED("partialView"),
    EV_REWARD_GRANTED("rewardGranted"),
    EV_SEND_URL_STATUS_RESULT("sendUrlStatusResult"),
    EV_PREPARED("prepared"),
    EV_AD_UNIT_MERGED("adunitMerged"),
    EV_PRIVACY("privacy"),
    EV_STREAM_IMPRESSION("streamImpression"),
    EV_NATIVE_IMPRESSION("nativeImpression"),
    EV_MRAID_NOT_SUPPORTED("mraidAdNotSupported"),
    EV_MRAID_CLOSE_BUTTON_VISIBLE("mraidCloseButtonVisible"),
    EV_PAGE_LOAD_FINISHED("pageLoadFinished"),
    EV_AD_EXPANDED("adExpanded"),
    EV_AD_COLLAPSED("adCollapsed"),
    EV_CALL_CLICK_BEACON("callClickBeacon"),
    EV_AD_FEEDBACK_INFO("adFeedbackInfo"),
    EV_AD_FEEDBACK_HIDE("adFeedbackHide"),
    EV_AD_FEEDBACK_SUBMIT("adFeedbackSubmit"),
    EV_AD_REPORT_SHARE("share"),
    EV_AD_REPORT_SAVE("save"),
    EV_AD_REPORT_CLICK_INTERNAL("clickInternal"),
    EV_AD_REPORT_IMPR_INTERNAL("imprInternal"),
    INTERNAL_EV_AD_OPENED("adOpened"),
    INTERNAL_EV_APP_EXIT("appExit"),
    INTERNAL_EV_CALL_CLICKED("internalCallClicked"),
    INTERNAL_EV_NATIVE_END_CARD_IMPRESSION("nativeEndCardImpression");
    

    /* renamed from: an */
    public final String f4289an;

    EnumC2874bi(String str) {
        this.f4289an = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f4289an;
    }
}
