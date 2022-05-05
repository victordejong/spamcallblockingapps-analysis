package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import com.android.volley.n;
import com.android.volley.o;
import com.android.volley.p;
import com.android.volley.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    final o f2330a;

    /* renamed from: b  reason: collision with root package name */
    final b f2331b;
    final HashMap<String, a> c;
    final HashMap<String, a> d;
    Runnable e;
    private int f;
    private final Handler g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/h$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f2337a;

        /* renamed from: b  reason: collision with root package name */
        u f2338b;
        final LinkedList<c> c = new LinkedList<>();
        private final n<?> e;

        public a(n<?> nVar, c cVar) {
            this.e = nVar;
            this.c.add(cVar);
        }

        public final boolean a(c cVar) {
            boolean z = true;
            this.c.remove(cVar);
            if (this.c.size() == 0) {
                this.e.i = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/h$b.class */
    public interface b {
        Bitmap a();
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/h$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f2339a;

        /* renamed from: b  reason: collision with root package name */
        final d f2340b;
        final String c;
        private final String e;

        public c(Bitmap bitmap, String str, String str2, d dVar) {
            this.f2339a = bitmap;
            this.c = str;
            this.e = str2;
            this.f2340b = dVar;
        }

        public final void a() {
            if (this.f2340b != null) {
                a aVar = h.this.c.get(this.e);
                if (aVar == null) {
                    a aVar2 = h.this.d.get(this.e);
                    if (aVar2 != null) {
                        aVar2.a(this);
                        if (aVar2.c.size() == 0) {
                            h.this.d.remove(this.e);
                        }
                    }
                } else if (aVar.a(this)) {
                    h.this.c.remove(this.e);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/h$d.class */
    public interface d extends p.a {
        void a(c cVar, boolean z);
    }

    final void a(String str, a aVar) {
        this.d.put(str, aVar);
        if (this.e == null) {
            this.e = new Runnable() { // from class: com.android.volley.toolbox.h.3
                @Override // java.lang.Runnable
                public final void run() {
                    for (a aVar2 : h.this.d.values()) {
                        Iterator<c> it = aVar2.c.iterator();
                        while (it.hasNext()) {
                            c next = it.next();
                            if (next.f2340b != null) {
                                if (aVar2.f2338b == null) {
                                    next.f2339a = aVar2.f2337a;
                                    next.f2340b.a(next, false);
                                } else {
                                    next.f2340b.a(aVar2.f2338b);
                                }
                            }
                        }
                    }
                    h.this.d.clear();
                    h.this.e = null;
                }
            };
            this.g.postDelayed(this.e, this.f);
        }
    }
}
