package com.facebook.bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/facebook/bolts/AggregateException.class */
public class AggregateException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f19769a;

    public AggregateException(String str, List<? extends Throwable> list) {
        super(str, (list == null || list.size() <= 0) ? null : (Throwable) list.get(0));
        this.f19769a = Collections.unmodifiableList(list);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i = -1;
        for (Throwable th : this.f19769a) {
            printStream.append(StringUtils.LF);
            printStream.append("  Inner throwable #");
            i++;
            printStream.append((CharSequence) Integer.toString(i));
            printStream.append(": ");
            th.printStackTrace(printStream);
            printStream.append(StringUtils.LF);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i = -1;
        for (Throwable th : this.f19769a) {
            printWriter.append(StringUtils.LF);
            printWriter.append("  Inner throwable #");
            i++;
            printWriter.append((CharSequence) Integer.toString(i));
            printWriter.append(": ");
            th.printStackTrace(printWriter);
            printWriter.append(StringUtils.LF);
        }
    }
}
