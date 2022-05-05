package org.junit.rules;

import java.util.ArrayList;
import java.util.List;
import org.hamcrest.CoreMatchers;
import org.hamcrest.Matcher;
import org.junit.matchers.JUnitMatchers;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/ExpectedExceptionMatcherBuilder.class */
class ExpectedExceptionMatcherBuilder {
    private final List<Matcher<?>> matchers = new ArrayList();

    private Matcher<Throwable> allOfTheMatchers() {
        return this.matchers.size() == 1 ? cast(this.matchers.get(0)) : CoreMatchers.allOf(castedMatchers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Matcher<Throwable> cast(Matcher<?> matcher) {
        return matcher;
    }

    private List<Matcher<? super Throwable>> castedMatchers() {
        return new ArrayList(this.matchers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(Matcher<?> matcher) {
        this.matchers.add(matcher);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matcher<Throwable> build() {
        return JUnitMatchers.isThrowable(allOfTheMatchers());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean expectsThrowable() {
        return !this.matchers.isEmpty();
    }
}
