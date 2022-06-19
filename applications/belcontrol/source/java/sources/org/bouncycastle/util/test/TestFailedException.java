package org.bouncycastle.util.test;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/test/TestFailedException.class */
public class TestFailedException extends RuntimeException {
    private TestResult _result;

    public TestFailedException(TestResult testResult) {
        this._result = testResult;
    }

    public TestResult getResult() {
        return this._result;
    }
}
