package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.config.RefreshIntervals;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.beans.reqres.ConversationsResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1628au;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.freshchat.consumer.sdk.service.c.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/f.class */
public class C1845f extends AbstractC1829a<C1898d, AbstractC1907k> {
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: a */
    private long m39458a(C1898d.EnumC1899a enumC1899a) {
        RefreshIntervals refreshIntervals = C1622ap.m40245bD(getContext()).getRefreshIntervals();
        char c = 0;
        if (enumC1899a != C1898d.EnumC1899a.IMMEDIATE) {
            if (enumC1899a == C1898d.EnumC1899a.NORMAL) {
                c = refreshIntervals.getMsgFetchIntervalNormal();
            } else if (enumC1899a == C1898d.EnumC1899a.LAID_BACK) {
                c = refreshIntervals.getMsgFetchIntervalLaidback();
            }
        }
        return c;
    }

    /* renamed from: a */
    private void m39456a(Set<Integer> set, List<Message> list) {
        if (C1716k.isEmpty(set) || C1716k.isEmpty(list)) {
            return;
        }
        Iterator<Message> it = list.iterator();
        while (it.hasNext()) {
            if (set.contains(Integer.valueOf(it.next().getMessageType()))) {
                it.remove();
            }
        }
    }

    /* renamed from: s */
    private List<Message> m39454s(List<Message> list) {
        for (Message message : list) {
            message.setUploadState(1);
        }
        return list;
    }

    /* renamed from: y */
    private List<Message> m39453y(List<Message> list) {
        for (Message message : list) {
            if (message.isUserMessage()) {
                message.setRead(true);
            }
        }
        return list;
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1898d c1898d) {
        C1904h c1904h = new C1904h(true);
        try {
            C1613ai.m40284d("FreshchatTest", "FetchMessagesRequest");
            Context applicationContext = getContext().getApplicationContext();
            if (m39455b(c1898d) && C1618al.m40261aS(applicationContext)) {
                C1511g c1511g = new C1511g(applicationContext);
                int m40718gr = c1511g.m40718gr();
                C1508e c1508e = new C1508e(applicationContext);
                C1466e m39479dw = m39479dw();
                String valueOf = String.valueOf(c1511g.m40724cD());
                C1613ai.m40284d("FRESHCHAT", "Messages firstTimeFetch:" + C1626as.isEmpty(m39479dw.m40984bJ()));
                if (m39479dw().m40932fi()) {
                    valueOf = DtbConstants.NETWORK_TYPE_UNKNOWN;
                    m39479dw().m41011D(false);
                }
                ConversationsResponse m40631a = new C1528a(applicationContext).m40631a(valueOf, c1898d.m39337dE());
                C1613ai.m40284d("FreshchatTest", "Message fetch");
                List<Conversation> conversations = m40631a.getConversations();
                if (conversations != null && conversations.size() != 0) {
                    C1613ai.m40284d("FreshchatTest", "Message fetch - has updates");
                    c1508e.m40758f(conversations);
                    Set<Integer> m40243jP = C1622ap.m40243jP();
                    boolean z = false;
                    for (Conversation conversation : conversations) {
                        long conversationId = conversation.getConversationId();
                        if (conversation.hasPendingCsat()) {
                            boolean z2 = c1508e.m40756g(conversationId) == null;
                            Csat csat = conversation.getCsat();
                            if (z2 && csat != null) {
                                RemoteConfig m40245bD = C1622ap.m40245bD(getContext());
                                if (!(C1628au.m40219a(m40245bD) && C1628au.m40217a(m40245bD, csat))) {
                                    c1508e.m40765a(conversationId, csat);
                                } else {
                                    C1649bg.m40080c(getContext(), conversation.getChannelId(), conversationId);
                                }
                            }
                        } else {
                            c1508e.m40755t(conversationId);
                        }
                        if (conversation.isRequireDebugLog()) {
                            m39479dw.m40938d(conversation.getLogId());
                            C1638b.m40167R(getContext());
                        }
                        m39456a(m40243jP, conversation.getMessages());
                        List<Message> messages = conversation.getMessages();
                        if (!C1716k.isEmpty(messages)) {
                            C1689cm.m40009a(getContext(), messages, conversation.getChannelId());
                            c1511g.m40732a(m39453y(m39454s(messages)), conversation.getChannelId());
                            c1511g.m40739F(conversation.getChannelId());
                            z = true;
                        }
                    }
                    if (z) {
                        C1460a.m41033g(applicationContext);
                        C1460a.m41035f(applicationContext);
                        C1460a.m41052aJ(applicationContext);
                    }
                    if (c1511g.m40718gr() > m40718gr) {
                        C1649bg.m40086bK(getContext());
                    }
                    m39479dw.m40983bK();
                    return c1904h;
                }
                c1904h.setSuccess(false);
                if (m40631a.getStatusCode() != 412 && m40631a.getStatusCode() != 428) {
                    m39479dw.m40983bK();
                }
            }
            return c1904h;
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            c1904h.setSuccess(false);
            return c1904h;
        }
    }

    /* renamed from: b */
    public boolean m39455b(C1898d c1898d) {
        if (C1731w.m39793ay(getContext()) && C1731w.m39796aA(getContext()) && m39479dw().m40964bl()) {
            String m40984bJ = m39479dw().m40984bJ();
            return C1626as.isEmpty(m40984bJ) || System.currentTimeMillis() - Long.parseLong(m40984bJ) > m39458a(c1898d.m39338dD());
        }
        return false;
    }
}
