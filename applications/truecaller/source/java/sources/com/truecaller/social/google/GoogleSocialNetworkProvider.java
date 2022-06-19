package com.truecaller.social.google;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.truecaller.social.SocialNetworkProvider;
import com.truecaller.social.SocialNetworkType;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p434b5.AbstractC8645b;
import p193e.p194a.p434b5.p436h.C8656a;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social/google/GoogleSocialNetworkProvider.class */
public class GoogleSocialNetworkProvider extends SocialNetworkProvider {
    private boolean hasSystemGoogleAccount(Context context) {
        boolean z = true;
        if (C26467a.m1801a(context, "android.permission.GET_ACCOUNTS") != 0) {
            return true;
        }
        Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.google");
        if (accountsByType == null || accountsByType.length <= 0) {
            z = false;
        }
        return z;
    }

    @Override // com.truecaller.social.SocialNetworkProvider
    public boolean isSupported(Context context) {
        return GoogleApiAvailability.f5673d.mo39062e(context, GoogleApiAvailabilityLight.f5674a) == 0 && hasSystemGoogleAccount(context);
    }

    @Override // com.truecaller.social.SocialNetworkProvider
    public AbstractC8645b network(Activity activity, Fragment fragment) {
        return new C8656a(activity);
    }

    @Override // com.truecaller.social.SocialNetworkProvider
    public SocialNetworkType type() {
        return SocialNetworkType.GOOGLE;
    }
}
