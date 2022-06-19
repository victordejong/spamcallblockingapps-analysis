package p1727n3.p1869w.p1870a;

import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1869w.p1871b.C27051b;
/* renamed from: n3.w.a.a */
/* loaded from: classes-dex2jar.jar:n3/w/a/a.class */
public abstract class AbstractC27043a {

    /* renamed from: n3.w.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/w/a/a$a.class */
    public interface AbstractC27044a<D> {
        C27051b<D> onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(C27051b<D> c27051b, D d);

        void onLoaderReset(C27051b<D> c27051b);
    }

    /* renamed from: b */
    public static <T extends AbstractC26992b0 & AbstractC26996c1> AbstractC27043a m979b(T t) {
        return new C27045b(t, t.getViewModelStore());
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo978a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: c */
    public abstract <D> C27051b<D> mo977c(int i, Bundle bundle, AbstractC27044a<D> abstractC27044a);

    /* renamed from: d */
    public abstract <D> C27051b<D> mo976d(int i, Bundle bundle, AbstractC27044a<D> abstractC27044a);
}
