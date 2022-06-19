package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution.class */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution extends CrashlyticsReport.Session.Event.Application.Execution {
    private final ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> binaries;
    private final CrashlyticsReport.Session.Event.Application.Execution.Exception exception;
    private final CrashlyticsReport.Session.Event.Application.Execution.Signal signal;
    private final ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> threads;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Builder {
        private ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> binaries;
        private CrashlyticsReport.Session.Event.Application.Execution.Exception exception;
        private CrashlyticsReport.Session.Event.Application.Execution.Signal signal;
        private ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> threads;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution build() {
            String str = "";
            if (this.threads == null) {
                str = " threads";
            }
            String str2 = str;
            if (this.exception == null) {
                str2 = str + " exception";
            }
            String str3 = str2;
            if (this.signal == null) {
                str3 = str2 + " signal";
            }
            String str4 = str3;
            if (this.binaries == null) {
                str4 = str3 + " binaries";
            }
            if (str4.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution(this.threads, this.exception, this.signal, this.binaries);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder setBinaries(ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> immutableList) {
            Objects.requireNonNull(immutableList, "Null binaries");
            this.binaries = immutableList;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder setException(CrashlyticsReport.Session.Event.Application.Execution.Exception exception) {
            Objects.requireNonNull(exception, "Null exception");
            this.exception = exception;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder setSignal(CrashlyticsReport.Session.Event.Application.Execution.Signal signal) {
            Objects.requireNonNull(signal, "Null signal");
            this.signal = signal;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder setThreads(ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> immutableList) {
            Objects.requireNonNull(immutableList, "Null threads");
            this.threads = immutableList;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session_Event_Application_Execution(ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> immutableList, CrashlyticsReport.Session.Event.Application.Execution.Exception exception, CrashlyticsReport.Session.Event.Application.Execution.Signal signal, ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> immutableList2) {
        this.threads = immutableList;
        this.exception = exception;
        this.signal = signal;
        this.binaries = immutableList2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution execution = (CrashlyticsReport.Session.Event.Application.Execution) obj;
        return this.threads.equals(execution.getThreads()) && this.exception.equals(execution.getException()) && this.signal.equals(execution.getSignal()) && this.binaries.equals(execution.getBinaries());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> getBinaries() {
        return this.binaries;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.Session.Event.Application.Execution.Exception getException() {
        return this.exception;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.Session.Event.Application.Execution.Signal getSignal() {
        return this.signal;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> getThreads() {
        return this.threads;
    }

    public final int hashCode() {
        return ((((((this.threads.hashCode() ^ 1000003) * 1000003) ^ this.exception.hashCode()) * 1000003) ^ this.signal.hashCode()) * 1000003) ^ this.binaries.hashCode();
    }

    public final String toString() {
        return "Execution{threads=" + this.threads + ", exception=" + this.exception + ", signal=" + this.signal + ", binaries=" + this.binaries + "}";
    }
}
