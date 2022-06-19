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
import androidx.p023b.C0434e;
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
import com.google.android.gms.common.util.C12103g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneManager.class */
public class PhoneManager implements ManagedLifecycle {

    /* renamed from: c */
    private static final String f26071c = Uri.encode("#");

    /* renamed from: b */
    boolean f26073b;

    /* renamed from: d */
    private ITelephony f26074d;

    /* renamed from: e */
    private TelephonyManager f26075e;

    /* renamed from: f */
    private Collection<Phone> f26076f;

    /* renamed from: h */
    private String f26078h;

    /* renamed from: g */
    private final Object f26077g = new Object();

    /* renamed from: a */
    public final C0434e<String, Phone> f26072a = new C0434e<>(2000);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneManager$MyCountryRegionProvider.class */
    public static class MyCountryRegionProvider implements CountryRegionProvider {
        private MyCountryRegionProvider() {
        }

        private String getAreaCode() {
            String str = Prefs.f26265ap.get();
            if (StringUtils.m26045b((CharSequence) str)) {
                return str;
            }
            return null;
        }

        @Override // com.callapp.framework.phone.CountryRegionProvider
        /* renamed from: a */
        public final String mo26103a() {
            return PhoneManager.get().getCountryIso();
        }

        @Override // com.callapp.framework.phone.CountryRegionProvider
        /* renamed from: b */
        public final String mo26102b() {
            return getAreaCode();
        }
    }

    /* renamed from: a */
    public static String m28244a(Call call) {
        if (Build.VERSION.SDK_INT < 23 || call == null) {
            return null;
        }
        if (call.getDetails().getGatewayInfo() != null) {
            return call.getDetails().getGatewayInfo().getOriginalAddress().getSchemeSpecificPart();
        }
        if (m28229c(call) != null) {
            return m28229c(call).getSchemeSpecificPart();
        }
        return null;
    }

    /* renamed from: a */
    public static void m28249a(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            TelecomAdapter.getInstance();
            TelecomAdapter.m28965a(context);
        }
    }

    /* renamed from: a */
    public static void m28248a(final Context context, final Phone phone, long j, String str, final String str2, final String str3, final boolean z, final ActionDoneListener actionDoneListener) {
        AdapterText.AdapterEvents adapterEvents = new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.phone.PhoneManager.4
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                PhoneManager.m28235b(context, phone, str2, str3, i, z, actionDoneListener);
            }
        };
        if (!SimManager.get().isDualSimAvailable()) {
            m28235b(context, phone, str2, str3, SimManager.SimId.ASK.getSimId(), z, actionDoneListener);
            return;
        }
        SimManager.SimId m28907a = PreferredSimManager.m28907a(j, phone);
        if (m28907a != null) {
            m28247a(context, phone, m28907a, str, str2, str3, z, actionDoneListener, adapterEvents);
        } else {
            m28247a(context, phone, (SimManager.SimId) Prefs.f26294bR.get(), str, str2, str3, z, actionDoneListener, adapterEvents);
        }
    }

    /* renamed from: a */
    private static void m28247a(Context context, Phone phone, SimManager.SimId simId, String str, String str2, String str3, boolean z, ActionDoneListener actionDoneListener, AdapterText.AdapterEvents adapterEvents) {
        if (simId != SimManager.SimId.ASK) {
            m28235b(context, phone, str2, str3, simId.simId, z, actionDoneListener);
            return;
        }
        if (StringUtils.m26059a((CharSequence) str)) {
            str = phone.m26087e();
        }
        SimManager.m28158a(context, str, adapterEvents);
    }

    /* renamed from: a */
    public static void m28242a(CallData callData) {
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT < 23 || callData == null || (telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData)) == null) {
            return;
        }
        TelecomAdapter.getInstance().m28962b(telecomCallFromCallData);
    }

    /* renamed from: a */
    public static void m28238a(boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            CLog.m27611a(PhoneManager.class, "turning on mute: ".concat(String.valueOf(z)));
            TelecomAdapter telecomAdapter = TelecomAdapter.getInstance();
            if (telecomAdapter.f25210b != null) {
                telecomAdapter.f25210b.setMuted(z);
            } else {
                CLog.m27606a(TelecomAdapter.f25208a);
            }
        }
    }

    /* renamed from: a */
    private static boolean m28246a(Context context, Phone phone, String str, String str2, int i, boolean z) {
        if (z) {
            if (!Prefs.f26505fQ.get().booleanValue()) {
                Prefs.f26505fQ.set(Boolean.TRUE);
                AnalyticsManager.get().m28450a(Constants.INCOGNITO, "User made first incognito call");
            }
            AnalyticsManager.get().mo28446a(Constants.INCOGNITO, "User made incognito call", "", 0.0d);
            IncognitoCallManager.get().markIncognito(phone);
        }
        String replace = phone.getRawNumber().replace("#", f26071c);
        if (!m28221i()) {
            if (!m28225e(context)) {
                PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131887707), Activities.getString(2131887706), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.phone.PhoneManager.5
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                    }
                }, null));
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("skype:" + replace + "?call"));
            intent.setComponent(ComponentName.unflattenFromString(Constants.SKYPE_INTENT_COMPONENT_NAME));
            if (!Activities.m27672a(intent)) {
                if (StringUtils.m26045b((CharSequence) str)) {
                    AnalyticsManager.get().m28449a(str, str2, Constants.FAILED);
                }
                m28227d(context);
                return false;
            }
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            if (StringUtils.m26045b((CharSequence) str)) {
                AnalyticsManager.get().m28449a(str, str2, Constants.CLICK);
            }
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            try {
                Activities.m27685a(context, intent);
                return true;
            } catch (SecurityException e) {
                CLog.m27609a(PhoneManager.class, e);
                m28227d(context);
                return false;
            }
        }
        Uri parse = Uri.parse("tel:".concat(String.valueOf(replace)));
        if (Build.VERSION.SDK_INT >= 26) {
            TelecomManager telecomManager = (TelecomManager) Singletons.m28493a("telecom");
            PhoneAccountHandle phoneAccountHandle = SimManager.get().getPhoneAccountHandle(i);
            if (phoneAccountHandle != null && telecomManager.isOutgoingCallPermitted(phoneAccountHandle)) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
                    telecomManager.placeCall(parse, bundle);
                    return true;
                } catch (Exception e2) {
                    CLog.m27596b(PhoneManager.class, e2);
                }
            }
        }
        Intent intent2 = new Intent("android.intent.action.CALL", parse);
        Intent intent3 = intent2;
        if (!Activities.m27672a(intent2)) {
            intent3 = new Intent("android.intent.action.DIAL", parse);
        }
        Singletons.get().getSimManager().m28148a(phone, intent3, i);
        if (!Activities.m27672a(intent3)) {
            if (StringUtils.m26045b((CharSequence) str)) {
                AnalyticsManager.get().m28449a(str, str2, Constants.FAILED);
            }
            m28227d(context);
            return false;
        }
        if (!(context instanceof Activity)) {
            intent3.setFlags(268435456);
        }
        intent3.addFlags(Activities.getIntentFlagForNewDocument());
        try {
            Activities.m27685a(context, intent3);
            return true;
        } catch (SecurityException e3) {
            CLog.m27609a(PhoneManager.class, e3);
            m28227d(context);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m28241a(CallData callData, PhoneStateManager.CallActionSource callActionSource) {
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData);
        if (telecomCallFromCallData != null) {
            PhoneStateManager.get().setCallActionSource(callActionSource);
            TelecomAdapter.getInstance();
            if (telecomCallFromCallData == null) {
                String str = TelecomAdapter.f25208a;
                new StringBuilder("error merge, call not in call list ").append(TelecomAdapter.m28964a(telecomCallFromCallData));
                CLog.m27606a(str);
                return true;
            }
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
        }
        return false;
    }

    /* renamed from: b */
    public static void m28235b(Context context, Phone phone, String str, String str2, int i, boolean z, ActionDoneListener actionDoneListener) {
        if (actionDoneListener != null) {
            actionDoneListener.mo27472a();
        }
        boolean m28246a = m28246a(context, phone, str, str2, i, z);
        if (actionDoneListener != null) {
            actionDoneListener.mo27471a(m28246a);
        }
    }

    /* renamed from: b */
    public static void m28233b(CallData callData, PhoneStateManager.CallActionSource callActionSource) {
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT < 23 || (telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData)) == null) {
            return;
        }
        PhoneStateManager.get().setCallActionSource(callActionSource);
        CLog.m27611a(PhoneManager.class, "Putting the call on hold: " + callData.getNumber());
        TelecomAdapter.getInstance().m28961c(telecomCallFromCallData);
    }

    /* renamed from: c */
    private static Uri m28229c(Call call) {
        if (Build.VERSION.SDK_INT < 23 || call == null) {
            return null;
        }
        return call.getDetails().getHandle();
    }

    /* renamed from: c */
    public static boolean m28231c() {
        if (Build.VERSION.SDK_INT >= 23) {
            CLog.m27611a(PhoneManager.class, "answer Incoming Call");
            CallData firstCallDataWithState = PhoneStateManager.get().getFirstCallDataWithState(CallState.RINGING_INCOMING);
            CLog.m27611a(PhoneManager.class, "incomingCall: ".concat(String.valueOf(firstCallDataWithState)));
            if (firstCallDataWithState == null) {
                return true;
            }
            if (PhoneStateManager.get().getStateBeforeMerge()) {
                PhoneStateManager.get().setStateBeforeMerge(false);
                CLog.m27611a(PhoneStateManager.class, "cannot add call. hang hold call and continue");
                Call conferenceManager = PhoneStateManager.get().getConferenceManager();
                Call call = conferenceManager;
                if (conferenceManager == null) {
                    call = PhoneStateManager.get().getTelecomCallFromCallData(get().getBackgroundCall());
                }
                if (call != null) {
                    CLog.m27611a(PhoneStateManager.class, "hang hold call");
                    TelecomAdapter.getInstance().m28962b(call);
                } else {
                    CLog.m27611a(PhoneStateManager.class, "cannot find hold call");
                }
            }
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(firstCallDataWithState);
            if (telecomCallFromCallData == null) {
                return true;
            }
            CLog.m27611a(PhoneManager.class, "Video state = " + telecomCallFromCallData.getDetails().getVideoState());
            TelecomAdapter.getInstance();
            int videoState = telecomCallFromCallData.getDetails().getVideoState();
            if (telecomCallFromCallData != null) {
                telecomCallFromCallData.answer(videoState);
                return true;
            }
            String str = TelecomAdapter.f25208a;
            new StringBuilder("error answerCall, call not in call list: ").append(TelecomAdapter.m28964a(telecomCallFromCallData));
            CLog.m27606a(str);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m28230c(final Context context) {
        final Intent intent = new Intent("android.intent.action.CALL", Uri.fromParts("voicemail", "", null));
        intent.setFlags(268435456);
        if (!Activities.m27672a(intent)) {
            return false;
        }
        SimManager.m28159a(context, Activities.getString(2131888153), (SimManager.SimId) null, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.phone.PhoneManager.3
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                if (i != SimManager.SimId.ASK.getSimId()) {
                    Singletons.get().getSimManager().m28148a((Phone) null, intent, i);
                }
                Activities.m27685a(context, intent);
            }
        });
        return true;
    }

    /* renamed from: d */
    private static void m28227d(Context context) {
        PopupManager.get().m28209a(context, new DialogSimpleMessage(null, Activities.getString(2131886833), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.phone.PhoneManager.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, null));
    }

    /* renamed from: e */
    private static boolean m28225e(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.skype.raider", 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m28224f() {
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
        String str = TelecomAdapter.f25208a;
        new StringBuilder("error rejectCall, call not in call list: ").append(TelecomAdapter.m28964a(telecomCallFromCallData));
        CLog.m27606a(str);
        return true;
    }

    public static PhoneManager get() {
        return Singletons.get().getPhoneManager();
    }

    public static int getAudioMode() {
        return AudioModeProvider.get().getAudioMode();
    }

    public static int getCurrentAudioMode() {
        return ((AudioManager) Singletons.m28493a("audio")).getMode();
    }

    private String getNetworkCountryIso() {
        try {
            String networkCountryIso = this.f26075e.getNetworkCountryIso();
            if (!StringUtils.m26045b((CharSequence) networkCountryIso)) {
                return null;
            }
            String country = new Locale("", networkCountryIso).getCountry();
            if (!StringUtils.m26045b((CharSequence) country)) {
                return null;
            }
            return country.toUpperCase();
        } catch (RuntimeException e) {
            CLog.m27596b(PhoneStateManager.class, e);
            return null;
        }
    }

    public static int getRingerMode() {
        return ((AudioManager) Singletons.m28493a("audio")).getRingerMode();
    }

    public static int getStreamVolume(int i) {
        return ((AudioManager) Singletons.m28493a("audio")).getStreamVolume(i);
    }

    private TelecomManager getTelecomManager() {
        if (Build.VERSION.SDK_INT >= 21) {
            return (TelecomManager) Singletons.m28493a("telecom");
        }
        return null;
    }

    private ITelephony getTelephoneService() {
        ITelephony iTelephony = this.f26074d;
        if (iTelephony != null) {
            return iTelephony;
        }
        try {
            this.f26074d = (ITelephony) ReflectionUtils.m27419a(this.f26075e, "getITelephony", (Class<?>[]) null, new Object[0]);
        } catch (Throwable th) {
            CLog.m27595b(PhoneManager.class, th, "PhoneManager constructor failed");
        }
        return this.f26074d;
    }

    private String getVoiceMailNumberAsGlobal() {
        String str;
        String str2 = Prefs.f26297bU.get();
        String str3 = str2;
        if (StringUtils.m26059a((CharSequence) str2)) {
            try {
                str = this.f26075e.getVoiceMailNumber();
            } catch (SecurityException e) {
                CLog.m27609a(PhoneManager.class, e);
                str = "";
            }
            str3 = str2;
            if (StringUtils.m26045b((CharSequence) str)) {
                str3 = m28239a(str).m26101a();
                Prefs.f26297bU.set(str3);
            }
        }
        return str3;
    }

    private Collection<Phone> getVoiceMailNumbers() {
        String str;
        if (this.f26076f == null) {
            ArrayList arrayList = new ArrayList();
            this.f26076f = arrayList;
            arrayList.add(get().m28239a("*151"));
            try {
                str = this.f26075e.getVoiceMailNumber();
            } catch (SecurityException e) {
                CLog.m27609a(PhoneManager.class, e);
                str = "";
            }
            if (StringUtils.m26045b((CharSequence) str)) {
                this.f26076f.add(get().m28239a(str));
            }
        }
        return this.f26076f;
    }

    /* renamed from: i */
    public static boolean m28221i() {
        return CallAppApplication.get().getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    public static boolean isBluetoothAudioSCOActive() {
        return ((AudioManager) Singletons.m28493a("audio")).isBluetoothScoOn();
    }

    public static boolean isMuteOn() {
        return ((AudioManager) Singletons.m28493a("audio")).isMicrophoneMute();
    }

    /* renamed from: k */
    public static void m28219k() {
        Phone.setCountryRegionProvider(new MyCountryRegionProvider());
    }

    public static void setAudioMode(int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            CLog.m27611a(PhoneManager.class, "Sending new Audio Mode: " + CallAudioState.audioRouteToString(i));
            TelecomAdapter.getInstance().setAudioRoute(i);
        }
    }

    public static void setRingerMode(int i) {
        try {
            ((AudioManager) Singletons.m28493a("audio")).setRingerMode(i);
        } catch (Exception e) {
            CLog.m27609a(PhoneManager.class, e);
        }
    }

    public static void setStreamVolume(int i, int i2) {
        try {
            ((AudioManager) Singletons.m28493a("audio")).setStreamVolume(i, i2, 0);
        } catch (Exception e) {
            CLog.m27609a(PhoneManager.class, e);
        }
    }

    /* renamed from: a */
    public final Phone m28239a(String str) {
        Phone phone = StringUtils.m26045b((CharSequence) str) ? this.f26072a.get(str) : null;
        Phone phone2 = phone;
        if (phone == null) {
            Phone m26093b = Phone.m26093b(str);
            phone2 = m26093b;
            if (StringUtils.m26045b((CharSequence) str)) {
                this.f26072a.put(str, m26093b);
                phone2 = m26093b;
            }
        }
        return phone2;
    }

    /* renamed from: a */
    public final boolean m28250a() {
        Throwable e;
        boolean z = true;
        if (!isDefaultPhoneApp() || Build.VERSION.SDK_INT < 23) {
            ITelephony telephoneService = getTelephoneService();
            if (telephoneService != null) {
                try {
                    z = telephoneService.endCall();
                    try {
                        CLog.m27610a(PhoneManager.class, "hangup method returned: %s", Boolean.valueOf(z));
                    } catch (RemoteException e2) {
                        e = e2;
                        CLog.m27587c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        CLog.m27587c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (NoSuchMethodError e4) {
                        e = e4;
                        CLog.m27587c(PhoneManager.class, e, "Failed to call hangup method");
                        return z;
                    } catch (SecurityException e5) {
                        e = e5;
                        CLog.m27587c(PhoneManager.class, e, "Failed to call hangup method");
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
                TelecomAdapter.getInstance().m28962b(conferenceManager);
            } else {
                List<CallData> allConnectingOrConnectedCalls = PhoneStateManager.get().getAllConnectingOrConnectedCalls();
                List<CallData> list = allConnectingOrConnectedCalls;
                if (C12103g.m19041a(allConnectingOrConnectedCalls)) {
                    list = PhoneStateManager.get().getAllHoldCalls();
                }
                z = false;
                for (CallData callData : list) {
                    CLog.m27610a(PhoneManager.class, "hanging up ", callData.getNumber());
                    Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData);
                    if (telecomCallFromCallData != null) {
                        TelecomAdapter.getInstance().m28962b(telecomCallFromCallData);
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m28240a(Phone phone) {
        if (phone != null) {
            return CollectionUtils.m26073a(getVoiceMailNumbers(), phone);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (getAudioMode() == 8) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
        r7 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (isSpeakerDisabled() != false) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28236b(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.phone.PhoneManager.m28236b(android.content.Context):void");
    }

    /* renamed from: b */
    public final boolean m28237b() {
        if (Build.VERSION.SDK_INT >= 23) {
            CallData backgroundCall = getBackgroundCall();
            if (backgroundCall != null) {
                if (!backgroundCall.getState().isOnHold()) {
                    return false;
                }
                CLog.m27610a(PhoneManager.class, "releasing from hold ", backgroundCall.getNumber());
                Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(backgroundCall);
                if (telecomCallFromCallData == null) {
                    return false;
                }
                TelecomAdapter.getInstance().m28960d(telecomCallFromCallData);
                return false;
            }
            CallData activeCall = getActiveCall();
            if (activeCall == null || activeCall.getState() != CallState.TALKING) {
                return false;
            }
            CLog.m27610a(PhoneManager.class, "putting on hold ", activeCall.getNumber());
            Call telecomCallFromCallData2 = PhoneStateManager.get().getTelecomCallFromCallData(activeCall);
            if (telecomCallFromCallData2 == null) {
                return false;
            }
            TelecomAdapter.getInstance().m28961c(telecomCallFromCallData2);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m28234b(Call call) {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return ((TelecomManager) Singletons.m28493a("telecom")).isVoiceMailNumber(call.getDetails().getAccountHandle(), m28244a(call));
            } catch (SecurityException e) {
                CLog.m27609a(PhoneManager.class, e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m28232b(Phone phone) {
        if (phone != null) {
            try {
                String m26101a = phone.m26101a();
                if (m26101a == null) {
                    return false;
                }
                if (m26101a.equals("*151")) {
                    return true;
                }
                return m26101a.equals(getVoiceMailNumberAsGlobal());
            } catch (SecurityException e) {
                CLog.m27609a(PhoneManager.class, e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final void m28228d() {
        if (Build.VERSION.SDK_INT < 23 || !isDefaultPhoneApp()) {
            return;
        }
        try {
            getTelecomManager().silenceRinger();
        } catch (SecurityException e) {
            CLog.m27609a(PhoneManager.class, e);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f26074d = null;
    }

    /* renamed from: e */
    public final void m28226e() {
        boolean isDefaultSystemPhoneApp = isDefaultSystemPhoneApp();
        Prefs.f26540fz.set(Boolean.valueOf(isDefaultSystemPhoneApp));
        if (isDefaultSystemPhoneApp) {
            Prefs.f26515fa.set(Boolean.TRUE);
        }
        CLog.m27611a(PhoneManager.class, "is default app? ".concat(String.valueOf(isDefaultSystemPhoneApp)));
    }

    /* renamed from: g */
    public final void m28223g() {
        CallAppApplication.get().m31869a(new Task() { // from class: com.callapp.contacts.manager.phone.PhoneManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (PhoneManager.this.isSpeakerOn() != PhoneManager.this.f26073b) {
                    PhoneManager phoneManager = PhoneManager.this;
                    phoneManager.setSpeakerphoneOn(phoneManager.f26073b);
                }
                ProximityManager.get().m28509b();
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
        if (Build.VERSION.SDK_INT >= 23) {
            CallData firstCallDataWithState = PhoneStateManager.get().getFirstCallDataWithState(CallState.TALKING);
            CallData callData = firstCallDataWithState;
            if (firstCallDataWithState == null) {
                callData = PhoneStateManager.get().getFirstCallDataWithState(CallState.ON_HOLD);
            }
            return callData;
        }
        return null;
    }

    public Collection<String> getAllPossibleCountryIsos() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String simCountryIso = getSimCountryIso();
        if (StringUtils.m26045b((CharSequence) simCountryIso)) {
            linkedHashSet.add(simCountryIso.toUpperCase());
        }
        String str = Prefs.f26239aP.get();
        if (StringUtils.m26045b((CharSequence) str)) {
            linkedHashSet.add(str.toUpperCase());
        }
        String networkCountryIso = getNetworkCountryIso();
        if (StringUtils.m26045b((CharSequence) networkCountryIso)) {
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
            str = this.f26075e.getNetworkOperatorName();
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
        synchronized (this.f26077g) {
            if (StringUtils.m26059a((CharSequence) this.f26078h)) {
                String simCountryIso = getSimCountryIso();
                this.f26078h = simCountryIso;
                if (StringUtils.m26059a((CharSequence) simCountryIso)) {
                    this.f26078h = Prefs.f26239aP.get();
                }
                if (StringUtils.m26059a((CharSequence) this.f26078h)) {
                    try {
                        this.f26078h = getNetworkCountryIso();
                    } catch (RuntimeException e) {
                        CLog.m27596b(PhoneStateManager.class, e);
                    }
                }
                if (StringUtils.m26059a((CharSequence) this.f26078h)) {
                    this.f26078h = "";
                }
                this.f26078h = this.f26078h.toUpperCase();
            }
        }
        return this.f26078h;
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
            return this.f26075e.getLine1Number();
        } catch (SecurityException e) {
            CLog.m27609a(PhoneManager.class, e);
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
        String simCountryIso = this.f26075e.getSimCountryIso();
        String str = simCountryIso;
        if (StringUtils.m26045b((CharSequence) simCountryIso)) {
            str = new Locale("", simCountryIso).getCountry();
        }
        return StringUtils.m26045b((CharSequence) str) ? str.toUpperCase() : null;
    }

    public int getSimStateForSubscriptionId(int i) {
        return this.f26075e.createForSubscriptionId(i).getSimState();
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
            return this.f26075e.getVoiceMailAlphaTag();
        } catch (SecurityException e) {
            CLog.m27609a(PhoneManager.class, e);
            return "";
        }
    }

    /* renamed from: h */
    public final boolean m28222h() {
        boolean z = false;
        if (PhoneStateManager.get().isAnyCallActive()) {
            ITelephony iTelephony = this.f26074d;
            boolean z2 = false;
            if (iTelephony != null) {
                try {
                    z2 = iTelephony.showCallScreenWithDialpad(true);
                } catch (RemoteException | IllegalArgumentException | NoSuchMethodError | SecurityException e) {
                    CLog.m27587c(PhoneManager.class, e, "Failed to showDialPad");
                    z2 = false;
                }
            }
            z = z2;
            if (!z2) {
                z = z2;
                if (Build.VERSION.SDK_INT >= 21) {
                    TelecomManager telecomManager = (TelecomManager) Singletons.m28493a("telecom");
                    if (telecomManager != null) {
                        try {
                            telecomManager.showInCallScreen(true);
                            z2 = true;
                        } catch (IllegalArgumentException | NoSuchMethodError | SecurityException e2) {
                            CLog.m27587c(PhoneManager.class, e2, "Failed to showDialPad");
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
        this.f26075e = (TelephonyManager) Singletons.m28493a(Constants.EXTRA_PHONE_NUMBER);
        getTelephoneService();
    }

    public boolean isDefaultPhoneApp() {
        return Prefs.f26540fz.get().booleanValue();
    }

    public boolean isDefaultSystemPhoneApp() {
        if (Build.VERSION.SDK_INT >= 23) {
            return StringUtils.m26042b(CallAppApplication.get().getPackageName(), getTelecomManager().getDefaultDialerPackage());
        }
        return false;
    }

    public boolean isHeadsetConnected() {
        try {
            return isDefaultPhoneApp() ? AudioModeProvider.get().isHeadSetOn() : ((AudioManager) Singletons.m28493a("audio")).isWiredHeadsetOn();
        } catch (Exception e) {
            CLog.m27609a(PhoneManager.class, e);
            return false;
        }
    }

    public boolean isInDriveMode() {
        return BluetoothServiceV1.f27580j.get() && Prefs.f26562gU.get().booleanValue();
    }

    public boolean isInDriveModeButNotConnected() {
        return !BluetoothServiceV1.f27580j.get() && Prefs.f26562gU.get().booleanValue();
    }

    public boolean isInDriveModeIncoming() {
        return isInDriveMode() && Prefs.f26563gV.get().booleanValue();
    }

    public boolean isInDriveModeOutgoing() {
        return isInDriveMode() && Prefs.f26564gW.get().booleanValue();
    }

    public boolean isRinging() {
        return isDefaultPhoneApp() ? (getIncomingCall() == null && getOutGoingCall() == null) ? false : true : PhoneStateManager.get().isIncomingCallRingingState();
    }

    public boolean isSpeakerDisabled() {
        return getAudioMode() == 1 || getAudioMode() == 4;
    }

    public boolean isSpeakerOn() {
        try {
            return isDefaultPhoneApp() ? AudioModeProvider.get().isSpeakerOn() : ((AudioManager) Singletons.m28493a("audio")).isSpeakerphoneOn();
        } catch (Exception e) {
            CLog.m27609a(PhoneManager.class, e);
            return false;
        }
    }

    public boolean isSwappable() {
        return PhoneStateManager.get().getCallListSize() > 1 && !C12103g.m19041a(PhoneStateManager.get().getAllHoldCalls()) && PhoneStateManager.get().isAnyCallTalking();
    }

    public boolean isUsingBT() {
        return isDefaultPhoneApp() ? AudioModeProvider.get().isBluetoothOn() : BluetoothHeadsetConnectivityManager.isUsingBT();
    }

    /* renamed from: j */
    public final void m28220j() {
        synchronized (this.f26077g) {
            this.f26078h = null;
        }
    }

    public void setSpeakerphoneOn(boolean z) {
        try {
            if (isDefaultPhoneApp()) {
                setAudioMode(z ? 8 : 5);
            } else {
                ((AudioManager) Singletons.m28493a("audio")).setSpeakerphoneOn(z);
            }
        } catch (Exception e) {
            CLog.m27609a(PhoneManager.class, e);
        }
    }
}
