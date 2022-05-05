package org.junit.internal.builders;

import java.util.Arrays;
import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/builders/AllDefaultPossibilitiesBuilder.class */
public class AllDefaultPossibilitiesBuilder extends RunnerBuilder {
    private final boolean canUseSuiteMethod;

    public AllDefaultPossibilitiesBuilder(boolean z) {
        this.canUseSuiteMethod = z;
    }

    protected AnnotatedBuilder annotatedBuilder() {
        return new AnnotatedBuilder(this);
    }

    protected IgnoredBuilder ignoredBuilder() {
        return new IgnoredBuilder();
    }

    protected JUnit3Builder junit3Builder() {
        return new JUnit3Builder();
    }

    protected JUnit4Builder junit4Builder() {
        return new JUnit4Builder();
    }

    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) throws Throwable {
        for (RunnerBuilder runnerBuilder : Arrays.asList(ignoredBuilder(), annotatedBuilder(), suiteMethodBuilder(), junit3Builder(), junit4Builder())) {
            Runner safeRunnerForClass = runnerBuilder.safeRunnerForClass(cls);
            if (safeRunnerForClass != null) {
                return safeRunnerForClass;
            }
        }
        return null;
    }

    protected RunnerBuilder suiteMethodBuilder() {
        return this.canUseSuiteMethod ? new SuiteMethodBuilder() : new NullBuilder();
    }
}
