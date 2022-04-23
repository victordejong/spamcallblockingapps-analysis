package p092e.p096e.p097a.p102h0;

import android.annotation.SuppressLint;
import android.content.Context;
import com.liulishuo.filedownloader.exception.PathConflictException;
import com.liulishuo.filedownloader.message.C2764b;
import com.liulishuo.filedownloader.message.C2767c;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import p092e.p096e.p097a.AbstractC3095x;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p101g0.AbstractC3047a;
/* renamed from: e.e.a.h0.c */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/c.class */
public class C3056c {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static Context f12681a;

    /* renamed from: e.e.a.h0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/c$a.class */
    public interface AbstractC3057a {
        /* renamed from: a */
        int mo421a(int i, String str, String str2, long j);
    }

    /* renamed from: e.e.a.h0.c$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/c$b.class */
    public interface AbstractC3058b {
        /* renamed from: a */
        AbstractC3020b mo420a(String str);
    }

    /* renamed from: e.e.a.h0.c$c */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/c$c.class */
    public interface AbstractC3059c {
        /* renamed from: a */
        AbstractC3026a m419a();
    }

    /* renamed from: e.e.a.h0.c$d */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/c$d.class */
    public interface AbstractC3060d {
        /* renamed from: a */
        int mo418a(String str, String str2, boolean z);

        /* renamed from: b */
        int mo417b(int i, String str, String str2, boolean z);
    }

    /* renamed from: e.e.a.h0.c$e */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/c$e.class */
    public interface AbstractC3061e {
        /* renamed from: a */
        AbstractC3047a mo416a(File file);

        /* renamed from: b */
        boolean mo415b();
    }

    /* renamed from: a */
    public static Context m426a() {
        return f12681a;
    }

    /* renamed from: b */
    public static void m425b(Context context) {
        f12681a = context;
    }

    /* renamed from: c */
    public static boolean m424c(int i, long j, String str, String str2, AbstractC3095x xVar) {
        int b;
        if (str2 == null || str == null || (b = xVar.mo251b(str, i)) == 0) {
            return false;
        }
        C2764b.m1840a().m1839b(C2767c.m1835b(i, j, new PathConflictException(b, str, str2)));
        return true;
    }

    /* renamed from: d */
    public static boolean m423d(int i, String str, boolean z, boolean z2) {
        if (z || str == null) {
            return false;
        }
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        C2764b.m1840a().m1839b(C2767c.m1836a(i, file, z2));
        return true;
    }

    /* renamed from: e */
    public static boolean m422e(int i, FileDownloadModel fileDownloadModel, AbstractC3095x xVar, boolean z) {
        if (!xVar.mo252a(fileDownloadModel)) {
            return false;
        }
        C2764b.m1840a().m1839b(C2767c.m1834c(i, fileDownloadModel.m1811g(), fileDownloadModel.m1807m(), z));
        return true;
    }
}
