package org.junit.rules;

import java.lang.management.ManagementFactory;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;
/* loaded from: classes2-dex2jar.jar:org/junit/rules/DisableOnDebug.class */
public class DisableOnDebug implements TestRule {
    private final boolean debugging;
    private final TestRule rule;

    public DisableOnDebug(TestRule testRule) {
        this(testRule, ManagementFactory.getRuntimeMXBean().getInputArguments());
    }

    DisableOnDebug(TestRule testRule, List<String> list) {
        this.rule = testRule;
        this.debugging = isDebugging(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isDebugging(java.util.List<java.lang.String> r3) {
        /*
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r3 = r0
        L_0x0007:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0030
            r0 = r3
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r4 = r0
            java.lang.String r0 = "-Xdebug"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0025
            r0 = 1
            return r0
        L_0x0025:
            r0 = r4
            java.lang.String r1 = "-agentlib:jdwp"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0007
            r0 = 1
            return r0
        L_0x0030:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.rules.DisableOnDebug.isDebugging(java.util.List):boolean");
    }

    @Override // org.junit.rules.TestRule
    public Statement apply(Statement statement, Description description) {
        return this.debugging ? statement : this.rule.apply(statement, description);
    }

    public boolean isDebugging() {
        return this.debugging;
    }
}
