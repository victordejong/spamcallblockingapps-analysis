package org.spongycastle.util.test;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/test/TestResult.class */
public interface TestResult {
    Throwable getException();

    boolean isSuccessful();

    String toString();
}
