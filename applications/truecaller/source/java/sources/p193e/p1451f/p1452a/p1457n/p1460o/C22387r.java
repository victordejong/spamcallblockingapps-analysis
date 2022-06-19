package p193e.p1451f.p1452a.p1457n.p1460o;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
/* renamed from: e.f.a.n.o.r */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/r.class */
public final class C22387r extends Exception {

    /* renamed from: f */
    public static final StackTraceElement[] f62202f = new StackTraceElement[0];

    /* renamed from: a */
    public final List<Throwable> f62203a;

    /* renamed from: b */
    public AbstractC22263f f62204b;

    /* renamed from: c */
    public EnumC22258a f62205c;

    /* renamed from: d */
    public Class<?> f62206d;

    /* renamed from: e */
    public String f62207e;

    /* renamed from: e.f.a.n.o.r$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/r$a.class */
    public static final class C22388a implements Appendable {

        /* renamed from: a */
        public final Appendable f62208a;

        /* renamed from: b */
        public boolean f62209b = true;

        public C22388a(Appendable appendable) {
            this.f62208a = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            boolean z = false;
            if (this.f62209b) {
                this.f62209b = false;
                this.f62208a.append("  ");
            }
            if (c == '\n') {
                z = true;
            }
            this.f62209b = z;
            this.f62208a.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) throws IOException {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            append(charSequence2, 0, charSequence2.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            if (this.f62209b) {
                this.f62209b = false;
                this.f62208a.append("  ");
            }
            boolean z = false;
            if (charSequence2.length() > 0) {
                z = false;
                if (charSequence2.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f62209b = z;
            this.f62208a.append(charSequence2, i, i2);
            return this;
        }
    }

    public C22387r(String str) {
        List<Throwable> emptyList = Collections.emptyList();
        this.f62207e = str;
        setStackTrace(f62202f);
        this.f62203a = emptyList;
    }

    public C22387r(String str, Throwable th) {
        List<Throwable> singletonList = Collections.singletonList(th);
        this.f62207e = str;
        setStackTrace(f62202f);
        this.f62203a = singletonList;
    }

    public C22387r(String str, List<Throwable> list) {
        this.f62207e = str;
        setStackTrace(f62202f);
        this.f62203a = list;
    }

    /* renamed from: b */
    public static void m8255b(List<Throwable> list, Appendable appendable) {
        try {
            m8254c(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public static void m8254c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                int i3 = i2 + 1;
                appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
                Throwable th = list.get(i2);
                if (th instanceof C22387r) {
                    ((C22387r) th).m8252e(appendable);
                } else {
                    m8253d(th, appendable);
                }
                i = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    public static void m8253d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: a */
    public final void m8256a(Throwable th, List<Throwable> list) {
        if (!(th instanceof C22387r)) {
            list.add(th);
            return;
        }
        for (Throwable th2 : ((C22387r) th).f62203a) {
            m8256a(th2, list);
        }
    }

    /* renamed from: e */
    public final void m8252e(Appendable appendable) {
        m8253d(this, appendable);
        m8255b(this.f62203a, new C22388a(appendable));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f62207e);
        if (this.f62206d != null) {
            StringBuilder m8728C = C22128a.m8728C(", ");
            m8728C.append(this.f62206d);
            str = m8728C.toString();
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f62205c != null) {
            StringBuilder m8728C2 = C22128a.m8728C(", ");
            m8728C2.append(this.f62205c);
            str2 = m8728C2.toString();
        } else {
            str2 = "";
        }
        sb.append(str2);
        String str3 = "";
        if (this.f62204b != null) {
            StringBuilder m8728C3 = C22128a.m8728C(", ");
            m8728C3.append(this.f62204b);
            str3 = m8728C3.toString();
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        m8256a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
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
    public void printStackTrace() {
        m8252e(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m8252e(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m8252e(printWriter);
    }
}
