package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p062l.C1766c;
import com.freshchat.consumer.sdk.service.AbstractC1828c;
import com.freshchat.consumer.sdk.service.C1824b;
import com.freshchat.consumer.sdk.service.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.k.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/r.class */
public class C1756r extends AbstractC1735a {
    private CalendarMessageMeta calendarMessageMeta;

    /* renamed from: rt */
    private final C1766c f4578rt = new C1766c();

    /* renamed from: ru */
    private AgentAvailabilityResponse f4579ru;

    /* renamed from: rv */
    private List<C1337l.AbstractC1339b> f4580rv;

    public C1756r(Context context) {
        super(context);
    }

    /* renamed from: b */
    public void m39678b(AbstractC1828c<List<C1337l.AbstractC1339b>> abstractC1828c) {
        abstractC1828c.mo39509b(new C1824b<>(Status.SUCCESS, this.f4580rv));
    }

    /* renamed from: c */
    public void m39677c(AbstractC1828c<List<C1337l.AbstractC1339b>> abstractC1828c) {
        abstractC1828c.mo39509b(new C1824b<>(Status.ERROR, null));
    }

    /* renamed from: jq */
    public List<C1337l.AbstractC1339b> m39674jq() {
        ArrayList arrayList = new ArrayList();
        AgentAvailabilityResponse agentAvailabilityResponse = this.f4579ru;
        if (agentAvailabilityResponse == null) {
            return arrayList;
        }
        Map<String, CalendarDay> processedCalendarDataMap = agentAvailabilityResponse.getProcessedCalendarDataMap();
        if (C1716k.m39897c(processedCalendarDataMap)) {
            return arrayList;
        }
        CalendarDay next = processedCalendarDataMap.values().iterator().next();
        arrayList.add(new C1337l.C1338a(next.getDay()));
        Iterator<Map.Entry<CalendarDay.PartOfDay, List<CalendarDay.TimeSlot>>> it = next.getTimeSlotsMap().entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<CalendarDay.PartOfDay, List<CalendarDay.TimeSlot>> next2 = it.next();
            if (i2 >= 8) {
                break;
            }
            List<CalendarDay.TimeSlot> value = next2.getValue();
            int m39900b = C1716k.m39900b(value);
            int i3 = i2;
            List<CalendarDay.TimeSlot> list = value;
            if (m39900b > 0) {
                Collections.sort(value);
                list = value;
                if (m39900b + i2 > 8) {
                    list = value.subList(0, 8 - i2);
                }
                i3 = i2 + list.size();
            }
            arrayList.add(new C1337l.C1340c(next2.getKey(), list));
            i = i3;
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m39680a(AbstractC1828c<List<C1337l.AbstractC1339b>> abstractC1828c) {
        if (this.f4580rv != null) {
            m39678b(abstractC1828c);
        }
        CalendarMessageMeta calendarMessageMeta = this.calendarMessageMeta;
        if (calendarMessageMeta == null) {
            m39677c(abstractC1828c);
            return;
        }
        this.f4578rt.m39609a(getContext(), calendarMessageMeta.getCalendarAgentAlias(), new C1757s(this, abstractC1828c));
    }

    public int getCalendarType() {
        AgentAvailabilityResponse agentAvailabilityResponse = this.f4579ru;
        if (agentAvailabilityResponse == null) {
            return 0;
        }
        return agentAvailabilityResponse.getCalendarType();
    }

    /* renamed from: ia */
    public String m39676ia() {
        String str;
        try {
            AgentAvailabilityResponse agentAvailabilityResponse = this.f4579ru;
            str = "";
            if (agentAvailabilityResponse != null) {
                str = "";
                if (agentAvailabilityResponse.getMeetingLength() > 0) {
                    str = getContext().getString(C1298R.string.freshchat_calendar_duration).replace(getContext().getString(C1298R.string.freshchat_calendar_duration_place_holder), String.valueOf(this.f4579ru.getMeetingLength() / 60));
                }
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = "";
        }
        return str;
    }

    /* renamed from: jp */
    public ArrayList<C1337l.AbstractC1339b> m39675jp() {
        ArrayList<C1337l.AbstractC1339b> arrayList = new ArrayList<>();
        AgentAvailabilityResponse agentAvailabilityResponse = this.f4579ru;
        if (agentAvailabilityResponse == null) {
            return arrayList;
        }
        Map<String, CalendarDay> processedCalendarDataMap = agentAvailabilityResponse.getProcessedCalendarDataMap();
        if (C1716k.m39894d(processedCalendarDataMap)) {
            for (CalendarDay calendarDay : processedCalendarDataMap.values()) {
                arrayList.add(new C1337l.C1338a(calendarDay.getDay()));
                for (Map.Entry<CalendarDay.PartOfDay, List<CalendarDay.TimeSlot>> entry : calendarDay.getTimeSlotsMap().entrySet()) {
                    Collections.sort(entry.getValue());
                    arrayList.add(new C1337l.C1340c(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: jr */
    public void m39673jr() {
        CalendarMessageMeta calendarMessageMeta = this.calendarMessageMeta;
        String calendarInviteId = calendarMessageMeta != null ? calendarMessageMeta.getCalendarInviteId() : null;
        if (C1626as.m40233a(calendarInviteId)) {
            C1649bg.m40107L(getContext(), calendarInviteId);
        }
    }

    public void setCalendarMessageMeta(CalendarMessageMeta calendarMessageMeta) {
        this.calendarMessageMeta = calendarMessageMeta;
    }
}
