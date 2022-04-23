package com.google.android.datatransport.p062h.p067x;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.p062h.p067x.p068j.AbstractC1318c;
import com.google.android.datatransport.p062h.p069y.AbstractC1325a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC1344r;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.e;
/* renamed from: com.google.android.datatransport.h.x.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/h.class */
public abstract class AbstractC1317h {
    /* renamed from: a */
    static AbstractC1344r m9180a(Context context, AbstractC1318c cVar, SchedulerConfig schedulerConfig, AbstractC1325a aVar) {
        return Build.VERSION.SDK_INT >= 21 ? new e(context, cVar, schedulerConfig) : new a(context, cVar, aVar, schedulerConfig);
    }
}
