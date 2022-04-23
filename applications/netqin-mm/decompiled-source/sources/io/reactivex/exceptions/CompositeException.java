package io.reactivex.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:io/reactivex/exceptions/CompositeException.class */
public final class CompositeException extends RuntimeException {
    public static final long serialVersionUID = 3026362227162912146L;
    public Throwable cause;
    public final List<Throwable> exceptions;
    public final String message;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain.class */
    public static final class CompositeExceptionCausalChain extends RuntimeException {
        public static final String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        public static final long serialVersionUID = 3875212506787802066L;

        @Override // java.lang.Throwable
        public String getMessage() {
            return MESSAGE;
        }
    }

    /* renamed from: io.reactivex.exceptions.CompositeException$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/exceptions/CompositeException$a.class */
    public static abstract class AbstractC10381a {
        /* renamed from: a */
        public abstract void mo268a(Object obj);
    }

    /* renamed from: io.reactivex.exceptions.CompositeException$b */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/exceptions/CompositeException$b.class */
    public static final class C10382b extends AbstractC10381a {

        /* renamed from: a */
        public final PrintStream f38317a;

        public C10382b(PrintStream printStream) {
            this.f38317a = printStream;
        }

        @Override // io.reactivex.exceptions.CompositeException.AbstractC10381a
        /* renamed from: a */
        public void mo268a(Object obj) {
            this.f38317a.println(obj);
        }
    }

    /* renamed from: io.reactivex.exceptions.CompositeException$c */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/exceptions/CompositeException$c.class */
    public static final class C10383c extends AbstractC10381a {

        /* renamed from: a */
        public final PrintWriter f38318a;

        public C10383c(PrintWriter printWriter) {
            this.f38318a = printWriter;
        }

        @Override // io.reactivex.exceptions.CompositeException.AbstractC10381a
        /* renamed from: a */
        public void mo268a(Object obj) {
            this.f38318a.println(obj);
        }
    }

    public CompositeException(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            this.exceptions = Collections.unmodifiableList(arrayList);
            this.message = this.exceptions.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    public CompositeException(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void appendStackTrace(StringBuilder sb, Throwable th, String str) {
        StackTraceElement[] stackTrace;
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            appendStackTrace(sb, th.getCause(), "");
        }
    }

    private List<Throwable> getListOfCauses(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null) {
            Throwable th2 = cause;
            if (cause != th) {
                while (true) {
                    arrayList.add(th2);
                    Throwable cause2 = th2.getCause();
                    if (cause2 == null || cause2 == th2) {
                        break;
                    }
                    th2 = cause2;
                }
            }
        }
        return arrayList;
    }

    private void printStackTrace(AbstractC10381a aVar) {
        StackTraceElement[] stackTrace;
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            sb.append("  ComposedException ");
            sb.append(i);
            sb.append(" :\n");
            appendStackTrace(sb, th, "\t");
            i++;
        }
        aVar.mo268a(sb.toString());
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        Throwable th;
        synchronized (this) {
            if (this.cause == null) {
                CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
                HashSet hashSet = new HashSet();
                Iterator<Throwable> it = this.exceptions.iterator();
                CompositeExceptionCausalChain compositeExceptionCausalChain2 = compositeExceptionCausalChain;
                while (it.hasNext()) {
                    Throwable next = it.next();
                    if (!hashSet.contains(next)) {
                        hashSet.add(next);
                        for (Throwable th2 : getListOfCauses(next)) {
                            if (hashSet.contains(th2)) {
                                next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th2);
                            }
                        }
                        try {
                            compositeExceptionCausalChain2.initCause(next);
                        } catch (Throwable th3) {
                        }
                        compositeExceptionCausalChain2 = getRootCause(compositeExceptionCausalChain2);
                    }
                }
                this.cause = compositeExceptionCausalChain;
            }
            th = this.cause;
        }
        return th;
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public Throwable getRootCause(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            Throwable th2 = cause;
            if (this.cause != cause) {
                while (true) {
                    Throwable cause2 = th2.getCause();
                    if (cause2 == null || cause2 == th2) {
                        break;
                    }
                    th2 = cause2;
                }
                return th2;
            }
        }
        return th;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new C10382b(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new C10383c(printWriter));
    }

    public int size() {
        return this.exceptions.size();
    }
}
