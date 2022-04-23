package com.bumptech.glide;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.d.n;
import com.bumptech.glide.g.b.k;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.c;
import com.bumptech.glide.load.c.a.a;
import com.bumptech.glide.load.c.a.c;
import com.bumptech.glide.load.c.a.d;
import com.bumptech.glide.load.c.a.e;
import com.bumptech.glide.load.c.b.a;
import com.bumptech.glide.load.c.b.b;
import com.bumptech.glide.load.c.b.c;
import com.bumptech.glide.load.c.b.e;
import com.bumptech.glide.load.c.b.f;
import com.bumptech.glide.load.c.b.g;
import com.bumptech.glide.load.c.b.h;
import com.bumptech.glide.load.resource.bitmap.g;
import com.bumptech.glide.load.resource.bitmap.i;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.c.b;
import com.bumptech.glide.load.resource.d.f;
import com.bumptech.glide.load.resource.e.d;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public class e {
    private static volatile e g;

    /* renamed from: a  reason: collision with root package name */
    final c f3404a;

    /* renamed from: b  reason: collision with root package name */
    public final com.bumptech.glide.load.b.a.c f3405b;
    public final h c;
    final f e;
    final f f;
    private final com.bumptech.glide.load.c.c h;
    private final com.bumptech.glide.load.a i;
    private final com.bumptech.glide.load.resource.bitmap.e l;
    private final i m;
    private final com.bumptech.glide.load.b.d.a o;
    private final com.bumptech.glide.g.b.f j = new com.bumptech.glide.g.b.f();
    final d d = new d();
    private final Handler n = new Handler(Looper.getMainLooper());
    private final com.bumptech.glide.f.c k = new com.bumptech.glide.f.c();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e$a.class */
    private static final class a extends k<View, Object> {
        public a(View view) {
            super(view);
        }

        @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
        public final void onLoadCleared(Drawable drawable) {
        }

        @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
        public final void onLoadFailed(Exception exc, Drawable drawable) {
        }

        @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
        public final void onLoadStarted(Drawable drawable) {
        }

        @Override // com.bumptech.glide.g.b.j
        public final void onResourceReady(Object obj, com.bumptech.glide.g.a.c<? super Object> cVar) {
        }
    }

    private e(c cVar, h hVar, com.bumptech.glide.load.b.a.c cVar2, Context context, com.bumptech.glide.load.a aVar) {
        this.f3404a = cVar;
        this.f3405b = cVar2;
        this.c = hVar;
        this.i = aVar;
        this.h = new com.bumptech.glide.load.c.c(context);
        this.o = new com.bumptech.glide.load.b.d.a(hVar, cVar2, aVar);
        o oVar = new o(cVar2, aVar);
        this.k.a(InputStream.class, Bitmap.class, oVar);
        g gVar = new g(cVar2, aVar);
        this.k.a(ParcelFileDescriptor.class, Bitmap.class, gVar);
        m mVar = new m(oVar, gVar);
        this.k.a(com.bumptech.glide.load.c.g.class, Bitmap.class, mVar);
        com.bumptech.glide.load.resource.c.c cVar3 = new com.bumptech.glide.load.resource.c.c(context, cVar2);
        this.k.a(InputStream.class, b.class, cVar3);
        this.k.a(com.bumptech.glide.load.c.g.class, com.bumptech.glide.load.resource.d.a.class, new com.bumptech.glide.load.resource.d.g(mVar, cVar3, cVar2));
        this.k.a(InputStream.class, File.class, new com.bumptech.glide.load.resource.b.d());
        a(File.class, ParcelFileDescriptor.class, new a.C0101a());
        a(File.class, InputStream.class, new c.a());
        a(Integer.TYPE, ParcelFileDescriptor.class, new c.a());
        a(Integer.TYPE, InputStream.class, new e.a());
        a(Integer.class, ParcelFileDescriptor.class, new c.a());
        a(Integer.class, InputStream.class, new e.a());
        a(String.class, ParcelFileDescriptor.class, new d.a());
        a(String.class, InputStream.class, new f.a());
        a(Uri.class, ParcelFileDescriptor.class, new e.a());
        a(Uri.class, InputStream.class, new g.a());
        a(URL.class, InputStream.class, new h.a());
        a(com.bumptech.glide.load.c.d.class, InputStream.class, new a.C0102a());
        a(byte[].class, InputStream.class, new b.a());
        this.d.a(Bitmap.class, j.class, new com.bumptech.glide.load.resource.e.b(context.getResources(), cVar2));
        this.d.a(com.bumptech.glide.load.resource.d.a.class, com.bumptech.glide.load.resource.a.b.class, new com.bumptech.glide.load.resource.e.a(new com.bumptech.glide.load.resource.e.b(context.getResources(), cVar2)));
        this.l = new com.bumptech.glide.load.resource.bitmap.e(cVar2);
        this.e = new com.bumptech.glide.load.resource.d.f(cVar2, this.l);
        this.m = new i(cVar2);
        this.f = new com.bumptech.glide.load.resource.d.f(cVar2, this.m);
    }

    public static e a(Context context) {
        if (g == null) {
            synchronized (e.class) {
                try {
                    if (g == null) {
                        Context applicationContext = context.getApplicationContext();
                        List<com.bumptech.glide.e.a> a2 = new com.bumptech.glide.e.b(applicationContext).a();
                        f fVar = new f(applicationContext);
                        for (com.bumptech.glide.e.a aVar : a2) {
                            aVar.applyOptions(applicationContext, fVar);
                        }
                        if (fVar.e == null) {
                            fVar.e = new com.bumptech.glide.load.b.c.a(Math.max(1, Runtime.getRuntime().availableProcessors()));
                        }
                        if (fVar.f == null) {
                            fVar.f = new com.bumptech.glide.load.b.c.a(1);
                        }
                        com.bumptech.glide.load.b.b.i iVar = new com.bumptech.glide.load.b.b.i(fVar.f3407a);
                        if (fVar.c == null) {
                            if (Build.VERSION.SDK_INT >= 11) {
                                fVar.c = new com.bumptech.glide.load.b.a.f(iVar.f3518a);
                            } else {
                                fVar.c = new com.bumptech.glide.load.b.a.d();
                            }
                        }
                        if (fVar.d == null) {
                            fVar.d = new com.bumptech.glide.load.b.b.g(iVar.f3519b);
                        }
                        if (fVar.h == null) {
                            fVar.h = new com.bumptech.glide.load.b.b.f(fVar.f3407a);
                        }
                        if (fVar.f3408b == null) {
                            fVar.f3408b = new com.bumptech.glide.load.b.c(fVar.d, fVar.h, fVar.f, fVar.e);
                        }
                        if (fVar.g == null) {
                            fVar.g = com.bumptech.glide.load.a.d;
                        }
                        g = new e(fVar.f3408b, fVar.d, fVar.c, fVar.f3407a, fVar.g);
                        for (com.bumptech.glide.e.a aVar2 : a2) {
                            aVar2.registerComponents(applicationContext, g);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public static <T> com.bumptech.glide.load.c.j<T, InputStream> a(Class<T> cls, Context context) {
        return a(cls, InputStream.class, context);
    }

    private static <T, Y> com.bumptech.glide.load.c.j<T, Y> a(Class<T> cls, Class<Y> cls2, Context context) {
        com.bumptech.glide.load.c.j<T, Y> a2;
        if (cls == null) {
            if (Log.isLoggable("Glide", 3)) {
                Log.d("Glide", "Unable to load null model, setting placeholder only");
            }
            a2 = null;
        } else {
            a2 = a(context).h.a(cls, cls2);
        }
        return a2;
    }

    public static void a(View view) {
        a(new a(view));
    }

    public static void a(com.bumptech.glide.g.b.j<?> jVar) {
        com.bumptech.glide.i.h.a();
        com.bumptech.glide.g.b request = jVar.getRequest();
        if (request != null) {
            request.c();
            jVar.setRequest(null);
        }
    }

    private <T, Y> void a(Class<T> cls, Class<Y> cls2, com.bumptech.glide.load.c.k<T, Y> kVar) {
        this.h.a(cls, cls2, kVar);
    }

    public static h b(Context context) {
        h a2;
        com.bumptech.glide.d.k a3 = com.bumptech.glide.d.k.a();
        while (context != null) {
            if (com.bumptech.glide.i.h.b() && !(context instanceof Application)) {
                if (context instanceof android.support.v4.app.i) {
                    android.support.v4.app.i iVar = (android.support.v4.app.i) context;
                    if (com.bumptech.glide.i.h.c()) {
                        context = iVar.getApplicationContext();
                    } else {
                        com.bumptech.glide.d.k.a((Activity) iVar);
                        n a4 = a3.a(iVar.getSupportFragmentManager());
                        h hVar = a4.f3401a;
                        a2 = hVar;
                        if (hVar == null) {
                            a2 = new h(iVar, a4.f3402b, a4.c);
                            a4.f3401a = a2;
                        }
                        return a2;
                    }
                } else if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    if (com.bumptech.glide.i.h.c() || Build.VERSION.SDK_INT < 11) {
                        context = activity.getApplicationContext();
                    } else {
                        com.bumptech.glide.d.k.a(activity);
                        com.bumptech.glide.d.j a5 = a3.a(activity.getFragmentManager());
                        h hVar2 = a5.c;
                        a2 = hVar2;
                        if (hVar2 == null) {
                            a2 = new h(activity, a5.f3394a, a5.f3395b);
                            a5.c = a2;
                        }
                        return a2;
                    }
                } else if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            a2 = a3.a(context);
            return a2;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public static <T> com.bumptech.glide.load.c.j<T, ParcelFileDescriptor> b(Class<T> cls, Context context) {
        return a(cls, ParcelFileDescriptor.class, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T, Z> com.bumptech.glide.f.b<T, Z> a(Class<T> cls, Class<Z> cls2) {
        return this.k.a(cls, cls2);
    }
}
