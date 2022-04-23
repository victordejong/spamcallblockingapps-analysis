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

    private static int a(long j, long j2) {
        return (int) ((j2 - j) / 86400000);
    }

    public static boolean a(Context context, ContactData contactData) {
        return a(context, contactData, false, false);
    }

    public static boolean a(Context context, ContactData contactData, boolean z) {
        return a(context, contactData, true, false);
    }

    public static boolean a(Context context, ContactData contactData, boolean z, boolean z2) {
        Intent rateIntent$7ec49240 = getRateIntent$7ec49240();
        if (rateIntent$7ec49240 == null) {
            CLog.a(AppRater.class, "No intent found to handle 5-star-rating for current store");
            return false;
        } else if (!a(contactData, z, z2)) {
            return false;
        } else {
            AnalyticsManager.get().a(Constants.RATE_CALL_APP, "Rate popup viewed", String.valueOf(Prefs.Y.b(1).get()));
            PopupManager.get().a(context, new RatePopup(rateIntent$7ec49240));
            return true;
        }
    }

    private static boolean a(ContactData contactData, boolean z, boolean z2) {
        UserRating userRating = (UserRating) Prefs.ak.get();
        if (z2) {
            Prefs.ab.set(Long.valueOf(System.currentTimeMillis()));
            return true;
        } else if (userRating == UserRating.RATED_5STAR) {
            return false;
        } else {
            if (LocaleUtils.isIndonesianUser() && DateUtils.a(Prefs.ah.get(), new Date(), TimeUnit.DAYS) <= 3) {
                return false;
            }
            if (userRating == UserRating.RATED_4STAR_OR_LESS && Prefs.ab.get().longValue() == 0) {
                Prefs.Z.set(30L);
                Prefs.ab.set(Long.valueOf(System.currentTimeMillis()));
            }
            if (!(contactData.hasAnyPhotoUrl() && contactData.isSure(ContactField.photoUrl) && StringUtils.b((CharSequence) contactData.getFullName()))) {
                return false;
            }
            if (contactData.isContactInDevice() && !z) {
                return false;
            }
            String a2 = contactData.getPhone().a();
            if (StringUtils.b(Prefs.aa.get(), a2)) {
                return false;
            }
            long longValue = Prefs.Z.a().get().longValue();
            Prefs.aa.set(a2);
            if (longValue == 16) {
                return true;
            }
            int i = (longValue > 30L ? 1 : (longValue == 30L ? 0 : -1));
            if (i == 0) {
                Prefs.ab.set(Long.valueOf(System.currentTimeMillis()));
                return true;
            } else if (i <= 0) {
                return false;
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (a(Prefs.ab.get().longValue(), currentTimeMillis) <= 22) {
                    return false;
                }
                Prefs.ab.set(Long.valueOf(currentTimeMillis));
                return true;
            }
        }
    }

    public static Intent getRateIntent$7ec49240() {
        if (Activities.getString(2131887752).equals("dev")) {
            return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.callapp.contacts"));
        }
        String string = Activities.getString(2131887753);
        if (StringUtils.a((CharSequence) string)) {
            return null;
        }
        return new Intent("android.intent.action.VIEW", Uri.parse(string));
    }

    public static boolean isRatedYet() {
        return Prefs.ak.get() != UserRating.NOT_YET;
    }
}
