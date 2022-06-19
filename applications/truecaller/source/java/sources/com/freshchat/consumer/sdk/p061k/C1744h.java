package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselFragment;
import com.freshchat.consumer.sdk.beans.fragment.CollectionFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyDropDownFragment;
import com.freshchat.consumer.sdk.p047b.EnumC1475k;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/h.class */
public class C1744h extends AbstractC1735a {
    public C1744h(Context context) {
        super(context);
    }

    /* renamed from: D */
    private MessageFragment m39741D(List<Message> list) {
        return m39736G(m39737F(list));
    }

    /* renamed from: E */
    private EnumC1475k m39740E(Message message) {
        return message == null ? EnumC1475k.NONE : m39738F(message) != null ? EnumC1475k.CALLBACK : m39733c(m39736G(message));
    }

    /* renamed from: F */
    private Message m39737F(List<Message> list) {
        if (C1716k.isEmpty(list)) {
            return null;
        }
        Message message = list.get(C1716k.m39900b(list) - 1);
        if (!C1716k.isEmpty(message.getReplyFragments())) {
            return message;
        }
        return null;
    }

    /* renamed from: G */
    private MessageFragment m39736G(Message message) {
        if (message == null || C1716k.isEmpty(message.getReplyFragments())) {
            return null;
        }
        return message.getReplyFragments().get(0);
    }

    /* renamed from: c */
    private EnumC1475k m39733c(MessageFragment messageFragment) {
        return messageFragment == null ? EnumC1475k.NONE : messageFragment instanceof QuickReplyDropDownFragment ? EnumC1475k.DROP_DOWN : messageFragment instanceof CollectionFragment ? EnumC1475k.NORMAL : messageFragment instanceof CarouselFragment ? EnumC1475k.CAROUSEL : EnumC1475k.NONE;
    }

    /* renamed from: A */
    public QuickReplyDropDownFragment m39744A(List<Message> list) {
        MessageFragment m39741D = m39741D(list);
        if (m39741D == null || EnumC1475k.DROP_DOWN != m39733c(m39741D)) {
            return null;
        }
        return (QuickReplyDropDownFragment) m39741D;
    }

    /* renamed from: B */
    public CollectionFragment m39743B(List<Message> list) {
        MessageFragment m39741D = m39741D(list);
        if (m39741D == null || EnumC1475k.NORMAL != m39733c(m39741D)) {
            return null;
        }
        return (CollectionFragment) m39741D;
    }

    /* renamed from: C */
    public EnumC1475k m39742C(List<Message> list) {
        return m39740E(m39735L(list));
    }

    /* renamed from: E */
    public long m39739E(List<Message> list) {
        Message m39737F = m39737F(list);
        if (m39737F == null) {
            return -1L;
        }
        return m39737F.getId();
    }

    /* renamed from: F */
    public CollectionFragment m39738F(Message message) {
        if (message == null || C1716k.isEmpty(message.getMessageFragments())) {
            return null;
        }
        for (MessageFragment messageFragment : message.getMessageFragments()) {
            if (messageFragment != null && (messageFragment instanceof CollectionFragment)) {
                CollectionFragment collectionFragment = (CollectionFragment) messageFragment;
                List<MessageFragment> fragments = collectionFragment.getFragments();
                if (C1716k.m39902a(fragments)) {
                    for (MessageFragment messageFragment2 : fragments) {
                        if (messageFragment2 instanceof CallbackButtonFragment) {
                            return collectionFragment;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    /* renamed from: L */
    public Message m39735L(List<Message> list) {
        if (C1716k.isEmpty(list)) {
            return null;
        }
        return list.get(C1716k.m39900b(list) - 1);
    }

    /* renamed from: M */
    public CollectionFragment m39734M(List<Message> list) {
        return m39738F(m39735L(list));
    }
}
