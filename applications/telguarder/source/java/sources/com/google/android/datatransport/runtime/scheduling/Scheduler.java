package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/Scheduler.class */
public interface Scheduler {
    void schedule(TransportContext transportContext, EventInternal eventInternal, TransportScheduleCallback transportScheduleCallback);
}
