package org.junit.internal.runners.statements;

import java.util.ArrayList;
import java.util.List;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.MultipleFailureException;
import org.junit.runners.model.Statement;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/statements/RunAfters.class */
public class RunAfters extends Statement {
    private final List<FrameworkMethod> afters;
    private final Statement next;
    private final Object target;

    public RunAfters(Statement statement, List<FrameworkMethod> list, Object obj) {
        this.next = statement;
        this.afters = list;
        this.target = obj;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Throwable {
        ArrayList arrayList = new ArrayList();
        try {
            this.next.evaluate();
            for (FrameworkMethod frameworkMethod : this.afters) {
                try {
                    frameworkMethod.invokeExplosively(this.target, new Object[0]);
                } catch (Throwable th) {
                    arrayList.add(th);
                }
            }
        } catch (Throwable th2) {
            try {
                arrayList.add(th2);
                for (FrameworkMethod frameworkMethod2 : this.afters) {
                    try {
                        frameworkMethod2.invokeExplosively(this.target, new Object[0]);
                    } catch (Throwable th3) {
                        arrayList.add(th3);
                    }
                }
            } catch (Throwable th4) {
                for (FrameworkMethod frameworkMethod3 : this.afters) {
                    try {
                        frameworkMethod3.invokeExplosively(this.target, new Object[0]);
                    } catch (Throwable th5) {
                        arrayList.add(th5);
                    }
                }
                throw th4;
            }
        }
        MultipleFailureException.assertEmpty(arrayList);
    }
}
