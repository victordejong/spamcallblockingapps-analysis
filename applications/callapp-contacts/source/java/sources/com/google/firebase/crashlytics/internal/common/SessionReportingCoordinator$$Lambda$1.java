package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1.class */
public final /* synthetic */ class SessionReportingCoordinator$$Lambda$1 implements AbstractC14179b {
    private final SessionReportingCoordinator arg$1;

    private SessionReportingCoordinator$$Lambda$1(SessionReportingCoordinator sessionReportingCoordinator) {
        this.arg$1 = sessionReportingCoordinator;
    }

    public static AbstractC14179b lambdaFactory$(SessionReportingCoordinator sessionReportingCoordinator) {
        return new SessionReportingCoordinator$$Lambda$1(sessionReportingCoordinator);
    }

    @Override // com.google.android.gms.tasks.AbstractC14179b
    public final Object then(AbstractC14185h abstractC14185h) {
        boolean onReportSendComplete;
        onReportSendComplete = this.arg$1.onReportSendComplete(abstractC14185h);
        return Boolean.valueOf(onReportSendComplete);
    }
}
