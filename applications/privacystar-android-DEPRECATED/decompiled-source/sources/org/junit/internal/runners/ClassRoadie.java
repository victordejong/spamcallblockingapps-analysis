package org.junit.internal.runners;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunNotifier;
@Deprecated
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/ClassRoadie.class */
public class ClassRoadie {
    private Description description;
    private RunNotifier notifier;
    private final Runnable runnable;
    private TestClass testClass;

    public ClassRoadie(RunNotifier runNotifier, TestClass testClass, Description description, Runnable runnable) {
        this.notifier = runNotifier;
        this.testClass = testClass;
        this.description = description;
        this.runnable = runnable;
    }

    private void runAfters() {
        for (Method method : this.testClass.getAfters()) {
            try {
                method.invoke(null, new Object[0]);
            } catch (InvocationTargetException e) {
                addFailure(e.getTargetException());
            } catch (Throwable th) {
                addFailure(th);
            }
        }
    }

    private void runBefores() throws FailedBefore {
        try {
            try {
                for (Method method : this.testClass.getBefores()) {
                    method.invoke(null, new Object[0]);
                }
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            }
        } catch (AssumptionViolatedException e2) {
            throw new FailedBefore();
        } catch (Throwable th) {
            addFailure(th);
            throw new FailedBefore();
        }
    }

    protected void addFailure(Throwable th) {
        this.notifier.fireTestFailure(new Failure(this.description, th));
    }

    public void runProtected() {
        try {
            runBefores();
            runUnprotected();
        } catch (FailedBefore e) {
        } catch (Throwable th) {
            runAfters();
            throw th;
        }
        runAfters();
    }

    protected void runUnprotected() {
        this.runnable.run();
    }
}
