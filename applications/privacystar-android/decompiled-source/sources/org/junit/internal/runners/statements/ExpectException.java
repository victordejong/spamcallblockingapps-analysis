package org.junit.internal.runners.statements;

import org.junit.internal.AssumptionViolatedException;
import org.junit.runners.model.Statement;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/statements/ExpectException.class */
public class ExpectException extends Statement {
    private final Class<? extends Throwable> expected;
    private final Statement next;

    public ExpectException(Statement statement, Class<? extends Throwable> cls) {
        this.next = statement;
        this.expected = cls;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Exception {
        boolean z;
        try {
            this.next.evaluate();
            z = true;
        } catch (AssumptionViolatedException e) {
            throw e;
        } catch (Throwable th) {
            if (!this.expected.isAssignableFrom(th.getClass())) {
                throw new Exception("Unexpected exception, expected<" + this.expected.getName() + "> but was<" + th.getClass().getName() + ">", th);
            }
            z = false;
        }
        if (z) {
            throw new AssertionError("Expected exception: " + this.expected.getName());
        }
    }
}
