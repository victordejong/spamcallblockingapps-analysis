package com.sinch.verification.core.internal.pattern;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/sinch/verification/core/internal/pattern/PatternHandler;", "", "template", "", "patternFactory", "Lcom/sinch/verification/core/internal/pattern/PatternFactory;", "(Ljava/lang/String;Lcom/sinch/verification/core/internal/pattern/PatternFactory;)V", "pattern", "Ljava/util/regex/Pattern;", "getPattern$verification_core_productionRelease", "()Ljava/util/regex/Pattern;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/pattern/PatternHandler.class */
public abstract class PatternHandler {
    private final Pattern pattern;

    public PatternHandler(String template, PatternFactory patternFactory) {
        p.c(template, "template");
        p.c(patternFactory, "patternFactory");
        this.pattern = patternFactory.create(template);
    }

    public final Pattern getPattern$verification_core_productionRelease() {
        return this.pattern;
    }
}
