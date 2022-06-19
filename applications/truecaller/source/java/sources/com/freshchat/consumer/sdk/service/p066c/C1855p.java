package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import android.os.Bundle;
import android.webkit.URLUtil;
import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.TriggeredRuleId;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.beans.fragment.FragmentType;
import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.reqres.UploadImageResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1509f;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1614aj;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1702cy;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1914q;
import com.freshchat.consumer.sdk.service.p068e.C1915r;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.c.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/p.class */
public class C1855p extends AbstractC1829a<C1914q, C1915r> {
    /* renamed from: C */
    private void m39435C(Message message) {
        if (message != null && C1702cy.m39984aU(message.getAlias())) {
            TriggeredRuleId triggeredRuleId = new TriggeredRuleId();
            long m39983aV = C1702cy.m39983aV(message.getAlias());
            if (m39983aV == 0) {
                triggeredRuleId.setTimeDiffInMillis(1000L);
            } else {
                triggeredRuleId.setTimeDiffInMillis(message.getCreatedMillis() - m39983aV);
            }
            Channel m40771e = new C1506c(getContext()).m40771e(message.getChannelId());
            if (m40771e == null) {
                return;
            }
            triggeredRuleId.setFlowId(m40771e.getFlowId());
            triggeredRuleId.setFlowVersionId(m40771e.getFlowVersionId());
            triggeredRuleId.setServiceAccountId(m40771e.getServiceAccountId());
            ArrayList arrayList = new ArrayList();
            arrayList.add(triggeredRuleId);
            message.setTriggeredRuleIds(arrayList);
        }
    }

    /* renamed from: a */
    private void m39434a(long j, String str) {
        Bundle bundle = new Bundle();
        bundle.putLong("CHANNEL_ID", j);
        bundle.putString("MESSAGE_ALIAS", str);
        C1460a.m41053a(getContext(), "com.freshchat.consumer.sdk.actions.MessageStatusChanged", bundle);
    }

    /* renamed from: a */
    private void m39433a(Message message, Message message2, String str) {
        CalendarEventFragment m40002s = C1689cm.m40002s(message2);
        if (m40002s == null) {
            return;
        }
        message.getMessageFragments().set(0, m40002s);
        if (!C1626as.m40233a(str)) {
            return;
        }
        if (C1689cm.m40008a(m40002s)) {
            C1649bg.m40106M(getContext(), str);
        } else if (C1689cm.m39996y(message2)) {
            C1649bg.m40105N(getContext(), str);
        } else {
            C1649bg.m40104O(getContext(), str);
        }
    }

    /* renamed from: b */
    private C1915r.EnumC1916a m39431b(C1914q c1914q) {
        if (!m39429c(c1914q)) {
            return C1915r.EnumC1916a.Failed;
        }
        Context context = getContext();
        Message m39321dL = c1914q.m39321dL();
        m39435C(m39321dL);
        C1466e m40905i = C1466e.m40905i(context);
        if (!m40905i.m40964bl()) {
            C1613ai.m40278w("FRESHCHAT", "Cannot proceed because the user was not created. Backlog created for message");
            C1638b.m40156a(context, (User) null, true);
            C1807c.m39523d(getContext(), m39321dL);
            return C1915r.EnumC1916a.UserNotCreated;
        } else if (!C1618al.m40261aS(context)) {
            C1807c.m39523d(getContext(), m39321dL);
            return C1915r.EnumC1916a.NoInternet;
        } else if (m39430c(getContext(), m39321dL)) {
            m39426g(m39321dL);
            return C1915r.EnumC1916a.Failed;
        } else if (m39428e(m39321dL)) {
            return C1915r.EnumC1916a.Failed;
        } else {
            C1511g c1511g = new C1511g(context);
            Message message = m39321dL;
            try {
                m39321dL.setRead(true);
                Message m39425h = m39425h(m39321dL);
                if (C1626as.isEmpty(m39425h.getMessageUserAlias())) {
                    m39425h.setMessageUserAlias(m40905i.m40966bj());
                }
                Message m40616d = new C1528a(context).m40616d(m39425h);
                StringBuilder sb = new StringBuilder();
                sb.append("Message created ");
                sb.append(m40616d.getAlias());
                C1613ai.m40284d("FRESHCHAT", sb.toString());
                m39425h.setUploadState(1);
                m39425h.setCreatedMillis(m40616d.getCreatedMillis());
                m39425h.setReplyTo(m40616d.getReplyTo());
                m39425h.setId(m40616d.getId());
                String m40001t = C1689cm.m40001t(m39425h);
                m39425h.setInternalMeta(m40616d.getInternalMeta());
                m39433a(m39425h, m40616d, m40001t);
                c1511g.m40730b(m39425h);
                if (m39425h.getConversationId() == 0) {
                    C1594aa.m40366a(context, m39425h.getChannelId(), m40616d.getConversationId(), 7, C1898d.EnumC1899a.IMMEDIATE, false);
                }
                if (C1716k.m39902a(m39425h.getTriggeredRuleIds())) {
                    long m39983aV = C1702cy.m39983aV(m39425h.getAlias());
                    int m39982aW = C1702cy.m39982aW(m39425h.getAlias());
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < m39982aW; i++) {
                        arrayList.add(C1702cy.m39987a(m39983aV, i));
                    }
                    c1511g.m40738J(arrayList);
                }
                m39427fO();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Saved conversation to DB ");
                sb2.append(m40616d.getConversationId());
                C1613ai.m40284d("FRESHCHAT", sb2.toString());
                message = m39425h;
                return C1915r.EnumC1916a.Success;
            } catch (DeletedException e) {
                C1723q.m39823a(e);
                return C1915r.EnumC1916a.Failed;
            } catch (Exception e2) {
                m39434a(message.getChannelId(), message.getAlias());
                C1723q.m39823a(e2);
                C1807c.m39523d(getContext(), message);
                C1613ai.m40284d("FRESHCHAT", "Failed to send message !");
                return C1915r.EnumC1916a.Failed;
            }
        }
    }

    /* renamed from: c */
    private static boolean m39430c(Context context, Message message) {
        String alias;
        boolean z = false;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            try {
                List<MessageFragment> messageFragments = message.getMessageFragments();
                int m39900b = C1716k.m39900b(messageFragments);
                int i = 0;
                while (i < m39900b) {
                    MessageFragment messageFragment = messageFragments.get(i);
                    InputStream inputStream4 = inputStream;
                    if (C1614aj.m40275a(messageFragment)) {
                        InputStream inputStream5 = inputStream;
                        String content = messageFragment.getContent();
                        inputStream4 = inputStream;
                        if (C1626as.m40233a(content)) {
                            InputStream inputStream6 = inputStream;
                            inputStream4 = C1608ad.m40315aE(content);
                        }
                        if (inputStream4 == null) {
                            C1608ad.m40316a(inputStream4);
                            return true;
                        }
                        C1608ad.m40316a(inputStream4);
                    }
                    i++;
                    inputStream = inputStream4;
                }
                alias = message.getAlias();
                InputStream inputStream7 = inputStream;
            } catch (Exception e) {
                C1723q.m39823a(e);
                C1608ad.m40316a(inputStream3);
            }
            if (C1807c.m39521f(context, alias)) {
                InputStream inputStream8 = inputStream;
                InputStream inputStream9 = inputStream;
                InputStream inputStream10 = inputStream;
                Message m40737X = new C1511g(context).m40737X(alias);
                if (m40737X != null) {
                    inputStream2 = inputStream;
                    inputStream3 = inputStream;
                    if (m40737X.isUploaded()) {
                        z = true;
                        C1608ad.m40316a(inputStream);
                        return z;
                    }
                }
            }
            z = false;
            C1608ad.m40316a(inputStream);
            return z;
        } catch (Throwable th) {
            C1608ad.m40316a(inputStream2);
            throw th;
        }
    }

    /* renamed from: e */
    private boolean m39428e(Message message) {
        boolean z = false;
        if (!C1720o.m39853bB(getContext())) {
            return false;
        }
        if (C1720o.m39843bz(getContext()) != JwtTokenStatus.TOKEN_VALID) {
            z = true;
        }
        if (z) {
            C1807c.m39523d(getContext(), message);
        }
        return z;
    }

    /* renamed from: fO */
    private void m39427fO() {
        C1460a.m41035f(getContext());
    }

    /* renamed from: g */
    private void m39426g(Message message) {
        StringBuilder m8728C = C22128a.m8728C("Deleting backlog ");
        m8728C.append(message.getAlias());
        C1613ai.m40284d("FRESHCHAT", m8728C.toString());
        C1594aa.m40338l(getContext(), message.getAlias());
    }

    /* renamed from: h */
    private Message m39425h(Message message) throws DeletedException {
        ImageFragment imageFragment;
        C1509f c1509f = new C1509f(getContext());
        ArrayList arrayList = new ArrayList(message.getMessageFragments());
        int m39900b = C1716k.m39900b(arrayList);
        for (int i = 0; i < m39900b; i++) {
            MessageFragment messageFragment = (MessageFragment) arrayList.get(i);
            boolean isNetworkUrl = URLUtil.isNetworkUrl(messageFragment.getContent());
            if (C1614aj.m40275a(messageFragment) && !isNetworkUrl) {
                if (messageFragment.getFragmentType() == FragmentType.AUDIO.asInt()) {
                    imageFragment = messageFragment;
                } else {
                    imageFragment = messageFragment;
                    if (messageFragment.getFragmentType() == FragmentType.IMAGE.asInt()) {
                        UploadImageResponse m40634a = new C1528a(getContext()).m40634a(messageFragment, i);
                        c1509f.m40750b(m40634a.getImage(), message.getAlias(), i, 1);
                        imageFragment = m40634a.getImage();
                    }
                }
                arrayList.set(i, imageFragment);
            }
        }
        message.setMessageFragments(arrayList);
        return message;
    }

    /* renamed from: a */
    public C1915r mo39348b(C1914q c1914q) {
        C1915r.EnumC1916a m39431b = m39431b(c1914q);
        return new C1915r(m39431b == C1915r.EnumC1916a.Success, m39431b);
    }

    /* renamed from: c */
    public boolean m39429c(C1914q c1914q) {
        return C1731w.m39793ay(getContext()) && C1731w.m39796aA(getContext());
    }
}
