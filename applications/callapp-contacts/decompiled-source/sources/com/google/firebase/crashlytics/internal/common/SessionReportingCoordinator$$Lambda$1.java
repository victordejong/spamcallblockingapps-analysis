package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1.class */
final /* synthetic */ class SessionReportingCoordinator$$Lambda$1 implements b {
    private final SessionReportingCoordinator arg$1;

    private SessionReportingCoordinator$$Lambda$1(SessionReportingCoordinator sessionReportingCoordinator) {
        this.arg$1 = sessionReportingCoordinator;
    }

    public static b lambdaFactory$(SessionReportingCoordinator sessionReportingCoordinator) {
        return new SessionReportingCoordinator$$Lambda$1(sessionReportingCoordinator);
    }

    @Override // com.google.android.gms.tasks.b
    public final Object then(h hVar) {
        return Boolean.valueOf(SessionReportingCoordinator.access$lambda$0(this.arg$1, hVar));
    }
}
