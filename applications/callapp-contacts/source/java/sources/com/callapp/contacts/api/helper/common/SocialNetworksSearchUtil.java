package com.callapp.contacts.api.helper.common;

import android.content.Intent;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.util.Activities;
import com.google.android.gms.auth.api.signin.C11729a;
import com.google.android.gms.common.api.ApiException;
import com.p488vk.api.sdk.C17601b;
import com.twitter.sdk.android.core.AbstractC17212f;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.identity.AbstractC17218a;
import com.twitter.sdk.android.core.identity.C17229h;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/SocialNetworksSearchUtil.class */
public class SocialNetworksSearchUtil {
    /* renamed from: a */
    public static SocialSearchResults m29232a(ContactData contactData, int i) {
        SocialSearchResults socialSearchResults;
        if (contactData != null) {
            if (i == 1) {
                socialSearchResults = contactData.getFacebookSearchResults();
            } else if (i == 4) {
                socialSearchResults = contactData.getTwitterSearchResults();
            } else if (i == 5) {
                socialSearchResults = contactData.getGooglePlusSearchResults();
            } else if (i == 6) {
                socialSearchResults = contactData.getFoursquareSearchResults();
            } else if (i == 7) {
                socialSearchResults = contactData.getInstagramSearchResults();
            } else if (i == 9) {
                socialSearchResults = contactData.getPinterestSearchResults();
            } else if (i == 10) {
                socialSearchResults = contactData.getVKSearchResults();
            }
            return socialSearchResults;
        }
        socialSearchResults = null;
        return socialSearchResults;
    }

    /* renamed from: a */
    public static boolean m29233a(int i, int i2, Intent intent) {
        if (i == 140) {
            TwitterHelper twitterHelper = TwitterHelper.get();
            if (i != C17288r.m5626a().f61075e.getRequestCode() || twitterHelper.f24888c == null) {
                return true;
            }
            C17229h c17229h = twitterHelper.f24888c;
            AbstractC17212f m5628c = C17282n.m5628c();
            m5628c.mo5714a("Twitter", "onActivityResult called with " + i + StringUtils.SPACE + i2);
            if (!c17229h.f60974b.m5703a()) {
                C17282n.m5628c().mo5713a("Twitter", "Authorize not in progress", null);
                return true;
            }
            AbstractC17218a abstractC17218a = c17229h.f60974b.f60962a.get();
            if (abstractC17218a == null || !abstractC17218a.m5704a(i, i2, intent)) {
                return true;
            }
            c17229h.f60974b.f60962a.set(null);
            return true;
        } else if (i == 282) {
            VKHelper vKHelper = VKHelper.get();
            if (i2 == 0) {
                vKHelper.mo26203c();
                return true;
            } else if (i == 282) {
                C17601b.m4890a(i, i2, intent, vKHelper.f24919c);
                return true;
            } else {
                vKHelper.mo26205b();
                return true;
            }
        } else if (i != 8000) {
            if (i != 64206 && i != 64213) {
                return false;
            }
            FacebookHelper.get().f24809c.mo23087a(i, i2, intent);
            return true;
        } else {
            GoogleHelper googleHelper = GoogleHelper.get();
            if (i2 == 0) {
                googleHelper.mo26203c();
                return true;
            }
            if (i == 8000) {
                try {
                    googleHelper.m29180a(C11729a.m19565a(intent).mo11485a(ApiException.class));
                    return true;
                } catch (ApiException e) {
                }
            }
            googleHelper.mo26205b();
            return true;
        }
    }

    public static String getSocialNetworkName(int i) {
        return i != 1 ? i != 4 ? i != 5 ? i != 6 ? i != 7 ? i != 9 ? i != 10 ? null : Activities.getString(2131888149) : Activities.getString(2131887405) : Activities.getString(2131887058) : Activities.getString(2131886922) : Activities.getString(2131886936) : Activities.getString(2131888099) : Activities.getString(2131886890);
    }
}
