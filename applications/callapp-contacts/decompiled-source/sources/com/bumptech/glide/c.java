package com.bumptech.glide;

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
import com.bumptech.glide.d;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.b.h;
import com.bumptech.glide.load.engine.b.i;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.ByteArrayLoader;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.ByteBufferFileLoader;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.MediaStoreFileLoader;
import com.bumptech.glide.load.model.ResourceLoader;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.model.StringLoader;
import com.bumptech.glide.load.model.UnitModelLoader;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.UrlUriLoader;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.model.stream.MediaStoreImageThumbLoader;
import com.bumptech.glide.load.model.stream.MediaStoreVideoThumbLoader;
import com.bumptech.glide.load.model.stream.QMediaStoreUriLoader;
import com.bumptech.glide.load.model.stream.UrlLoader;
import com.bumptech.glide.load.resource.a.a;
import com.bumptech.glide.load.resource.b.f;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.aa;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.u;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.load.resource.bitmap.x;
import com.bumptech.glide.load.resource.bitmap.z;
import com.bumptech.glide.manager.d;
import com.bumptech.glide.manager.o;
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
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c.class */
public class c implements ComponentCallbacks2 {
    private static volatile c h;
    private static volatile boolean i;

    /* renamed from: a  reason: collision with root package name */
    public final e f7232a;

    /* renamed from: b  reason: collision with root package name */
    public final e f7233b;

    /* renamed from: c  reason: collision with root package name */
    public final Registry f7234c;

    /* renamed from: d  reason: collision with root package name */
    public final b f7235d;
    public final o e;
    final d f;
    private final k j;
    private final h k;
    private final a l;
    final List<k> g = new ArrayList();
    private g m = g.NORMAL;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$a.class */
    public interface a {
        com.bumptech.glide.e.h a();
    }

    c(Context context, k kVar, h hVar, e eVar, b bVar, o oVar, d dVar, int i2, a aVar, Map<Class<?>, l<?, ?>> map, List<g<Object>> list, f fVar) {
        j jVar;
        j jVar2;
        this.j = kVar;
        this.f7232a = eVar;
        this.f7235d = bVar;
        this.k = hVar;
        this.e = oVar;
        this.f = dVar;
        this.l = aVar;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f7234c = registry;
        registry.a((ImageHeaderParser) new DefaultImageHeaderParser());
        if (Build.VERSION.SDK_INT >= 27) {
            registry.a((ImageHeaderParser) new com.bumptech.glide.load.resource.bitmap.o());
        }
        List<ImageHeaderParser> a2 = registry.a();
        com.bumptech.glide.load.resource.d.a aVar2 = new com.bumptech.glide.load.resource.d.a(context, a2, eVar, bVar);
        j<ParcelFileDescriptor, Bitmap> b2 = aa.b(eVar);
        l lVar = new l(registry.a(), resources.getDisplayMetrics(), eVar, bVar);
        if (!fVar.a(d.a.class) || Build.VERSION.SDK_INT < 28) {
            jVar2 = new com.bumptech.glide.load.resource.bitmap.g(lVar);
            jVar = new x(lVar, bVar);
        } else {
            jVar = new s();
            jVar2 = new com.bumptech.glide.load.resource.bitmap.h();
        }
        com.bumptech.glide.load.resource.b.e eVar2 = new com.bumptech.glide.load.resource.b.e(context);
        ResourceLoader.StreamFactory streamFactory = new ResourceLoader.StreamFactory(resources);
        ResourceLoader.UriFactory uriFactory = new ResourceLoader.UriFactory(resources);
        ResourceLoader.FileDescriptorFactory fileDescriptorFactory = new ResourceLoader.FileDescriptorFactory(resources);
        ResourceLoader.AssetFileDescriptorFactory assetFileDescriptorFactory = new ResourceLoader.AssetFileDescriptorFactory(resources);
        com.bumptech.glide.load.resource.bitmap.c cVar = new com.bumptech.glide.load.resource.bitmap.c(bVar);
        com.bumptech.glide.load.resource.e.a aVar3 = new com.bumptech.glide.load.resource.e.a();
        com.bumptech.glide.load.resource.e.d dVar2 = new com.bumptech.glide.load.resource.e.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.a(ByteBuffer.class, new ByteBufferEncoder()).a(InputStream.class, new StreamEncoder(bVar)).a("Bitmap", ByteBuffer.class, Bitmap.class, jVar2).a("Bitmap", InputStream.class, Bitmap.class, jVar);
        if (ParcelFileDescriptorRewinder.c()) {
            registry.a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new u(lVar));
        }
        registry.a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, b2).a("Bitmap", AssetFileDescriptor.class, Bitmap.class, aa.a(eVar)).a(Bitmap.class, Bitmap.class, UnitModelLoader.Factory.getInstance()).a("Bitmap", Bitmap.class, Bitmap.class, new z()).a(Bitmap.class, (com.bumptech.glide.load.k) cVar).a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, jVar2)).a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, jVar)).a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, b2)).a(BitmapDrawable.class, (com.bumptech.glide.load.k) new com.bumptech.glide.load.resource.bitmap.b(eVar, cVar)).a("Gif", InputStream.class, com.bumptech.glide.load.resource.d.c.class, new com.bumptech.glide.load.resource.d.j(a2, aVar2, bVar)).a("Gif", ByteBuffer.class, com.bumptech.glide.load.resource.d.c.class, aVar2).a(com.bumptech.glide.load.resource.d.c.class, (com.bumptech.glide.load.k) new com.bumptech.glide.load.resource.d.d()).a(com.bumptech.glide.b.a.class, com.bumptech.glide.b.a.class, UnitModelLoader.Factory.getInstance()).a("Bitmap", com.bumptech.glide.b.a.class, Bitmap.class, new com.bumptech.glide.load.resource.d.h(eVar)).a(Uri.class, Drawable.class, eVar2).a(Uri.class, Bitmap.class, new w(eVar2, eVar)).a((e.a<?>) new a.C0149a()).a(File.class, ByteBuffer.class, new ByteBufferFileLoader.Factory()).a(File.class, InputStream.class, new FileLoader.StreamFactory()).a(File.class, File.class, new com.bumptech.glide.load.resource.c.a()).a(File.class, ParcelFileDescriptor.class, new FileLoader.FileDescriptorFactory()).a(File.class, File.class, UnitModelLoader.Factory.getInstance()).a((e.a<?>) new k.a(bVar));
        if (ParcelFileDescriptorRewinder.c()) {
            registry.a((e.a<?>) new ParcelFileDescriptorRewinder.a());
        }
        registry.a(Integer.TYPE, InputStream.class, streamFactory).a(Integer.TYPE, ParcelFileDescriptor.class, fileDescriptorFactory).a(Integer.class, InputStream.class, streamFactory).a(Integer.class, ParcelFileDescriptor.class, fileDescriptorFactory).a(Integer.class, Uri.class, uriFactory).a(Integer.TYPE, AssetFileDescriptor.class, assetFileDescriptorFactory).a(Integer.class, AssetFileDescriptor.class, assetFileDescriptorFactory).a(Integer.TYPE, Uri.class, uriFactory).a(String.class, InputStream.class, new DataUrlLoader.StreamFactory()).a(Uri.class, InputStream.class, new DataUrlLoader.StreamFactory()).a(String.class, InputStream.class, new StringLoader.StreamFactory()).a(String.class, ParcelFileDescriptor.class, new StringLoader.FileDescriptorFactory()).a(String.class, AssetFileDescriptor.class, new StringLoader.AssetFileDescriptorFactory()).a(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(context.getAssets())).a(Uri.class, ParcelFileDescriptor.class, new AssetUriLoader.FileDescriptorFactory(context.getAssets())).a(Uri.class, InputStream.class, new MediaStoreImageThumbLoader.Factory(context)).a(Uri.class, InputStream.class, new MediaStoreVideoThumbLoader.Factory(context));
        if (Build.VERSION.SDK_INT >= 29) {
            registry.a(Uri.class, InputStream.class, new QMediaStoreUriLoader.InputStreamFactory(context));
            registry.a(Uri.class, ParcelFileDescriptor.class, new QMediaStoreUriLoader.FileDescriptorFactory(context));
        }
        registry.a(Uri.class, InputStream.class, new UriLoader.StreamFactory(contentResolver)).a(Uri.class, ParcelFileDescriptor.class, new UriLoader.FileDescriptorFactory(contentResolver)).a(Uri.class, AssetFileDescriptor.class, new UriLoader.AssetFileDescriptorFactory(contentResolver)).a(Uri.class, InputStream.class, new UrlUriLoader.StreamFactory()).a(URL.class, InputStream.class, new UrlLoader.StreamFactory()).a(Uri.class, File.class, new MediaStoreFileLoader.Factory(context)).a(GlideUrl.class, InputStream.class, new HttpGlideUrlLoader.Factory()).a(byte[].class, ByteBuffer.class, new ByteArrayLoader.ByteBufferFactory()).a(byte[].class, InputStream.class, new ByteArrayLoader.StreamFactory()).a(Uri.class, Uri.class, UnitModelLoader.Factory.getInstance()).a(Drawable.class, Drawable.class, UnitModelLoader.Factory.getInstance()).a(Drawable.class, Drawable.class, new f()).a(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.e.b(resources)).a(Bitmap.class, byte[].class, aVar3).a(Drawable.class, byte[].class, new com.bumptech.glide.load.resource.e.c(eVar, aVar3, dVar2)).a(com.bumptech.glide.load.resource.d.c.class, byte[].class, dVar2);
        if (Build.VERSION.SDK_INT >= 23) {
            j<ByteBuffer, Bitmap> c2 = aa.c(eVar);
            registry.a(ByteBuffer.class, Bitmap.class, c2);
            registry.a(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, c2));
        }
        this.f7233b = new e(context, bVar, registry, new com.bumptech.glide.e.a.g(), aVar, map, list, kVar, fVar, i2);
    }

    public static c a(Context context) {
        if (h == null) {
            GeneratedAppGlideModule c2 = c(context.getApplicationContext());
            synchronized (c.class) {
                try {
                    if (h == null) {
                        if (!i) {
                            i = true;
                            a(context, new d(), c2);
                            i = false;
                        } else {
                            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    private static void a(Context context, d dVar, GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<com.bumptech.glide.c.c> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) {
            emptyList = new com.bumptech.glide.c.e(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.a().isEmpty()) {
            Set<Class<?>> a2 = generatedAppGlideModule.a();
            Iterator<com.bumptech.glide.c.c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                com.bumptech.glide.c.c next = it2.next();
                if (a2.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        new StringBuilder("AppGlideModule excludes manifest GlideModule: ").append(next);
                    }
                    it2.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (com.bumptech.glide.c.c cVar : emptyList) {
                new StringBuilder("Discovered GlideModule from manifest: ").append(cVar.getClass());
            }
        }
        dVar.n = generatedAppGlideModule != null ? generatedAppGlideModule.b() : null;
        for (com.bumptech.glide.c.c cVar2 : emptyList) {
            cVar2.a(applicationContext, dVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, dVar);
        }
        if (dVar.g == null) {
            dVar.g = com.bumptech.glide.load.engine.c.a.c();
        }
        if (dVar.h == null) {
            dVar.h = com.bumptech.glide.load.engine.c.a.b();
        }
        if (dVar.o == null) {
            dVar.o = com.bumptech.glide.load.engine.c.a.e();
        }
        if (dVar.j == null) {
            dVar.j = new i.a(applicationContext).b();
        }
        if (dVar.k == null) {
            dVar.k = new com.bumptech.glide.manager.f();
        }
        if (dVar.f7240d == null) {
            int i2 = dVar.j.f7491a;
            if (i2 > 0) {
                dVar.f7240d = new com.bumptech.glide.load.engine.a.k(i2);
            } else {
                dVar.f7240d = new com.bumptech.glide.load.engine.a.f();
            }
        }
        if (dVar.e == null) {
            dVar.e = new com.bumptech.glide.load.engine.a.j(dVar.j.f7493c);
        }
        if (dVar.f == null) {
            dVar.f = new com.bumptech.glide.load.engine.b.g(dVar.j.f7492b);
        }
        if (dVar.i == null) {
            dVar.i = new com.bumptech.glide.load.engine.b.f(applicationContext);
        }
        if (dVar.f7239c == null) {
            dVar.f7239c = new com.bumptech.glide.load.engine.k(dVar.f, dVar.i, dVar.h, dVar.g, com.bumptech.glide.load.engine.c.a.d(), dVar.o, dVar.p);
        }
        if (dVar.q == null) {
            dVar.q = Collections.emptyList();
        } else {
            dVar.q = Collections.unmodifiableList(dVar.q);
        }
        f fVar = new f(dVar.f7238b);
        c cVar3 = new c(applicationContext, dVar.f7239c, dVar.f, dVar.f7240d, dVar.e, new o(dVar.n, fVar), dVar.k, dVar.l, dVar.m, dVar.f7237a, dVar.q, fVar);
        for (com.bumptech.glide.c.c cVar4 : emptyList) {
            try {
                cVar4.a(applicationContext, cVar3, cVar3.f7234c);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + cVar4.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, cVar3, cVar3.f7234c);
        }
        applicationContext.registerComponentCallbacks(cVar3);
        h = cVar3;
    }

    private static void a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public static k b(Context context) {
        com.bumptech.glide.g.j.a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).e.a(context);
    }

    private static GeneratedAppGlideModule c(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        try {
            generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException e) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (IllegalAccessException e2) {
            a(e2);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InstantiationException e3) {
            a(e3);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (NoSuchMethodException e4) {
            a(e4);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InvocationTargetException e5) {
            a(e5);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        }
        return generatedAppGlideModule;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(com.bumptech.glide.e.a.j<?> jVar) {
        synchronized (this.g) {
            Iterator<k> it2 = this.g.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!it2.next().b(jVar));
            return true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        com.bumptech.glide.g.k.a();
        this.k.clearMemory();
        this.f7232a.a();
        this.f7235d.a();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        com.bumptech.glide.g.k.a();
        synchronized (this.g) {
            for (k kVar : this.g) {
                kVar.onTrimMemory(i2);
            }
        }
        this.k.a(i2);
        this.f7232a.a(i2);
        this.f7235d.a(i2);
    }
}
