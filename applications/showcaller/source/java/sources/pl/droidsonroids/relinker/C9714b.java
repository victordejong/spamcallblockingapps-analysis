package pl.droidsonroids.relinker;

import android.content.Context;
import java.io.File;
/* renamed from: pl.droidsonroids.relinker.b */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/b.class */
public class C9714b {

    /* renamed from: pl.droidsonroids.relinker.b$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/b$a.class */
    public interface AbstractC9715a {
        /* renamed from: a */
        void mo30a(Context context, String[] strArr, String str, File file, C9719c c9719c);
    }

    /* renamed from: pl.droidsonroids.relinker.b$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/b$b.class */
    public interface AbstractC9716b {
        /* renamed from: a */
        void mo17a(String str);

        /* renamed from: b */
        String mo16b(String str);

        /* renamed from: c */
        String mo15c(String str);

        /* renamed from: d */
        String[] mo14d();

        /* renamed from: e */
        void mo13e(String str);
    }

    /* renamed from: pl.droidsonroids.relinker.b$c */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/b$c.class */
    public interface AbstractC9717c {
        /* renamed from: a */
        void m29a();

        /* renamed from: b */
        void m28b(Throwable th);
    }

    /* renamed from: pl.droidsonroids.relinker.b$d */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/b$d.class */
    public interface AbstractC9718d {
        /* renamed from: a */
        void m27a(String str);
    }

    /* renamed from: a */
    public static void m32a(Context context, String str) {
        m31b(context, str, null, null);
    }

    /* renamed from: b */
    public static void m31b(Context context, String str, String str2, AbstractC9717c abstractC9717c) {
        new C9719c().m21f(context, str, str2, abstractC9717c);
    }
}
