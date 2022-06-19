package com.google.common.base;

import com.google.common.base.CharMatcher;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/Splitter.class */
public final class Splitter {
    public final Strategy strategy;
    public final CharMatcher trimmer;
    public final boolean omitEmptyStrings = false;
    public final int limit = Integer.MAX_VALUE;

    /* loaded from: classes3-dex2jar.jar:com/google/common/base/Splitter$Strategy.class */
    public interface Strategy {
    }

    public Splitter(Strategy strategy) {
        CharMatcher.None none = CharMatcher.None.INSTANCE;
        this.strategy = strategy;
        this.trimmer = none;
    }
}
