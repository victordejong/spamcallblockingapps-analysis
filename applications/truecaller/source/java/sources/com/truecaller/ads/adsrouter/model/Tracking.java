package com.truecaller.ads.adsrouter.model;

import androidx.annotation.Keep;
import com.facebook.ads.AdSDKNotificationListener;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001BO\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b \u0010!J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0005J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0005J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0005J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0005J`\u0010\u000f\u001a\u00020��2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\u0005R\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001c\u0010\u0005R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001d\u0010\u0005R\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001e\u0010\u0005R\"\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u001a\u001a\u0004\b\u001f\u0010\u0005¨\u0006\""}, d2 = {"Lcom/truecaller/ads/adsrouter/model/Tracking;", "", "", "", "component1", "()Ljava/util/List;", "component2", "component3", "component4", "component5", "click", AdSDKNotificationListener.IMPRESSION_EVENT, "viewImpression", "videoImpression", "thankYouPixels", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/truecaller/ads/adsrouter/model/Tracking;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getThankYouPixels", "getImpression", "getVideoImpression", "getViewImpression", "getClick", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/adsrouter/model/Tracking.class */
public final class Tracking {
    @b("click")
    private final List<String> click;
    @b(AdSDKNotificationListener.IMPRESSION_EVENT)
    private final List<String> impression;
    @b("thankYouPixels")
    private final List<String> thankYouPixels;
    @b("videoImpression")
    private final List<String> videoImpression;
    @b("viewImpression")
    private final List<String> viewImpression;

    public Tracking(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        l.e(list, "click");
        l.e(list2, AdSDKNotificationListener.IMPRESSION_EVENT);
        l.e(list3, "viewImpression");
        l.e(list4, "videoImpression");
        l.e(list5, "thankYouPixels");
        this.click = list;
        this.impression = list2;
        this.viewImpression = list3;
        this.videoImpression = list4;
        this.thankYouPixels = list5;
    }

    public /* synthetic */ Tracking(List list, List list2, List list3, List list4, List list5, int i, f fVar) {
        this(list, list2, list3, list4, (i & 16) != 0 ? s.a : list5);
    }

    public static /* synthetic */ Tracking copy$default(Tracking tracking, List list, List list2, List list3, List list4, List list5, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tracking.click;
        }
        if ((i & 2) != 0) {
            list2 = tracking.impression;
        }
        if ((i & 4) != 0) {
            list3 = tracking.viewImpression;
        }
        if ((i & 8) != 0) {
            list4 = tracking.videoImpression;
        }
        if ((i & 16) != 0) {
            list5 = tracking.thankYouPixels;
        }
        return tracking.copy(list, list2, list3, list4, list5);
    }

    public final List<String> component1() {
        return this.click;
    }

    public final List<String> component2() {
        return this.impression;
    }

    public final List<String> component3() {
        return this.viewImpression;
    }

    public final List<String> component4() {
        return this.videoImpression;
    }

    public final List<String> component5() {
        return this.thankYouPixels;
    }

    public final Tracking copy(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        l.e(list, "click");
        l.e(list2, AdSDKNotificationListener.IMPRESSION_EVENT);
        l.e(list3, "viewImpression");
        l.e(list4, "videoImpression");
        l.e(list5, "thankYouPixels");
        return new Tracking(list, list2, list3, list4, list5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Tracking)) {
                return false;
            }
            Tracking tracking = (Tracking) obj;
            return l.a(this.click, tracking.click) && l.a(this.impression, tracking.impression) && l.a(this.viewImpression, tracking.viewImpression) && l.a(this.videoImpression, tracking.videoImpression) && l.a(this.thankYouPixels, tracking.thankYouPixels);
        }
        return true;
    }

    public final List<String> getClick() {
        return this.click;
    }

    public final List<String> getImpression() {
        return this.impression;
    }

    public final List<String> getThankYouPixels() {
        return this.thankYouPixels;
    }

    public final List<String> getVideoImpression() {
        return this.videoImpression;
    }

    public final List<String> getViewImpression() {
        return this.viewImpression;
    }

    public int hashCode() {
        List<String> list = this.click;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.impression;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        List<String> list3 = this.viewImpression;
        int hashCode3 = list3 != null ? list3.hashCode() : 0;
        List<String> list4 = this.videoImpression;
        int hashCode4 = list4 != null ? list4.hashCode() : 0;
        List<String> list5 = this.thankYouPixels;
        if (list5 != null) {
            i = list5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Tracking(click=");
        m8728C.append(this.click);
        m8728C.append(", impression=");
        m8728C.append(this.impression);
        m8728C.append(", viewImpression=");
        m8728C.append(this.viewImpression);
        m8728C.append(", videoImpression=");
        m8728C.append(this.videoImpression);
        m8728C.append(", thankYouPixels=");
        return C22128a.m8602l(m8728C, this.thankYouPixels, ")");
    }
}
