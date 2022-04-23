package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application.class */
final class AutoValue_CrashlyticsReport_Session_Event_Application extends CrashlyticsReport.Session.Event.Application {
    private final Boolean background;
    private final ImmutableList<CrashlyticsReport.CustomAttribute> customAttributes;
    private final CrashlyticsReport.Session.Event.Application.Execution execution;
    private final int uiOrientation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Builder {
        private Boolean background;
        private ImmutableList<CrashlyticsReport.CustomAttribute> customAttributes;
        private CrashlyticsReport.Session.Event.Application.Execution execution;
        private Integer uiOrientation;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(CrashlyticsReport.Session.Event.Application application) {
            this.execution = application.getExecution();
            this.customAttributes = application.getCustomAttributes();
            this.background = application.getBackground();
            this.uiOrientation = Integer.valueOf(application.getUiOrientation());
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Builder
        public CrashlyticsReport.Session.Event.Application build() {
            String str = "";
            if (this.execution == null) {
                str = " execution";
            }
            String str2 = str;
            if (this.uiOrientation == null) {
                str2 = str + " uiOrientation";
            }
            if (str2.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application(this.execution, this.customAttributes, this.background, this.uiOrientation.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Builder
        public CrashlyticsReport.Session.Event.Application.Builder setBackground(@Nullable Boolean bool) {
            this.background = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Builder
        public CrashlyticsReport.Session.Event.Application.Builder setCustomAttributes(ImmutableList<CrashlyticsReport.CustomAttribute> immutableList) {
            this.customAttributes = immutableList;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Builder
        public CrashlyticsReport.Session.Event.Application.Builder setExecution(CrashlyticsReport.Session.Event.Application.Execution execution) {
            if (execution != null) {
                this.execution = execution;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Builder
        public CrashlyticsReport.Session.Event.Application.Builder setUiOrientation(int i) {
            this.uiOrientation = Integer.valueOf(i);
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session_Event_Application(CrashlyticsReport.Session.Event.Application.Execution execution, @Nullable ImmutableList<CrashlyticsReport.CustomAttribute> immutableList, @Nullable Boolean bool, int i) {
        this.execution = execution;
        this.customAttributes = immutableList;
        this.background = bool;
        this.uiOrientation = i;
    }

    public boolean equals(Object obj) {
        ImmutableList<CrashlyticsReport.CustomAttribute> immutableList;
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application application = (CrashlyticsReport.Session.Event.Application) obj;
        if (!this.execution.equals(application.getExecution()) || ((immutableList = this.customAttributes) != null ? !immutableList.equals(application.getCustomAttributes()) : application.getCustomAttributes() != null) || ((bool = this.background) != null ? !bool.equals(application.getBackground()) : application.getBackground() != null) || this.uiOrientation != application.getUiOrientation()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application
    @Nullable
    public Boolean getBackground() {
        return this.background;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application
    @Nullable
    public ImmutableList<CrashlyticsReport.CustomAttribute> getCustomAttributes() {
        return this.customAttributes;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application
    @NonNull
    public CrashlyticsReport.Session.Event.Application.Execution getExecution() {
        return this.execution;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application
    public int getUiOrientation() {
        return this.uiOrientation;
    }

    public int hashCode() {
        int hashCode = this.execution.hashCode();
        ImmutableList<CrashlyticsReport.CustomAttribute> immutableList = this.customAttributes;
        int i = 0;
        int hashCode2 = immutableList == null ? 0 : immutableList.hashCode();
        Boolean bool = this.background;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ this.uiOrientation;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application
    public CrashlyticsReport.Session.Event.Application.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        return "Application{execution=" + this.execution + ", customAttributes=" + this.customAttributes + ", background=" + this.background + ", uiOrientation=" + this.uiOrientation + "}";
    }
}
