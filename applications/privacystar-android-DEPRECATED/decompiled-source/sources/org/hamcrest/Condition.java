package org.hamcrest;
/* loaded from: classes2-dex2jar.jar:org/hamcrest/Condition.class */
public abstract class Condition<T> {
    public static final NotMatched<Object> NOT_MATCHED = new NotMatched<>();

    /* loaded from: classes2-dex2jar.jar:org/hamcrest/Condition$Matched.class */
    private static final class Matched<T> extends Condition<T> {
        private final Description mismatch;
        private final T theValue;

        private Matched(T t, Description description) {
            super();
            this.theValue = t;
            this.mismatch = description;
        }

        @Override // org.hamcrest.Condition
        public <U> Condition<U> and(Step<? super T, U> step) {
            return step.apply((T) this.theValue, this.mismatch);
        }

        @Override // org.hamcrest.Condition
        public boolean matching(Matcher<T> matcher, String str) {
            if (matcher.matches(this.theValue)) {
                return true;
            }
            this.mismatch.appendText(str);
            matcher.describeMismatch(this.theValue, this.mismatch);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/hamcrest/Condition$NotMatched.class */
    public static final class NotMatched<T> extends Condition<T> {
        private NotMatched() {
            super();
        }

        @Override // org.hamcrest.Condition
        public <U> Condition<U> and(Step<? super T, U> step) {
            return notMatched();
        }

        @Override // org.hamcrest.Condition
        public boolean matching(Matcher<T> matcher, String str) {
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/hamcrest/Condition$Step.class */
    public interface Step<I, O> {
        Condition<O> apply(I i, Description description);
    }

    private Condition() {
    }

    public static <T> Condition<T> matched(T t, Description description) {
        return new Matched(t, description);
    }

    public static <T> Condition<T> notMatched() {
        return NOT_MATCHED;
    }

    public abstract <U> Condition<U> and(Step<? super T, U> step);

    public final boolean matching(Matcher<T> matcher) {
        return matching(matcher, "");
    }

    public abstract boolean matching(Matcher<T> matcher, String str);

    public final <U> Condition<U> then(Step<? super T, U> step) {
        return and(step);
    }
}
