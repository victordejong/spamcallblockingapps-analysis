package com.truecaller.premium.data.feature;

import kotlin.Metadata;
import p193e.p194a.p1011l.p1025p2.p1026d2.C17051a;
import s1.f0.r;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0001\u0018�� \u000e2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000fB\u0011\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lcom/truecaller/premium/data/feature/PremiumFeature;", "", "", "isFree", "Le/a/l/p2/d2/a;", "dto", "(Z)Le/a/l/p2/d2/a;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "UNKNOWN", "CALLER_ID", "SPAM_BLOCKING", "CALL_RECORDING", "EXTENDED_SPAM_BLOCKING", "NO_ADS", "WHO_VIEWED_ME", "PREMIUM_BADGE", "CONTACT_REQUEST", "INCOGNITO_MODE", "GHOST_CALL", "ANNOUNCE_CALL", "PREMIUM_SUPPORT", "GOLD_CALLER_ID", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/feature/PremiumFeature.class */
public enum PremiumFeature {
    UNKNOWN("unknown"),
    CALLER_ID("caller_id"),
    SPAM_BLOCKING("spam_blocking"),
    CALL_RECORDING("call_recording"),
    EXTENDED_SPAM_BLOCKING("extended_spam_blocking"),
    NO_ADS("no_ads"),
    WHO_VIEWED_ME("who_viewed_my_profile"),
    PREMIUM_BADGE("premium_badge"),
    CONTACT_REQUEST("contact_request"),
    INCOGNITO_MODE("incognito_mode"),
    GHOST_CALL("ghost_call"),
    ANNOUNCE_CALL("announce_call"),
    PREMIUM_SUPPORT("premium_support"),
    GOLD_CALLER_ID("gold_caller_id");
    
    public static final C4349a Companion = new C4349a(null);

    /* renamed from: id */
    private final String f14247id;

    /* renamed from: com.truecaller.premium.data.feature.PremiumFeature$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/feature/PremiumFeature$a.class */
    public static final class C4349a {
        public C4349a(f fVar) {
        }

        /* renamed from: a */
        public final PremiumFeature m34820a(String str) {
            PremiumFeature premiumFeature;
            PremiumFeature[] values = PremiumFeature.values();
            int i = 0;
            while (true) {
                if (i >= 14) {
                    premiumFeature = null;
                    break;
                }
                PremiumFeature premiumFeature2 = values[i];
                if (r.n(premiumFeature2.getId(), str, true)) {
                    premiumFeature = premiumFeature2;
                    break;
                }
                i++;
            }
            if (premiumFeature == null) {
                premiumFeature = PremiumFeature.UNKNOWN;
            }
            return premiumFeature;
        }
    }

    PremiumFeature(String str) {
        this.f14247id = str;
    }

    public static /* synthetic */ C17051a dto$default(PremiumFeature premiumFeature, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return premiumFeature.dto(z);
    }

    public static final PremiumFeature fromString(String str) {
        return Companion.m34820a(str);
    }

    public final C17051a dto(boolean z) {
        return new C17051a(this.f14247id, z);
    }

    public final String getId() {
        return this.f14247id;
    }
}
