package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.EnumC1464a;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException.class */
public final class GlideException extends Exception {

    /* renamed from: a */
    private static final StackTraceElement[] f5094a = new StackTraceElement[0];

    /* renamed from: b */
    private final List<Throwable> f5095b;

    /* renamed from: c */
    private AbstractC1777f f5096c;

    /* renamed from: d */
    private EnumC1464a f5097d;

    /* renamed from: e */
    private Class<?> f5098e;

    /* renamed from: f */
    private String f5099f;

    /* renamed from: com.bumptech.glide.load.engine.GlideException$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException$a.class */
    public static final class C1666a implements Appendable {

        /* renamed from: a */
        private final Appendable f5100a;

        /* renamed from: b */
        private boolean f5101b = true;

        C1666a(Appendable appendable) {
            this.f5100a = appendable;
        }

        /* renamed from: a */
        private CharSequence m16598a(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            return charSequence2;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) {
            boolean z = false;
            if (this.f5101b) {
                this.f5101b = false;
                this.f5100a.append("  ");
            }
            if (c == '\n') {
                z = true;
            }
            this.f5101b = z;
            this.f5100a.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) {
            CharSequence m16598a = m16598a(charSequence);
            return append(m16598a, 0, m16598a.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i, int i2) {
            CharSequence m16598a = m16598a(charSequence);
            if (this.f5101b) {
                this.f5101b = false;
                this.f5100a.append("  ");
            }
            boolean z = false;
            if (m16598a.length() > 0) {
                z = false;
                if (m16598a.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f5101b = z;
            this.f5100a.append(m16598a, i, i2);
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
        this.f5099f = str;
        setStackTrace(f5094a);
        this.f5095b = list;
    }

    /* renamed from: a */
    private void m16605a(Appendable appendable) {
        m16603a(this, appendable);
        m16601a(m16608a(), new C1666a(appendable));
    }

    /* renamed from: a */
    private static void m16603a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: a */
    private void m16602a(Throwable th, List<Throwable> list) {
        if (!(th instanceof GlideException)) {
            list.add(th);
            return;
        }
        for (Throwable th2 : ((GlideException) th).m16608a()) {
            m16602a(th2, list);
        }
    }

    /* renamed from: a */
    private static void m16601a(List<Throwable> list, Appendable appendable) {
        try {
            m16599b(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static void m16599b(List<Throwable> list, Appendable appendable) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            appendable.append("Cause (").append(String.valueOf(i + 1)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).m16605a(appendable);
            } else {
                m16603a(th, appendable);
            }
        }
    }

    /* renamed from: a */
    public List<Throwable> m16608a() {
        return this.f5095b;
    }

    /* renamed from: a */
    public void m16607a(AbstractC1777f abstractC1777f, EnumC1464a enumC1464a) {
        m16606a(abstractC1777f, enumC1464a, null);
    }

    /* renamed from: a */
    public void m16606a(AbstractC1777f abstractC1777f, EnumC1464a enumC1464a, Class<?> cls) {
        this.f5096c = abstractC1777f;
        this.f5097d = enumC1464a;
        this.f5098e = cls;
    }

    /* renamed from: a */
    public void m16604a(String str) {
        List<Throwable> m16600b = m16600b();
        int size = m16600b.size();
        for (int i = 0; i < size; i++) {
            Log.i(str, "Root cause (" + (i + 1) + " of " + size + ")", m16600b.get(i));
        }
    }

    /* renamed from: b */
    public List<Throwable> m16600b() {
        ArrayList arrayList = new ArrayList();
        m16602a(this, arrayList);
        return arrayList;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String sb;
        StringBuilder append = new StringBuilder(71).append(this.f5099f).append(this.f5098e != null ? ", " + this.f5098e : "").append(this.f5097d != null ? ", " + this.f5097d : "").append(this.f5096c != null ? ", " + this.f5096c : "");
        List<Throwable> m16600b = m16600b();
        if (m16600b.isEmpty()) {
            sb = append.toString();
        } else {
            if (m16600b.size() == 1) {
                append.append("\nThere was 1 cause:");
            } else {
                append.append("\nThere were ").append(m16600b.size()).append(" causes:");
            }
            for (Throwable th : m16600b) {
                append.append('\n').append(th.getClass().getName()).append('(').append(th.getMessage()).append(')');
            }
            append.append("\n call GlideException#logRootCauses(String) for more detail");
            sb = append.toString();
        }
        return sb;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m16605a(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m16605a(printWriter);
    }
}
