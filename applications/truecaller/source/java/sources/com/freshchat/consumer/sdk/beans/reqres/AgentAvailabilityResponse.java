package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarTimeSlot;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse.class */
public class AgentAvailabilityResponse implements AbstractC1907k {
    private int bufferTime;
    private List<CalendarTimeSlot> calendarTimeSlots;
    private int calendarType;

    /* renamed from: id */
    private String f4104id;
    private int meetingLength;
    private int minNoticeTime;
    private Map<String, CalendarDay> processedCalendarDataMap;
    private boolean success;

    public int getBufferTime() {
        return this.bufferTime;
    }

    public List<CalendarTimeSlot> getCalendarTimeSlots() {
        return this.calendarTimeSlots;
    }

    public int getCalendarType() {
        return this.calendarType;
    }

    public String getId() {
        return this.f4104id;
    }

    public int getMeetingLength() {
        return this.meetingLength;
    }

    public int getMinNoticeTime() {
        return this.minNoticeTime;
    }

    public Map<String, CalendarDay> getProcessedCalendarDataMap() {
        return this.processedCalendarDataMap;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1907k
    public boolean isSuccess() {
        return this.success;
    }

    public void setBufferTime(int i) {
        this.bufferTime = i;
    }

    public void setCalendarTimeSlots(List<CalendarTimeSlot> list) {
        this.calendarTimeSlots = list;
    }

    public void setCalendarType(int i) {
        this.calendarType = i;
    }

    public void setId(String str) {
        this.f4104id = str;
    }

    public void setMeetingLength(int i) {
        this.meetingLength = i;
    }

    public void setMinNoticeTime(int i) {
        this.minNoticeTime = i;
    }

    public void setProcessedCalendarDataMap(Map<String, CalendarDay> map) {
        this.processedCalendarDataMap = map;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
