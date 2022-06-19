package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.SectionKey;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.j.cf */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cf.class */
public class C1680cf {

    /* renamed from: com.freshchat.consumer.sdk.j.cf$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cf$a.class */
    public enum EnumC1681a {
        NORMAL(0),
        CAROUSEL(1),
        CAROUSEL_CARD(2),
        CALENDAR_EVENT(3);
        

        /* renamed from: oc */
        public int f4477oc;

        /* renamed from: ob */
        public static final EnumC1681a f4474ob = NORMAL;

        EnumC1681a(int i) {
            this.f4477oc = i;
        }

        public int asInt() {
            return this.f4477oc;
        }
    }

    /* renamed from: a */
    public static EnumC1681a m40027a(Message message, boolean z, boolean z2) {
        return message == null ? EnumC1681a.f4474ob : (!z || z2 || m40025l(message) == null) ? m40024m(message) != null ? EnumC1681a.CAROUSEL_CARD : C1689cm.m40002s(message) != null ? EnumC1681a.CALENDAR_EVENT : EnumC1681a.f4474ob : EnumC1681a.CAROUSEL;
    }

    /* renamed from: k */
    public static List<MessageFragment> m40026k(Message message) {
        CarouselFragment m40025l = m40025l(message);
        if (m40025l == null) {
            return null;
        }
        return m40025l.getFragmentsForSection(SectionKey.CAROUSEL_CARDS);
    }

    /* renamed from: l */
    private static CarouselFragment m40025l(Message message) {
        if (message != null && C1716k.m39902a(message.getReplyFragments())) {
            MessageFragment messageFragment = message.getReplyFragments().get(0);
            if (!(messageFragment instanceof CarouselFragment)) {
                return null;
            }
            return (CarouselFragment) messageFragment;
        }
        return null;
    }

    /* renamed from: m */
    public static CarouselCardDefaultFragment m40024m(Message message) {
        if (message != null && C1716k.m39902a(message.getMessageFragments()) && (message.getMessageFragments().get(0) instanceof CarouselCardDefaultFragment)) {
            return (CarouselCardDefaultFragment) message.getMessageFragments().get(0);
        }
        return null;
    }
}
