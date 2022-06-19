package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.net.Uri;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.MessageInternalMeta;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1646be;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1696ct;
import com.freshchat.consumer.sdk.p057j.C1702cy;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p062l.C1766c;
import com.freshchat.consumer.sdk.p062l.C1775j;
import com.freshchat.consumer.sdk.service.p067d.C1869c;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p1727n3.p1744b0.p1745a.C25586h;
/* renamed from: com.freshchat.consumer.sdk.k.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/c.class */
public class C1737c extends C1736b {

    /* renamed from: nq */
    private long f4539nq;

    /* renamed from: ok */
    private long f4540ok;

    /* renamed from: qr */
    private final C1766c f4541qr = new C1766c();

    /* renamed from: com.freshchat.consumer.sdk.k.c$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/c$a.class */
    public class C1738a extends C25586h.AbstractC25588b {

        /* renamed from: lA */
        private final List<Message> f4542lA;

        /* renamed from: lB */
        private final List<Message> f4543lB;

        public C1738a(List<Message> list, List<Message> list2) {
            C1737c.this = r4;
            this.f4542lA = list;
            this.f4543lB = list2;
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
        public boolean areContentsTheSame(int i, int i2) {
            return this.f4542lA.get(i).equals(this.f4543lB.get(i2));
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
        public boolean areItemsTheSame(int i, int i2) {
            return C1626as.m40223o(this.f4542lA.get(i).getAlias(), this.f4543lB.get(i2).getAlias());
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
        public int getNewListSize() {
            return C1716k.m39900b(this.f4543lB);
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
        public int getOldListSize() {
            return C1716k.m39900b(this.f4542lA);
        }
    }

    public C1737c(Context context) {
        super(context);
    }

    /* renamed from: c */
    private MessageInternalMeta m39759c(CalendarMessageMeta calendarMessageMeta) {
        MessageInternalMeta messageInternalMeta = new MessageInternalMeta();
        messageInternalMeta.setCalendarMessageMeta(calendarMessageMeta);
        return messageInternalMeta;
    }

    /* renamed from: A */
    public void m39772A(Message message) {
        String m40001t = C1689cm.m40001t(message);
        if (C1626as.m40233a(m40001t)) {
            C1649bg.m40109J(getContext(), m40001t);
        }
    }

    /* renamed from: B */
    public void m39771B(Message message) {
        String m40001t = C1689cm.m40001t(message);
        if (C1626as.m40233a(m40001t)) {
            C1649bg.m40108K(getContext(), m40001t);
        }
    }

    /* renamed from: I */
    public boolean m39770I(List<Message> list) {
        if (C1716k.isEmpty(list)) {
            return false;
        }
        return C1689cm.m40000u(list.get(C1716k.m39900b(list) - 1));
    }

    /* renamed from: K */
    public List<Message> m39769K(List<Message> list) {
        if (C1716k.isEmpty(list)) {
            return null;
        }
        int m39900b = C1716k.m39900b(list) - 1;
        if (!C1702cy.m39985aT(list.get(m39900b).getAlias())) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (m39900b >= 0) {
            if (C1702cy.m39985aT(list.get(m39900b).getAlias())) {
                arrayList.add(0, list.get(m39900b));
            }
            m39900b--;
        }
        if (C1716k.m39902a(arrayList)) {
            for (int i = 0; i < C1716k.m39900b(arrayList); i++) {
                Message message = (Message) arrayList.get(i);
                message.setAlias(C1702cy.m39987a(((Message) arrayList.get(0)).getCreatedMillis(), i));
                message.setUploadState(1);
                message.setRead(true);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public int m39768a(int i, int i2, int i3) {
        int i4 = i;
        if (i >= i2) {
            i4 = i2;
        }
        return i4 * i3;
    }

    /* renamed from: a */
    public Message m39766a(CalendarMessageMeta calendarMessageMeta, long j, long j2) {
        if (calendarMessageMeta == null) {
            return null;
        }
        String m39602C = new C1775j().m39602C(getContext());
        if (C1626as.isEmpty(m39602C)) {
            return null;
        }
        TextFragment textFragment = new TextFragment();
        textFragment.setContent(getContext().getString(C1298R.string.freshchat_calendar_cancel_invite_message));
        textFragment.setContentType("text/html");
        MessageInternalMeta m39759c = m39759c(calendarMessageMeta);
        Message m39762a = m39762a(m39602C, textFragment, Message.MessageType.MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER, j, j2, -1L);
        if (m39762a == null) {
            return null;
        }
        m39762a.setInternalMeta(m39759c);
        return m39762a;
    }

    /* renamed from: a */
    public Message m39765a(CalendarMessageMeta calendarMessageMeta, CalendarDay.TimeSlot timeSlot, int i, long j, long j2) {
        if (calendarMessageMeta == null || timeSlot == null) {
            return null;
        }
        C1775j c1775j = new C1775j();
        String m39602C = c1775j.m39602C(getContext());
        CalendarEventFragment calendarEventFragment = new CalendarEventFragment();
        calendarEventFragment.setStartMillis(timeSlot.getFromMillis());
        calendarEventFragment.setEndMillis(timeSlot.getToMillis());
        calendarEventFragment.setEventProviderType(i);
        calendarEventFragment.setUserTimeZone(C1696ct.m39992hX());
        Message m39762a = m39762a(m39602C, calendarEventFragment, Message.MessageType.MESSAGE_TYPE_NORMAL, j, j2, -1L);
        if (m39762a == null) {
            return null;
        }
        MessageInternalMeta m39759c = m39759c(calendarMessageMeta);
        calendarMessageMeta.setCalendarBookingEmail(c1775j.m39599cd(getContext()));
        m39762a.setInternalMeta(m39759c);
        return m39762a;
    }

    /* renamed from: a */
    public Message m39763a(String str, MessageFragment messageFragment, long j, long j2, long j3) {
        return m39762a(str, messageFragment, Message.MessageType.MESSAGE_TYPE_NORMAL, j, j2, j3);
    }

    /* renamed from: a */
    public Message m39762a(String str, MessageFragment messageFragment, Message.MessageType messageType, long j, long j2, long j3) {
        Message message;
        if (messageFragment == null) {
            return null;
        }
        try {
            message = C1869c.m39390a(str, messageFragment, messageType, j, j2, j3);
        } catch (Exception e) {
            C1723q.m39823a(e);
            message = null;
        }
        return message;
    }

    /* renamed from: a */
    public String m39764a(CalendarMessageMeta calendarMessageMeta, Map<String, Participant> map) {
        Participant participant;
        if (calendarMessageMeta == null || C1716k.m39897c(map)) {
            return null;
        }
        String calendarAgentAlias = calendarMessageMeta.getCalendarAgentAlias();
        if (C1626as.isEmpty(calendarAgentAlias) || (participant = map.get(calendarAgentAlias)) == null) {
            return null;
        }
        return participant.getProfilePicUrl();
    }

    /* renamed from: a */
    public void m39767a(long j, C1766c.AbstractC1768b abstractC1768b) {
        this.f4541qr.m39610a(getContext(), j, abstractC1768b);
    }

    /* renamed from: a */
    public void m39761a(List<Message> list, CallbackButtonFragment callbackButtonFragment) {
        Message m39735L = m39735L(list);
        if (callbackButtonFragment == null || m39735L == null || C1626as.isEmpty(m39735L.getAlias())) {
            return;
        }
        C1638b.m40148a(getContext(), m39735L.getAlias(), callbackButtonFragment);
    }

    /* renamed from: b */
    public C25586h.C25590d m39760b(List<Message> list, List<Message> list2) {
        return C25586h.m3181a(new C1738a(list, list2), true);
    }

    /* renamed from: w */
    public Uri m39758w(Message message) {
        return C1689cm.m39998w(message);
    }

    /* renamed from: x */
    public CalendarMessageMeta m39756x(Message message) {
        MessageInternalMeta internalMeta = message.getInternalMeta();
        if (internalMeta == null) {
            return null;
        }
        return internalMeta.getCalendarMessageMeta();
    }

    /* renamed from: x */
    public void m39757x(long j) {
        if (j != this.f4539nq && m39773ha()) {
            this.f4539nq = j;
            C1649bg.m40083bY(getContext());
        }
    }

    /* renamed from: y */
    public void m39755y(long j) {
        if (j != this.f4540ok && m39773ha()) {
            this.f4540ok = j;
            C1649bg.m40082bZ(getContext());
        }
    }

    /* renamed from: z */
    public String m39754z(Message message) {
        return C1689cm.m40003g(getContext(), message);
    }

    /* renamed from: z */
    public void m39753z(List<Message> list) {
        C1646be.m40116eC().m40114gZ().execute(new RunnableC1739d(this, list));
    }
}
