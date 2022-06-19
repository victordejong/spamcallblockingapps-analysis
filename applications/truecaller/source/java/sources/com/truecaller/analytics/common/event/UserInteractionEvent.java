package com.truecaller.analytics.common.event;

import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.ExchangeCredentialsResponseDto;
import com.truecaller.account.network.TokenResponseDto;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/UserInteractionEvent.class */
public final class UserInteractionEvent implements AbstractC19549v {

    /* renamed from: a */
    public final String f9983a;

    /* renamed from: b */
    public final Action f9984b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b$\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%¨\u0006&"}, d2 = {"Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SUGGESTED_NAME", "CALLED", "SMS", "ADDED_TAG", "SAVED_CONTACT", "EDITED_CONTACT", "WARNED_FRIENDS", "BLOCKED", "UNBLOCKED", "RATED_US", "OPENED_DETAIL_VIEW", "MANUALLY_DISMISSED", "LIST_ITEM_CLICKED", "POSITIVE_BUTTON", "NEGATIVE_BUTTON", "OPEN_APP", "PAYMENT", "RECHARGE", "CHANGE_PASSWORD", "FLASH_BUTTON", "REQUEST_MONEY", "GET_PAYMENT_LINK", "SEND_PAY_REQUEST", "CREATE_SMS_SHORTCUT", "CREATE_SMS_SHORTCUT_DISMISSED", "VIEWED", "ACCEPTED", "IM_PROMO_CLICKED", "IM_PROMO_DISMISSED", "common-analytics_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/common/event/UserInteractionEvent$Action.class */
    public enum Action {
        SUGGESTED_NAME("suggestedName"),
        CALLED(AnalyticsConstants.CALLED),
        SMS(TokenResponseDto.METHOD_SMS),
        ADDED_TAG("addedTag"),
        SAVED_CONTACT("savedContact"),
        EDITED_CONTACT("editedContact"),
        WARNED_FRIENDS("warnedFriends"),
        BLOCKED("blocked"),
        UNBLOCKED("unblocked"),
        RATED_US("ratedUs"),
        OPENED_DETAIL_VIEW("openedDetailView"),
        MANUALLY_DISMISSED("manuallyDismissed"),
        LIST_ITEM_CLICKED("listItemClicked"),
        POSITIVE_BUTTON("positiveButton"),
        NEGATIVE_BUTTON("negativeButton"),
        OPEN_APP("openApp"),
        PAYMENT(AnalyticsConstants.PAYMENT),
        RECHARGE("recharge"),
        CHANGE_PASSWORD("changePassword"),
        FLASH_BUTTON("flashButton"),
        REQUEST_MONEY("requestMoney"),
        GET_PAYMENT_LINK("getPayLink"),
        SEND_PAY_REQUEST("sendPayRequest"),
        CREATE_SMS_SHORTCUT("createSMSShortcut"),
        CREATE_SMS_SHORTCUT_DISMISSED("smsShortcutDismissed"),
        VIEWED("viewed"),
        ACCEPTED(ExchangeCredentialsResponseDto.STATE_ACCEPTED),
        IM_PROMO_CLICKED("imPromoClicked"),
        IM_PROMO_DISMISSED("imPromoDismissed");
        
        private final String value;

        Action(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public UserInteractionEvent(String str, Action action) {
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(action, "action");
        this.f9983a = str;
        this.f9984b = action;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c(this.f9983a);
        m15906a.m15904b(this.f9984b.getValue());
        return new AbstractC19580x.C19584d(m15906a.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UserInteractionEvent)) {
                return false;
            }
            UserInteractionEvent userInteractionEvent = (UserInteractionEvent) obj;
            return l.a(this.f9983a, userInteractionEvent.f9983a) && l.a(this.f9984b, userInteractionEvent.f9984b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9983a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Action action = this.f9984b;
        if (action != null) {
            i = action.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UserInteractionEvent(context=");
        m8728C.append(this.f9983a);
        m8728C.append(", action=");
        m8728C.append(this.f9984b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
