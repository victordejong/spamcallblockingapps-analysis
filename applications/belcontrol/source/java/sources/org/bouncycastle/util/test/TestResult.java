package org.bouncycastle.util.test;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/test/TestResult.class */
public interface TestResult {
    Throwable getException();

    boolean isSuccessful();

    String toString();
}
