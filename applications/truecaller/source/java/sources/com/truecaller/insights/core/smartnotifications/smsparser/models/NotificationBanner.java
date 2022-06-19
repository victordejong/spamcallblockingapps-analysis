package com.truecaller.insights.core.smartnotifications.smsparser.models;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018��2\u00020\u0001BS\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\b\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b+\u0010,J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\u000b\u0010\nJ\u0010\u0010\f\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\f\u0010\nJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJd\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u001b\u0010\nJ\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b\"\u0010\u0004R\u0019\u0010\u0015\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010#\u001a\u0004\b$\u0010\nR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010 \u001a\u0004\b%\u0010\u0004R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b'\u0010\u000fR\u0019\u0010\u0016\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010#\u001a\u0004\b(\u0010\nR\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010 \u001a\u0004\b)\u0010\u0004R\u0019\u0010\u0014\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010#\u001a\u0004\b*\u0010\n¨\u0006-"}, d2 = {"Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "", "component5", "()I", "component6", "component7", "", "component8", "()Ljava/lang/Long;", AnalyticsConstants.NAME, "image", "deeplink", "category", "maxShowCount", "shownCount", "clickedCount", "lastShownTime", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCategory", "getImage", "I", "getShownCount", "getName", "Ljava/lang/Long;", "getLastShownTime", "getClickedCount", "getDeeplink", "getMaxShowCount", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner.class */
public final class NotificationBanner {
    private final String category;
    private final int clickedCount;
    private final String deeplink;
    private final String image;
    private final Long lastShownTime;
    private final int maxShowCount;
    private final String name;
    private final int shownCount;

    public NotificationBanner(String str, String str2, String str3, String str4, int i, int i2, int i3, Long l) {
        C22128a.m8703I0(str, AnalyticsConstants.NAME, str2, "image", str4, "category");
        this.name = str;
        this.image = str2;
        this.deeplink = str3;
        this.category = str4;
        this.maxShowCount = i;
        this.shownCount = i2;
        this.clickedCount = i3;
        this.lastShownTime = l;
    }

    public /* synthetic */ NotificationBanner(String str, String str2, String str3, String str4, int i, int i2, int i3, Long l, int i4, f fVar) {
        this(str, str2, str3, str4, (i4 & 16) != 0 ? 2 : i, (i4 & 32) != 0 ? 0 : i2, (i4 & 64) != 0 ? 0 : i3, (i4 & 128) != 0 ? null : l);
    }

    public static /* synthetic */ NotificationBanner copy$default(NotificationBanner notificationBanner, String str, String str2, String str3, String str4, int i, int i2, int i3, Long l, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = notificationBanner.name;
        }
        if ((i4 & 2) != 0) {
            str2 = notificationBanner.image;
        }
        if ((i4 & 4) != 0) {
            str3 = notificationBanner.deeplink;
        }
        if ((i4 & 8) != 0) {
            str4 = notificationBanner.category;
        }
        if ((i4 & 16) != 0) {
            i = notificationBanner.maxShowCount;
        }
        if ((i4 & 32) != 0) {
            i2 = notificationBanner.shownCount;
        }
        if ((i4 & 64) != 0) {
            i3 = notificationBanner.clickedCount;
        }
        if ((i4 & 128) != 0) {
            l = notificationBanner.lastShownTime;
        }
        return notificationBanner.copy(str, str2, str3, str4, i, i2, i3, l);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.image;
    }

    public final String component3() {
        return this.deeplink;
    }

    public final String component4() {
        return this.category;
    }

    public final int component5() {
        return this.maxShowCount;
    }

    public final int component6() {
        return this.shownCount;
    }

    public final int component7() {
        return this.clickedCount;
    }

    public final Long component8() {
        return this.lastShownTime;
    }

    public final NotificationBanner copy(String str, String str2, String str3, String str4, int i, int i2, int i3, Long l) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "image");
        l.e(str4, "category");
        return new NotificationBanner(str, str2, str3, str4, i, i2, i3, l);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NotificationBanner)) {
                return false;
            }
            NotificationBanner notificationBanner = (NotificationBanner) obj;
            return l.a(this.name, notificationBanner.name) && l.a(this.image, notificationBanner.image) && l.a(this.deeplink, notificationBanner.deeplink) && l.a(this.category, notificationBanner.category) && this.maxShowCount == notificationBanner.maxShowCount && this.shownCount == notificationBanner.shownCount && this.clickedCount == notificationBanner.clickedCount && l.a(this.lastShownTime, notificationBanner.lastShownTime);
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final int getClickedCount() {
        return this.clickedCount;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getImage() {
        return this.image;
    }

    public final Long getLastShownTime() {
        return this.lastShownTime;
    }

    public final int getMaxShowCount() {
        return this.maxShowCount;
    }

    public final String getName() {
        return this.name;
    }

    public final int getShownCount() {
        return this.shownCount;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.image;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.deeplink;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.category;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        int i2 = this.maxShowCount;
        int i3 = this.shownCount;
        int i4 = this.clickedCount;
        Long l = this.lastShownTime;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NotificationBanner(name=");
        m8728C.append(this.name);
        m8728C.append(", image=");
        m8728C.append(this.image);
        m8728C.append(", deeplink=");
        m8728C.append(this.deeplink);
        m8728C.append(", category=");
        m8728C.append(this.category);
        m8728C.append(", maxShowCount=");
        m8728C.append(this.maxShowCount);
        m8728C.append(", shownCount=");
        m8728C.append(this.shownCount);
        m8728C.append(", clickedCount=");
        m8728C.append(this.clickedCount);
        m8728C.append(", lastShownTime=");
        m8728C.append(this.lastShownTime);
        m8728C.append(")");
        return m8728C.toString();
    }
}
