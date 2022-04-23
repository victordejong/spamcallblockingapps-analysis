package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<b> f3949a = Collections.newSetFromMap(new WeakHashMap());

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Account f3950a;
        public int c;
        public View d;
        public String e;
        public String f;
        private final Context j;
        private Looper l;

        /* renamed from: b  reason: collision with root package name */
        public final Set<Scope> f3951b = new HashSet();
        private final Set<Scope> i = new HashSet();
        public final Map<com.google.android.gms.common.api.a<?>, n.a> g = new android.support.v4.b.a();
        public final Map<com.google.android.gms.common.api.a<?>, a.AbstractC0110a> h = new android.support.v4.b.a();
        private int k = -1;
        private com.google.android.gms.common.b m = com.google.android.gms.common.b.a();
        private a.b<? extends bn, bo> n = bm.c;
        private final ArrayList<AbstractC0112b> o = new ArrayList<>();
        private final ArrayList<c> p = new ArrayList<>();

        public a(Context context) {
            this.j = context;
            this.l = context.getMainLooper();
            this.e = context.getPackageName();
            this.f = context.getClass().getName();
        }
    }

    /* renamed from: com.google.android.gms.common.api.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b$b.class */
    public interface AbstractC0112b {
        void a();

        void b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b$c.class */
    public interface c {
        void a(ConnectionResult connectionResult);
    }

    public static void b() {
        throw new UnsupportedOperationException();
    }

    public static void c() {
        throw new UnsupportedOperationException();
    }

    public abstract void a();
}
