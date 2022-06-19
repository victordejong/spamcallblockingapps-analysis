package androidx.p049h.p050a;

import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1263p;
import androidx.p049h.p051b.C1170c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.h.a.a */
/* loaded from: classes-dex2jar.jar:androidx/h/a/a.class */
public abstract class AbstractC1160a {

    /* renamed from: androidx.h.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/a$a.class */
    public interface AbstractC1161a<D> {
        /* renamed from: a */
        C1170c<D> mo19553a();

        /* renamed from: a */
        void mo19552a(C1170c<D> c1170c, D d);
    }

    /* renamed from: a */
    public static <T extends AbstractC1263p & AbstractC1239ad> AbstractC1160a m43461a(T t) {
        return new C1162b(t, t.getViewModelStore());
    }

    /* renamed from: a */
    public abstract <D> C1170c<D> mo43459a(int i);

    /* renamed from: a */
    public abstract <D> C1170c<D> mo43457a(int i, AbstractC1161a<D> abstractC1161a);

    /* renamed from: a */
    public abstract void mo43460a();

    @Deprecated
    /* renamed from: a */
    public abstract void mo43456a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract <D> C1170c<D> mo43455b(int i, AbstractC1161a<D> abstractC1161a);
}
