package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1.class */
public final /* synthetic */ class SessionReportingCoordinator$$Lambda$1 implements Continuation {
    private final SessionReportingCoordinator arg$1;

    private SessionReportingCoordinator$$Lambda$1(SessionReportingCoordinator sessionReportingCoordinator) {
        this.arg$1 = sessionReportingCoordinator;
    }

    public static Continuation lambdaFactory$(SessionReportingCoordinator sessionReportingCoordinator) {
        return new SessionReportingCoordinator$$Lambda$1(sessionReportingCoordinator);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        boolean onReportSendComplete;
        onReportSendComplete = this.arg$1.onReportSendComplete(task);
        return Boolean.valueOf(onReportSendComplete);
    }
}
