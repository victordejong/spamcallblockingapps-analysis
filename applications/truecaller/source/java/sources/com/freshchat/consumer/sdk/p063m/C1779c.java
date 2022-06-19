package com.freshchat.consumer.sdk.p063m;

import android.os.Bundle;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p045a.C1332i;
import com.freshchat.consumer.sdk.p063m.AbstractC1776a;
/* renamed from: com.freshchat.consumer.sdk.m.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/c.class */
public class C1779c implements C1332i.AbstractC1333a {

    /* renamed from: oV */
    public final /* synthetic */ AbstractC1778b f4633oV;

    public C1779c(AbstractC1778b abstractC1778b) {
        this.f4633oV = abstractC1778b;
    }

    @Override // com.freshchat.consumer.sdk.p045a.C1332i.AbstractC1333a
    /* renamed from: a */
    public void mo39586a(CalendarDay.TimeSlot timeSlot) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("EXTRA_CALENDAR_SELECTED_TIMESLOT", timeSlot);
        bundle.putInt("EXTRA_CALENDAR_TYPE", this.f4633oV.getCalendarType());
        this.f4633oV.m39594a(AbstractC1776a.EnumC1777a.CALENDAR_TIMESLOT_CONFIRMATION_FRAGMENT, bundle);
    }
}
