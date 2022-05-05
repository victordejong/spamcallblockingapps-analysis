package com.privacystar.core.service.analytics.p009fo;

import android.content.Context;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.service.analytics.AnalyticHandler;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.NumbersUtil;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000fH\u0002JZ\u0010\u0010\u001aT\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u00060\u0004j)\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006`\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0016R`\u0010\u0003\u001aT\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u00060\u0004j)\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006`\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/service/analytics/fo/FOAnalyticHandler;", "Lcom/privacystar/core/service/analytics/AnalyticHandler;", "()V", "eventMap", "Ljava/util/HashMap;", "", "Lkotlin/Function1;", "Lcom/privacystar/core/service/analytics/Event;", "Lkotlin/ParameterName;", "name", "event", "", "Lkotlin/collections/HashMap;", "buildEvent83BodyImpl", "", "Lcom/privacystar/core/service/analytics/Event$ExtendedCallInformationEvent;", "createEventMap", "logEvent", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticHandler */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticHandler.class */
public final class FOAnalyticHandler implements AnalyticHandler {
    public static final FOAnalyticHandler INSTANCE;
    private static final HashMap<Integer, Function1<Event, Unit>> eventMap;

    static {
        FOAnalyticHandler fOAnalyticHandler = new FOAnalyticHandler();
        INSTANCE = fOAnalyticHandler;
        eventMap = fOAnalyticHandler.createEventMap();
    }

    private FOAnalyticHandler() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildEvent83BodyImpl(Event.ExtendedCallInformationEvent extendedCallInformationEvent) {
        String str;
        Exception e;
        String devicePinOrNothing;
        String uuid;
        String formatNumberToE164;
        String unparsedNumber;
        int offenderCategoryId;
        String numeralString;
        long incomingTime;
        String timeZoneTZ;
        Context context = PSApplication.context();
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.PSApplication");
        }
        PSApplication pSApplication = (PSApplication) context;
        Caller populatedCaller = CallerFactory.getInstance().getPopulatedCaller(extendedCallInformationEvent.getOppositeNumber().getUnparsedNumber());
        Intrinsics.checkExpressionValueIsNotNull(populatedCaller, "CallerFactory.getInstanc…mber.getUnparsedNumber())");
        try {
            devicePinOrNothing = InformationUtil.getDevicePinOrNothing(pSApplication);
            uuid = UUID.randomUUID().toString();
            Intrinsics.checkExpressionValueIsNotNull(uuid, "UUID.randomUUID().toString()");
            formatNumberToE164 = NumbersUtil.formatNumberToE164(DeviceNumberProvider.INSTANCE.getNumber());
            unparsedNumber = extendedCallInformationEvent.getOppositeNumber().getUnparsedNumber();
            offenderCategoryId = populatedCaller.getOffenderCategoryId();
            numeralString = NumbersUtil.toNumeralString(Boolean.valueOf(populatedCaller.getIsInContactsSynchronous()));
            incomingTime = extendedCallInformationEvent.getIncomingTime();
            timeZoneTZ = InformationUtil.getTimeZoneTZ();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            int ordinal = extendedCallInformationEvent.getResolutionType().ordinal();
            long resolutionTime = extendedCallInformationEvent.getResolutionTime();
            String valueOf = extendedCallInformationEvent.getResolutionType() == Event.CallResolutionType.ANSWERED ? String.valueOf(extendedCallInformationEvent.getEndTime()) : "";
            String str2 = (extendedCallInformationEvent.getResolutionType() != Event.CallResolutionType.BLOCKED || !Intrinsics.areEqual("blacklist", extendedCallInformationEvent.getBlockReason())) ? "0" : "1";
            StringBuilder sb = new StringBuilder();
            InformationUtil.appendEventPayload(sb, devicePinOrNothing);
            InformationUtil.appendEventPayload(sb, uuid);
            InformationUtil.appendEventPayload(sb, formatNumberToE164);
            InformationUtil.appendEventPayload(sb, "1");
            InformationUtil.appendEventPayload(sb, "1");
            InformationUtil.appendEventPayload(sb, unparsedNumber);
            InformationUtil.appendEventPayload(sb, String.valueOf(offenderCategoryId));
            InformationUtil.appendEventPayload(sb, "");
            InformationUtil.appendEventPayload(sb, "");
            InformationUtil.appendEventPayload(sb, numeralString);
            InformationUtil.appendEventPayload(sb, str2);
            InformationUtil.appendEventPayload(sb, "");
            InformationUtil.appendEventPayload(sb, String.valueOf(incomingTime));
            InformationUtil.appendEventPayload(sb, timeZoneTZ);
            InformationUtil.appendEventPayload(sb, "");
            InformationUtil.appendEventPayload(sb, String.valueOf(ordinal));
            InformationUtil.appendEventPayload(sb, String.valueOf(resolutionTime));
            InformationUtil.appendEventPayload(sb, valueOf);
            InformationUtil.appendEventPayload(sb, "");
            InformationUtil.appendEventPayload(sb, "1");
            str = sb.toString();
            Intrinsics.checkExpressionValueIsNotNull(str, "payload.toString()");
        } catch (Exception e3) {
            e = e3;
            str = "";
            Timber.m32e(e, "attempting to build event code 83 failed", new Object[0]);
            return str;
        }
        return str;
    }

    private final HashMap<Integer, Function1<Event, Unit>> createEventMap() {
        HashMap<Integer, Function1<Event, Unit>> hashMap = new HashMap<>(150);
        HashMap<Integer, Function1<Event, Unit>> hashMap2 = hashMap;
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ExtendedCallInformationEvent.class).hashCode()), FOAnalyticHandler$createEventMap$1.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeLogoSplashPageView.class).hashCode()), FOAnalyticHandler$createEventMap$2.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserPageView.class).hashCode()), FOAnalyticHandler$createEventMap$3.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserCloseClick.class).hashCode()), FOAnalyticHandler$createEventMap$4.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserTrialClick.class).hashCode()), FOAnalyticHandler$createEventMap$5.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserPpClick.class).hashCode()), FOAnalyticHandler$createEventMap$6.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserTacClick.class).hashCode()), FOAnalyticHandler$createEventMap$7.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserBackClick.class).hashCode()), FOAnalyticHandler$createEventMap$8.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserPageView.class).hashCode()), FOAnalyticHandler$createEventMap$9.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserBackClick.class).hashCode()), FOAnalyticHandler$createEventMap$10.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserContinueClick.class).hashCode()), FOAnalyticHandler$createEventMap$11.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserPpClick.class).hashCode()), FOAnalyticHandler$createEventMap$12.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserTacClick.class).hashCode()), FOAnalyticHandler$createEventMap$13.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PrivacyPolicyView.class).hashCode()), FOAnalyticHandler$createEventMap$14.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PrivacyPolicyContinueClick.class).hashCode()), FOAnalyticHandler$createEventMap$15.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationView.class).hashCode()), FOAnalyticHandler$createEventMap$16.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationNumberEnterClick.class).hashCode()), FOAnalyticHandler$createEventMap$17.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationSendClick.class).hashCode()), FOAnalyticHandler$createEventMap$18.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsSmsPopupView.class).hashCode()), FOAnalyticHandler$createEventMap$19.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsSmsAllow.class).hashCode()), FOAnalyticHandler$createEventMap$20.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionSmsDeny.class).hashCode()), FOAnalyticHandler$createEventMap$21.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodePageView.class).hashCode()), FOAnalyticHandler$createEventMap$22.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeNumberEnterClick.class).hashCode()), FOAnalyticHandler$createEventMap$23.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeResendClick.class).hashCode()), FOAnalyticHandler$createEventMap$24.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationErrorCode.class).hashCode()), FOAnalyticHandler$createEventMap$25.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerifyingView.class).hashCode()), FOAnalyticHandler$createEventMap$26.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeBackClick.class).hashCode()), FOAnalyticHandler$createEventMap$27.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberView.class).hashCode()), FOAnalyticHandler$createEventMap$28.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberEnterNumberClick.class).hashCode()), FOAnalyticHandler$createEventMap$29.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberSendClick.class).hashCode()), FOAnalyticHandler$createEventMap$30.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCallCategoryPageView.class).hashCode()), FOAnalyticHandler$createEventMap$31.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCallCategoryctaClick.class).hashCode()), FOAnalyticHandler$createEventMap$32.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCategorySettingView.class).hashCode()), FOAnalyticHandler$createEventMap$33.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationScamOn.class).hashCode()), FOAnalyticHandler$createEventMap$34.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationScamOff.class).hashCode()), FOAnalyticHandler$createEventMap$35.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceOn.class).hashCode()), FOAnalyticHandler$createEventMap$36.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceOff.class).hashCode()), FOAnalyticHandler$createEventMap$37.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$38.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingOn.class).hashCode()), FOAnalyticHandler$createEventMap$39.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingOff.class).hashCode()), FOAnalyticHandler$createEventMap$40.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$41.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesOn.class).hashCode()), FOAnalyticHandler$createEventMap$42.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesOff.class).hashCode()), FOAnalyticHandler$createEventMap$43.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$44.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalOn.class).hashCode()), FOAnalyticHandler$createEventMap$45.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalOff.class).hashCode()), FOAnalyticHandler$createEventMap$46.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$47.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyOn.class).hashCode()), FOAnalyticHandler$createEventMap$48.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyOff.class).hashCode()), FOAnalyticHandler$createEventMap$49.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$50.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityOn.class).hashCode()), FOAnalyticHandler$createEventMap$51.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityOff.class).hashCode()), FOAnalyticHandler$createEventMap$52.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$53.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonOn.class).hashCode()), FOAnalyticHandler$createEventMap$54.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonOff.class).hashCode()), FOAnalyticHandler$createEventMap$55.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$56.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsPageView.class).hashCode()), FOAnalyticHandler$createEventMap$57.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsAllowClick.class).hashCode()), FOAnalyticHandler$createEventMap$58.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCloseClick.class).hashCode()), FOAnalyticHandler$createEventMap$59.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsPopupView.class).hashCode()), FOAnalyticHandler$createEventMap$60.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsAllow.class).hashCode()), FOAnalyticHandler$createEventMap$61.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsDeny.class).hashCode()), FOAnalyticHandler$createEventMap$62.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsPopupView.class).hashCode()), FOAnalyticHandler$createEventMap$63.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsAllow.class).hashCode()), FOAnalyticHandler$createEventMap$64.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsDeny.class).hashCode()), FOAnalyticHandler$createEventMap$65.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsPopupView.class).hashCode()), FOAnalyticHandler$createEventMap$66.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsAllow.class).hashCode()), FOAnalyticHandler$createEventMap$67.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsDeny.class).hashCode()), FOAnalyticHandler$createEventMap$68.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionRequiredView.class).hashCode()), FOAnalyticHandler$createEventMap$69.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionRequiredToggleClick.class).hashCode()), FOAnalyticHandler$createEventMap$70.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuClick.class).hashCode()), FOAnalyticHandler$createEventMap$71.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityPageView.class).hashCode()), FOAnalyticHandler$createEventMap$72.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityNumberLookupClick.class).hashCode()), FOAnalyticHandler$createEventMap$73.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityInactivityVerifyView.class).hashCode()), FOAnalyticHandler$createEventMap$74.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityInactivityVerifyClick.class).hashCode()), FOAnalyticHandler$createEventMap$75.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsView.class).hashCode()), FOAnalyticHandler$createEventMap$76.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsCall.class).hashCode()), FOAnalyticHandler$createEventMap$77.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsText.class).hashCode()), FOAnalyticHandler$createEventMap$78.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsBlock.class).hashCode()), FOAnalyticHandler$createEventMap$79.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsAllow.class).hashCode()), FOAnalyticHandler$createEventMap$80.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsReport.class).hashCode()), FOAnalyticHandler$createEventMap$81.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsAddContact.class).hashCode()), FOAnalyticHandler$createEventMap$82.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsRoboSurveyClick.class).hashCode()), FOAnalyticHandler$createEventMap$83.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsCategorySurveyClick.class).hashCode()), FOAnalyticHandler$createEventMap$84.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberReportView.class).hashCode()), FOAnalyticHandler$createEventMap$85.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberReportSubmit.class).hashCode()), FOAnalyticHandler$createEventMap$86.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuView.class).hashCode()), FOAnalyticHandler$createEventMap$87.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuActivity.class).hashCode()), FOAnalyticHandler$createEventMap$88.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuBlockAllowList.class).hashCode()), FOAnalyticHandler$createEventMap$89.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuNotification.class).hashCode()), FOAnalyticHandler$createEventMap$90.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuSetting.class).hashCode()), FOAnalyticHandler$createEventMap$91.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuDashboard.class).hashCode()), FOAnalyticHandler$createEventMap$92.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockNewEntry.class).hashCode()), FOAnalyticHandler$createEventMap$93.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockAddNumber.class).hashCode()), FOAnalyticHandler$createEventMap$94.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockRemoveNumber.class).hashCode()), FOAnalyticHandler$createEventMap$95.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockViewDetails.class).hashCode()), FOAnalyticHandler$createEventMap$96.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowNewEntry.class).hashCode()), FOAnalyticHandler$createEventMap$97.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowAddNumber.class).hashCode()), FOAnalyticHandler$createEventMap$98.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowRemoveNumber.class).hashCode()), FOAnalyticHandler$createEventMap$99.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowViewDetails.class).hashCode()), FOAnalyticHandler$createEventMap$100.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsPageView.class).hashCode()), FOAnalyticHandler$createEventMap$101.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsMessageDelete.class).hashCode()), FOAnalyticHandler$createEventMap$102.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsMessageRead.class).hashCode()), FOAnalyticHandler$createEventMap$103.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPageView.class).hashCode()), FOAnalyticHandler$createEventMap$104.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsHelp.class).hashCode()), FOAnalyticHandler$createEventMap$105.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAbout.class).hashCode()), FOAnalyticHandler$createEventMap$106.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsShare.class).hashCode()), FOAnalyticHandler$createEventMap$107.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsRate.class).hashCode()), FOAnalyticHandler$createEventMap$108.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsScamOn.class).hashCode()), FOAnalyticHandler$createEventMap$109.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsScamOff.class).hashCode()), FOAnalyticHandler$createEventMap$110.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceOn.class).hashCode()), FOAnalyticHandler$createEventMap$111.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceOff.class).hashCode()), FOAnalyticHandler$createEventMap$112.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$113.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingOn.class).hashCode()), FOAnalyticHandler$createEventMap$114.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingOff.class).hashCode()), FOAnalyticHandler$createEventMap$115.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$116.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesOn.class).hashCode()), FOAnalyticHandler$createEventMap$117.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesOff.class).hashCode()), FOAnalyticHandler$createEventMap$118.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$119.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalOn.class).hashCode()), FOAnalyticHandler$createEventMap$120.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalOff.class).hashCode()), FOAnalyticHandler$createEventMap$121.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$122.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyOn.class).hashCode()), FOAnalyticHandler$createEventMap$123.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyOff.class).hashCode()), FOAnalyticHandler$createEventMap$124.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$125.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityOn.class).hashCode()), FOAnalyticHandler$createEventMap$126.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityOff.class).hashCode()), FOAnalyticHandler$createEventMap$127.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$128.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonOn.class).hashCode()), FOAnalyticHandler$createEventMap$129.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonOff.class).hashCode()), FOAnalyticHandler$createEventMap$130.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonUpsellClick.class).hashCode()), FOAnalyticHandler$createEventMap$131.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DashboardPageView.class).hashCode()), FOAnalyticHandler$createEventMap$132.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierPopup.class).hashCode()), FOAnalyticHandler$createEventMap$133.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierBlock.class).hashCode()), FOAnalyticHandler$createEventMap$134.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierClose.class).hashCode()), FOAnalyticHandler$createEventMap$135.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationBlock.class).hashCode()), FOAnalyticHandler$createEventMap$136.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationReport.class).hashCode()), FOAnalyticHandler$createEventMap$137.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationClick.class).hashCode()), FOAnalyticHandler$createEventMap$138.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SkippedPhoneVerification.class).hashCode()), FOAnalyticHandler$createEventMap$139.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.LookupEvent.class).hashCode()), FOAnalyticHandler$createEventMap$140.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.OffenderListSyncEvent.class).hashCode()), FOAnalyticHandler$createEventMap$141.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ComplaintFeedback.class).hashCode()), FOAnalyticHandler$createEventMap$142.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ComplaintFiled.class).hashCode()), FOAnalyticHandler$createEventMap$143.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSuccessView.class).hashCode()), FOAnalyticHandler$createEventMap$144.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSuccessClick.class).hashCode()), FOAnalyticHandler$createEventMap$145.INSTANCE);
        return hashMap;
    }

    @Override // com.privacystar.core.service.analytics.AnalyticHandler
    public void logEvent(@NotNull Event event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        Timber.m37d("Logging FOAnalyticEvent " + event, new Object[0]);
        Function1<Event, Unit> function1 = eventMap.get(Integer.valueOf(Reflection.getOrCreateKotlinClass(event.getClass()).hashCode()));
        if (function1 != null) {
            function1.invoke(event);
        }
    }
}
