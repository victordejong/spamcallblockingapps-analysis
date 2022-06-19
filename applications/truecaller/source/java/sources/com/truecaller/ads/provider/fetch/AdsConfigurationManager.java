package com.truecaller.ads.provider.fetch;

import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/fetch/AdsConfigurationManager.class */
public interface AdsConfigurationManager {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;", "", "", AnalyticsConstants.KEY, "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "UNKNOWN", "OPT_IN", "OPT_OUT", "ads_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState.class */
    public enum PromotionState {
        UNKNOWN(""),
        OPT_IN("I"),
        OPT_OUT("O");
        
        private final String key;

        PromotionState(String str) {
            this.key = str;
        }

        public final String getKey() {
            return this.key;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;", "", "", AnalyticsConstants.KEY, "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "UNKNOWN", "TARGETING", "NON_TARGETING", "ads_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState.class */
    public enum TargetingState {
        UNKNOWN(""),
        TARGETING(RequestConfiguration.MAX_AD_CONTENT_RATING_T),
        NON_TARGETING("N");
        
        private final String key;

        TargetingState(String str) {
            this.key = str;
        }

        public final String getKey() {
            return this.key;
        }
    }

    /* renamed from: com.truecaller.ads.provider.fetch.AdsConfigurationManager$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/fetch/AdsConfigurationManager$a.class */
    public static final class C2834a {

        /* renamed from: a */
        public final TargetingState f9888a;

        /* renamed from: b */
        public final PromotionState f9889b;

        public C2834a(TargetingState targetingState, PromotionState promotionState) {
            l.e(targetingState, "adsTargetingState");
            l.e(promotionState, "promotionState");
            this.f9888a = targetingState;
            this.f9889b = promotionState;
        }

        /* renamed from: a */
        public static C2834a m35952a(C2834a c2834a, TargetingState targetingState, PromotionState promotionState, int i) {
            if ((i & 1) != 0) {
                targetingState = c2834a.f9888a;
            }
            if ((i & 2) != 0) {
                promotionState = c2834a.f9889b;
            }
            Objects.requireNonNull(c2834a);
            l.e(targetingState, "adsTargetingState");
            l.e(promotionState, "promotionState");
            return new C2834a(targetingState, promotionState);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C2834a)) {
                    return false;
                }
                C2834a c2834a = (C2834a) obj;
                return l.a(this.f9888a, c2834a.f9888a) && l.a(this.f9889b, c2834a.f9889b);
            }
            return true;
        }

        public int hashCode() {
            TargetingState targetingState = this.f9888a;
            int i = 0;
            int hashCode = targetingState != null ? targetingState.hashCode() : 0;
            PromotionState promotionState = this.f9889b;
            if (promotionState != null) {
                i = promotionState.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UserConsents(adsTargetingState=");
            m8728C.append(this.f9888a);
            m8728C.append(", promotionState=");
            m8728C.append(this.f9889b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: a */
    void m35962a();

    /* renamed from: b */
    boolean m35961b();

    /* renamed from: c */
    void m35960c(PromotionState promotionState);

    /* renamed from: d */
    boolean m35959d();

    /* renamed from: e */
    void m35958e(TargetingState targetingState, PromotionState promotionState);

    /* renamed from: f */
    C2834a m35957f();

    /* renamed from: g */
    C2834a m35956g();

    /* renamed from: h */
    PromotionState m35955h();

    /* renamed from: i */
    void m35954i(TargetingState targetingState);

    /* renamed from: j */
    void m35953j();
}
