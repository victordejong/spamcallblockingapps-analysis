package com.truecaller.videocallerid.utils.analytics;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0087\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BANNER", "WHATS_NEW", "FACS", "PACSCall", "PACSExpand", "SETTINGS", "PROFILE", "FAVOURITE_CONTACTS", "NOTIFICATION", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/OnboardingContext.class */
public enum OnboardingContext {
    BANNER("Banner"),
    WHATS_NEW("WhatsNew"),
    FACS("FACS"),
    PACSCall("PACSCall"),
    PACSExpand("PACSExpand"),
    SETTINGS("Settings"),
    PROFILE("Profile"),
    FAVOURITE_CONTACTS("FavouriteContacts"),
    NOTIFICATION("Notification");
    
    private final String value;

    OnboardingContext(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
