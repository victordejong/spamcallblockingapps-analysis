package p016b1;

import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0524j;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: b1.a */
/* loaded from: classes-dex2jar.jar:b1/a.class */
public abstract class AbstractC0714a {
    /* renamed from: b */
    public static <T extends AbstractC0524j & AbstractC0514d0> AbstractC0714a m7437b(T t) {
        return new C0715b(t, t.getViewModelStore());
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo7436a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
