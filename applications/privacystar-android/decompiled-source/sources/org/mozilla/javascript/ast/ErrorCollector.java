package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.p018io.IOUtils;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.ast.ParseProblem;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ErrorCollector.class */
public class ErrorCollector implements IdeErrorReporter {
    private List<ParseProblem> errors = new ArrayList();

    @Override // org.mozilla.javascript.ast.IdeErrorReporter
    public void error(String str, String str2, int i, int i2) {
        this.errors.add(new ParseProblem(ParseProblem.Type.Error, str, str2, i, i2));
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void error(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }

    public List<ParseProblem> getErrors() {
        return this.errors;
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public EvaluatorException runtimeError(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.errors.size() * 100);
        for (ParseProblem parseProblem : this.errors) {
            sb.append(parseProblem.toString());
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.IdeErrorReporter
    public void warning(String str, String str2, int i, int i2) {
        this.errors.add(new ParseProblem(ParseProblem.Type.Warning, str, str2, i, i2));
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void warning(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }
}
