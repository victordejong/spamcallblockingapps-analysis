package androidx.p039h.p040a;

import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.AbstractC0927y;
import androidx.p039h.p041b.C0766a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.h.a.a */
/* loaded from: classes-dex2jar.jar:androidx/h/a/a.class */
public abstract class AbstractC0759a {

    /* renamed from: androidx.h.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/a$a.class */
    public interface AbstractC0760a<D> {
        /* renamed from: a */
        void m5406a(C0766a<D> c0766a);

        /* renamed from: a */
        void m5405a(C0766a<D> c0766a, D d);
    }

    /* renamed from: a */
    public static <T extends AbstractC0903k & AbstractC0927y> AbstractC0759a m5407a(T t) {
        return new C0761b(t, t.getViewModelStore());
    }

    /* renamed from: a */
    public abstract void mo5404a();

    @Deprecated
    /* renamed from: a */
    public abstract void mo5403a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
