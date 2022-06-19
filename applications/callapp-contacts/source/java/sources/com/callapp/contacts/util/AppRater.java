package com.callapp.contacts.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.RatePopup;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AppRater.class */
public class AppRater {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AppRater$UserRating.class */
    public enum UserRating {
        RATED_5STAR,
        RATED_4STAR_OR_LESS,
        NOT_YET
    }

    /* renamed from: a */
    private static int m27625a(long j, long j2) {
        return (int) ((j2 - j) / 86400000);
    }

    /* renamed from: a */
    public static boolean m27624a(Context context, ContactData contactData) {
        return m27622a(context, contactData, false, false);
    }

    /* renamed from: a */
    public static boolean m27623a(Context context, ContactData contactData, boolean z) {
        return m27622a(context, contactData, true, false);
    }

    /* renamed from: a */
    public static boolean m27622a(Context context, ContactData contactData, boolean z, boolean z2) {
        Intent rateIntent$7ec49240 = getRateIntent$7ec49240();
        if (rateIntent$7ec49240 == null) {
            CLog.m27611a(AppRater.class, "No intent found to handle 5-star-rating for current store");
            return false;
        } else if (!m27621a(contactData, z, z2)) {
            return false;
        } else {
            AnalyticsManager.get().m28449a(Constants.RATE_CALL_APP, "Rate popup viewed", String.valueOf(Prefs.f26221Y.m28169b(1).get()));
            PopupManager.get().m28209a(context, new RatePopup(rateIntent$7ec49240));
            return true;
        }
    }

    /* renamed from: a */
    private static boolean m27621a(ContactData contactData, boolean z, boolean z2) {
        UserRating userRating = (UserRating) Prefs.f26260ak.get();
        if (z2) {
            Prefs.f26251ab.set(Long.valueOf(System.currentTimeMillis()));
            return true;
        } else if (userRating == UserRating.RATED_5STAR) {
            return false;
        } else {
            if (LocaleUtils.isIndonesianUser() && DateUtils.m27124a(Prefs.f26257ah.get(), new Date(), TimeUnit.DAYS) <= 3) {
                return false;
            }
            if (userRating == UserRating.RATED_4STAR_OR_LESS && Prefs.f26251ab.get().longValue() == 0) {
                Prefs.f26222Z.set(30L);
                Prefs.f26251ab.set(Long.valueOf(System.currentTimeMillis()));
            }
            if (!(contactData.hasAnyPhotoUrl() && contactData.isSure(ContactField.photoUrl) && StringUtils.m26045b((CharSequence) contactData.getFullName()))) {
                return false;
            }
            if (contactData.isContactInDevice() && !z) {
                return false;
            }
            String m26101a = contactData.getPhone().m26101a();
            if (StringUtils.m26042b(Prefs.f26250aa.get(), m26101a)) {
                return false;
            }
            long longValue = Prefs.f26222Z.m28168a().get().longValue();
            Prefs.f26250aa.set(m26101a);
            if (longValue == 16) {
                return true;
            }
            int i = (longValue > 30L ? 1 : (longValue == 30L ? 0 : -1));
            if (i == 0) {
                Prefs.f26251ab.set(Long.valueOf(System.currentTimeMillis()));
                return true;
            } else if (i <= 0) {
                return false;
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (m27625a(Prefs.f26251ab.get().longValue(), currentTimeMillis) <= 22) {
                    return false;
                }
                Prefs.f26251ab.set(Long.valueOf(currentTimeMillis));
                return true;
            }
        }
    }

    public static Intent getRateIntent$7ec49240() {
        if (Activities.getString(2131887752).equals("dev")) {
            return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.callapp.contacts"));
        }
        String string = Activities.getString(2131887753);
        if (!StringUtils.m26059a((CharSequence) string)) {
            return new Intent("android.intent.action.VIEW", Uri.parse(string));
        }
        return null;
    }

    public static boolean isRatedYet() {
        return Prefs.f26260ak.get() != UserRating.NOT_YET;
    }
}
