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
import com.bumptech.glide.C3556d;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.AbstractC3825k;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.data.C3686k;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.C3788k;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.engine.p119a.C3713f;
import com.bumptech.glide.load.engine.p119a.C3718j;
import com.bumptech.glide.load.engine.p119a.C3721k;
import com.bumptech.glide.load.engine.p120b.AbstractC3746h;
import com.bumptech.glide.load.engine.p120b.C3743f;
import com.bumptech.glide.load.engine.p120b.C3745g;
import com.bumptech.glide.load.engine.p120b.C3748i;
import com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a;
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
import com.bumptech.glide.load.resource.bitmap.C3850a;
import com.bumptech.glide.load.resource.bitmap.C3851aa;
import com.bumptech.glide.load.resource.bitmap.C3861b;
import com.bumptech.glide.load.resource.bitmap.C3862c;
import com.bumptech.glide.load.resource.bitmap.C3866g;
import com.bumptech.glide.load.resource.bitmap.C3867h;
import com.bumptech.glide.load.resource.bitmap.C3878l;
import com.bumptech.glide.load.resource.bitmap.C3884o;
import com.bumptech.glide.load.resource.bitmap.C3890s;
import com.bumptech.glide.load.resource.bitmap.C3892u;
import com.bumptech.glide.load.resource.bitmap.C3895w;
import com.bumptech.glide.load.resource.bitmap.C3896x;
import com.bumptech.glide.load.resource.bitmap.C3900z;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.p122a.C3837a;
import com.bumptech.glide.load.resource.p123b.C3845e;
import com.bumptech.glide.load.resource.p123b.C3846f;
import com.bumptech.glide.load.resource.p124c.C3903a;
import com.bumptech.glide.load.resource.p125d.C3905a;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.load.resource.p125d.C3911d;
import com.bumptech.glide.load.resource.p125d.C3918h;
import com.bumptech.glide.load.resource.p125d.C3920j;
import com.bumptech.glide.load.resource.p126e.C3921a;
import com.bumptech.glide.load.resource.p126e.C3922b;
import com.bumptech.glide.load.resource.p126e.C3923c;
import com.bumptech.glide.load.resource.p126e.C3924d;
import com.bumptech.glide.manager.AbstractC3934d;
import com.bumptech.glide.manager.C3937f;
import com.bumptech.glide.manager.C3946o;
import com.bumptech.glide.p109b.AbstractC3542a;
import com.bumptech.glide.p110c.AbstractC3552c;
import com.bumptech.glide.p110c.C3554e;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p113a.C3581g;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
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
/* renamed from: com.bumptech.glide.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c.class */
public class ComponentCallbacks2C3548c implements ComponentCallbacks2 {

    /* renamed from: h */
    private static volatile ComponentCallbacks2C3548c f13529h;

    /* renamed from: i */
    private static volatile boolean f13530i;

    /* renamed from: a */
    public final AbstractC3712e f13531a;

    /* renamed from: b */
    public final C3571e f13532b;

    /* renamed from: c */
    public final Registry f13533c;

    /* renamed from: d */
    public final AbstractC3707b f13534d;

    /* renamed from: e */
    public final C3946o f13535e;

    /* renamed from: f */
    final AbstractC3934d f13536f;

    /* renamed from: j */
    private final C3788k f13538j;

    /* renamed from: k */
    private final AbstractC3746h f13539k;

    /* renamed from: l */
    private final AbstractC3549a f13540l;

    /* renamed from: g */
    final List<ComponentCallbacks2C3653k> f13537g = new ArrayList();

    /* renamed from: m */
    private EnumC3617g f13541m = EnumC3617g.NORMAL;

    /* renamed from: com.bumptech.glide.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$a.class */
    public interface AbstractC3549a {
        /* renamed from: a */
        C3605h mo37713a();
    }

    ComponentCallbacks2C3548c(Context context, C3788k c3788k, AbstractC3746h abstractC3746h, AbstractC3712e abstractC3712e, AbstractC3707b abstractC3707b, C3946o c3946o, AbstractC3934d abstractC3934d, int i, AbstractC3549a abstractC3549a, Map<Class<?>, AbstractC3657l<?, ?>> map, List<AbstractC3604g<Object>> list, C3610f c3610f) {
        C3890s c3890s;
        C3867h c3867h;
        this.f13538j = c3788k;
        this.f13531a = abstractC3712e;
        this.f13534d = abstractC3707b;
        this.f13539k = abstractC3746h;
        this.f13535e = c3946o;
        this.f13536f = abstractC3934d;
        this.f13540l = abstractC3549a;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f13533c = registry;
        registry.m37799a((ImageHeaderParser) new DefaultImageHeaderParser());
        if (Build.VERSION.SDK_INT >= 27) {
            registry.m37799a((ImageHeaderParser) new C3884o());
        }
        List<ImageHeaderParser> m37800a = registry.m37800a();
        C3905a c3905a = new C3905a(context, m37800a, abstractC3712e, abstractC3707b);
        AbstractC3824j<ParcelFileDescriptor, Bitmap> m37289b = C3851aa.m37289b(abstractC3712e);
        C3878l c3878l = new C3878l(registry.m37800a(), resources.getDisplayMetrics(), abstractC3712e, abstractC3707b);
        if (!c3610f.m37620a(C3556d.C3559a.class) || Build.VERSION.SDK_INT < 28) {
            c3867h = new C3866g(c3878l);
            c3890s = new C3896x(c3878l, abstractC3707b);
        } else {
            c3890s = new C3890s();
            c3867h = new C3867h();
        }
        C3845e c3845e = new C3845e(context);
        ResourceLoader.StreamFactory streamFactory = new ResourceLoader.StreamFactory(resources);
        ResourceLoader.UriFactory uriFactory = new ResourceLoader.UriFactory(resources);
        ResourceLoader.FileDescriptorFactory fileDescriptorFactory = new ResourceLoader.FileDescriptorFactory(resources);
        ResourceLoader.AssetFileDescriptorFactory assetFileDescriptorFactory = new ResourceLoader.AssetFileDescriptorFactory(resources);
        C3862c c3862c = new C3862c(abstractC3707b);
        C3921a c3921a = new C3921a();
        C3924d c3924d = new C3924d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.m37797a(ByteBuffer.class, new ByteBufferEncoder()).m37797a(InputStream.class, new StreamEncoder(abstractC3707b)).m37790a("Bitmap", ByteBuffer.class, Bitmap.class, c3867h).m37790a("Bitmap", InputStream.class, Bitmap.class, c3890s);
        if (ParcelFileDescriptorRewinder.m37537c()) {
            registry.m37790a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new C3892u(c3878l));
        }
        registry.m37790a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, m37289b).m37790a("Bitmap", AssetFileDescriptor.class, Bitmap.class, C3851aa.m37290a(abstractC3712e)).m37794a(Bitmap.class, Bitmap.class, UnitModelLoader.Factory.getInstance()).m37790a("Bitmap", Bitmap.class, Bitmap.class, new C3900z()).m37796a(Bitmap.class, (AbstractC3825k) c3862c).m37790a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C3850a(resources, c3867h)).m37790a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C3850a(resources, c3890s)).m37790a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C3850a(resources, m37289b)).m37796a(BitmapDrawable.class, (AbstractC3825k) new C3861b(abstractC3712e, c3862c)).m37790a("Gif", InputStream.class, C3909c.class, new C3920j(m37800a, c3905a, abstractC3707b)).m37790a("Gif", ByteBuffer.class, C3909c.class, c3905a).m37796a(C3909c.class, (AbstractC3825k) new C3911d()).m37794a(AbstractC3542a.class, AbstractC3542a.class, UnitModelLoader.Factory.getInstance()).m37790a("Bitmap", AbstractC3542a.class, Bitmap.class, new C3918h(abstractC3712e)).m37795a(Uri.class, Drawable.class, c3845e).m37795a(Uri.class, Bitmap.class, new C3895w(c3845e, abstractC3712e)).m37798a((AbstractC3675e.AbstractC3676a<?>) new C3837a.C3838a()).m37794a(File.class, ByteBuffer.class, new ByteBufferFileLoader.Factory()).m37794a(File.class, InputStream.class, new FileLoader.StreamFactory()).m37795a(File.class, File.class, new C3903a()).m37794a(File.class, ParcelFileDescriptor.class, new FileLoader.FileDescriptorFactory()).m37794a(File.class, File.class, UnitModelLoader.Factory.getInstance()).m37798a((AbstractC3675e.AbstractC3676a<?>) new C3686k.C3687a(abstractC3707b));
        if (ParcelFileDescriptorRewinder.m37537c()) {
            registry.m37798a((AbstractC3675e.AbstractC3676a<?>) new ParcelFileDescriptorRewinder.C3662a());
        }
        registry.m37794a(Integer.TYPE, InputStream.class, streamFactory).m37794a(Integer.TYPE, ParcelFileDescriptor.class, fileDescriptorFactory).m37794a(Integer.class, InputStream.class, streamFactory).m37794a(Integer.class, ParcelFileDescriptor.class, fileDescriptorFactory).m37794a(Integer.class, Uri.class, uriFactory).m37794a(Integer.TYPE, AssetFileDescriptor.class, assetFileDescriptorFactory).m37794a(Integer.class, AssetFileDescriptor.class, assetFileDescriptorFactory).m37794a(Integer.TYPE, Uri.class, uriFactory).m37794a(String.class, InputStream.class, new DataUrlLoader.StreamFactory()).m37794a(Uri.class, InputStream.class, new DataUrlLoader.StreamFactory()).m37794a(String.class, InputStream.class, new StringLoader.StreamFactory()).m37794a(String.class, ParcelFileDescriptor.class, new StringLoader.FileDescriptorFactory()).m37794a(String.class, AssetFileDescriptor.class, new StringLoader.AssetFileDescriptorFactory()).m37794a(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(context.getAssets())).m37794a(Uri.class, ParcelFileDescriptor.class, new AssetUriLoader.FileDescriptorFactory(context.getAssets())).m37794a(Uri.class, InputStream.class, new MediaStoreImageThumbLoader.Factory(context)).m37794a(Uri.class, InputStream.class, new MediaStoreVideoThumbLoader.Factory(context));
        if (Build.VERSION.SDK_INT >= 29) {
            registry.m37794a(Uri.class, InputStream.class, new QMediaStoreUriLoader.InputStreamFactory(context));
            registry.m37794a(Uri.class, ParcelFileDescriptor.class, new QMediaStoreUriLoader.FileDescriptorFactory(context));
        }
        registry.m37794a(Uri.class, InputStream.class, new UriLoader.StreamFactory(contentResolver)).m37794a(Uri.class, ParcelFileDescriptor.class, new UriLoader.FileDescriptorFactory(contentResolver)).m37794a(Uri.class, AssetFileDescriptor.class, new UriLoader.AssetFileDescriptorFactory(contentResolver)).m37794a(Uri.class, InputStream.class, new UrlUriLoader.StreamFactory()).m37794a(URL.class, InputStream.class, new UrlLoader.StreamFactory()).m37794a(Uri.class, File.class, new MediaStoreFileLoader.Factory(context)).m37794a(GlideUrl.class, InputStream.class, new HttpGlideUrlLoader.Factory()).m37794a(byte[].class, ByteBuffer.class, new ByteArrayLoader.ByteBufferFactory()).m37794a(byte[].class, InputStream.class, new ByteArrayLoader.StreamFactory()).m37794a(Uri.class, Uri.class, UnitModelLoader.Factory.getInstance()).m37794a(Drawable.class, Drawable.class, UnitModelLoader.Factory.getInstance()).m37795a(Drawable.class, Drawable.class, new C3846f()).m37793a(Bitmap.class, BitmapDrawable.class, new C3922b(resources)).m37793a(Bitmap.class, byte[].class, c3921a).m37793a(Drawable.class, byte[].class, new C3923c(abstractC3712e, c3921a, c3924d)).m37793a(C3909c.class, byte[].class, c3924d);
        if (Build.VERSION.SDK_INT >= 23) {
            AbstractC3824j<ByteBuffer, Bitmap> m37288c = C3851aa.m37288c(abstractC3712e);
            registry.m37795a(ByteBuffer.class, Bitmap.class, m37288c);
            registry.m37795a(ByteBuffer.class, BitmapDrawable.class, new C3850a(resources, m37288c));
        }
        this.f13532b = new C3571e(context, abstractC3707b, registry, new C3581g(), abstractC3549a, map, list, c3788k, c3610f, i);
    }

    /* renamed from: a */
    public static ComponentCallbacks2C3548c m37723a(Context context) {
        if (f13529h == null) {
            GeneratedAppGlideModule m37718c = m37718c(context.getApplicationContext());
            synchronized (ComponentCallbacks2C3548c.class) {
                try {
                    if (f13529h == null) {
                        if (f13530i) {
                            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
                        }
                        f13530i = true;
                        m37722a(context, new C3556d(), m37718c);
                        f13530i = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f13529h;
    }

    /* renamed from: a */
    private static void m37722a(Context context, C3556d c3556d, GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<AbstractC3552c> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) {
            emptyList = new C3554e(applicationContext).m37717a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.mo37802a().isEmpty()) {
            Set<Class<?>> mo37802a = generatedAppGlideModule.mo37802a();
            Iterator<AbstractC3552c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                AbstractC3552c next = it2.next();
                if (mo37802a.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        new StringBuilder("AppGlideModule excludes manifest GlideModule: ").append(next);
                    }
                    it2.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (AbstractC3552c abstractC3552c : emptyList) {
                new StringBuilder("Discovered GlideModule from manifest: ").append(abstractC3552c.getClass());
            }
        }
        c3556d.f13556n = generatedAppGlideModule != null ? generatedAppGlideModule.mo37801b() : null;
        for (AbstractC3552c abstractC3552c2 : emptyList) {
            abstractC3552c2.mo27114a(applicationContext, c3556d);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.mo27114a(applicationContext, c3556d);
        }
        if (c3556d.f13549g == null) {
            c3556d.f13549g = ExecutorServiceC3756a.m37415c();
        }
        if (c3556d.f13550h == null) {
            c3556d.f13550h = ExecutorServiceC3756a.m37416b();
        }
        if (c3556d.f13557o == null) {
            c3556d.f13557o = ExecutorServiceC3756a.m37413e();
        }
        if (c3556d.f13552j == null) {
            c3556d.f13552j = new C3748i.C3749a(applicationContext).m37424b();
        }
        if (c3556d.f13553k == null) {
            c3556d.f13553k = new C3937f();
        }
        if (c3556d.f13546d == null) {
            int i = c3556d.f13552j.f13937a;
            if (i > 0) {
                c3556d.f13546d = new C3721k(i);
            } else {
                c3556d.f13546d = new C3713f();
            }
        }
        if (c3556d.f13547e == null) {
            c3556d.f13547e = new C3718j(c3556d.f13552j.f13939c);
        }
        if (c3556d.f13548f == null) {
            c3556d.f13548f = new C3745g(c3556d.f13552j.f13938b);
        }
        if (c3556d.f13551i == null) {
            c3556d.f13551i = new C3743f(applicationContext);
        }
        if (c3556d.f13545c == null) {
            c3556d.f13545c = new C3788k(c3556d.f13548f, c3556d.f13551i, c3556d.f13550h, c3556d.f13549g, ExecutorServiceC3756a.m37414d(), c3556d.f13557o, c3556d.f13558p);
        }
        if (c3556d.f13559q == null) {
            c3556d.f13559q = Collections.emptyList();
        } else {
            c3556d.f13559q = Collections.unmodifiableList(c3556d.f13559q);
        }
        C3610f c3610f = new C3610f(c3556d.f13544b);
        ComponentCallbacks2C3548c componentCallbacks2C3548c = new ComponentCallbacks2C3548c(applicationContext, c3556d.f13545c, c3556d.f13548f, c3556d.f13546d, c3556d.f13547e, new C3946o(c3556d.f13556n, c3610f), c3556d.f13553k, c3556d.f13554l, c3556d.f13555m, c3556d.f13543a, c3556d.f13559q, c3610f);
        for (AbstractC3552c abstractC3552c3 : emptyList) {
            try {
                abstractC3552c3.mo37564a(applicationContext, componentCallbacks2C3548c, componentCallbacks2C3548c.f13533c);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + abstractC3552c3.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.mo37564a(applicationContext, componentCallbacks2C3548c, componentCallbacks2C3548c.f13533c);
        }
        applicationContext.registerComponentCallbacks(componentCallbacks2C3548c);
        f13529h = componentCallbacks2C3548c;
    }

    /* renamed from: a */
    private static void m37720a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: b */
    public static ComponentCallbacks2C3653k m37719b(Context context) {
        C3643j.m37588a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m37723a(context).f13535e.m37171a(context);
    }

    /* renamed from: c */
    private static GeneratedAppGlideModule m37718c(Context context) {
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
            m37720a(e2);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InstantiationException e3) {
            m37720a(e3);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (NoSuchMethodException e4) {
            m37720a(e4);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InvocationTargetException e5) {
            m37720a(e5);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        }
        return generatedAppGlideModule;
    }

    /* renamed from: a */
    public final boolean m37721a(AbstractC3585j<?> abstractC3585j) {
        synchronized (this.f13537g) {
            Iterator<ComponentCallbacks2C3653k> it2 = this.f13537g.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!it2.next().m37546b(abstractC3585j));
            return true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        C3644k.m37584a();
        this.f13539k.clearMemory();
        this.f13531a.mo37462a();
        this.f13534d.mo37476a();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        C3644k.m37584a();
        synchronized (this.f13537g) {
            for (ComponentCallbacks2C3653k componentCallbacks2C3653k : this.f13537g) {
                componentCallbacks2C3653k.onTrimMemory(i);
            }
        }
        this.f13539k.mo37431a(i);
        this.f13531a.mo37461a(i);
        this.f13534d.mo37475a(i);
    }
}
