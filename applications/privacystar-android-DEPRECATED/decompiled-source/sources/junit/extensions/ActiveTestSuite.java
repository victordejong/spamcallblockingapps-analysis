package junit.extensions;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestResult;
import junit.framework.TestSuite;
/* loaded from: classes2-dex2jar.jar:junit/extensions/ActiveTestSuite.class */
public class ActiveTestSuite extends TestSuite {
    private volatile int fActiveTestDeathCount;

    public ActiveTestSuite() {
    }

    public ActiveTestSuite(Class<? extends TestCase> cls) {
        super(cls);
    }

    public ActiveTestSuite(Class<? extends TestCase> cls, String str) {
        super(cls, str);
    }

    public ActiveTestSuite(String str) {
        super(str);
    }

    @Override // junit.framework.TestSuite, junit.framework.Test
    public void run(TestResult testResult) {
        this.fActiveTestDeathCount = 0;
        super.run(testResult);
        waitUntilFinished();
    }

    public void runFinished() {
        synchronized (this) {
            this.fActiveTestDeathCount++;
            notifyAll();
        }
    }

    @Override // junit.framework.TestSuite
    public void runTest(final Test test, final TestResult testResult) {
        new Thread() { // from class: junit.extensions.ActiveTestSuite.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    test.run(testResult);
                } finally {
                    ActiveTestSuite.this.runFinished();
                }
            }
        }.start();
    }

    void waitUntilFinished() {
        synchronized (this) {
            while (this.fActiveTestDeathCount < testCount()) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }
}
