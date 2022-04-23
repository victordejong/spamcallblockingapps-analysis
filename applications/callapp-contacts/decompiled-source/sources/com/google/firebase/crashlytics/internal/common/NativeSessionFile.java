package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/NativeSessionFile.class */
interface NativeSessionFile {
    CrashlyticsReport.FilesPayload.File asFilePayload();

    String getReportsEndpointFilename();

    InputStream getStream();
}
