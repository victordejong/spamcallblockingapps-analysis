package com.sinch.verification.core.internal.pattern;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0003¨\u0006\n"}, d2 = {"Lcom/sinch/verification/core/internal/pattern/PatternMatcher;", "Lcom/sinch/verification/core/internal/pattern/PatternHandler;", "template", "", "patternFactory", "Lcom/sinch/verification/core/internal/pattern/PatternFactory;", "(Ljava/lang/String;Lcom/sinch/verification/core/internal/pattern/PatternFactory;)V", "matches", "", "message", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/pattern/PatternMatcher.class */
public abstract class PatternMatcher extends PatternHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PatternMatcher(String template, PatternFactory patternFactory) {
        super(template, patternFactory);
        p.c(template, "template");
        p.c(patternFactory, "patternFactory");
    }

    public final boolean matches(String message) {
        p.c(message, "message");
        return getPattern$verification_core_productionRelease().matcher(message).matches();
    }
}
