package org.junit.internal.requests;

import org.junit.internal.builders.AllDefaultPossibilitiesBuilder;
import org.junit.runner.Request;
import org.junit.runner.Runner;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/requests/ClassRequest.class */
public class ClassRequest extends Request {
    private final boolean canUseSuiteMethod;
    private final Class<?> fTestClass;
    private volatile Runner runner;
    private final Object runnerLock;

    public ClassRequest(Class<?> cls) {
        this(cls, true);
    }

    public ClassRequest(Class<?> cls, boolean z) {
        this.runnerLock = new Object();
        this.fTestClass = cls;
        this.canUseSuiteMethod = z;
    }

    @Override // org.junit.runner.Request
    public Runner getRunner() {
        if (this.runner == null) {
            synchronized (this.runnerLock) {
                if (this.runner == null) {
                    this.runner = new AllDefaultPossibilitiesBuilder(this.canUseSuiteMethod).safeRunnerForClass(this.fTestClass);
                }
            }
        }
        return this.runner;
    }
}
