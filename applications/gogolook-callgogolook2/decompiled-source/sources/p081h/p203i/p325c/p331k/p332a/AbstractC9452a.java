package p081h.p203i.p325c.p331k.p332a;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.c.k.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/k/a/a.class */
public interface AbstractC9452a {

    /* renamed from: h.i.c.k.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/k/a/a$a.class */
    public interface AbstractC9453a {
    }

    /* renamed from: h.i.c.k.a.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/k/a/a$b.class */
    public interface AbstractC9454b {
        /* renamed from: a */
        void mo15029a(int i, @Nullable Bundle bundle);
    }

    /* renamed from: h.i.c.k.a.a$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/k/a/a$c.class */
    public static class C9455c {

        /* renamed from: a */
        public String f21576a;

        /* renamed from: b */
        public String f21577b;

        /* renamed from: c */
        public Object f21578c;

        /* renamed from: d */
        public String f21579d;

        /* renamed from: e */
        public long f21580e;

        /* renamed from: f */
        public String f21581f;

        /* renamed from: g */
        public Bundle f21582g;

        /* renamed from: h */
        public String f21583h;

        /* renamed from: i */
        public Bundle f21584i;

        /* renamed from: j */
        public long f21585j;

        /* renamed from: k */
        public String f21586k;

        /* renamed from: l */
        public Bundle f21587l;

        /* renamed from: m */
        public long f21588m;

        /* renamed from: n */
        public boolean f21589n;

        /* renamed from: o */
        public long f21590o;
    }

    /* renamed from: a */
    AbstractC9453a mo15121a(String str, AbstractC9454b bVar);

    @WorkerThread
    /* renamed from: a */
    List<C9455c> mo15120a(@NonNull String str, @Nullable @Size(max = 23, min = 1) String str2);

    @WorkerThread
    /* renamed from: a */
    Map<String, Object> mo15117a(boolean z);

    /* renamed from: a */
    void mo15124a(@NonNull C9455c cVar);

    /* renamed from: a */
    void mo15119a(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle);

    /* renamed from: a */
    void mo15118a(@NonNull String str, @NonNull String str2, Object obj);

    @WorkerThread
    /* renamed from: b */
    int mo15116b(@NonNull @Size(min = 1) String str);

    /* renamed from: b */
    void mo15115b(@NonNull String str, @NonNull String str2, Bundle bundle);
}
