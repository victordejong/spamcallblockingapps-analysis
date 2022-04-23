package com.callapp.contacts.manager;

import android.app.Activity;
import android.content.Intent;
import android.util.Pair;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor;
import com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/PhoneVerifierManager.class */
public class PhoneVerifierManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public PhoneVerifierCallback f14919a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback.class */
    public interface PhoneVerifierCallback {
        void a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types);
    }

    public static void a(Activity activity, boolean z) {
        Intent intent = new Intent(activity, PhoneLoginActivity.class);
        intent.putExtra("EXTRA_NEED_TO_SHOW_SOCIAL", z);
        Pair<PhoneAndCountryDeviceExtractor.ExtractedPhone, PhoneAndCountryDeviceExtractor.ExtractedCountry> phoneAndCountry = PhoneAndCountryDeviceExtractor.getPhoneAndCountry();
        if (phoneAndCountry.first != null && StringUtils.b((CharSequence) ((PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first).getPhoneNumber())) {
            intent.putExtra("EXTRA_SUGGESTED_PHONE_NUMBER", PhoneManager.get().a(((PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first).getPhoneNumber()));
        }
        activity.startActivityForResult(intent, 7453);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.aF.isNull() != false) goto L_0x0013;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor.ExtractedPhone r3, boolean r4) {
        /*
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.aF
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r4
            if (r0 != 0) goto L_0x0013
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.aF     // Catch: all -> 0x003d
            boolean r0 = r0.isNull()     // Catch: all -> 0x003d
            if (r0 == 0) goto L_0x0034
        L_0x0013:
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.ap     // Catch: all -> 0x003d, all -> 0x003d
            r1 = r3
            java.lang.String r1 = r1.getAreaCode()     // Catch: all -> 0x003d
            r0.set(r1)     // Catch: all -> 0x003d
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.ao     // Catch: all -> 0x003d
            r1 = r3
            java.lang.String r1 = r1.getPhoneNumber()     // Catch: all -> 0x003d
            r0.set(r1)     // Catch: all -> 0x003d
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.aS     // Catch: all -> 0x003d
            r1 = r3
            boolean r1 = r1.isReliable()     // Catch: all -> 0x003d
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: all -> 0x003d
            r0.set(r1)     // Catch: all -> 0x003d
        L_0x0034:
            com.callapp.contacts.manager.UserProfileManager r0 = com.callapp.contacts.manager.UserProfileManager.get()     // Catch: all -> 0x003d, all -> 0x003d
            r0.a()     // Catch: all -> 0x003d
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x003d
            return
        L_0x003d:
            r3 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x003d
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.PhoneVerifierManager.a(com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor$ExtractedPhone, boolean):void");
    }

    public static PhoneVerifierManager get() {
        return Singletons.get().getPhoneVerifierManager();
    }

    public final void a(PhoneVerifierCallback phoneVerifierCallback) {
        if (this.f14919a == phoneVerifierCallback) {
            this.f14919a = null;
        }
    }

    public final void a(String str, String str2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
        Phone a2 = PhoneManager.get().a(str);
        Prefs.aF.set(str);
        a(new PhoneAndCountryDeviceExtractor.ExtractedPhone(str, PhoneAndCountryDeviceExtractor.ExtractedPhoneSourcePriority.PHONE_NUMBER, a2.getNDC()), true);
        Prefs.aP.set(a2.getRegionCode());
        PhoneVerifierCallback phoneVerifierCallback = this.f14919a;
        if (phoneVerifierCallback != null) {
            phoneVerifierCallback.a(a2, str2, authenticators_types);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
