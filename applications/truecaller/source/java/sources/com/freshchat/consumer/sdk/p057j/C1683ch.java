package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarTimeSlot;
import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* renamed from: com.freshchat.consumer.sdk.j.ch */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ch.class */
public class C1683ch {
    /* renamed from: a */
    public static Map<String, CalendarDay> m40017a(TimeZone timeZone, AgentAvailabilityResponse agentAvailabilityResponse) {
        TreeMap treeMap = new TreeMap();
        List<CalendarTimeSlot> calendarTimeSlots = agentAvailabilityResponse.getCalendarTimeSlots();
        if (C1716k.m39902a(calendarTimeSlots)) {
            for (CalendarTimeSlot calendarTimeSlot : calendarTimeSlots) {
                m40020a(calendarTimeSlot, timeZone, agentAvailabilityResponse.getMeetingLength(), treeMap);
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    private static void m40020a(CalendarTimeSlot calendarTimeSlot, TimeZone timeZone, int i, Map<String, CalendarDay> map) {
        Calendar m39994a = C1691co.m39994a(timeZone, calendarTimeSlot.getFrom());
        m40019a(m39994a);
        Calendar m39994a2 = C1691co.m39994a(timeZone, calendarTimeSlot.getTo());
        long j = i;
        while (true) {
            long timeInMillis = m39994a.getTimeInMillis() + (j * 1000);
            if (timeInMillis <= m39994a2.getTimeInMillis()) {
                m40018a(map, m39994a, timeInMillis);
                C1691co.m39995a(m39994a, i);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m40019a(Calendar calendar) {
        if (calendar == null) {
            return;
        }
        long timeInMillis = calendar.getTimeInMillis();
        long j = timeInMillis % 900000;
        if (j <= 0) {
            return;
        }
        calendar.setTimeInMillis((900000 - j) + timeInMillis);
    }

    /* renamed from: a */
    private static void m40018a(Map<String, CalendarDay> map, Calendar calendar, long j) {
        String m39872c = C1719n.m39872c(calendar);
        if (m39872c != null) {
            int i = calendar.get(11);
            CalendarDay.TimeSlot timeSlot = new CalendarDay.TimeSlot(calendar.getTimeInMillis(), j);
            CalendarDay calendarDay = map.get(m39872c);
            CalendarDay calendarDay2 = calendarDay;
            if (calendarDay == null) {
                calendarDay2 = new CalendarDay(m39872c);
            }
            CalendarDay.PartOfDay partOfDay = CalendarDay.PartOfDay.getPartOfDay(i);
            if (partOfDay != null) {
                List<CalendarDay.TimeSlot> list = calendarDay2.getTimeSlotsMap().get(partOfDay);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(timeSlot);
                calendarDay2.getTimeSlotsMap().put(partOfDay, arrayList);
            }
            map.put(m39872c, calendarDay2);
        }
    }
}
