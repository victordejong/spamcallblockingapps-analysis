package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.net.Uri;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.MessageInternalMeta;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.p049c.C1511g;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.cm */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cm.class */
public class C1689cm {
    /* renamed from: a */
    private static Message m40006a(Map<String, Message> map, String str) {
        Message message = map.get(str);
        if (message != null) {
            map.remove(str);
            message.setResponded(true);
            return message;
        }
        return null;
    }

    /* renamed from: a */
    public static String m40007a(Map<String, Participant> map, Message message) {
        CalendarMessageMeta calendarMessageMeta;
        Participant participant;
        MessageInternalMeta internalMeta = message.getInternalMeta();
        if (internalMeta == null || C1716k.m39897c(map) || (calendarMessageMeta = internalMeta.getCalendarMessageMeta()) == null) {
            return null;
        }
        String calendarAgentAlias = calendarMessageMeta.getCalendarAgentAlias();
        if (C1626as.isEmpty(calendarAgentAlias) || (participant = map.get(calendarAgentAlias)) == null) {
            return null;
        }
        return participant.getProfilePicUrl();
    }

    /* renamed from: a */
    public static void m40010a(Context context, Message message, long j) {
        if (!m39999v(message)) {
            return;
        }
        C1646be.m40116eC().m40113gx().execute(new RunnableC1690cn(message, context, j));
    }

    /* renamed from: a */
    public static void m40009a(Context context, List<Message> list, long j) {
        HashMap hashMap = new HashMap();
        C1511g m40004ch = m40004ch(context);
        for (Message message : m40004ch.m40742A(j)) {
            m40005b(hashMap, message);
        }
        HashMap hashMap2 = new HashMap();
        for (Message message2 : list) {
            if (m40000u(message2)) {
                m40005b(hashMap2, message2);
            } else if (m39999v(message2)) {
                String m40001t = m40001t(message2);
                if (!C1626as.isEmpty(m40001t)) {
                    Message m40006a = m40006a(hashMap, m40001t);
                    if (m40006a != null) {
                        m40004ch.m40730b(m40006a);
                    } else {
                        m40006a(hashMap2, m40001t);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m40008a(CalendarEventFragment calendarEventFragment) {
        if (calendarEventFragment == null) {
            return false;
        }
        return C1626as.m40233a(calendarEventFragment.getEventId());
    }

    /* renamed from: b */
    private static void m40005b(Map<String, Message> map, Message message) {
        String m40001t = m40001t(message);
        if (C1626as.isEmpty(m40001t)) {
            return;
        }
        map.put(m40001t, message);
    }

    /* renamed from: ch */
    private static C1511g m40004ch(Context context) {
        return new C1511g(context);
    }

    /* renamed from: g */
    public static String m40003g(Context context, Message message) {
        CalendarEventFragment m40002s = m40002s(message);
        if (m40002s == null) {
            return null;
        }
        long startMillis = m40002s.getStartMillis();
        if (startMillis > 0) {
            return C1719n.m39864o(context, startMillis);
        }
        return null;
    }

    /* renamed from: s */
    public static CalendarEventFragment m40002s(Message message) {
        List<MessageFragment> messageFragments = message.getMessageFragments();
        if (!C1716k.m39902a(messageFragments) || !(messageFragments.get(0) instanceof CalendarEventFragment)) {
            return null;
        }
        return (CalendarEventFragment) messageFragments.get(0);
    }

    /* renamed from: t */
    public static String m40001t(Message message) {
        CalendarMessageMeta m39997x = m39997x(message);
        if (m39997x == null) {
            return null;
        }
        return m39997x.getCalendarInviteId();
    }

    /* renamed from: u */
    public static boolean m40000u(Message message) {
        return message.getMessageType() == Message.MessageType.MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT.getIntValue();
    }

    /* renamed from: v */
    private static boolean m39999v(Message message) {
        return message.getMessageType() == Message.MessageType.MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER.getIntValue() || m40002s(message) != null;
    }

    /* renamed from: w */
    public static Uri m39998w(Message message) {
        Uri uri;
        CalendarMessageMeta m39997x = m39997x(message);
        if (m39997x == null) {
            return null;
        }
        try {
            String calendarEventLink = m39997x.getCalendarEventLink();
            uri = null;
            if (C1626as.m40233a(calendarEventLink)) {
                uri = Uri.parse(calendarEventLink);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            uri = null;
        }
        return uri;
    }

    /* renamed from: x */
    private static CalendarMessageMeta m39997x(Message message) {
        if (message == null || message.getInternalMeta() == null) {
            return null;
        }
        return message.getInternalMeta().getCalendarMessageMeta();
    }

    /* renamed from: y */
    public static boolean m39996y(Message message) {
        CalendarMessageMeta m39997x = m39997x(message);
        if (m39997x == null) {
            return false;
        }
        return m39997x.isRetryCalendarEvent();
    }
}
