package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p049c.C1512h;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1702cy;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.service.p067d.C1874g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/i.class */
public class C1550i extends AbstractC1543c<Message> {

    /* renamed from: av */
    private final C1511g f4190av;
    private final long channelId;

    /* renamed from: eT */
    private final C1508e f4191eT;

    /* renamed from: eU */
    private final C1506c f4192eU;

    /* renamed from: eW */
    private final C1512h f4193eW;

    /* renamed from: eX */
    private final long f4194eX;

    /* renamed from: jL */
    private final C1874g f4195jL;

    /* renamed from: jM */
    private final boolean f4196jM;

    /* renamed from: jN */
    private final List<Message> f4197jN;
    private List<Participant> participants;

    /* renamed from: aO */
    private boolean f4189aO = false;

    /* renamed from: jO */
    private final HashMap<String, Message> f4198jO = new HashMap<>();

    public C1550i(Context context, long j, List<Message> list, boolean z) {
        super(context);
        this.channelId = j;
        C1511g c1511g = new C1511g(context);
        this.f4190av = c1511g;
        this.f4193eW = new C1512h(context);
        this.f4192eU = new C1506c(context);
        C1508e c1508e = new C1508e(context);
        this.f4191eT = c1508e;
        this.f4194eX = C1622ap.m40245bD(context).getConversationConfig().getActiveConvWindow();
        this.f4197jN = list;
        this.f4195jL = new C1874g(c1508e, c1511g);
        this.f4196jM = z;
        m40561fn();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40566a(com.freshchat.consumer.sdk.beans.Channel r5, java.util.List<com.freshchat.consumer.sdk.beans.Message> r6, java.util.List<com.freshchat.consumer.sdk.beans.Message> r7) {
        /*
            r4 = this;
            r0 = r6
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.isEmpty(r0)
            if (r0 != 0) goto L95
            r0 = r5
            if (r0 != 0) goto Le
            goto L95
        Le:
            r0 = r6
            int r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39900b(r0)
            r8 = r0
            r0 = r8
            if (r0 <= 0) goto L56
            r0 = r6
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.freshchat.consumer.sdk.beans.Message r0 = (com.freshchat.consumer.sdk.beans.Message) r0
            java.lang.String r0 = r0.getAlias()
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r5
            long r1 = r1.getId()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "_welcome_message"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r10
            java.lang.String r1 = r1.toString()
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.m40223o(r0, r1)
            if (r0 == 0) goto L56
            r0 = 1
            r11 = r0
            goto L59
        L56:
            r0 = 0
            r11 = r0
        L59:
            r0 = r11
            if (r0 == 0) goto L95
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L76
            r0 = r7
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39902a(r0)
            if (r0 == 0) goto L76
        L6b:
            r0 = r6
            r1 = 0
            java.lang.Object r0 = r0.remove(r1)
            goto L95
        L76:
            r0 = r8
            r1 = 1
            if (r0 <= r1) goto L95
            r0 = r6
            r1 = 1
            java.lang.Object r0 = r0.get(r1)
            com.freshchat.consumer.sdk.beans.Message r0 = (com.freshchat.consumer.sdk.beans.Message) r0
            int r0 = r0.getMessageType()
            com.freshchat.consumer.sdk.beans.Message$MessageType r1 = com.freshchat.consumer.sdk.beans.Message.MessageType.FREDDY_BOT
            int r1 = r1.getIntValue()
            if (r0 != r1) goto L95
            goto L6b
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p054g.C1550i.m40566a(com.freshchat.consumer.sdk.beans.Channel, java.util.List, java.util.List):void");
    }

    /* renamed from: d */
    private boolean m40565d(Channel channel) {
        if (this.f4196jM || channel == null || channel.getFlowBusinessHourType() == null) {
            return false;
        }
        return this.f4195jL.m39374a(getContext(), channel);
    }

    /* renamed from: e */
    private List<Message> m40562e(Channel channel) {
        if (channel == null) {
            return null;
        }
        String flowMessagesJson = channel.getFlowMessagesJson();
        if (C1626as.isEmpty(flowMessagesJson)) {
            return null;
        }
        ArrayList arrayList = (ArrayList) C1597ab.m40337in().fromJson(flowMessagesJson, new C1553l(this).getType());
        ArrayList arrayList2 = new ArrayList();
        if (C1716k.m39902a(arrayList)) {
            int i = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Message message = (Message) it.next();
                Message m40560r = m40560r(message);
                if (m40560r != null) {
                    arrayList2.add(m40560r);
                } else {
                    message.setMessageType(Message.MessageType.FREDDY_BOT.getIntValue());
                    message.setMessageUserType(4);
                    message.setMessageUserAlias(String.valueOf(channel.getServiceAccountId()));
                    message.setCreatedMillis(C1719n.m39866fP() + i);
                    message.setAlias(C1702cy.m39986aS(message.getFlowStepId()));
                    message.setChannelId(this.channelId);
                    arrayList2.add(message);
                    i++;
                }
            }
        }
        return arrayList2;
    }

    /* renamed from: fn */
    private void m40561fn() {
        this.f4198jO.clear();
        for (Message message : this.f4197jN) {
            this.f4198jO.put(message.getAlias(), message);
        }
    }

    /* renamed from: r */
    private Message m40560r(Message message) {
        if (C1716k.m39897c(this.f4198jO) || message == null || C1626as.isEmpty(message.getFlowStepId())) {
            return null;
        }
        return this.f4198jO.get(C1702cy.m39986aS(message.getFlowStepId()));
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<Message> mo40564dd() {
        Channel m40771e = this.f4192eU.m40771e(this.channelId);
        List<Message> m40714k = this.f4190av.m40714k(this.channelId);
        this.participants = this.f4193eW.m40707cH();
        this.f4189aO = this.f4190av.m40736a(this.channelId, this.f4194eX);
        List<Message> m40562e = m40565d(m40771e) ? m40562e(m40771e) : null;
        m40566a(m40771e, m40714k, m40562e);
        if (C1716k.m39902a(m40562e)) {
            m40714k.addAll(m40562e);
        }
        return m40714k;
    }

    /* renamed from: di */
    public boolean m40563di() {
        return this.f4189aO;
    }

    public List<Participant> getParticipants() {
        return this.participants;
    }
}
