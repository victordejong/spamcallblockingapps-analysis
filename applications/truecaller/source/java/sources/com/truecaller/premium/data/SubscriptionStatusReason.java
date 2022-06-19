package com.truecaller.premium.data;

import kotlin.Metadata;
import s1.f0.r;
import s1.u.i;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\u0001\u0018�� \u00072\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/truecaller/premium/data/SubscriptionStatusReason;", "", "", "isOnHold", "()Z", "<init>", "(Ljava/lang/String;I)V", "Companion", "a", "NONE", "SUBSCRIPTION_RECOVERED", "SUBSCRIPTION_RENEWED", "SUBSCRIPTION_CANCELED", "SUBSCRIPTION_PURCHASED", "SUBSCRIPTION_ON_HOLD", "SUBSCRIPTION_IN_GRACE_PERIOD", "SUBSCRIPTION_RESTARTED", "SUBSCRIPTION_PRICE_CHANGE_CONFIRMED", "SUBSCRIPTION_DEFERRED", "SUBSCRIPTION_PAUSED", "SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED", "SUBSCRIPTION_REVOKED", "SUBSCRIPTION_EXPIRED", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/SubscriptionStatusReason.class */
public enum SubscriptionStatusReason {
    NONE,
    SUBSCRIPTION_RECOVERED,
    SUBSCRIPTION_RENEWED,
    SUBSCRIPTION_CANCELED,
    SUBSCRIPTION_PURCHASED,
    SUBSCRIPTION_ON_HOLD,
    SUBSCRIPTION_IN_GRACE_PERIOD,
    SUBSCRIPTION_RESTARTED,
    SUBSCRIPTION_PRICE_CHANGE_CONFIRMED,
    SUBSCRIPTION_DEFERRED,
    SUBSCRIPTION_PAUSED,
    SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED,
    SUBSCRIPTION_REVOKED,
    SUBSCRIPTION_EXPIRED;
    
    public static final C4348a Companion = new C4348a(null);

    /* renamed from: com.truecaller.premium.data.SubscriptionStatusReason$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/SubscriptionStatusReason$a.class */
    public static final class C4348a {
        public C4348a(f fVar) {
        }

        /* renamed from: a */
        public final SubscriptionStatusReason m34821a(String str) {
            SubscriptionStatusReason subscriptionStatusReason;
            SubscriptionStatusReason[] values = SubscriptionStatusReason.values();
            int i = 0;
            while (true) {
                if (i >= 14) {
                    subscriptionStatusReason = null;
                    break;
                }
                SubscriptionStatusReason subscriptionStatusReason2 = values[i];
                if (r.n(subscriptionStatusReason2.name(), str, true)) {
                    subscriptionStatusReason = subscriptionStatusReason2;
                    break;
                }
                i++;
            }
            if (subscriptionStatusReason == null) {
                subscriptionStatusReason = SubscriptionStatusReason.NONE;
            }
            return subscriptionStatusReason;
        }
    }

    public static final SubscriptionStatusReason fromString(String str) {
        return Companion.m34821a(str);
    }

    public final boolean isOnHold() {
        return i.z0(new SubscriptionStatusReason[]{SUBSCRIPTION_IN_GRACE_PERIOD, SUBSCRIPTION_ON_HOLD}).contains(this);
    }
}
