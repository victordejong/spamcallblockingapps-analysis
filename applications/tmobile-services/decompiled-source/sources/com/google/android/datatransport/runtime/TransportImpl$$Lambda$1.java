package com.google.android.datatransport.runtime;

import com.google.android.datatransport.TransportScheduleCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportImpl$$Lambda$1.class */
final /* synthetic */ class TransportImpl$$Lambda$1 implements TransportScheduleCallback {

    /* renamed from: a */
    private static final TransportImpl$$Lambda$1 f6650a = new TransportImpl$$Lambda$1();

    private TransportImpl$$Lambda$1() {
    }

    /* renamed from: a */
    public static TransportScheduleCallback m15417a() {
        return f6650a;
    }

    @Override // com.google.android.datatransport.TransportScheduleCallback
    public void onSchedule(Exception exc) {
        TransportImpl.m15418a(exc);
    }
}
