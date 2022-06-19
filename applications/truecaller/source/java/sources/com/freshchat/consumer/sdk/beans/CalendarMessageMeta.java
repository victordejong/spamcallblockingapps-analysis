package com.freshchat.consumer.sdk.beans;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/CalendarMessageMeta.class */
public class CalendarMessageMeta implements Parcelable {
    public static final Parcelable.Creator<CalendarMessageMeta> CREATOR = new Parcelable.Creator<CalendarMessageMeta>() { // from class: com.freshchat.consumer.sdk.beans.CalendarMessageMeta.1
        @Override // android.os.Parcelable.Creator
        public CalendarMessageMeta createFromParcel(Parcel parcel) {
            return new CalendarMessageMeta(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CalendarMessageMeta[] newArray(int i) {
            return new CalendarMessageMeta[i];
        }
    };
    private String calendarAgentAlias;
    private long calendarAgentId;
    private String calendarBookingEmail;
    private String calendarEventLink;
    private String calendarInviteId;
    private long calendarSenderId;
    private boolean retryCalendarEvent;

    public CalendarMessageMeta() {
    }

    public CalendarMessageMeta(Parcel parcel) {
        this.calendarSenderId = parcel.readLong();
        this.calendarAgentId = parcel.readLong();
        this.calendarAgentAlias = parcel.readString();
        this.calendarInviteId = parcel.readString();
        this.retryCalendarEvent = parcel.readByte() != 0;
        this.calendarBookingEmail = parcel.readString();
        this.calendarEventLink = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCalendarAgentAlias() {
        return this.calendarAgentAlias;
    }

    public long getCalendarAgentId() {
        return this.calendarAgentId;
    }

    public String getCalendarBookingEmail() {
        return this.calendarBookingEmail;
    }

    public String getCalendarEventLink() {
        return this.calendarEventLink;
    }

    public String getCalendarInviteId() {
        return this.calendarInviteId;
    }

    public long getCalendarSenderId() {
        return this.calendarSenderId;
    }

    public boolean isRetryCalendarEvent() {
        return this.retryCalendarEvent;
    }

    public void setCalendarAgentAlias(String str) {
        this.calendarAgentAlias = str;
    }

    public void setCalendarAgentId(long j) {
        this.calendarAgentId = j;
    }

    public void setCalendarBookingEmail(String str) {
        this.calendarBookingEmail = str;
    }

    public void setCalendarEventLink(String str) {
        this.calendarEventLink = str;
    }

    public void setCalendarInviteId(String str) {
        this.calendarInviteId = str;
    }

    public void setCalendarSenderId(long j) {
        this.calendarSenderId = j;
    }

    public void setRetryCalendarEvent(boolean z) {
        this.retryCalendarEvent = z;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("CalendarMessageMeta{", "calendarSenderId=");
        m8704I.append(this.calendarSenderId);
        m8704I.append("calendarAgentId = ");
        m8704I.append(this.calendarSenderId);
        m8704I.append(", calendarAgentAlias='");
        C22128a.m8678P0(m8704I, this.calendarAgentAlias, '\'', ", calendarInviteId='");
        C22128a.m8678P0(m8704I, this.calendarInviteId, '\'', ", retryCalendarEvent=");
        m8704I.append(this.retryCalendarEvent);
        m8704I.append(", calendarBookingEmail=");
        m8704I.append(this.calendarBookingEmail);
        m8704I.append(", calendarEventLink=");
        return C22128a.m8630e(m8704I, this.calendarEventLink, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.calendarSenderId);
        parcel.writeLong(this.calendarAgentId);
        parcel.writeString(this.calendarAgentAlias);
        parcel.writeString(this.calendarInviteId);
        parcel.writeByte(this.retryCalendarEvent ? (byte) 1 : (byte) 0);
        parcel.writeString(this.calendarBookingEmail);
        parcel.writeString(this.calendarEventLink);
    }
}
