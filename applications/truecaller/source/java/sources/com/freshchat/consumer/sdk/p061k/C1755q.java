package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p057j.C1719n;
/* renamed from: com.freshchat.consumer.sdk.k.q */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/q.class */
public class C1755q extends AbstractC1735a {

    /* renamed from: qs */
    private CalendarDay.TimeSlot f4577qs;

    public C1755q(Context context) {
        super(context);
    }

    /* renamed from: c */
    public void m39687c(CalendarDay.TimeSlot timeSlot) {
        this.f4577qs = timeSlot;
    }

    /* renamed from: il */
    public CalendarDay.TimeSlot m39686il() {
        return this.f4577qs;
    }

    /* renamed from: im */
    public String m39685im() {
        return this.f4577qs != null ? C1719n.m39863p(getContext(), this.f4577qs.getFromMillis()) : "";
    }
}
