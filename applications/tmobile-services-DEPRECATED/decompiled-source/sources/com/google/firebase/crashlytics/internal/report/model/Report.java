package com.google.firebase.crashlytics.internal.report.model;

import java.io.File;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/model/Report.class */
public interface Report {

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/model/Report$Type.class */
    public enum Type {
        JAVA,
        NATIVE
    }

    Map<String, String> getCustomHeaders();

    File getFile();

    String getFileName();

    File[] getFiles();

    String getIdentifier();

    Type getType();

    void remove();
}
