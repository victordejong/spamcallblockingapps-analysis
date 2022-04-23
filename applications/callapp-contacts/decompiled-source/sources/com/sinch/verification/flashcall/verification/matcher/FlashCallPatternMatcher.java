package com.sinch.verification.flashcall.verification.matcher;

import com.sinch.verification.core.internal.pattern.PatternMatcher;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher;", "Lcom/sinch/verification/core/internal/pattern/PatternMatcher;", "template", "", "(Ljava/lang/String;)V", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher.class */
public final class FlashCallPatternMatcher extends PatternMatcher {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallPatternMatcher(String template) {
        super(template, new FlashCallPatternFactory());
        p.c(template, "template");
    }
}
