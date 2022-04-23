package androidx.h.a;

import androidx.h.b.c;
import androidx.lifecycle.ad;
import androidx.lifecycle.p;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/h/a/a.class */
public abstract class a {

    /* renamed from: androidx.h.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/a$a.class */
    public interface AbstractC0065a<D> {
        c<D> a();

        void a(c<D> cVar, D d2);
    }

    public static <T extends p & ad> a a(T t) {
        return new b(t, t.getViewModelStore());
    }

    public abstract <D> c<D> a(int i);

    public abstract <D> c<D> a(int i, AbstractC0065a<D> aVar);

    public abstract void a();

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> c<D> b(int i, AbstractC0065a<D> aVar);
}
