package org.hamcrest.core;

import org.hamcrest.Factory;
import org.hamcrest.Matcher;
/* loaded from: classes2-dex2jar.jar:org/hamcrest/core/StringStartsWith.class */
public class StringStartsWith extends SubstringMatcher {
    public StringStartsWith(String str) {
        super(str);
    }

    @Factory
    public static Matcher<String> startsWith(String str) {
        return new StringStartsWith(str);
    }

    @Override // org.hamcrest.core.SubstringMatcher
    protected boolean evalSubstringOf(String str) {
        return str.startsWith(this.substring);
    }

    @Override // org.hamcrest.core.SubstringMatcher
    protected String relationship() {
        return "starting with";
    }
}
