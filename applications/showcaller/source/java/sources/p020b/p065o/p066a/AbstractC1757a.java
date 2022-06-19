package p020b.p065o.p066a;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0819u;
import androidx.loader.content.C0833b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: b.o.a.a */
/* loaded from: classes-dex2jar.jar:b/o/a/a.class */
public abstract class AbstractC1757a {

    /* renamed from: b.o.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/o/a/a$a.class */
    public interface AbstractC1758a<D> {
        /* renamed from: a */
        void mo17606a(C0833b<D> c0833b, D d);

        /* renamed from: b */
        C0833b<D> mo17605b(int i, Bundle bundle);

        /* renamed from: c */
        void mo17604c(C0833b<D> c0833b);
    }

    /* renamed from: b */
    public static <T extends AbstractC0797h & AbstractC0819u> AbstractC1757a m28969b(T t) {
        return new C1759b(t, t.mo32344p());
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo28968a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: c */
    public abstract <D> C0833b<D> mo28967c(int i, Bundle bundle, AbstractC1758a<D> abstractC1758a);

    /* renamed from: d */
    public abstract void mo28966d();
}
