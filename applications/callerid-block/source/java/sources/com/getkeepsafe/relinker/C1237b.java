package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* renamed from: com.getkeepsafe.relinker.b */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b.class */
public class C1237b {

    /* renamed from: com.getkeepsafe.relinker.b$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$a.class */
    public interface AbstractC1238a {
        /* renamed from: a */
        void m9471a(Context context, String[] strArr, String str, File file, C1242c c1242c);
    }

    /* renamed from: com.getkeepsafe.relinker.b$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$b.class */
    public interface AbstractC1239b {
        /* renamed from: a */
        void m9470a(String str);

        /* renamed from: b */
        String m9469b(String str);

        /* renamed from: c */
        String m9468c(String str);

        /* renamed from: d */
        String[] m9467d();

        /* renamed from: e */
        void m9466e(String str);
    }

    /* renamed from: com.getkeepsafe.relinker.b$c */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$c.class */
    public interface AbstractC1240c {
        /* renamed from: a */
        void m9465a();

        /* renamed from: b */
        void m9464b(Throwable th);
    }

    /* renamed from: com.getkeepsafe.relinker.b$d */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$d.class */
    public interface AbstractC1241d {
        /* renamed from: a */
        void m9463a(String str);
    }

    /* renamed from: a */
    public static void m9473a(Context context, String str) {
        m9472b(context, str, null, null);
    }

    /* renamed from: b */
    public static void m9472b(Context context, String str, String str2, AbstractC1240c abstractC1240c) {
        new C1242c().m9457f(context, str, str2, abstractC1240c);
    }
}
