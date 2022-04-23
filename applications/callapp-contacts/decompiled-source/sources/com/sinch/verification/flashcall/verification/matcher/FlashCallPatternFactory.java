package com.sinch.verification.flashcall.verification.matcher;

import com.sinch.verification.core.internal.error.CodeInterceptionException;
import com.sinch.verification.core.internal.pattern.PatternFactory;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternFactory;", "Lcom/sinch/verification/core/internal/pattern/PatternFactory;", "()V", "create", "Ljava/util/regex/Pattern;", "template", "", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/matcher/FlashCallPatternFactory.class */
public final class FlashCallPatternFactory implements PatternFactory {
    @Override // com.sinch.verification.core.internal.pattern.PatternFactory
    public final Pattern create(String template) {
        p.c(template, "template");
        String quote = Pattern.quote(template);
        p.a((Object) quote, "Pattern.quote(template)");
        String a2 = kotlin.h.p.a(kotlin.h.p.a(quote, "(", "\\E(", false), ")", ")\\Q", false);
        try {
            Pattern compile = Pattern.compile(a2);
            p.a((Object) compile, "Pattern.compile(escapedTemplate)");
            return compile;
        } catch (PatternSyntaxException e) {
            throw new CodeInterceptionException("Failed to compile pattern: " + a2 + ", error: " + e.getMessage());
        }
    }
}
