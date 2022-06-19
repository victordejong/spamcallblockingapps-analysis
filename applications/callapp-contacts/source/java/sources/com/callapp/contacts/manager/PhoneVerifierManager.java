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

    /* renamed from: a */
    public PhoneVerifierCallback f25760a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback.class */
    public interface PhoneVerifierCallback {
        /* renamed from: a */
        void mo26376a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types);
    }

    /* renamed from: a */
    public static void m28522a(Activity activity, boolean z) {
        Intent intent = new Intent(activity, PhoneLoginActivity.class);
        intent.putExtra("EXTRA_NEED_TO_SHOW_SOCIAL", z);
        Pair<PhoneAndCountryDeviceExtractor.ExtractedPhone, PhoneAndCountryDeviceExtractor.ExtractedCountry> phoneAndCountry = PhoneAndCountryDeviceExtractor.getPhoneAndCountry();
        if (phoneAndCountry.first != null && StringUtils.m26045b((CharSequence) ((PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first).getPhoneNumber())) {
            intent.putExtra("EXTRA_SUGGESTED_PHONE_NUMBER", PhoneManager.get().m28239a(((PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first).getPhoneNumber()));
        }
        activity.startActivityForResult(intent, 7453);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.f26229aF.isNull() != false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m28521a(com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor.ExtractedPhone r3, boolean r4) {
        /*
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26229aF
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r4
            if (r0 != 0) goto L13
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26229aF     // Catch: java.lang.Throwable -> L3d
            boolean r0 = r0.isNull()     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L34
        L13:
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26265ap     // Catch: java.lang.Throwable -> L3d java.lang.Throwable -> L3d
            r1 = r3
            java.lang.String r1 = r1.getAreaCode()     // Catch: java.lang.Throwable -> L3d
            r0.set(r1)     // Catch: java.lang.Throwable -> L3d
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26264ao     // Catch: java.lang.Throwable -> L3d
            r1 = r3
            java.lang.String r1 = r1.getPhoneNumber()     // Catch: java.lang.Throwable -> L3d
            r0.set(r1)     // Catch: java.lang.Throwable -> L3d
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26242aS     // Catch: java.lang.Throwable -> L3d
            r1 = r3
            boolean r1 = r1.isReliable()     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L3d
            r0.set(r1)     // Catch: java.lang.Throwable -> L3d
        L34:
            com.callapp.contacts.manager.UserProfileManager r0 = com.callapp.contacts.manager.UserProfileManager.get()     // Catch: java.lang.Throwable -> L3d java.lang.Throwable -> L3d
            r0.m28468a()     // Catch: java.lang.Throwable -> L3d
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            return
        L3d:
            r3 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.PhoneVerifierManager.m28521a(com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor$ExtractedPhone, boolean):void");
    }

    public static PhoneVerifierManager get() {
        return Singletons.get().getPhoneVerifierManager();
    }

    /* renamed from: a */
    public final void m28520a(PhoneVerifierCallback phoneVerifierCallback) {
        if (this.f25760a == phoneVerifierCallback) {
            this.f25760a = null;
        }
    }

    /* renamed from: a */
    public final void m28519a(String str, String str2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
        Phone m28239a = PhoneManager.get().m28239a(str);
        Prefs.f26229aF.set(str);
        m28521a(new PhoneAndCountryDeviceExtractor.ExtractedPhone(str, PhoneAndCountryDeviceExtractor.ExtractedPhoneSourcePriority.PHONE_NUMBER, m28239a.getNDC()), true);
        Prefs.f26239aP.set(m28239a.getRegionCode());
        PhoneVerifierCallback phoneVerifierCallback = this.f25760a;
        if (phoneVerifierCallback != null) {
            phoneVerifierCallback.mo26376a(m28239a, str2, authenticators_types);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
