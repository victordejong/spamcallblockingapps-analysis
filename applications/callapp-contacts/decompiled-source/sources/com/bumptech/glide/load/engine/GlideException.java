package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.f;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException.class */
public final class GlideException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final StackTraceElement[] f7426b = new StackTraceElement[0];

    /* renamed from: a  reason: collision with root package name */
    public Exception f7427a;

    /* renamed from: c  reason: collision with root package name */
    private final List<Throwable> f7428c;

    /* renamed from: d  reason: collision with root package name */
    private f f7429d;
    private com.bumptech.glide.load.a e;
    private Class<?> f;
    private String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/GlideException$a.class */
    public static final class a implements Appendable {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f7430a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7431b = true;

        a(Appendable appendable) {
            this.f7430a = appendable;
        }

        private static CharSequence a(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            return charSequence2;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c2) throws IOException {
            boolean z = false;
            if (this.f7431b) {
                this.f7431b = false;
                this.f7430a.append("  ");
            }
            if (c2 == '\n') {
                z = true;
            }
            this.f7431b = z;
            this.f7430a.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) throws IOException {
            CharSequence a2 = a(charSequence);
            return append(a2, 0, a2.length());
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence a2 = a(charSequence);
            if (this.f7431b) {
                this.f7431b = false;
                this.f7430a.append("  ");
            }
            boolean z = false;
            if (a2.length() > 0) {
                z = false;
                if (a2.charAt(i2 - 1) == '\n') {
                    z = true;
                }
            }
            this.f7431b = z;
            this.f7430a.append(a2, i, i2);
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
        this.g = str;
        setStackTrace(f7426b);
        this.f7428c = list;
    }

    private void a(Appendable appendable) {
        a(this, appendable);
        a(this.f7428c, new a(appendable));
    }

    private static void a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(th);
        }
    }

    private void a(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            for (Throwable th2 : ((GlideException) th).f7428c) {
                a(th2, list);
            }
            return;
        }
        list.add(th);
    }

    private static void a(List<Throwable> list, Appendable appendable) {
        try {
            b(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private List<Throwable> b() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    private static void b(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).a(appendable);
            } else {
                a(th, appendable);
            }
            i = i2;
        }
    }

    public final void a() {
        List<Throwable> b2 = b();
        int size = b2.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            b2.get(i);
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar, com.bumptech.glide.load.a aVar, Class<?> cls) {
        this.f7429d = fVar;
        this.e = aVar;
        this.f = cls;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.g);
        String str = "";
        sb.append(this.f != null ? ", " + this.f : "");
        sb.append(this.e != null ? ", " + this.e : "");
        if (this.f7429d != null) {
            str = ", " + this.f7429d;
        }
        sb.append(str);
        List<Throwable> b2 = b();
        if (b2.isEmpty()) {
            return sb.toString();
        }
        if (b2.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(b2.size());
            sb.append(" root causes:");
        }
        for (Throwable th : b2) {
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
        a(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        a(printWriter);
    }
}
