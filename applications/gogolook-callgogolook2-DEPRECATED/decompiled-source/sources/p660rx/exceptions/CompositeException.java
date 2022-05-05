package p660rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* renamed from: rx.exceptions.CompositeException */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/CompositeException.class */
public final class CompositeException extends RuntimeException {
    public Throwable cause;
    public final List<Throwable> exceptions;
    public final String message;

    /* renamed from: rx.exceptions.CompositeException$CompositeExceptionCausalChain */
    /* loaded from: classes3-dex2jar.jar:rx/exceptions/CompositeException$CompositeExceptionCausalChain.class */
    public static final class CompositeExceptionCausalChain extends RuntimeException {
        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* renamed from: rx.exceptions.CompositeException$PrintStreamOrWriter */
    /* loaded from: classes3-dex2jar.jar:rx/exceptions/CompositeException$PrintStreamOrWriter.class */
    public static abstract class PrintStreamOrWriter {
        public abstract Object lock();

        public abstract void println(Object obj);
    }

    /* renamed from: rx.exceptions.CompositeException$WrappedPrintStream */
    /* loaded from: classes3-dex2jar.jar:rx/exceptions/CompositeException$WrappedPrintStream.class */
    public static final class WrappedPrintStream extends PrintStreamOrWriter {
        public final PrintStream printStream;

        public WrappedPrintStream(PrintStream printStream) {
            this.printStream = printStream;
        }

        @Override // p660rx.exceptions.CompositeException.PrintStreamOrWriter
        public Object lock() {
            return this.printStream;
        }

        @Override // p660rx.exceptions.CompositeException.PrintStreamOrWriter
        public void println(Object obj) {
            this.printStream.println(obj);
        }
    }

    /* renamed from: rx.exceptions.CompositeException$WrappedPrintWriter */
    /* loaded from: classes3-dex2jar.jar:rx/exceptions/CompositeException$WrappedPrintWriter.class */
    public static final class WrappedPrintWriter extends PrintStreamOrWriter {
        public final PrintWriter printWriter;

        public WrappedPrintWriter(PrintWriter printWriter) {
            this.printWriter = printWriter;
        }

        @Override // p660rx.exceptions.CompositeException.PrintStreamOrWriter
        public Object lock() {
            return this.printWriter;
        }

        @Override // p660rx.exceptions.CompositeException.PrintStreamOrWriter
        public void println(Object obj) {
            this.printWriter.println(obj);
        }
    }

    @Deprecated
    public CompositeException(String str, Collection<? extends Throwable> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    public CompositeException(Throwable... thArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (thArr != null) {
            for (Throwable th : thArr) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public final void appendStackTrace(StringBuilder sb, Throwable th, String str) {
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

    public final List<Throwable> getListOfCauses(Throwable th) {
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
                    th2 = th2.getCause();
                }
            }
        }
        return arrayList;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public final Throwable getRootCause(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            Throwable th2 = cause;
            if (cause != th) {
                while (true) {
                    Throwable cause2 = th2.getCause();
                    if (cause2 == null || cause2 == th2) {
                        break;
                    }
                    th2 = th2.getCause();
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
        printStackTrace(new WrappedPrintStream(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new WrappedPrintWriter(printWriter));
    }

    public final void printStackTrace(PrintStreamOrWriter printStreamOrWriter) {
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
        synchronized (printStreamOrWriter.lock()) {
            printStreamOrWriter.println(sb.toString());
        }
    }
}
