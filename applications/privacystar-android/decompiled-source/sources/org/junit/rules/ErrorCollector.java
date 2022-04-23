package org.junit.rules;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.hamcrest.Matcher;
import org.junit.Assert;
import org.junit.runners.model.MultipleFailureException;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/ErrorCollector.class */
public class ErrorCollector extends Verifier {
    private List<Throwable> errors = new ArrayList();

    public void addError(Throwable th) {
        this.errors.add(th);
    }

    public <T> T checkSucceeds(Callable<T> callable) {
        try {
            return callable.call();
        } catch (Throwable th) {
            addError(th);
            return null;
        }
    }

    public <T> void checkThat(T t, Matcher<T> matcher) {
        checkThat("", t, matcher);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void checkThat(final String str, final T t, final Matcher<T> matcher) {
        checkSucceeds(new Callable<Object>() { // from class: org.junit.rules.ErrorCollector.1
            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                Assert.assertThat(str, t, matcher);
                return t;
            }
        });
    }

    @Override // org.junit.rules.Verifier
    protected void verify() throws Throwable {
        MultipleFailureException.assertEmpty(this.errors);
    }
}
