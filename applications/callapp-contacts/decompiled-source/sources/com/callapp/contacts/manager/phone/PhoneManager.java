package com.callapp.contacts.manager.phone;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.Settings;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import androidx.b.e;
import com.android.internal.telephony.ITelephony;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.loader.PreferredSimManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.service.jobs.BluetoothServiceV1;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.phone.CountryRegionProvider;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.common.util.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneManager.class */
public class PhoneManager implements ManagedLifecycle {

    /* renamed from: c  reason: collision with root package name */
    private static final String f15122c = Uri.encode("#");

    /* renamed from: b  reason: collision with root package name */
    boolean f15124b;

    /* renamed from: d  reason: collision with root package name */
    private ITelephony f15125d;
    private TelephonyManager e;
    private Collection<Phone> f;
    private String h;
    private final Object g = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final e<String, Phone> f15123a = new e<>(2000);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider.class */
    public static class MyCountryRegionProvider implements CountryRegionProvider {
        private MyCountryRegionProvider() {
        }

        private String getAreaCode() {
            String str = Prefs.ap.get();
            if (StringUtils.b((CharSequence) str)) {
                return str;
            }
            return null;
        }

        @Override // com.callapp.framework.phone.CountryRegionProvider
        public final String a() {
            return PhoneManager.get().getCountryIso();
        }

        @Override // com.callapp.framework.phone.CountryRegionProvider
        public final String b() {
            return getAreaCode();
        }
    }

    public static String a(Call call) {
        if (Build.VERSION.SDK_INT < 23 || call == null) {
            return null;
        }
        if (call.getDetails().getGatewayInfo() != null) {
            return call.getDetails().getGatewayInfo().getOriginalAddress().getSchemeSpecificPart();
        }
        if (c(call) == null) {
            return null;
        }
        return c(call).getSchemeSpecificPart();
    }

    public static void a(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            TelecomAdapter.getInstance();
            TelecomAdapter.a(context);
        }
    }

    public static void a(final Context context, final Phone phone, long j, String str, final String str2, final String str3, final boolean z, final ActionDoneListener actionDoneListener) {
        AdapterText.AdapterEvents adapterEvents = new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.phone.PhoneManager.4
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                PhoneManager.b(context, phone, str2, str3, i, z, actionDoneListener);
            }
        };
        if (SimManager.get().isDualSimAvailable()) {
            SimManager.SimId a2 = PreferredSimManager.a(j, phone);
            if (a2 != null) {
                a(context, phone, a2, str, str2, str3, z, actionDoneListener, adapterEvents);
            } else {
                a(context, phone, (SimManager.SimId) Prefs.bR.get(), str, str2, str3, z, actionDoneListener, adapterEvents);
            }
        } else {
            b(context, phone, str2, str3, SimManager.SimId.ASK.getSimId(), z, actionDoneListener);
        }
    }

    private static void a(Context context, Phone phone, SimManager.SimId simId, String str, String str2, String str3, boolean z, ActionDoneListener actionDoneListener, AdapterText.AdapterEvents adapterEvents) {
        if (simId == SimManager.SimId.ASK) {
            if (StringUtils.a((CharSequence) str)) {
                str = phone.e();
            }
            SimManager.a(context, str, adapterEvents);
            return;
        }
        b(context, phone, str2, str3, simId.simId, z, actionDoneListener);
    }

    public static void a(CallData callData) {
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT >= 23 && callData != null && (telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData)) != null) {
            TelecomAdapter.getInstance().b(telecomCallFromCallData);
        }
    }

    public static void a(boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            CLog.a(PhoneManager.class, "turning on mute: ".concat(String.valueOf(z)));
            TelecomAdapter instance = TelecomAdapter.getInstance();
            if (instance.f14427b != null) {
                instance.f14427b.setMuted(z);
            } else {
                CLog.a(TelecomAdapter.f14425a);
            }
        }
    }

    private static boolean a(Context context, Phone phone, String str, String str2, int i, boolean z) {
        if (z) {
            if (!Prefs.fQ.get().booleanValue()) {
                Prefs.fQ.set(Boolean.TRUE);
                AnalyticsManager.get().a(Constants.INCOGNITO, "User made first incognito call");
            }
            AnalyticsManager.get().a(Constants.INCOGNITO, "User made incognito call", "", 0.0d);
            IncognitoCallManager.get().markIncognito(phone);
        }
        String replace = phone.getRawNumber().replace("#", f15122c);
        if (i()) {
            Uri parse = Uri.parse("tel:".concat(String.valueOf(replace)));
            if (Build.VERSION.SDK_INT >= 26) {
                TelecomManager telecomManager = (TelecomManager) Singletons.a("telecom");
                PhoneAccountHandle phoneAccountHandle = SimManager.get().getPhoneAccountHandle(i);
                if (phoneAccountHandle != null && telecomManager.isOutgoingCallPermitted(phoneAccountHandle)) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
                        telecomManager.placeCall(parse, bundle);
                        return true;
                    } catch (Exception e) {
                        CLog.b(PhoneManager.class, e);
                    }
                }
            }
            Intent intent = new Intent("android.intent.action.CALL", parse);
            Intent intent2 = intent;
            if (!Activities.a(intent)) {
                intent2 = new Intent("android.intent.action.DIAL", parse);
            }
            Singletons.get().getSimManager().a(phone, intent2, i);
            if (!Activities.a(intent2)) {
                if (StringUtils.b((CharSequence) str)) {
                    AnalyticsManager.get().a(str, str2, Constants.FAILED);
                }
                d(context);
                return false;
            }
            if (!(context instanceof Activity)) {
                intent2.setFlags(268435456);
            }
            intent2.addFlags(Activities.getIntentFlagForNewDocument());
            try {
                Activities.a(context, intent2);
                return true;
            } catch (SecurityException e2) {
                CLog.a(PhoneManager.class, e2);
                d(context);
                return false;
            }
        } else if (e(context)) {
            Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("skype:" + replace + "?call"));
            intent3.setComponent(ComponentName.unflattenFromString(Constants.SKYPE_INTENT_COMPONENT_NAME));
            if (!Activities.a(intent3)) {
                if (StringUtils.b((CharSequence) str)) {
                    AnalyticsManager.get().a(str, str2, Constants.FAILED);
                }
                d(context);
                return false;
            }
            if (!(context instanceof Activity)) {
                intent3.setFlags(268435456);
            }
            if (StringUtils.b((CharSequence) str)) {
                AnalyticsManager.get().a(str, str2, Constants.CLICK);
            }
            intent3.addFlags(Activities.getIntentFlagForNewDocument());
            try {
                Activities.a(context, intent3);
                return true;
            } catch (SecurityException e3) {
                CLog.a(PhoneManager.class, e3);
                d(context);
                return false;
            }
        } else {
            PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(2131887707), Activities.getString(2131887706), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.phone.PhoneManager.5
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                }
            }, null));
            return false;
        }
    }

    public static boolean a(CallData callData, PhoneStateManager.CallActionSource callActionSource) {
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData);
        if (telecomCallFromCallData == null) {
            return false;
        }
        PhoneStateManager.get().setCallActionSource(callActionSource);
        TelecomAdapter.getInstance();
        if (telecomCallFromCallData != null) {
            List<Call> conferenceableCalls = telecomCallFromCallData.getConferenceableCalls();
            if (!conferenceableCalls.isEmpty()) {
                telecomCallFromCallData.conference(conferenceableCalls.get(0));
                return true;
            } else if (!telecomCallFromCallData.getDetails().can(4)) {
                return true;
            } else {
                telecomCallFromCallData.mergeConference();
                return true;
            }
        } else {
            String str = TelecomAdapter.f14425a;
            new StringBuilder("error merge, call not in call list ").append(TelecomAdapter.a(telecomCallFromCallData));
            CLog.a(str);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, Phone phone, String str, String str2, int i, boolean z, ActionDoneListener actionDoneListener) {
        if (actionDoneListener != null) {
            actionDoneListener.a();
        }
        boolean a2 = a(context, phone, str, str2, i, z);
        if (actionDoneListener != null) {
            actionDoneListener.a(a2);
        }
    }

    public static void b(CallData callData, PhoneStateManager.CallActionSource callActionSource) {
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT >= 23 && (telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData)) != null) {
            PhoneStateManager.get().setCallActionSource(callActionSource);
            CLog.a(PhoneManager.class, "Putting the call on hold: " + callData.getNumber());
            TelecomAdapter.getInstance().c(telecomCallFromCallData);
        }
    }

    private static Uri c(Call call) {
        if (Build.VERSION.SDK_INT < 23 || call == null) {
            return null;
        }
        return call.getDetails().getHandle();
    }

    public static boolean c() {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        CLog.a(PhoneManager.class, "answer Incoming Call");
        CallData firstCallDataWithState = PhoneStateManager.get().getFirstCallDataWithState(CallState.RINGING_INCOMING);
        CLog.a(PhoneManager.class, "incomingCall: ".concat(String.valueOf(firstCallDataWithState)));
        if (firstCallDataWithState == null) {
            return true;
        }
        if (PhoneStateManager.get().getStateBeforeMerge()) {
            PhoneStateManager.get().setStateBeforeMerge(false);
            CLog.a(PhoneStateManager.class, "cannot add call. hang hold call and continue");
            Call conferenceManager = PhoneStateManager.get().getConferenceManager();
            Call call = conferenceManager;
            if (conferenceManager == null) {
                call = PhoneStateManager.get().getTelecomCallFromCallData(get().getBackgroundCall());
            }
            if (call != null) {
                CLog.a(PhoneStateManager.class, "hang hold call");
                TelecomAdapter.getInstance().b(call);
            } else {
                CLog.a(PhoneStateManager.class, "cannot find hold call");
            }
        }
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(firstCallDataWithState);
        if (telecomCallFromCallData == null) {
            return true;
        }
        CLog.a(PhoneManager.class, "Video state = " + telecomCallFromCallData.getDetails().getVideoState());
        TelecomAdapter.getInstance();
        int videoState = telecomCallFromCallData.getDetails().getVideoState();
        if (telecomCallFromCallData != null) {
            telecomCallFromCallData.answer(videoState);
            return true;
        }
        String str = TelecomAdapter.f14425a;
        new StringBuilder("error answerCall, call not in call list: ").append(TelecomAdapter.a(telecomCallFromCallData));
        CLog.a(str);
        return true;
    }

    public static boolean c(final Context context) {
        final Intent intent = new Intent("android.intent.action.CALL", Uri.fromParts("voicemail", "", null));
        intent.setFlags(268435456);
        if (!Activities.a(intent)) {
            return false;
        }
        SimManager.a(context, Activities.getString(2131888153), (SimManager.SimId) null, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.phone.PhoneManager.3
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                if (i != SimManager.SimId.ASK.getSimId()) {
                    Singletons.get().getSimManager().a((Phone) null, intent, i);
                }
                Activities.a(context, intent);
            }
        });
        return true;
    }

    private static void d(Context context) {
        PopupManager.get().a(context, new DialogSimpleMessage(null, Activities.getString(2131886833), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.phone.PhoneManager.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, null));
    }

    private static boolean e(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.skype.raider", 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean f() {
        CallData firstCallDataWithState;
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT < 23 || (firstCallDataWithState = PhoneStateManager.get().getFirstCallDataWithState(CallState.RINGING_INCOMING)) == null || (telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(firstCallDataWithState)) == null) {
            return false;
        }
        TelecomAdapter.getInstance();
        if (telecomCallFromCallData != null) {
            telecomCallFromCallData.reject(false, null);
            return true;
        }
        String str = TelecomAdapter.f14425a;
        new StringBuilder("error rejectCall, call not in call list: ").append(TelecomAdapter.a(telecomCallFromCallData));
        CLog.a(str);
        return true;
    }

    public static PhoneManager get() {
        return Singletons.get().getPhoneManager();
    }

    public static int getAudioMode() {
        return AudioModeProvider.get().getAudioMode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getCurrentAudioMode() {
        return ((AudioManager) Singletons.a("audio")).getMode();
    }

    private String getNetworkCountryIso() {
        try {
            String networkCountryIso = this.e.getNetworkCountryIso();
            if (!StringUtils.b((CharSequence) networkCountryIso)) {
                return null;
            }
            String country = new Locale("", networkCountryIso).getCountry();
            if (StringUtils.b((CharSequence) country)) {
                return country.toUpperCase();
            }
            return null;
        } catch (RuntimeException e) {
            CLog.b(PhoneStateManager.class, e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getRingerMode() {
        return ((AudioManager) Singletons.a("audio")).getRingerMode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getStreamVolume(int i) {
        return ((AudioManager) Singletons.a("audio")).getStreamVolume(i);
    }

    private TelecomManager getTelecomManager() {
        if (Build.VERSION.SDK_INT >= 21) {
            return (TelecomManager) Singletons.a("telecom");
        }
        return null;
    }

    private ITelephony getTelephoneService() {
        ITelephony iTelephony = this.f15125d;
        if (iTelephony != null) {
            return iTelephony;
        }
        try {
            this.f15125d = (ITelephony) ReflectionUtils.a(this.e, "getITelephony", (Class<?>[]) null, new Object[0]);
        } catch (Throwable th) {
            CLog.b(PhoneManager.class, th, "PhoneManager constructor failed");
        }
        return this.f15125d;
    }

    private String getVoiceMailNumberAsGlobal() {
        String str;
        String str2 = Prefs.bU.get();
        String str3 = str2;
        if (StringUtils.a((CharSequence) str2)) {
            try {
                str = this.e.getVoiceMailNumber();
            } catch (SecurityException e) {
                CLog.a(PhoneManager.class, e);
                str = "";
            }
            str3 = str2;
            if (StringUtils.b((CharSequence) str)) {
                str3 = a(str).a();
                Prefs.bU.set(str3);
            }
        }
        return str3;
    }

    private Collection<Phone> getVoiceMailNumbers() {
        String str;
        if (this.f == null) {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add(get().a("*151"));
            try {
                str = this.e.getVoiceMailNumber();
            } catch (SecurityException e) {
                CLog.a(PhoneManager.class, e);
                str = "";
            }
            if (StringUtils.b((CharSequence) str)) {
                this.f.add(get().a(str));
            }
        }
        return this.f;
    }

    public static boolean i() {
        return CallAppApplication.get().getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    public static boolean isBluetoothAudioSCOActive() {
        return ((AudioManager) Singletons.a("audio")).isBluetoothScoOn();
    }

    public static boolean isMuteOn() {
        return ((AudioManager) Singletons.a("audio")).isMicrophoneMute();
    }

    public static void k() {
        Phone.setCountryRegionProvider(new MyCountryRegionProvider());
    }

    public static void setAudioMode(int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            CLog.a(PhoneManager.class, "Sending new Audio Mode: " + CallAudioState.audioRouteToString(i));
            TelecomAdapter.getInstance().setAudioRoute(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setRingerMode(int i) {
        try {
            ((AudioManager) Singletons.a("audio")).setRingerMode(i);
        } catch (Exception e) {
            CLog.a(PhoneManager.class, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setStreamVolume(int i, int i2) {
        try {
            ((AudioManager) Singletons.a("audio")).setStreamVolume(i, i2, 0);
        } catch (Exception e) {
            CLog.a(PhoneManager.class, e);
        }
    }

    public final Phone a(String str) {
        Phone phone = StringUtils.b((CharSequence) str) ? this.f15123a.get(str) : null;
        Phone phone2 = phone;
        if (phone == null) {
            Phone b2 = Phone.b(str);
            phone2 = b2;
            if (StringUtils.b((CharSequence) str)) {
                this.f15123a.put(str, b2);
                phone2 = b2;
            }
        }
        return phone2;
    }

    public final boolean a() {
        Throwable e;
        boolean z = true;
        if (!isDefaultPhoneApp() || Build.VERSION.SDK_INT < 23) {
            ITelephony telephoneService = getTelephoneService();
            if (telephoneService != null) {
                try {
                    z = telephoneService.endCall();
                    try {
                        CLog.a(PhoneManager.class, "hangup method returned: %s", Boolean.valueOf(z));
                    } catch (RemoteException e2) {
                        e = e2;
                        CLog.c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        CLog.c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (NoSuchMethodError e4) {
                        e = e4;
                        CLog.c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (SecurityException e5) {
                        e = e5;
                        CLog.c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    }
                } catch (RemoteException | IllegalArgumentException | NoSuchMethodError | SecurityException e6) {
                    e = e6;
                    z = false;
                }
            } else {
                z = false;
            }
        } else {
            Call conferenceManager = PhoneStateManager.get().getConferenceManager();
            if (PhoneStateManager.get().isAllCallsInConference() || (conferenceManager != null && conferenceManager.getState() == 4)) {
                TelecomAdapter.getInstance().b(conferenceManager);
            } else {
                List<CallData> allConnectingOrConnectedCalls = PhoneStateManager.get().getAllConnectingOrConnectedCalls();
                List<CallData> list = allConnectingOrConnectedCalls;
                if (g.a(allConnectingOrConnectedCalls)) {
                    list = PhoneStateManager.get().getAllHoldCalls();
                }
                z = false;
                for (CallData callData : list) {
                    CLog.a(PhoneManager.class, "hanging up ", callData.getNumber());
                    Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData);
                    if (telecomCallFromCallData != null) {
                        TelecomAdapter.getInstance().b(telecomCallFromCallData);
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public final boolean a(Phone phone) {
        if (phone != null) {
            return CollectionUtils.a(getVoiceMailNumbers(), phone);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (getAudioMode() == 8) goto L_0x0030;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
        r7 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (isSpeakerDisabled() != false) goto L_0x0035;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.phone.PhoneManager.b(android.content.Context):void");
    }

    public final boolean b() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        CallData backgroundCall = getBackgroundCall();
        if (backgroundCall == null) {
            CallData activeCall = getActiveCall();
            if (activeCall == null || activeCall.getState() != CallState.TALKING) {
                return false;
            }
            CLog.a(PhoneManager.class, "putting on hold ", activeCall.getNumber());
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(activeCall);
            if (telecomCallFromCallData == null) {
                return false;
            }
            TelecomAdapter.getInstance().c(telecomCallFromCallData);
            return true;
        } else if (!backgroundCall.getState().isOnHold()) {
            return false;
        } else {
            CLog.a(PhoneManager.class, "releasing from hold ", backgroundCall.getNumber());
            Call telecomCallFromCallData2 = PhoneStateManager.get().getTelecomCallFromCallData(backgroundCall);
            if (telecomCallFromCallData2 == null) {
                return false;
            }
            TelecomAdapter.getInstance().d(telecomCallFromCallData2);
            return false;
        }
    }

    public final boolean b(Call call) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            return ((TelecomManager) Singletons.a("telecom")).isVoiceMailNumber(call.getDetails().getAccountHandle(), a(call));
        } catch (SecurityException e) {
            CLog.a(PhoneManager.class, e);
            return false;
        }
    }

    public final boolean b(Phone phone) {
        if (phone == null) {
            return false;
        }
        try {
            String a2 = phone.a();
            if (a2 == null) {
                return false;
            }
            if (!a2.equals("*151")) {
                return a2.equals(getVoiceMailNumberAsGlobal());
            }
            return true;
        } catch (SecurityException e) {
            CLog.a(PhoneManager.class, e);
            return false;
        }
    }

    public final void d() {
        if (Build.VERSION.SDK_INT >= 23 && isDefaultPhoneApp()) {
            try {
                getTelecomManager().silenceRinger();
            } catch (SecurityException e) {
                CLog.a(PhoneManager.class, e);
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f15125d = null;
    }

    public final void e() {
        boolean isDefaultSystemPhoneApp = isDefaultSystemPhoneApp();
        Prefs.fz.set(Boolean.valueOf(isDefaultSystemPhoneApp));
        if (isDefaultSystemPhoneApp) {
            Prefs.fa.set(Boolean.TRUE);
        }
        CLog.a(PhoneManager.class, "is default app? ".concat(String.valueOf(isDefaultSystemPhoneApp)));
    }

    public final void g() {
        CallAppApplication.get().a(new Task() { // from class: com.callapp.contacts.manager.phone.PhoneManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (PhoneManager.this.isSpeakerOn() != PhoneManager.this.f15124b) {
                    PhoneManager phoneManager = PhoneManager.this;
                    phoneManager.setSpeakerphoneOn(phoneManager.f15124b);
                }
                ProximityManager.get().b();
            }
        }, 1000L);
    }

    public CallData getActiveCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(CallState.TALKING);
        }
        return null;
    }

    public CallData getActiveOrBackgroundCall() {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        CallData firstCallDataWithState = PhoneStateManager.get().getFirstCallDataWithState(CallState.TALKING);
        CallData callData = firstCallDataWithState;
        if (firstCallDataWithState == null) {
            callData = PhoneStateManager.get().getFirstCallDataWithState(CallState.ON_HOLD);
        }
        return callData;
    }

    public Collection<String> getAllPossibleCountryIsos() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String simCountryIso = getSimCountryIso();
        if (StringUtils.b((CharSequence) simCountryIso)) {
            linkedHashSet.add(simCountryIso.toUpperCase());
        }
        String str = Prefs.aP.get();
        if (StringUtils.b((CharSequence) str)) {
            linkedHashSet.add(str.toUpperCase());
        }
        String networkCountryIso = getNetworkCountryIso();
        if (StringUtils.b((CharSequence) networkCountryIso)) {
            linkedHashSet.add(networkCountryIso);
        }
        return linkedHashSet;
    }

    public CallData getBackgroundCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(CallState.ON_HOLD);
        }
        return null;
    }

    public String getCarrierName() {
        String str;
        try {
            str = this.e.getNetworkOperatorName();
        } catch (Exception e) {
            str = "";
        }
        return str;
    }

    public CallData getConnectingOrActiveCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(Arrays.asList(CallState.RINGING_OUTGOING, CallState.CONNECTING, CallState.TALKING, CallState.ON_HOLD));
        }
        return null;
    }

    public String getCountryIso() {
        synchronized (this.g) {
            if (StringUtils.a((CharSequence) this.h)) {
                String simCountryIso = getSimCountryIso();
                this.h = simCountryIso;
                if (StringUtils.a((CharSequence) simCountryIso)) {
                    this.h = Prefs.aP.get();
                }
                if (StringUtils.a((CharSequence) this.h)) {
                    try {
                        this.h = getNetworkCountryIso();
                    } catch (RuntimeException e) {
                        CLog.b(PhoneStateManager.class, e);
                    }
                }
                if (StringUtils.a((CharSequence) this.h)) {
                    this.h = "";
                }
                this.h = this.h.toUpperCase();
            }
        }
        return this.h;
    }

    public String getDeviceId() {
        return Settings.Secure.getString(CallAppApplication.get().getContentResolver(), "android_id");
    }

    public CallData getIncomingCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(CallState.RINGING_INCOMING);
        }
        return null;
    }

    public CallData getIncomingOrConnectingOrConnectedCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(Arrays.asList(CallState.RINGING_INCOMING, CallState.RINGING_OUTGOING, CallState.CONNECTING, CallState.TALKING, CallState.ON_HOLD));
        }
        return null;
    }

    public String getLine1Number() {
        try {
            return this.e.getLine1Number();
        } catch (SecurityException e) {
            CLog.a(PhoneManager.class, e);
            return "";
        }
    }

    public CallData getOutGoingCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(CallState.RINGING_OUTGOING);
        }
        return null;
    }

    public String getSimCountryIso() {
        String simCountryIso = this.e.getSimCountryIso();
        String str = simCountryIso;
        if (StringUtils.b((CharSequence) simCountryIso)) {
            str = new Locale("", simCountryIso).getCountry();
        }
        return StringUtils.b((CharSequence) str) ? str.toUpperCase() : null;
    }

    public int getSimStateForSubscriptionId(int i) {
        return this.e.createForSubscriptionId(i).getSimState();
    }

    public int getSupportedAudio() {
        return AudioModeProvider.get().getSupportedModes();
    }

    public CallData getTalkingCall() {
        if (Build.VERSION.SDK_INT >= 23) {
            return PhoneStateManager.get().getFirstCallDataWithState(CallState.TALKING);
        }
        return null;
    }

    public String getVoiceMailName() {
        try {
            return this.e.getVoiceMailAlphaTag();
        } catch (SecurityException e) {
            CLog.a(PhoneManager.class, e);
            return "";
        }
    }

    public final boolean h() {
        boolean z = false;
        if (PhoneStateManager.get().isAnyCallActive()) {
            ITelephony iTelephony = this.f15125d;
            r5 = true;
            boolean z2 = false;
            if (iTelephony != null) {
                try {
                    z2 = iTelephony.showCallScreenWithDialpad(true);
                } catch (RemoteException | IllegalArgumentException | NoSuchMethodError | SecurityException e) {
                    CLog.c(PhoneManager.class, e, "Failed to showDialPad");
                    z2 = false;
                }
            }
            z = z2;
            if (!z2) {
                z = z2;
                if (Build.VERSION.SDK_INT >= 21) {
                    TelecomManager telecomManager = (TelecomManager) Singletons.a("telecom");
                    if (telecomManager != null) {
                        try {
                            telecomManager.showInCallScreen(true);
                        } catch (IllegalArgumentException | NoSuchMethodError | SecurityException e2) {
                            CLog.c(PhoneManager.class, e2, "Failed to showDialPad");
                        }
                    }
                    return z2;
                }
            }
        }
        return z;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.e = (TelephonyManager) Singletons.a(Constants.EXTRA_PHONE_NUMBER);
        getTelephoneService();
    }

    public boolean isDefaultPhoneApp() {
        return Prefs.fz.get().booleanValue();
    }

    public boolean isDefaultSystemPhoneApp() {
        if (Build.VERSION.SDK_INT >= 23) {
            return StringUtils.b(CallAppApplication.get().getPackageName(), getTelecomManager().getDefaultDialerPackage());
        }
        return false;
    }

    public boolean isHeadsetConnected() {
        try {
            return isDefaultPhoneApp() ? AudioModeProvider.get().isHeadSetOn() : ((AudioManager) Singletons.a("audio")).isWiredHeadsetOn();
        } catch (Exception e) {
            CLog.a(PhoneManager.class, e);
            return false;
        }
    }

    public boolean isInDriveMode() {
        return BluetoothServiceV1.j.get() && Prefs.gU.get().booleanValue();
    }

    public boolean isInDriveModeButNotConnected() {
        return !BluetoothServiceV1.j.get() && Prefs.gU.get().booleanValue();
    }

    public boolean isInDriveModeIncoming() {
        return isInDriveMode() && Prefs.gV.get().booleanValue();
    }

    public boolean isInDriveModeOutgoing() {
        return isInDriveMode() && Prefs.gW.get().booleanValue();
    }

    public boolean isRinging() {
        return isDefaultPhoneApp() ? (getIncomingCall() == null && getOutGoingCall() == null) ? false : true : PhoneStateManager.get().isIncomingCallRingingState();
    }

    public boolean isSpeakerDisabled() {
        return getAudioMode() == 1 || getAudioMode() == 4;
    }

    public boolean isSpeakerOn() {
        try {
            return isDefaultPhoneApp() ? AudioModeProvider.get().isSpeakerOn() : ((AudioManager) Singletons.a("audio")).isSpeakerphoneOn();
        } catch (Exception e) {
            CLog.a(PhoneManager.class, e);
            return false;
        }
    }

    public boolean isSwappable() {
        return PhoneStateManager.get().getCallListSize() > 1 && !g.a(PhoneStateManager.get().getAllHoldCalls()) && PhoneStateManager.get().isAnyCallTalking();
    }

    public boolean isUsingBT() {
        return isDefaultPhoneApp() ? AudioModeProvider.get().isBluetoothOn() : BluetoothHeadsetConnectivityManager.isUsingBT();
    }

    public final void j() {
        synchronized (this.g) {
            this.h = null;
        }
    }

    public void setSpeakerphoneOn(boolean z) {
        try {
            if (isDefaultPhoneApp()) {
                setAudioMode(z ? 8 : 5);
            } else {
                ((AudioManager) Singletons.a("audio")).setSpeakerphoneOn(z);
            }
        } catch (Exception e) {
            CLog.a(PhoneManager.class, e);
        }
    }
}
