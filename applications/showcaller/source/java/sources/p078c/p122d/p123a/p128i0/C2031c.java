package p078c.p122d.p123a.p128i0;

import android.annotation.SuppressLint;
import android.content.Context;
import com.liulishuo.filedownloader.exception.PathConflictException;
import com.liulishuo.filedownloader.message.C9369b;
import com.liulishuo.filedownloader.message.C9372c;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import p078c.p122d.p123a.AbstractC2069y;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p127h0.AbstractC2024a;
/* renamed from: c.d.a.i0.c */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/c.class */
public class C2031c {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static Context f7150a;

    /* renamed from: c.d.a.i0.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/c$a.class */
    public interface AbstractC2032a {
        /* renamed from: a */
        int mo28257a(int i, String str, String str2, long j);
    }

    /* renamed from: c.d.a.i0.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/c$b.class */
    public interface AbstractC2033b {
        /* renamed from: a */
        AbstractC1995b mo28256a(String str);
    }

    /* renamed from: c.d.a.i0.c$c */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/c$c.class */
    public interface AbstractC2034c {
        /* renamed from: a */
        int mo808a(String str, String str2, boolean z);

        /* renamed from: b */
        int mo807b(int i, String str, String str2, boolean z);
    }

    /* renamed from: c.d.a.i0.c$d */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/c$d.class */
    public interface AbstractC2035d {
        /* renamed from: a */
        AbstractC2024a mo28255a(File file);

        /* renamed from: b */
        boolean mo28254b();
    }

    /* renamed from: a */
    public static Context m28262a() {
        return f7150a;
    }

    /* renamed from: b */
    public static void m28261b(Context context) {
        f7150a = context;
    }

    /* renamed from: c */
    public static boolean m28260c(int i, long j, String str, String str2, AbstractC2069y abstractC2069y) {
        int mo772b;
        if (str2 == null || str == null || (mo772b = abstractC2069y.mo772b(str, i)) == 0) {
            return false;
        }
        C9369b.m885a().m884b(C9372c.m880b(i, j, new PathConflictException(mo772b, str, str2)));
        return true;
    }

    /* renamed from: d */
    public static boolean m28259d(int i, String str, boolean z, boolean z2) {
        if (!z && str != null) {
            File file = new File(str);
            if (!file.exists()) {
                return false;
            }
            C9369b.m885a().m884b(C9372c.m881a(i, file, z2));
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m28258e(int i, FileDownloadModel fileDownloadModel, AbstractC2069y abstractC2069y, boolean z) {
        if (abstractC2069y.mo773a(fileDownloadModel)) {
            C9369b.m885a().m884b(C9372c.m879c(i, fileDownloadModel.m857g(), fileDownloadModel.m853k(), z));
            return true;
        }
        return false;
    }
}
