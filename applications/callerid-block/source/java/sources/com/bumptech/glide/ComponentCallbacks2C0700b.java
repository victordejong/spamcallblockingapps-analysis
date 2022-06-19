package com.bumptech.glide;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.C0702c;
import com.bumptech.glide.load.AbstractC0794f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import com.bumptech.glide.load.engine.p021y.AbstractC0781h;
import com.bumptech.glide.load.i.a;
import com.bumptech.glide.load.i.b;
import com.bumptech.glide.load.i.d;
import com.bumptech.glide.load.i.e;
import com.bumptech.glide.load.i.f;
import com.bumptech.glide.load.i.k;
import com.bumptech.glide.load.i.s;
import com.bumptech.glide.load.i.t;
import com.bumptech.glide.load.i.u;
import com.bumptech.glide.load.i.v;
import com.bumptech.glide.load.i.w;
import com.bumptech.glide.load.i.x;
import com.bumptech.glide.load.i.y.a;
import com.bumptech.glide.load.i.y.b;
import com.bumptech.glide.load.i.y.c;
import com.bumptech.glide.load.i.y.d;
import com.bumptech.glide.load.i.y.e;
import com.bumptech.glide.load.j.d.a;
import com.bumptech.glide.load.j.e.d;
import com.bumptech.glide.load.j.g.a;
import com.bumptech.glide.load.j.g.j;
import com.bumptech.glide.load.resource.bitmap.C0819l;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.bitmap.b;
import com.bumptech.glide.load.resource.bitmap.c;
import com.bumptech.glide.load.resource.bitmap.g;
import com.bumptech.glide.load.resource.bitmap.h;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.u;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.load.resource.bitmap.y;
import com.bumptech.glide.manager.AbstractC0835d;
import com.bumptech.glide.manager.C0839o;
import com.bumptech.glide.p017k.AbstractC0720a;
import com.bumptech.glide.p018l.AbstractC0725b;
import com.bumptech.glide.p018l.C0727d;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.C0857k;
import com.bumptech.glide.request.AbstractC0868d;
import com.bumptech.glide.request.e;
import com.bumptech.glide.request.p031h.C0870f;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.bumptech.glide.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b.class */
public class ComponentCallbacks2C0700b implements ComponentCallbacks2 {

    /* renamed from: j */
    private static volatile ComponentCallbacks2C0700b f3380j;

    /* renamed from: k */
    private static volatile boolean f3381k;

    /* renamed from: b */
    private final AbstractC0770e f3382b;

    /* renamed from: c */
    private final AbstractC0781h f3383c;

    /* renamed from: d */
    private final C0706d f3384d;

    /* renamed from: e */
    private final Registry f3385e;

    /* renamed from: f */
    private final AbstractC0768b f3386f;

    /* renamed from: g */
    private final C0839o f3387g;

    /* renamed from: h */
    private final AbstractC0835d f3388h;

    /* renamed from: i */
    private final List<h> f3389i = new ArrayList();

    /* renamed from: com.bumptech.glide.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/b$a.class */
    public interface AbstractC0701a {
        /* renamed from: a */
        e m11328a();
    }

    public ComponentCallbacks2C0700b(Context context, i iVar, AbstractC0781h abstractC0781h, AbstractC0770e abstractC0770e, AbstractC0768b abstractC0768b, C0839o c0839o, AbstractC0835d abstractC0835d, int i, AbstractC0701a abstractC0701a, Map<Class<?>, AbstractC0710i<?, ?>> map, List<AbstractC0868d<Object>> list, C0707e c0707e) {
        AbstractC0794f abstractC0794f;
        AbstractC0794f abstractC0794f2;
        MemoryCategory memoryCategory = MemoryCategory.NORMAL;
        this.f3382b = abstractC0770e;
        this.f3386f = abstractC0768b;
        this.f3383c = abstractC0781h;
        this.f3387g = c0839o;
        this.f3388h = abstractC0835d;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f3385e = registry;
        registry.m11354o(new DefaultImageHeaderParser());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            registry.m11354o(new o());
        }
        List<ImageHeaderParser> m11362g = registry.m11362g();
        a aVar = new a(context, m11362g, abstractC0770e, abstractC0768b);
        AbstractC0794f h = VideoDecoder.h(abstractC0770e);
        C0819l c0819l = new C0819l(registry.m11362g(), resources.getDisplayMetrics(), abstractC0770e, abstractC0768b);
        if (!c0707e.m11316a(C0702c.C0703b.class) || i2 < 28) {
            abstractC0794f = new g(c0819l);
            abstractC0794f2 = new w(c0819l, abstractC0768b);
        } else {
            abstractC0794f2 = new s();
            abstractC0794f = new h();
        }
        d dVar = new d(context);
        s.c cVar = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar = new s.b(resources);
        s.a aVar2 = new s.a(resources);
        c cVar2 = new c(abstractC0768b);
        com.bumptech.glide.load.j.h.a aVar3 = new com.bumptech.glide.load.j.h.a();
        com.bumptech.glide.load.j.h.d dVar3 = new com.bumptech.glide.load.j.h.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.m11368a(ByteBuffer.class, new com.bumptech.glide.load.i.c());
        registry.m11368a(InputStream.class, new t(abstractC0768b));
        registry.m11364e("Bitmap", ByteBuffer.class, Bitmap.class, abstractC0794f);
        registry.m11364e("Bitmap", InputStream.class, Bitmap.class, abstractC0794f2);
        if (ParcelFileDescriptorRewinder.c()) {
            registry.m11364e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new u(c0819l));
        }
        registry.m11364e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, h);
        registry.m11364e("Bitmap", AssetFileDescriptor.class, Bitmap.class, VideoDecoder.c(abstractC0770e));
        registry.m11365d(Bitmap.class, Bitmap.class, v.a.a());
        registry.m11364e("Bitmap", Bitmap.class, Bitmap.class, new y());
        registry.m11367b(Bitmap.class, cVar2);
        registry.m11364e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, abstractC0794f));
        registry.m11364e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, abstractC0794f2));
        registry.m11364e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, h));
        registry.m11367b(BitmapDrawable.class, new b(abstractC0770e, cVar2));
        registry.m11364e("Gif", InputStream.class, com.bumptech.glide.load.j.g.c.class, new j(m11362g, aVar, abstractC0768b));
        registry.m11364e("Gif", ByteBuffer.class, com.bumptech.glide.load.j.g.c.class, aVar);
        registry.m11367b(com.bumptech.glide.load.j.g.c.class, new com.bumptech.glide.load.j.g.d());
        registry.m11365d(AbstractC0720a.class, AbstractC0720a.class, v.a.a());
        registry.m11364e("Bitmap", AbstractC0720a.class, Bitmap.class, new com.bumptech.glide.load.j.g.h(abstractC0770e));
        registry.m11366c(Uri.class, Drawable.class, dVar);
        registry.m11366c(Uri.class, Bitmap.class, new com.bumptech.glide.load.resource.bitmap.v(dVar, abstractC0770e));
        registry.m11353p(new a.a());
        registry.m11365d(File.class, ByteBuffer.class, new d.b());
        registry.m11365d(File.class, InputStream.class, new f.e());
        registry.m11366c(File.class, File.class, new com.bumptech.glide.load.j.f.a());
        registry.m11365d(File.class, ParcelFileDescriptor.class, new f.b());
        registry.m11365d(File.class, File.class, v.a.a());
        registry.m11353p(new k.a(abstractC0768b));
        if (ParcelFileDescriptorRewinder.c()) {
            registry.m11353p(new ParcelFileDescriptorRewinder.a());
        }
        Class cls = Integer.TYPE;
        registry.m11365d(cls, InputStream.class, cVar);
        registry.m11365d(cls, ParcelFileDescriptor.class, bVar);
        registry.m11365d(Integer.class, InputStream.class, cVar);
        registry.m11365d(Integer.class, ParcelFileDescriptor.class, bVar);
        registry.m11365d(Integer.class, Uri.class, dVar2);
        registry.m11365d(cls, AssetFileDescriptor.class, aVar2);
        registry.m11365d(Integer.class, AssetFileDescriptor.class, aVar2);
        registry.m11365d(cls, Uri.class, dVar2);
        registry.m11365d(String.class, InputStream.class, new e.c());
        registry.m11365d(Uri.class, InputStream.class, new e.c());
        registry.m11365d(String.class, InputStream.class, new u.c());
        registry.m11365d(String.class, ParcelFileDescriptor.class, new u.b());
        registry.m11365d(String.class, AssetFileDescriptor.class, new u.a());
        registry.m11365d(Uri.class, InputStream.class, new a.c(context.getAssets()));
        registry.m11365d(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets()));
        registry.m11365d(Uri.class, InputStream.class, new b.a(context));
        registry.m11365d(Uri.class, InputStream.class, new c.a(context));
        if (i2 >= 29) {
            registry.m11365d(Uri.class, InputStream.class, new d.c(context));
            registry.m11365d(Uri.class, ParcelFileDescriptor.class, new d.b(context));
        }
        registry.m11365d(Uri.class, InputStream.class, new w.d(contentResolver));
        registry.m11365d(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver));
        registry.m11365d(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver));
        registry.m11365d(Uri.class, InputStream.class, new x.a());
        registry.m11365d(URL.class, InputStream.class, new e.a());
        registry.m11365d(Uri.class, File.class, new k.a(context));
        registry.m11365d(com.bumptech.glide.load.i.g.class, InputStream.class, new a.a());
        registry.m11365d(byte[].class, ByteBuffer.class, new b.a());
        registry.m11365d(byte[].class, InputStream.class, new b.d());
        registry.m11365d(Uri.class, Uri.class, v.a.a());
        registry.m11365d(Drawable.class, Drawable.class, v.a.a());
        registry.m11366c(Drawable.class, Drawable.class, new com.bumptech.glide.load.j.e.e());
        registry.m11352q(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.j.h.b(resources));
        registry.m11352q(Bitmap.class, byte[].class, aVar3);
        registry.m11352q(Drawable.class, byte[].class, new com.bumptech.glide.load.j.h.c(abstractC0770e, aVar3, dVar3));
        registry.m11352q(com.bumptech.glide.load.j.g.c.class, byte[].class, dVar3);
        if (i2 >= 23) {
            AbstractC0794f d = VideoDecoder.d(abstractC0770e);
            registry.m11366c(ByteBuffer.class, Bitmap.class, d);
            registry.m11366c(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, d));
        }
        this.f3384d = new C0706d(context, abstractC0768b, registry, new C0870f(), abstractC0701a, map, list, iVar, c0707e, i);
    }

    /* renamed from: a */
    private static void m11350a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f3381k) {
            f3381k = true;
            m11338m(context, generatedAppGlideModule);
            f3381k = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    /* renamed from: c */
    public static ComponentCallbacks2C0700b m11348c(Context context) {
        if (f3380j == null) {
            GeneratedAppGlideModule m11347d = m11347d(context.getApplicationContext());
            synchronized (ComponentCallbacks2C0700b.class) {
                try {
                    if (f3380j == null) {
                        m11350a(context, m11347d);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3380j;
    }

    /* renamed from: d */
    private static GeneratedAppGlideModule m11347d(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        try {
            generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException e) {
            generatedAppGlideModule = null;
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                generatedAppGlideModule = null;
            }
        } catch (IllegalAccessException e2) {
            m11334q(e2);
            throw null;
        } catch (InstantiationException e3) {
            m11334q(e3);
            throw null;
        } catch (NoSuchMethodException e4) {
            m11334q(e4);
            throw null;
        } catch (InvocationTargetException e5) {
            m11334q(e5);
            throw null;
        }
        return generatedAppGlideModule;
    }

    /* renamed from: l */
    private static C0839o m11339l(Context context) {
        C0856j.m10758e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m11348c(context).m11340k();
    }

    /* renamed from: m */
    private static void m11338m(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        m11337n(context, new C0702c(), generatedAppGlideModule);
    }

    /* renamed from: n */
    private static void m11337n(Context context, C0702c c0702c, GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<AbstractC0725b> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            emptyList = new C0727d(applicationContext).m11217a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set d = generatedAppGlideModule.d();
            Iterator<AbstractC0725b> it = emptyList.iterator();
            while (it.hasNext()) {
                AbstractC0725b next = it.next();
                if (d.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (AbstractC0725b abstractC0725b : emptyList) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + abstractC0725b.getClass());
            }
        }
        c0702c.m11326b(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
        for (AbstractC0725b abstractC0725b2 : emptyList) {
            abstractC0725b2.m11220a(applicationContext, c0702c);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, c0702c);
        }
        ComponentCallbacks2C0700b m11327a = c0702c.m11327a(applicationContext);
        for (AbstractC0725b abstractC0725b3 : emptyList) {
            try {
                abstractC0725b3.m11219b(applicationContext, m11327a, m11327a.f3385e);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + abstractC0725b3.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.m11218a(applicationContext, m11327a, m11327a.f3385e);
        }
        applicationContext.registerComponentCallbacks(m11327a);
        f3380j = m11327a;
    }

    /* renamed from: q */
    private static void m11334q(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: t */
    public static h m11331t(Activity activity) {
        return m11339l(activity).m10809e(activity);
    }

    /* renamed from: u */
    public static h m11330u(Context context) {
        return m11339l(context).m10808f(context);
    }

    /* renamed from: v */
    public static h m11329v(FragmentActivity fragmentActivity) {
        return m11339l(fragmentActivity).m10807g(fragmentActivity);
    }

    /* renamed from: b */
    public void m11349b() {
        C0857k.m10757a();
        this.f3383c.m11032b();
        this.f3382b.m11065b();
        this.f3386f.m11072b();
    }

    /* renamed from: e */
    public AbstractC0768b m11346e() {
        return this.f3386f;
    }

    /* renamed from: f */
    public AbstractC0770e m11345f() {
        return this.f3382b;
    }

    /* renamed from: g */
    AbstractC0835d m11344g() {
        return this.f3388h;
    }

    /* renamed from: h */
    public Context m11343h() {
        return this.f3384d.getBaseContext();
    }

    /* renamed from: i */
    C0706d m11342i() {
        return this.f3384d;
    }

    /* renamed from: j */
    public Registry m11341j() {
        return this.f3385e;
    }

    /* renamed from: k */
    public C0839o m11340k() {
        return this.f3387g;
    }

    /* renamed from: o */
    void m11336o(h hVar) {
        synchronized (this.f3389i) {
            if (this.f3389i.contains(hVar)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f3389i.add(hVar);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m11349b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        m11333r(i);
    }

    /* renamed from: p */
    boolean m11335p(com.bumptech.glide.request.h.i<?> iVar) {
        synchronized (this.f3389i) {
            try {
                Iterator<h> it = this.f3389i.iterator();
                do {
                    if (!it.hasNext()) {
                        return false;
                    }
                } while (!it.next().z(iVar));
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: r */
    public void m11333r(int i) {
        C0857k.m10757a();
        synchronized (this.f3389i) {
            try {
                for (h hVar : this.f3389i) {
                    hVar.onTrimMemory(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3383c.m11033a(i);
        this.f3382b.m11066a(i);
        this.f3386f.m11073a(i);
    }

    /* renamed from: s */
    void m11332s(h hVar) {
        synchronized (this.f3389i) {
            if (!this.f3389i.contains(hVar)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f3389i.remove(hVar);
        }
    }
}
