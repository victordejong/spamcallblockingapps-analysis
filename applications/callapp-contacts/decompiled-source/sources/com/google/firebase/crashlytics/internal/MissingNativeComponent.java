package com.google.firebase.crashlytics.internal;

import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/MissingNativeComponent.class */
public final class MissingNativeComponent implements CrashlyticsNativeComponent {
    private static final NativeSessionFileProvider MISSING_NATIVE_SESSION_FILE_PROVIDER = new MissingNativeSessionFileProvider();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider.class */
    static final class MissingNativeSessionFileProvider implements NativeSessionFileProvider {
        private MissingNativeSessionFileProvider() {
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getAppFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getBinaryImagesFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getDeviceFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getMetadataFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getMinidumpFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getOsFile() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.NativeSessionFileProvider
        public final File getSessionFile() {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final boolean finalizeSession(String str) {
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final NativeSessionFileProvider getSessionFileProvider(String str) {
        return MISSING_NATIVE_SESSION_FILE_PROVIDER;
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final boolean hasCrashDataForSession(String str) {
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final boolean openSession(String str) {
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final void writeBeginSession(String str, String str2, long j) {
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final void writeSessionApp(String str, String str2, String str3, String str4, String str5, int i, String str6) {
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final void writeSessionDevice(String str, int i, String str2, int i2, long j, long j2, boolean z, int i3, String str3, String str4) {
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final void writeSessionOs(String str, String str2, String str3, boolean z) {
    }
}
