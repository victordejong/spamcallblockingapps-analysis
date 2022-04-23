package com.google.firebase.crashlytics.internal.report.model;

import java.io.File;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/report/model/Report.class */
public interface Report {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/report/model/Report$Type.class */
    public enum Type {
        JAVA,
        NATIVE
    }

    /* renamed from: a */
    Map<String, String> mo7365a();

    /* renamed from: b */
    String mo7364b();

    /* renamed from: c */
    File mo7363c();

    /* renamed from: d */
    File[] mo7362d();

    /* renamed from: e */
    String mo7361e();

    Type getType();

    void remove();
}
