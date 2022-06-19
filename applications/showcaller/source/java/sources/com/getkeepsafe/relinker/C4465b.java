package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* renamed from: com.getkeepsafe.relinker.b */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b.class */
public class C4465b {

    /* renamed from: com.getkeepsafe.relinker.b$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$a.class */
    public interface AbstractC4466a {
        /* renamed from: a */
        void mo22411a(Context context, String[] strArr, String str, File file, C4470c c4470c);
    }

    /* renamed from: com.getkeepsafe.relinker.b$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$b.class */
    public interface AbstractC4467b {
        /* renamed from: a */
        void mo22398a(String str);

        /* renamed from: b */
        String mo22397b(String str);

        /* renamed from: c */
        String mo22396c(String str);

        /* renamed from: d */
        String[] mo22395d();

        /* renamed from: e */
        void mo22394e(String str);
    }

    /* renamed from: com.getkeepsafe.relinker.b$c */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$c.class */
    public interface AbstractC4468c {
        /* renamed from: a */
        void m22410a();

        /* renamed from: b */
        void m22409b(Throwable th);
    }

    /* renamed from: com.getkeepsafe.relinker.b$d */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$d.class */
    public interface AbstractC4469d {
        /* renamed from: a */
        void m22408a(String str);
    }

    /* renamed from: a */
    public static void m22413a(Context context, String str) {
        m22412b(context, str, null, null);
    }

    /* renamed from: b */
    public static void m22412b(Context context, String str, String str2, AbstractC4468c abstractC4468c) {
        new C4470c().m22402f(context, str, str2, abstractC4468c);
    }
}
