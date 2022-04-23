package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException.class */
public final class GlideException extends Exception {

    /* renamed from: b */
    private static final StackTraceElement[] f3549b = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private DataSource dataSource;
    private String detailMessage;
    private Exception exception;
    private AbstractC0732c key;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.GlideException$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException$a.class */
    public static final class C0746a implements Appendable {

        /* renamed from: b */
        private final Appendable f3550b;

        /* renamed from: c */
        private boolean f3551c = true;

        C0746a(Appendable appendable) {
            this.f3550b = appendable;
        }

        /* renamed from: a */
        private CharSequence m11145a(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            return charSequence2;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) {
            boolean z = false;
            if (this.f3551c) {
                this.f3551c = false;
                this.f3550b.append("  ");
            }
            if (c == '\n') {
                z = true;
            }
            this.f3551c = z;
            this.f3550b.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) {
            CharSequence a = m11145a(charSequence);
            append(a, 0, a.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i, int i2) {
            CharSequence a = m11145a(charSequence);
            if (this.f3551c) {
                this.f3551c = false;
                this.f3550b.append("  ");
            }
            boolean z = false;
            if (a.length() > 0) {
                z = false;
                if (a.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f3551c = z;
            this.f3550b.append(a, i, i2);
            return this;
        }
    }

    public GlideException(String str) {
        this(str, Collections.emptyList());
    }

    public GlideException(String str, Throwable th) {
        this(str, Collections.singletonList(th));
    }

    public GlideException(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(f3549b);
        this.causes = list;
    }

    /* renamed from: a */
    private void m11150a(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            for (Throwable th2 : ((GlideException) th).getCauses()) {
                m11150a(th2, list);
            }
            return;
        }
        list.add(th);
    }

    /* renamed from: b */
    private static void m11149b(List<Throwable> list, Appendable appendable) {
        try {
            m11148c(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    private static void m11148c(List<Throwable> list, Appendable appendable) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).m11146e(appendable);
            } else {
                m11147d(th, appendable);
            }
            i = i2;
        }
    }

    /* renamed from: d */
    private static void m11147d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: e */
    private void m11146e(Appendable appendable) {
        m11147d(this, appendable);
        m11149b(getCauses(), new C0746a(appendable));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Throwable> getCauses() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        String str2 = "";
        sb.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb.append(this.dataSource != null ? ", " + this.dataSource : "");
        if (this.key != null) {
            str2 = ", " + this.key;
        }
        sb.append(str2);
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            str = "\nThere was 1 root cause:";
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            str = " root causes:";
        }
        sb.append(str);
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    public Exception getOrigin() {
        return this.exception;
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        m11150a(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), rootCauses.get(i));
            i = i2;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m11146e(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m11146e(printWriter);
    }

    void setLoggingDetails(AbstractC0732c cVar, DataSource dataSource) {
        setLoggingDetails(cVar, dataSource, null);
    }

    void setLoggingDetails(AbstractC0732c cVar, DataSource dataSource, Class<?> cls) {
        this.key = cVar;
        this.dataSource = dataSource;
        this.dataClass = cls;
    }

    public void setOrigin(Exception exc) {
        this.exception = exc;
    }
}
