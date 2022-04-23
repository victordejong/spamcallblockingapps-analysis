package com.callapp.contacts.api.helper.common;

import android.content.Intent;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.util.Activities;
import com.google.android.gms.common.api.ApiException;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.identity.a;
import com.twitter.sdk.android.core.identity.h;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import com.vk.api.sdk.b;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/SocialNetworksSearchUtil.class */
public class SocialNetworksSearchUtil {
    public static SocialSearchResults a(ContactData contactData, int i) {
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

    public static boolean a(int i, int i2, Intent intent) {
        if (i == 140) {
            TwitterHelper twitterHelper = TwitterHelper.get();
            if (i != r.a().e.getRequestCode() || twitterHelper.f14222c == null) {
                return true;
            }
            h hVar = twitterHelper.f14222c;
            f c2 = n.c();
            c2.a("Twitter", "onActivityResult called with " + i + StringUtils.SPACE + i2);
            if (!hVar.f35127b.a()) {
                n.c().a("Twitter", "Authorize not in progress", null);
                return true;
            }
            a aVar = hVar.f35127b.f35117a.get();
            if (aVar == null || !aVar.a(i, i2, intent)) {
                return true;
            }
            hVar.f35127b.f35117a.set(null);
            return true;
        } else if (i == 282) {
            VKHelper vKHelper = VKHelper.get();
            if (i2 == 0) {
                vKHelper.c();
                return true;
            } else if (i == 282) {
                b.a(i, i2, intent, vKHelper.f14248c);
                return true;
            } else {
                vKHelper.b();
                return true;
            }
        } else if (i == 8000) {
            GoogleHelper googleHelper = GoogleHelper.get();
            if (i2 == 0) {
                googleHelper.c();
                return true;
            }
            if (i == 8000) {
                try {
                    googleHelper.a(com.google.android.gms.auth.api.signin.a.a(intent).a(ApiException.class));
                    return true;
                } catch (ApiException e) {
                }
            }
            googleHelper.b();
            return true;
        } else if (i != 64206 && i != 64213) {
            return false;
        } else {
            FacebookHelper.get().f14151c.a(i, i2, intent);
            return true;
        }
    }

    public static String getSocialNetworkName(int i) {
        return i != 1 ? i != 4 ? i != 5 ? i != 6 ? i != 7 ? i != 9 ? i != 10 ? null : Activities.getString(2131888149) : Activities.getString(2131887405) : Activities.getString(2131887058) : Activities.getString(2131886922) : Activities.getString(2131886936) : Activities.getString(2131888099) : Activities.getString(2131886890);
    }
}
