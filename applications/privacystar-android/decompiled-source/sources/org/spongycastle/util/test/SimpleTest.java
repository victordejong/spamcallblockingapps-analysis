package org.spongycastle.util.test;

import java.io.PrintStream;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/test/SimpleTest.class */
public abstract class SimpleTest implements Test {
    protected static void runTest(Test test) {
        runTest(test, System.out);
    }

    protected static void runTest(Test test, PrintStream printStream) {
        TestResult perform = test.perform();
        printStream.println(perform.toString());
        if (perform.getException() != null) {
            perform.getException().printStackTrace(printStream);
        }
    }

    private TestResult success() {
        return SimpleTestResult.successful(this, "Okay");
    }

    protected boolean areEqual(byte[] bArr, byte[] bArr2) {
        return Arrays.areEqual(bArr, bArr2);
    }

    protected boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (!areEqual(bArr[i], bArr2[i])) {
                return false;
            }
        }
        return true;
    }

    protected void fail(String str) {
        throw new TestFailedException(SimpleTestResult.failed(this, str));
    }

    protected void fail(String str, Object obj, Object obj2) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, obj, obj2));
    }

    protected void fail(String str, Throwable th) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, th));
    }

    @Override // org.spongycastle.util.test.Test
    public abstract String getName();

    protected void isEquals(int i, int i2) {
        if (i != i2) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(long j, long j2) {
        if (j != j2) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(Object obj, Object obj2) {
        if (!obj.equals(obj2)) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(String str, long j, long j2) {
        if (j != j2) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isEquals(String str, Object obj, Object obj2) {
        if (obj != null || obj2 != null) {
            if (obj == null) {
                throw new TestFailedException(SimpleTestResult.failed(this, str));
            } else if (obj2 == null) {
                throw new TestFailedException(SimpleTestResult.failed(this, str));
            } else if (!obj.equals(obj2)) {
                throw new TestFailedException(SimpleTestResult.failed(this, str));
            }
        }
    }

    protected void isEquals(String str, boolean z, boolean z2) {
        if (z != z2) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isTrue(String str, boolean z) {
        if (!z) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isTrue(boolean z) {
        if (!z) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    @Override // org.spongycastle.util.test.Test
    public TestResult perform() {
        try {
            performTest();
            return success();
        } catch (TestFailedException e) {
            return e.getResult();
        } catch (Exception e2) {
            return SimpleTestResult.failed(this, "Exception: " + e2, e2);
        }
    }

    public abstract void performTest() throws Exception;
}
