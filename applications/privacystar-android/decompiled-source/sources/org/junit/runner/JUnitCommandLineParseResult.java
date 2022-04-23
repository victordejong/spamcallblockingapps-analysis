package org.junit.runner;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.internal.Classes;
import org.junit.runner.FilterFactory;
import org.junit.runners.model.InitializationError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/junit/runner/JUnitCommandLineParseResult.class */
public class JUnitCommandLineParseResult {
    private final List<String> filterSpecs = new ArrayList();
    private final List<Class<?>> classes = new ArrayList();
    private final List<Throwable> parserErrors = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:org/junit/runner/JUnitCommandLineParseResult$CommandLineParserError.class */
    public static class CommandLineParserError extends Exception {
        private static final long serialVersionUID = 1;

        public CommandLineParserError(String str) {
            super(str);
        }
    }

    JUnitCommandLineParseResult() {
    }

    private Request applyFilterSpecs(Request request) {
        try {
            for (String str : this.filterSpecs) {
                request = request.filterWith(FilterFactories.createFilterFromFilterSpec(request, str));
            }
            return request;
        } catch (FilterFactory.FilterNotCreatedException e) {
            return errorReport(e);
        }
    }

    private String[] copyArray(String[] strArr, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i != i2) {
            arrayList.add(strArr[i]);
            i++;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private Request errorReport(Throwable th) {
        return Request.errorReport(JUnitCommandLineParseResult.class, th);
    }

    public static JUnitCommandLineParseResult parse(String[] strArr) {
        JUnitCommandLineParseResult jUnitCommandLineParseResult = new JUnitCommandLineParseResult();
        jUnitCommandLineParseResult.parseArgs(strArr);
        return jUnitCommandLineParseResult;
    }

    private void parseArgs(String[] strArr) {
        parseParameters(parseOptions(strArr));
    }

    public Request createRequest(Computer computer) {
        return this.parserErrors.isEmpty() ? applyFilterSpecs(Request.classes(computer, (Class[]) this.classes.toArray(new Class[this.classes.size()]))) : errorReport(new InitializationError(this.parserErrors));
    }

    public List<Class<?>> getClasses() {
        return Collections.unmodifiableList(this.classes);
    }

    public List<String> getFilterSpecs() {
        return Collections.unmodifiableList(this.filterSpecs);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f0, code lost:
        return new java.lang.String[0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String[] parseOptions(java.lang.String... r6) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.runner.JUnitCommandLineParseResult.parseOptions(java.lang.String[]):java.lang.String[]");
    }

    void parseParameters(String[] strArr) {
        for (String str : strArr) {
            try {
                this.classes.add(Classes.getClass(str));
            } catch (ClassNotFoundException e) {
                this.parserErrors.add(new IllegalArgumentException("Could not find class [" + str + "]", e));
            }
        }
    }
}
