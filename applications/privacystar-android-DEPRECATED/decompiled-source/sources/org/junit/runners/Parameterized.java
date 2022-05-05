package org.junit.runners;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.junit.runner.Runner;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.TestClass;
import org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParametersFactory;
import org.junit.runners.parameterized.ParametersRunnerFactory;
import org.junit.runners.parameterized.TestWithParameters;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/Parameterized.class */
public class Parameterized extends Suite {
    private static final ParametersRunnerFactory DEFAULT_FACTORY = new BlockJUnit4ClassRunnerWithParametersFactory();
    private static final List<Runner> NO_RUNNERS = Collections.emptyList();
    private final List<Runner> runners;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:org/junit/runners/Parameterized$Parameter.class */
    public @interface Parameter {
        int value() default 0;
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:org/junit/runners/Parameterized$Parameters.class */
    public @interface Parameters {
        String name() default "{index}";
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:org/junit/runners/Parameterized$UseParametersRunnerFactory.class */
    public @interface UseParametersRunnerFactory {
        Class<? extends ParametersRunnerFactory> value() default BlockJUnit4ClassRunnerWithParametersFactory.class;
    }

    public Parameterized(Class<?> cls) throws Throwable {
        super(cls, NO_RUNNERS);
        this.runners = Collections.unmodifiableList(createRunnersForParameters(allParameters(), ((Parameters) getParametersMethod().getAnnotation(Parameters.class)).name(), getParametersRunnerFactory(cls)));
    }

    private Iterable<Object> allParameters() throws Throwable {
        Object invokeExplosively = getParametersMethod().invokeExplosively(null, new Object[0]);
        if (invokeExplosively instanceof Iterable) {
            return (Iterable) invokeExplosively;
        }
        if (invokeExplosively instanceof Object[]) {
            return Arrays.asList((Object[]) invokeExplosively);
        }
        throw parametersMethodReturnedWrongType();
    }

    private List<Runner> createRunnersForParameters(Iterable<Object> iterable, String str, ParametersRunnerFactory parametersRunnerFactory) throws InitializationError, Exception {
        try {
            List<TestWithParameters> createTestsForParameters = createTestsForParameters(iterable, str);
            ArrayList arrayList = new ArrayList();
            for (TestWithParameters testWithParameters : createTestsForParameters) {
                arrayList.add(parametersRunnerFactory.createRunnerForTestWithParameters(testWithParameters));
            }
            return arrayList;
        } catch (ClassCastException e) {
            throw parametersMethodReturnedWrongType();
        }
    }

    private TestWithParameters createTestWithNotNormalizedParameters(String str, int i, Object obj) {
        return createTestWithParameters(getTestClass(), str, i, obj instanceof Object[] ? (Object[]) obj : new Object[]{obj});
    }

    private static TestWithParameters createTestWithParameters(TestClass testClass, String str, int i, Object[] objArr) {
        String format = MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr);
        return new TestWithParameters("[" + format + "]", testClass, Arrays.asList(objArr));
    }

    private List<TestWithParameters> createTestsForParameters(Iterable<Object> iterable, String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : iterable) {
            arrayList.add(createTestWithNotNormalizedParameters(str, i, obj));
            i++;
        }
        return arrayList;
    }

    private FrameworkMethod getParametersMethod() throws Exception {
        for (FrameworkMethod frameworkMethod : getTestClass().getAnnotatedMethods(Parameters.class)) {
            if (frameworkMethod.isStatic() && frameworkMethod.isPublic()) {
                return frameworkMethod;
            }
        }
        throw new Exception("No public static parameters method on class " + getTestClass().getName());
    }

    private ParametersRunnerFactory getParametersRunnerFactory(Class<?> cls) throws InstantiationException, IllegalAccessException {
        UseParametersRunnerFactory useParametersRunnerFactory = (UseParametersRunnerFactory) cls.getAnnotation(UseParametersRunnerFactory.class);
        return useParametersRunnerFactory == null ? DEFAULT_FACTORY : (ParametersRunnerFactory) useParametersRunnerFactory.value().newInstance();
    }

    private Exception parametersMethodReturnedWrongType() throws Exception {
        return new Exception(MessageFormat.format("{0}.{1}() must return an Iterable of arrays.", getTestClass().getName(), getParametersMethod().getName()));
    }

    @Override // org.junit.runners.Suite, org.junit.runners.ParentRunner
    protected List<Runner> getChildren() {
        return this.runners;
    }
}
