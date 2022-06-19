package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1719n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.k.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/p.class */
public class C1754p extends AbstractC1735a {
    private CalendarMessageMeta calendarMessageMeta;
    private int calendarType;

    /* renamed from: oY */
    private String f4575oY;

    /* renamed from: qq */
    public CalendarDay.TimeSlot f4576qq;

    public C1754p(Context context) {
        super(context);
    }

    /* renamed from: b */
    public void m39694b(CalendarDay.TimeSlot timeSlot) {
        this.f4576qq = timeSlot;
    }

    /* renamed from: br */
    public void m39693br(String str) {
        this.f4575oY = str;
    }

    public int getCalendarType() {
        return this.calendarType;
    }

    /* renamed from: hL */
    public String m39692hL() {
        return this.f4575oY;
    }

    /* renamed from: ih */
    public CalendarDay.TimeSlot m39691ih() {
        return this.f4576qq;
    }

    /* renamed from: ii */
    public String m39690ii() {
        return this.f4576qq == null ? "" : C22128a.m8725C2(C1719n.m39863p(getContext(), this.f4576qq.getFromMillis()), " - ", C1719n.m39863p(getContext(), this.f4576qq.getToMillis()));
    }

    /* renamed from: ij */
    public String m39689ij() {
        return this.f4576qq == null ? "" : C1719n.m39862q(getContext(), this.f4576qq.getFromMillis());
    }

    /* renamed from: ik */
    public boolean m39688ik() {
        return C1466e.m40905i(getContext()).isTeamMemberInfoVisible();
    }

    public void setCalendarMessageMeta(CalendarMessageMeta calendarMessageMeta) {
        this.calendarMessageMeta = calendarMessageMeta;
    }

    public void setCalendarType(int i) {
        this.calendarType = i;
    }
}
