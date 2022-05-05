package org.apache.commons.p018io.serialization;

import java.util.regex.Pattern;
/* renamed from: org.apache.commons.io.serialization.RegexpClassNameMatcher */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/serialization/RegexpClassNameMatcher.class */
final class RegexpClassNameMatcher implements ClassNameMatcher {
    private final Pattern pattern;

    public RegexpClassNameMatcher(String str) {
        this(Pattern.compile(str));
    }

    public RegexpClassNameMatcher(Pattern pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Null pattern");
        }
        this.pattern = pattern;
    }

    @Override // org.apache.commons.p018io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return this.pattern.matcher(str).matches();
    }
}
