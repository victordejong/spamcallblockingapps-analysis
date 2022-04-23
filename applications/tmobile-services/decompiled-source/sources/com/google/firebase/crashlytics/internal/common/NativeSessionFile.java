package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/NativeSessionFile.class */
interface NativeSessionFile {
    @Nullable
    CrashlyticsReport.FilesPayload.File asFilePayload();

    @NonNull
    String getReportsEndpointFilename();

    @Nullable
    InputStream getStream();
}
