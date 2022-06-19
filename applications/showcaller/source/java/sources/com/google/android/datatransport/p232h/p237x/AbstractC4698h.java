package com.google.android.datatransport.p232h.p237x;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4774a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4780e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
/* renamed from: com.google.android.datatransport.h.x.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/h.class */
public abstract class AbstractC4698h {
    /* renamed from: a */
    public static AbstractC4793r m21972a(Context context, AbstractC4710c abstractC4710c, SchedulerConfig schedulerConfig, AbstractC4746a abstractC4746a) {
        return Build.VERSION.SDK_INT >= 21 ? new C4780e(context, abstractC4710c, schedulerConfig) : new C4774a(context, abstractC4710c, abstractC4746a, schedulerConfig);
    }
}
