package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.bg */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bg.class */
public class C1649bg {

    /* renamed from: com.freshchat.consumer.sdk.j.bg$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bg$a.class */
    public static class C1650a {
        private Event.EventName eventName;
        private Map<Event.Property, Object> properties;

        private C1650a(Event.EventName eventName) {
            this.properties = new HashMap();
            this.eventName = eventName;
        }

        public /* synthetic */ C1650a(Event.EventName eventName, C1652bh c1652bh) {
            this(eventName);
        }

        /* renamed from: a */
        public C1650a m40067a(Event.Property property, Object obj) {
            if (property == null) {
                C1613ai.m40283e("FRESHCHAT_WARNING", "property can not be null for Event::Builder::addProperty()");
                return this;
            }
            if (obj == null || ((obj instanceof String) && C1626as.isEmpty(obj.toString()))) {
                C1613ai.m40283e("FRESHCHAT_WARNING", "value can not be null/empty for Event::Builder::addProperty()");
                return this;
            }
            this.properties.put(property, obj);
            return this;
        }

        /* renamed from: gz */
        public Event m40064gz() {
            Event event = new Event();
            event.setEventName(this.eventName);
            event.setProperties(this.properties);
            return event;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.bg$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bg$b.class */
    public interface AbstractC1651b {
        /* renamed from: gy */
        Event mo39980gy();
    }

    /* renamed from: A */
    public static Category m40112A(Context context, String str) {
        if (C1733y.m39775cp(context)) {
            return null;
        }
        return new C1513i(context).m40703Y(str);
    }

    /* renamed from: J */
    public static void m40109J(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarFindTimeSlotClick, str);
    }

    /* renamed from: K */
    public static void m40108K(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarInviteCancel, str);
    }

    /* renamed from: L */
    public static void m40107L(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarNoTimeSlotFound, str);
    }

    /* renamed from: M */
    public static void m40106M(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarBookingSuccess, str);
    }

    /* renamed from: N */
    public static void m40105N(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarBookingRetry, str);
    }

    /* renamed from: O */
    public static void m40104O(Context context, String str) {
        m40099a(context, Event.EventName.FCEventCalendarBookingFailure, str);
    }

    /* renamed from: a */
    public static Bundle m40089a(Event event) {
        Bundle bundle = new Bundle();
        bundle.putString("event_name", event.getEventName().getName());
        for (Map.Entry<Event.Property, Object> entry : event.getProperties().entrySet()) {
            try {
                if (entry.getValue() instanceof String) {
                    bundle.putString(entry.getKey().getName(), entry.getValue().toString());
                } else if (entry.getValue() instanceof Long) {
                    bundle.putLong(entry.getKey().getName(), ((Long) entry.getValue()).longValue());
                } else if (entry.getValue() instanceof Integer) {
                    bundle.putInt(entry.getKey().getName(), ((Integer) entry.getValue()).intValue());
                } else if (entry.getValue() instanceof Boolean) {
                    bundle.putBoolean(entry.getKey().getName(), ((Boolean) entry.getValue()).booleanValue());
                } else {
                    C1613ai.m40283e("FRESHCHAT", "Error bundling Value of Property " + entry.getKey().getName());
                }
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("Error bundling Value of Property ");
                m8728C.append(entry.getKey().getName());
                m8728C.append(StringConstant.NEW_LINE);
                m8728C.append(e.toString());
                C1613ai.m40283e("FRESHCHAT", m8728C.toString());
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static C1650a m40090a(Event.EventName eventName) {
        return new C1650a(eventName, null);
    }

    /* renamed from: a */
    public static void m40103a(Context context, long j, boolean z, int i, String str) {
        m40096a(context, new C1667bw(context, j, z, i, str));
    }

    /* renamed from: a */
    public static void m40102a(Context context, long j, String[] strArr) {
        m40096a(context, new C1665bu(context, j, strArr));
    }

    /* renamed from: a */
    public static void m40101a(Context context, Uri uri) {
        m40096a(context, new C1654bj(uri));
    }

    /* renamed from: a */
    private static void m40100a(Context context, Event.EventName eventName) {
        m40096a(context, new C1703cz(eventName));
    }

    /* renamed from: a */
    private static void m40099a(Context context, Event.EventName eventName, String str) {
        m40096a(context, new C1697cu(eventName, str));
    }

    /* renamed from: a */
    public static void m40098a(Context context, CarouselCardDefaultFragment carouselCardDefaultFragment) {
        m40096a(context, new C1660bp(carouselCardDefaultFragment));
    }

    /* renamed from: a */
    public static void m40097a(Context context, QuickReplyButtonFragment quickReplyButtonFragment) {
        m40096a(context, new C1659bo(quickReplyButtonFragment));
    }

    /* renamed from: a */
    private static void m40096a(Context context, AbstractC1651b abstractC1651b) {
        C1646be.m40116eC().m40113gx().execute(new RunnableC1705da(context, abstractC1651b));
    }

    /* renamed from: a */
    public static void m40095a(Context context, String str, int i, boolean z) {
        m40096a(context, new C1663bs(str, i, z));
    }

    /* renamed from: a */
    public static void m40094a(Context context, String str, String str2, String str3) {
        m40096a(context, new C1656bl(str, str2, str3));
    }

    /* renamed from: a */
    public static void m40093a(Context context, String str, String str2, String str3, String str4, boolean z) {
        m40096a(context, new C1652bh(str2, str4, z, context, str, str3));
    }

    /* renamed from: a */
    public static void m40092a(Context context, String str, String str2, String str3, String str4, String[] strArr) {
        m40096a(context, new C1655bk(str4, str2, context, str, str3, strArr));
    }

    /* renamed from: a */
    public static void m40091a(Context context, String str, String str2, String[] strArr) {
        m40096a(context, new C1661bq(str2, context, str, strArr));
    }

    /* renamed from: b */
    public static void m40088b(Context context, CarouselCardDefaultFragment carouselCardDefaultFragment) {
        m40096a(context, new C1679ce(carouselCardDefaultFragment));
    }

    /* renamed from: bK */
    public static void m40086bK(Context context) {
        m40100a(context, Event.EventName.FCEventMessageReceive);
    }

    /* renamed from: bL */
    public static void m40085bL(Context context) {
        m40100a(context, Event.EventName.FCEventScreenView);
    }

    /* renamed from: bM */
    public static void m40084bM(Context context) {
        m40100a(context, Event.EventName.FCEventIdTokenStatusChange);
    }

    /* renamed from: bY */
    public static void m40083bY(Context context) {
        m40100a(context, Event.EventName.FCEventDropDownShow);
    }

    /* renamed from: bZ */
    public static void m40082bZ(Context context) {
        m40100a(context, Event.EventName.FCEventCarouselShow);
    }

    /* renamed from: c */
    public static Conversation m40081c(Context context, long j) {
        return new C1508e(context).m40760f(j);
    }

    /* renamed from: c */
    public static void m40080c(Context context, long j, long j2) {
        m40096a(context, new C1666bv(j2, context, j));
    }

    /* renamed from: c */
    public static void m40079c(Context context, String[] strArr) {
        m40096a(context, new C1662br(strArr));
    }

    /* renamed from: d */
    public static void m40078d(Context context, long j, long j2) {
        m40096a(context, new C1653bi(j2, context, j));
    }

    /* renamed from: d */
    public static void m40077d(Context context, String[] strArr) {
        m40096a(context, new C1664bt(strArr));
    }

    /* renamed from: e */
    public static Event m40076e(Bundle bundle) throws IllegalArgumentException {
        Event.EventName eventName = Event.EventName.get(bundle);
        if (eventName == null) {
            C1613ai.m40283e("FRESHCHAT_WARNING", "event_name missing in Event::fromBundle()");
            return null;
        }
        Bundle bundle2 = (Bundle) bundle.clone();
        bundle2.remove("event_name");
        HashMap hashMap = new HashMap();
        for (String str : bundle2.keySet()) {
            Event.Property property = Event.Property.get(str);
            if (property == null) {
                C1613ai.m40283e("FRESHCHAT", "Could not find eventName property - " + str);
            } else {
                hashMap.put(property, bundle2.get(str));
            }
        }
        Event event = new Event();
        event.setEventName(eventName);
        event.setProperties(hashMap);
        return event;
    }

    /* renamed from: f */
    public static void m40075f(Context context, boolean z) {
        m40096a(context, new C1694cr(z));
    }

    /* renamed from: j */
    public static Channel m40074j(Context context, long j) {
        return new C1506c(context).m40771e(j);
    }

    /* renamed from: k */
    public static void m40073k(Context context, long j) {
        m40096a(context, new C1668bx(context, j));
    }

    /* renamed from: l */
    public static void m40072l(Context context, long j) {
        m40096a(context, new C1658bn(context, j));
    }

    /* renamed from: y */
    public static void m40069y(Context context, String str) {
        m40096a(context, new C1657bm(str));
    }

    /* renamed from: z */
    public static Article m40068z(Context context, String str) {
        if (C1733y.m39775cp(context)) {
            return null;
        }
        return new C1513i(context).m40701ab(str);
    }
}
