package org.hamcrest.core;

import org.hamcrest.BaseMatcher;
import org.hamcrest.Description;
import org.hamcrest.Factory;
import org.hamcrest.Matcher;
/* renamed from: org.hamcrest.core.Is */
/* loaded from: classes2-dex2jar.jar:org/hamcrest/core/Is.class */
public class C2079Is<T> extends BaseMatcher<T> {
    private final Matcher<T> matcher;

    public C2079Is(Matcher<T> matcher) {
        this.matcher = matcher;
    }

    @Factory
    @Deprecated
    /* renamed from: is */
    public static <T> Matcher<T> m222is(Class<T> cls) {
        return m220is(IsInstanceOf.instanceOf(cls));
    }

    @Factory
    /* renamed from: is */
    public static <T> Matcher<T> m221is(T t) {
        return m220is(IsEqual.equalTo(t));
    }

    @Factory
    /* renamed from: is */
    public static <T> Matcher<T> m220is(Matcher<T> matcher) {
        return new C2079Is(matcher);
    }

    @Factory
    public static <T> Matcher<T> isA(Class<T> cls) {
        return m220is(IsInstanceOf.instanceOf(cls));
    }

    @Override // org.hamcrest.BaseMatcher, org.hamcrest.Matcher
    public void describeMismatch(Object obj, Description description) {
        this.matcher.describeMismatch(obj, description);
    }

    @Override // org.hamcrest.SelfDescribing
    public void describeTo(Description description) {
        description.appendText("is ").appendDescriptionOf(this.matcher);
    }

    @Override // org.hamcrest.Matcher
    public boolean matches(Object obj) {
        return this.matcher.matches(obj);
    }
}
