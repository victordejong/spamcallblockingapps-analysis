package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException.class */
public final class GlideException extends Exception {

    /* renamed from: d */
    private static final StackTraceElement[] f12737d = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private DataSource dataSource;
    private String detailMessage;
    private Exception exception;
    private AbstractC3999c key;

    /* renamed from: com.bumptech.glide.load.engine.GlideException$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException$a.class */
    public static final class C4039a implements Appendable {

        /* renamed from: d */
        private final Appendable f12738d;

        /* renamed from: e */
        private boolean f12739e = true;

        C4039a(Appendable appendable) {
            this.f12738d = appendable;
        }

        /* renamed from: a */
        private CharSequence m23414a(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            return charSequence2;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) {
            boolean z = false;
            if (this.f12739e) {
                this.f12739e = false;
                this.f12738d.append("  ");
            }
            if (c == '\n') {
                z = true;
            }
            this.f12739e = z;
            this.f12738d.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) {
            CharSequence m23414a = m23414a(charSequence);
            return append(m23414a, 0, m23414a.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i, int i2) {
            CharSequence m23414a = m23414a(charSequence);
            if (this.f12739e) {
                this.f12739e = false;
                this.f12738d.append("  ");
            }
            boolean z = false;
            if (m23414a.length() > 0) {
                z = false;
                if (m23414a.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f12739e = z;
            this.f12738d.append(m23414a, i, i2);
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
        setStackTrace(f12737d);
        this.causes = list;
    }

    /* renamed from: a */
    private void m23419a(Throwable th, List<Throwable> list) {
        if (!(th instanceof GlideException)) {
            list.add(th);
            return;
        }
        for (Throwable th2 : ((GlideException) th).getCauses()) {
            m23419a(th2, list);
        }
    }

    /* renamed from: b */
    private static void m23418b(List<Throwable> list, Appendable appendable) {
        try {
            m23417c(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    private static void m23417c(List<Throwable> list, Appendable appendable) {
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                int i3 = i2 + 1;
                appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
                Throwable th = list.get(i2);
                if (th instanceof GlideException) {
                    ((GlideException) th).m23415e(appendable);
                } else {
                    m23416d(th, appendable);
                }
                i = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    private static void m23416d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: e */
    private void m23415e(Appendable appendable) {
        m23416d(this, appendable);
        m23418b(getCauses(), new C4039a(appendable));
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
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        sb.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb.append(this.dataSource != null ? ", " + this.dataSource : "");
        String str = "";
        if (this.key != null) {
            str = ", " + this.key;
        }
        sb.append(str);
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" root causes:");
        }
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
        m23419a(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                StringBuilder sb = new StringBuilder();
                sb.append("Root cause (");
                int i3 = i2 + 1;
                sb.append(i3);
                sb.append(" of ");
                sb.append(size);
                sb.append(")");
                Log.i(str, sb.toString(), rootCauses.get(i2));
                i = i3;
            } else {
                return;
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m23415e(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m23415e(printWriter);
    }

    public void setLoggingDetails(AbstractC3999c abstractC3999c, DataSource dataSource) {
        setLoggingDetails(abstractC3999c, dataSource, null);
    }

    public void setLoggingDetails(AbstractC3999c abstractC3999c, DataSource dataSource, Class<?> cls) {
        this.key = abstractC3999c;
        this.dataSource = dataSource;
        this.dataClass = cls;
    }

    public void setOrigin(Exception exc) {
        this.exception = exc;
    }
}
