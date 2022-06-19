package androidx.p037g.p038a;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.AbstractC0889v;
import androidx.p037g.p039b.C0723b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.g.a.a */
/* loaded from: classes-dex2jar.jar:androidx/g/a/a.class */
public abstract class AbstractC0714a {

    /* renamed from: androidx.g.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/g/a/a$a.class */
    public interface AbstractC0715a<D> {
        /* renamed from: a */
        C0723b<D> mo14538a(int i, Bundle bundle);

        /* renamed from: a */
        void mo14537a(C0723b<D> c0723b);

        /* renamed from: a */
        void mo14536a(C0723b<D> c0723b, D d);
    }

    /* renamed from: a */
    public static <T extends AbstractC0869h & AbstractC0889v> AbstractC0714a m19601a(T t) {
        return new C0716b(t, t.mo19167c());
    }

    /* renamed from: a */
    public abstract <D> C0723b<D> mo19599a(int i, Bundle bundle, AbstractC0715a<D> abstractC0715a);

    /* renamed from: a */
    public abstract void mo19600a();

    @Deprecated
    /* renamed from: a */
    public abstract void mo19597a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
