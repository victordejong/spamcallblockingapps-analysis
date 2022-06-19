package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.EnumC3658a;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException.class */
public final class GlideException extends Exception {

    /* renamed from: b */
    private static final StackTraceElement[] f13852b = new StackTraceElement[0];

    /* renamed from: a */
    public Exception f13853a;

    /* renamed from: c */
    private final List<Throwable> f13854c;

    /* renamed from: d */
    private AbstractC3818f f13855d;

    /* renamed from: e */
    private EnumC3658a f13856e;

    /* renamed from: f */
    private Class<?> f13857f;

    /* renamed from: g */
    private String f13858g;

    /* renamed from: com.bumptech.glide.load.engine.GlideException$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException$a.class */
    public static final class C3699a implements Appendable {

        /* renamed from: a */
        private final Appendable f13859a;

        /* renamed from: b */
        private boolean f13860b = true;

        C3699a(Appendable appendable) {
            this.f13859a = appendable;
        }

        /* renamed from: a */
        private static CharSequence m37500a(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            return charSequence2;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c) throws IOException {
            boolean z = false;
            if (this.f13860b) {
                this.f13860b = false;
                this.f13859a.append("  ");
            }
            if (c == '\n') {
                z = true;
            }
            this.f13860b = z;
            this.f13859a.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) throws IOException {
            CharSequence m37500a = m37500a(charSequence);
            return append(m37500a, 0, m37500a.length());
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence m37500a = m37500a(charSequence);
            if (this.f13860b) {
                this.f13860b = false;
                this.f13859a.append("  ");
            }
            boolean z = false;
            if (m37500a.length() > 0) {
                z = false;
                if (m37500a.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f13860b = z;
            this.f13859a.append(m37500a, i, i2);
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
        this.f13858g = str;
        setStackTrace(f13852b);
        this.f13854c = list;
    }

    /* renamed from: a */
    private void m37506a(Appendable appendable) {
        m37505a(this, appendable);
        m37503a(this.f13854c, new C3699a(appendable));
    }

    /* renamed from: a */
    private static void m37505a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: a */
    private void m37504a(Throwable th, List<Throwable> list) {
        if (!(th instanceof GlideException)) {
            list.add(th);
            return;
        }
        for (Throwable th2 : ((GlideException) th).f13854c) {
            m37504a(th2, list);
        }
    }

    /* renamed from: a */
    private static void m37503a(List<Throwable> list, Appendable appendable) {
        try {
            m37501b(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private List<Throwable> m37502b() {
        ArrayList arrayList = new ArrayList();
        m37504a(this, arrayList);
        return arrayList;
    }

    /* renamed from: b */
    private static void m37501b(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                int i3 = i2 + 1;
                appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
                Throwable th = list.get(i2);
                if (th instanceof GlideException) {
                    ((GlideException) th).m37506a(appendable);
                } else {
                    m37505a(th, appendable);
                }
                i = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m37508a() {
        List<Throwable> m37502b = m37502b();
        int size = m37502b.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                StringBuilder sb = new StringBuilder("Root cause (");
                int i3 = i2 + 1;
                sb.append(i3);
                sb.append(" of ");
                sb.append(size);
                sb.append(")");
                m37502b.get(i2);
                i = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m37507a(AbstractC3818f abstractC3818f, EnumC3658a enumC3658a, Class<?> cls) {
        this.f13855d = abstractC3818f;
        this.f13856e = enumC3658a;
        this.f13857f = cls;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f13858g);
        sb.append(this.f13857f != null ? ", " + this.f13857f : "");
        sb.append(this.f13856e != null ? ", " + this.f13856e : "");
        String str = "";
        if (this.f13855d != null) {
            str = ", " + this.f13855d;
        }
        sb.append(str);
        List<Throwable> m37502b = m37502b();
        if (m37502b.isEmpty()) {
            return sb.toString();
        }
        if (m37502b.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(m37502b.size());
            sb.append(" root causes:");
        }
        for (Throwable th : m37502b) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        m37506a(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        m37506a(printWriter);
    }
}
