package p081h.p203i.p325c.p372x;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* renamed from: h.i.c.x.u */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/u.class */
public final class C10002u {

    /* renamed from: a */
    public final SharedPreferences f22604a;

    /* renamed from: b */
    public final String f22605b;

    /* renamed from: c */
    public final String f22606c;

    /* renamed from: e */
    public final Executor f22608e;
    @GuardedBy("internalQueue")

    /* renamed from: d */
    public final ArrayDeque<String> f22607d = new ArrayDeque<>();
    @GuardedBy("internalQueue")

    /* renamed from: f */
    public boolean f22609f = false;

    public C10002u(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f22604a = sharedPreferences;
        this.f22605b = str;
        this.f22606c = str2;
        this.f22608e = executor;
    }

    @WorkerThread
    /* renamed from: a */
    public static C10002u m13687a(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        C10002u uVar = new C10002u(sharedPreferences, str, str2, executor);
        uVar.m13683b();
        return uVar;
    }

    /* renamed from: a */
    public final boolean m13686a(@Nullable Object obj) {
        boolean remove;
        synchronized (this.f22607d) {
            remove = this.f22607d.remove(obj);
            m13684a(remove);
        }
        return remove;
    }

    /* renamed from: a */
    public final boolean m13685a(@NonNull String str) {
        boolean add;
        if (TextUtils.isEmpty(str) || str.contains(this.f22606c)) {
            return false;
        }
        synchronized (this.f22607d) {
            add = this.f22607d.add(str);
            m13684a(add);
        }
        return add;
    }

    @GuardedBy("internalQueue")
    /* renamed from: a */
    public final boolean m13684a(boolean z) {
        if (z && !this.f22609f) {
            m13679f();
        }
        return z;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m13683b() {
        synchronized (this.f22607d) {
            this.f22607d.clear();
            String string = this.f22604a.getString(this.f22605b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.f22606c)) {
                String[] split = string.split(this.f22606c, -1);
                if (split.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f22607d.add(str);
                    }
                }
            }
        }
    }

    @Nullable
    /* renamed from: c */
    public final String m13682c() {
        String peek;
        synchronized (this.f22607d) {
            peek = this.f22607d.peek();
        }
        return peek;
    }

    @NonNull
    @GuardedBy("internalQueue")
    /* renamed from: d */
    public final String m13681d() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f22607d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.f22606c);
        }
        return sb.toString();
    }

    @WorkerThread
    /* renamed from: e */
    public final void m13688a() {
        synchronized (this.f22607d) {
            this.f22604a.edit().putString(this.f22605b, m13681d()).commit();
        }
    }

    /* renamed from: f */
    public final void m13679f() {
        this.f22608e.execute(new Runnable(this) { // from class: h.i.c.x.t

            /* renamed from: a */
            public final C10002u f22603a;

            {
                this.f22603a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22603a.m13688a();
            }
        });
    }
}
