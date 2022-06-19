package com.truecaller.messaging.data.types;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018�� \u000e2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000fB\u001b\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/truecaller/messaging/data/types/InboxTab;", "", "", "conversationFilter", "I", "getConversationFilter", "()I", "", "analyticsContext", "Ljava/lang/String;", "getAnalyticsContext", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;IILjava/lang/String;)V", "Companion", "a", "PERSONAL", "OTHERS", "BUSINESS", "SPAM", "PROMOTIONAL", "messaging-common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/InboxTab.class */
public enum InboxTab {
    PERSONAL(1, "inbox_main_tab"),
    OTHERS(2, "inbox_others_tab"),
    BUSINESS(1, "inbox_business_tab"),
    SPAM(3, "inbox_spam_tab"),
    PROMOTIONAL(4, "inbox_promotional_tab");
    
    public static final C4204a Companion = new C4204a(null);
    private final String analyticsContext;
    private final int conversationFilter;

    /* renamed from: com.truecaller.messaging.data.types.InboxTab$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/InboxTab$a.class */
    public static final class C4204a {
        public C4204a(f fVar) {
        }

        /* renamed from: a */
        public final InboxTab m35029a(int i) {
            InboxTab inboxTab;
            InboxTab[] values = InboxTab.values();
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    inboxTab = null;
                    break;
                }
                inboxTab = values[i2];
                if (inboxTab.getConversationFilter() == i) {
                    break;
                }
                i2++;
            }
            if (inboxTab == null) {
                inboxTab = InboxTab.PERSONAL;
            }
            return inboxTab;
        }
    }

    InboxTab(int i, String str) {
        this.conversationFilter = i;
        this.analyticsContext = str;
    }

    public final String getAnalyticsContext() {
        return this.analyticsContext;
    }

    public final int getConversationFilter() {
        return this.conversationFilter;
    }
}
