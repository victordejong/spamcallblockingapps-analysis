package org.junit.runners;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
import org.junit.internal.builders.AllDefaultPossibilitiesBuilder;
import org.junit.runner.Description;
import org.junit.runner.Runner;
import org.junit.runner.notification.RunNotifier;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/Suite.class */
public class Suite extends ParentRunner<Runner> {
    private final List<Runner> runners;

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:org/junit/runners/Suite$SuiteClasses.class */
    public @interface SuiteClasses {
        Class<?>[] value();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Suite(Class<?> cls, List<Runner> list) throws InitializationError {
        super(cls);
        this.runners = Collections.unmodifiableList(list);
    }

    public Suite(Class<?> cls, RunnerBuilder runnerBuilder) throws InitializationError {
        this(runnerBuilder, cls, getAnnotatedClasses(cls));
    }

    protected Suite(Class<?> cls, Class<?>[] clsArr) throws InitializationError {
        this(new AllDefaultPossibilitiesBuilder(true), cls, clsArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Suite(RunnerBuilder runnerBuilder, Class<?> cls, Class<?>[] clsArr) throws InitializationError {
        this(cls, runnerBuilder.runners(cls, clsArr));
    }

    public Suite(RunnerBuilder runnerBuilder, Class<?>[] clsArr) throws InitializationError {
        this((Class<?>) null, runnerBuilder.runners((Class<?>) null, clsArr));
    }

    public static Runner emptySuite() {
        try {
            return new Suite((Class<?>) null, new Class[0]);
        } catch (InitializationError e) {
            throw new RuntimeException("This shouldn't be possible");
        }
    }

    private static Class<?>[] getAnnotatedClasses(Class<?> cls) throws InitializationError {
        SuiteClasses suiteClasses = (SuiteClasses) cls.getAnnotation(SuiteClasses.class);
        if (suiteClasses != null) {
            return suiteClasses.value();
        }
        throw new InitializationError(String.format("class '%s' must have a SuiteClasses annotation", cls.getName()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Description describeChild(Runner runner) {
        return runner.getDescription();
    }

    @Override // org.junit.runners.ParentRunner
    protected List<Runner> getChildren() {
        return this.runners;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void runChild(Runner runner, RunNotifier runNotifier) {
        runner.run(runNotifier);
    }
}
