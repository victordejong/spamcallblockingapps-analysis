package com.privacystar.core.service.calleryd;

import android.content.Intent;
import com.firstorion.libcyd.CYDApplication;
import com.firstorion.libcyd.PhoneRingingStoppedReason;
import com.firstorion.libcyd.SMSChallengeBroadcastReceiver;
import com.google.firebase.messaging.RemoteMessage;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.util.BlockingManager;
import io.reactivex.subjects.BehaviorSubject;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u001bJ\u0016\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&2\u0006\u0010!\u001a\u00020\"J\u0006\u0010'\u001a\u00020\u001bJ\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0004J\u000e\u0010*\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020.R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0005\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00070\u0006X\u0082\u000e¢\u0006\u0002\n��R2\u0010\b\u001a&\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00040\u0004 \t*\u0012\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u000f\u001a\u0004\b\u0016\u0010\u0017¨\u00061"}, m254d2 = {"Lcom/privacystar/core/service/calleryd/CallerYDHelper;", "", "()V", "challengeInitiated", "", "codeValidationSubjects", "", "Lio/reactivex/subjects/BehaviorSubject;", "codeVerification", "kotlin.jvm.PlatformType", "cydApp", "Lcom/firstorion/libcyd/CYDApplication;", "getCydApp", "()Lcom/firstorion/libcyd/CYDApplication;", "cydApp$delegate", "Lkotlin/Lazy;", "cydEnabled", "getCydEnabled", "()Z", "cydEnabled$delegate", "smsChallengeBroadcastReceiver", "Lcom/firstorion/libcyd/SMSChallengeBroadcastReceiver;", "getSmsChallengeBroadcastReceiver", "()Lcom/firstorion/libcyd/SMSChallengeBroadcastReceiver;", "smsChallengeBroadcastReceiver$delegate", "getChallengeInitResult", "handlePushMessage", "", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "isCYDKillSwitchActivated", "isCydActive", "onIncomingCall", "intent", "Landroid/content/Intent;", "onOverlayPermissionChanged", "onRingingStopped", BlockingManager.REASON_CONSTANT, "Lcom/firstorion/libcyd/PhoneRingingStoppedReason;", "resetCodeVerificationSubscriptions", "setChallengeInitResult", IABConstants.JSON_RESULT, "setCodeValidationResult", "shouldHandlePushMessage", "validateCode", "inputValue", "", "validateNumber", "phoneNumber", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/calleryd/CallerYDHelper.class */
public final class CallerYDHelper {
    private static boolean challengeInitiated;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CallerYDHelper.class), "cydEnabled", "getCydEnabled()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CallerYDHelper.class), "smsChallengeBroadcastReceiver", "getSmsChallengeBroadcastReceiver()Lcom/firstorion/libcyd/SMSChallengeBroadcastReceiver;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CallerYDHelper.class), "cydApp", "getCydApp()Lcom/firstorion/libcyd/CYDApplication;"))};
    public static final CallerYDHelper INSTANCE = new CallerYDHelper();
    private static Set<BehaviorSubject<Boolean>> codeValidationSubjects = new HashSet();
    private static final BehaviorSubject<Boolean> codeVerification = BehaviorSubject.create();
    private static final Lazy cydEnabled$delegate = LazyKt.lazy(CallerYDHelper$cydEnabled$2.INSTANCE);
    private static final Lazy smsChallengeBroadcastReceiver$delegate = LazyKt.lazy(CallerYDHelper$smsChallengeBroadcastReceiver$2.INSTANCE);
    @NotNull
    private static final Lazy cydApp$delegate = LazyKt.lazy(CallerYDHelper$cydApp$2.INSTANCE);

    private CallerYDHelper() {
    }

    private final boolean getCydEnabled() {
        Lazy lazy = cydEnabled$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    private final SMSChallengeBroadcastReceiver getSmsChallengeBroadcastReceiver() {
        Lazy lazy = smsChallengeBroadcastReceiver$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (SMSChallengeBroadcastReceiver) lazy.getValue();
    }

    public final boolean getChallengeInitResult() {
        return challengeInitiated;
    }

    @NotNull
    public final CYDApplication getCydApp() {
        Lazy lazy = cydApp$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (CYDApplication) lazy.getValue();
    }

    public final void handlePushMessage(@NotNull RemoteMessage remoteMessage) {
        Intrinsics.checkParameterIsNotNull(remoteMessage, "remoteMessage");
        Map<String, String> data = remoteMessage.getData();
        Timber.m37d("Handling pushMessageData for ENGAGE: %s", data.toString());
        if (shouldHandlePushMessage(remoteMessage)) {
            Timber.m37d("Data claimed by ENGAGE, sending.", new Object[0]);
            getCydApp().handlePushMessage(PSApplication.context(), data);
            return;
        }
        Timber.m37d("Push was not claimed by ENGAGE.", new Object[0]);
    }

    public final boolean isCYDKillSwitchActivated() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.CYD_DISABLED);
    }

    public final boolean isCydActive() {
        return getCydEnabled() && !LicenseFeatureRealm.isFeatureAvailable(Feature.CYD_DISABLED);
    }

    public final boolean onIncomingCall(@NotNull Intent intent) {
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        boolean z = false;
        if (!getCydEnabled() || !PreferenceUtil.getIsNumberVerified() || isCYDKillSwitchActivated()) {
            Timber.m37d("Not passing incoming call intent to libcyd - not enabled.", new Object[0]);
        } else {
            Timber.m37d("Passing incoming call intent to libcyd.", new Object[0]);
            z = getCydApp().onIncomingCall(PSApplication.context(), intent);
        }
        return z;
    }

    public final void onOverlayPermissionChanged() {
        getCydApp().onOverlayPermissionChanged(PSApplication.context());
    }

    public final void onRingingStopped(@NotNull PhoneRingingStoppedReason reason, @NotNull Intent intent) {
        Intrinsics.checkParameterIsNotNull(reason, "reason");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        if (!getCydEnabled() || !PreferenceUtil.getIsNumberVerified() || isCYDKillSwitchActivated()) {
            Timber.m37d("Not passing ringing stopped action to libcyd - not enabled.", new Object[0]);
        } else {
            getCydApp().onRingingStopped(PSApplication.context(), reason, intent);
        }
    }

    public final void resetCodeVerificationSubscriptions() {
        codeValidationSubjects.clear();
    }

    public final void setChallengeInitResult(boolean z) {
        challengeInitiated = z;
    }

    public final void setCodeValidationResult(boolean z) {
        Iterator<T> it = codeValidationSubjects.iterator();
        while (it.hasNext()) {
            BehaviorSubject behaviorSubject = (BehaviorSubject) it.next();
            if (behaviorSubject != null) {
                behaviorSubject.onNext(Boolean.valueOf(z));
            }
        }
    }

    public final boolean shouldHandlePushMessage(@NotNull RemoteMessage remoteMessage) {
        Intrinsics.checkParameterIsNotNull(remoteMessage, "remoteMessage");
        return CYDApplication.isCYDMessage(remoteMessage);
    }

    public final void validateCode(@NotNull String inputValue, @Nullable BehaviorSubject<Boolean> behaviorSubject) {
        Intrinsics.checkParameterIsNotNull(inputValue, "inputValue");
        Timber.m37d("Validating code [%s] by creating and broadcasting Intent to ENGAGE.", inputValue);
        codeValidationSubjects.add(behaviorSubject);
        Timber.m28v("Broadcasting intent on receiver: [%s]", getSmsChallengeBroadcastReceiver().toString());
        getSmsChallengeBroadcastReceiver().completeWithCode(PSApplication.context(), inputValue);
    }

    public final void validateNumber(@NotNull String phoneNumber) {
        Intrinsics.checkParameterIsNotNull(phoneNumber, "phoneNumber");
        Timber.m37d("Validating number [%s] by creating and broadcasting Intent to ENGAGE.", phoneNumber);
        Timber.m28v("Broadcasting intent on receiver: [%s]", getSmsChallengeBroadcastReceiver().toString());
        getSmsChallengeBroadcastReceiver().begin(PSApplication.context(), phoneNumber);
        PreferenceUtil.putIsNumberVerifying(true);
        INSTANCE.setChallengeInitResult(false);
    }
}
