package com.criteo.publisher.p030w;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1917h;
/* renamed from: com.criteo.publisher.w.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/w/a.class */
public class C2158a {

    /* renamed from: c */
    public static final Object[] f2462c = new Object[0];
    @NonNull

    /* renamed from: a */
    public final String f2463a;
    @NonNull

    /* renamed from: b */
    public final C1917h f2464b;

    public C2158a(@NonNull Class<?> cls, @NonNull C1917h hVar) {
        this.f2463a = cls.getSimpleName();
        this.f2464b = hVar;
    }

    /* renamed from: a */
    private void m35582a(int i, @Nullable String str, Object[] objArr, @Nullable Throwable th) {
        if (m35584a(i)) {
            if (str != null) {
                m35583a(i, String.format(str, objArr));
            }
            if (th != null) {
                m35583a(i, Log.getStackTraceString(th));
            }
        }
    }

    /* renamed from: a */
    private boolean m35584a(int i) {
        return i >= this.f2464b.m36027j();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35583a(int i, @NonNull String str) {
        Log.println(i, this.f2463a, str);
    }

    /* renamed from: a */
    public void m35581a(String str, Throwable th) {
        m35582a(3, str, f2462c, th);
    }

    /* renamed from: a */
    public void m35580a(String str, Object... objArr) {
        m35582a(3, str, objArr, null);
    }

    /* renamed from: a */
    public void m35579a(Throwable th) {
        m35582a(6, null, f2462c, th);
    }

    /* renamed from: b */
    public void m35578b(String str, Throwable th) {
        m35582a(6, str, f2462c, th);
    }
}
