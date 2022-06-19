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
import com.bumptech.glide.C3960d;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.C4020k;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.C4060i;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.engine.p210y.AbstractC4127h;
import com.bumptech.glide.load.p212i.C4149a;
import com.bumptech.glide.load.p212i.C4153b;
import com.bumptech.glide.load.p212i.C4160c;
import com.bumptech.glide.load.p212i.C4161d;
import com.bumptech.glide.load.p212i.C4164e;
import com.bumptech.glide.load.p212i.C4169f;
import com.bumptech.glide.load.p212i.C4177g;
import com.bumptech.glide.load.p212i.C4184k;
import com.bumptech.glide.load.p212i.C4203s;
import com.bumptech.glide.load.p212i.C4208t;
import com.bumptech.glide.load.p212i.C4209u;
import com.bumptech.glide.load.p212i.C4213v;
import com.bumptech.glide.load.p212i.C4216w;
import com.bumptech.glide.load.p212i.C4221x;
import com.bumptech.glide.load.p212i.p213y.C4223a;
import com.bumptech.glide.load.p212i.p213y.C4225b;
import com.bumptech.glide.load.p212i.p213y.C4227c;
import com.bumptech.glide.load.p212i.p213y.C4229d;
import com.bumptech.glide.load.p212i.p213y.C4234e;
import com.bumptech.glide.load.p214j.p215d.C4241a;
import com.bumptech.glide.load.p214j.p216e.C4247d;
import com.bumptech.glide.load.p214j.p216e.C4248e;
import com.bumptech.glide.load.p214j.p217f.C4249a;
import com.bumptech.glide.load.p214j.p218g.C4251a;
import com.bumptech.glide.load.p214j.p218g.C4255c;
import com.bumptech.glide.load.p214j.p218g.C4257d;
import com.bumptech.glide.load.p214j.p218g.C4265h;
import com.bumptech.glide.load.p214j.p218g.C4267j;
import com.bumptech.glide.load.p214j.p219h.C4268a;
import com.bumptech.glide.load.p214j.p219h.C4269b;
import com.bumptech.glide.load.p214j.p219h.C4270c;
import com.bumptech.glide.load.p214j.p219h.C4271d;
import com.bumptech.glide.load.resource.bitmap.C4293a;
import com.bumptech.glide.load.resource.bitmap.C4294b;
import com.bumptech.glide.load.resource.bitmap.C4295c;
import com.bumptech.glide.load.resource.bitmap.C4299g;
import com.bumptech.glide.load.resource.bitmap.C4300h;
import com.bumptech.glide.load.resource.bitmap.C4304l;
import com.bumptech.glide.load.resource.bitmap.C4310o;
import com.bumptech.glide.load.resource.bitmap.C4316s;
import com.bumptech.glide.load.resource.bitmap.C4318u;
import com.bumptech.glide.load.resource.bitmap.C4319v;
import com.bumptech.glide.load.resource.bitmap.C4320w;
import com.bumptech.glide.load.resource.bitmap.C4324y;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.manager.AbstractC4335d;
import com.bumptech.glide.manager.C4347o;
import com.bumptech.glide.p207l.AbstractC3984a;
import com.bumptech.glide.p220m.AbstractC4327b;
import com.bumptech.glide.p220m.C4329d;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4400d;
import com.bumptech.glide.request.C4401e;
import com.bumptech.glide.request.p225h.AbstractC4411h;
import com.bumptech.glide.request.p225h.C4409f;
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
public class ComponentCallbacks2C3958c implements ComponentCallbacks2 {

    /* renamed from: d */
    private static volatile ComponentCallbacks2C3958c f12440d;

    /* renamed from: e */
    private static volatile boolean f12441e;

    /* renamed from: f */
    private final C4060i f12442f;

    /* renamed from: g */
    private final AbstractC4096e f12443g;

    /* renamed from: h */
    private final AbstractC4127h f12444h;

    /* renamed from: i */
    private final C3965e f12445i;

    /* renamed from: j */
    private final Registry f12446j;

    /* renamed from: k */
    private final AbstractC4091b f12447k;

    /* renamed from: l */
    private final C4347o f12448l;

    /* renamed from: m */
    private final AbstractC4335d f12449m;

    /* renamed from: o */
    private final AbstractC3959a f12451o;

    /* renamed from: n */
    private final List<ComponentCallbacks2C3971i> f12450n = new ArrayList();

    /* renamed from: p */
    private MemoryCategory f12452p = MemoryCategory.NORMAL;

    /* renamed from: com.bumptech.glide.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$a.class */
    public interface AbstractC3959a {
        /* renamed from: a */
        C4401e mo23673a();
    }

    public ComponentCallbacks2C3958c(Context context, C4060i c4060i, AbstractC4127h abstractC4127h, AbstractC4096e abstractC4096e, AbstractC4091b abstractC4091b, C4347o c4347o, AbstractC4335d abstractC4335d, int i, AbstractC3959a abstractC3959a, Map<Class<?>, AbstractC3974j<?, ?>> map, List<AbstractC4400d<Object>> list, C3966f c3966f) {
        C4300h c4300h;
        C4316s c4316s;
        this.f12442f = c4060i;
        this.f12443g = abstractC4096e;
        this.f12447k = abstractC4091b;
        this.f12444h = abstractC4127h;
        this.f12448l = c4347o;
        this.f12449m = abstractC4335d;
        this.f12451o = abstractC3959a;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f12446j = registry;
        registry.m23701q(new DefaultImageHeaderParser());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            registry.m23701q(new C4310o());
        }
        List<ImageHeaderParser> m23711g = registry.m23711g();
        C4251a c4251a = new C4251a(context, m23711g, abstractC4096e, abstractC4091b);
        AbstractC4146f<ParcelFileDescriptor, Bitmap> m22960h = VideoDecoder.m22960h(abstractC4096e);
        C4304l c4304l = new C4304l(registry.m23711g(), resources.getDisplayMetrics(), abstractC4096e, abstractC4091b);
        if (!c3966f.m23663a(C3960d.C3962b.class) || i2 < 28) {
            c4300h = new C4299g(c4304l);
            c4316s = new C4320w(c4304l, abstractC4091b);
        } else {
            c4316s = new C4316s();
            c4300h = new C4300h();
        }
        C4247d c4247d = new C4247d(context);
        C4203s.C4206c c4206c = new C4203s.C4206c(resources);
        C4203s.C4207d c4207d = new C4203s.C4207d(resources);
        C4203s.C4205b c4205b = new C4203s.C4205b(resources);
        C4203s.C4204a c4204a = new C4203s.C4204a(resources);
        C4295c c4295c = new C4295c(abstractC4091b);
        C4268a c4268a = new C4268a();
        C4271d c4271d = new C4271d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.m23717a(ByteBuffer.class, new C4160c()).m23717a(InputStream.class, new C4208t(abstractC4091b)).m23713e("Bitmap", ByteBuffer.class, Bitmap.class, c4300h).m23713e("Bitmap", InputStream.class, Bitmap.class, c4316s);
        if (ParcelFileDescriptorRewinder.m23508c()) {
            registry.m23713e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new C4318u(c4304l));
        }
        registry.m23713e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, m22960h).m23713e("Bitmap", AssetFileDescriptor.class, Bitmap.class, VideoDecoder.m22965c(abstractC4096e)).m23714d(Bitmap.class, Bitmap.class, C4213v.C4214a.m23105a()).m23713e("Bitmap", Bitmap.class, Bitmap.class, new C4324y()).m23716b(Bitmap.class, c4295c).m23713e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C4293a(resources, c4300h)).m23713e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C4293a(resources, c4316s)).m23713e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C4293a(resources, m22960h)).m23716b(BitmapDrawable.class, new C4294b(abstractC4096e, c4295c)).m23713e("Gif", InputStream.class, C4255c.class, new C4267j(m23711g, c4251a, abstractC4091b)).m23713e("Gif", ByteBuffer.class, C4255c.class, c4251a).m23716b(C4255c.class, new C4257d()).m23714d(AbstractC3984a.class, AbstractC3984a.class, C4213v.C4214a.m23105a()).m23713e("Bitmap", AbstractC3984a.class, Bitmap.class, new C4265h(abstractC4096e)).m23715c(Uri.class, Drawable.class, c4247d).m23715c(Uri.class, Bitmap.class, new C4319v(c4247d, abstractC4096e)).m23700r(new C4241a.C4242a()).m23714d(File.class, ByteBuffer.class, new C4161d.C4163b()).m23714d(File.class, InputStream.class, new C4169f.C4175e()).m23715c(File.class, File.class, new C4249a()).m23714d(File.class, ParcelFileDescriptor.class, new C4169f.C4171b()).m23714d(File.class, File.class, C4213v.C4214a.m23105a()).m23700r(new C4020k.C4021a(abstractC4091b));
        if (ParcelFileDescriptorRewinder.m23508c()) {
            registry.m23700r(new ParcelFileDescriptorRewinder.C4003a());
        }
        Class cls = Integer.TYPE;
        registry.m23714d(cls, InputStream.class, c4206c).m23714d(cls, ParcelFileDescriptor.class, c4205b).m23714d(Integer.class, InputStream.class, c4206c).m23714d(Integer.class, ParcelFileDescriptor.class, c4205b).m23714d(Integer.class, Uri.class, c4207d).m23714d(cls, AssetFileDescriptor.class, c4204a).m23714d(Integer.class, AssetFileDescriptor.class, c4204a).m23714d(cls, Uri.class, c4207d).m23714d(String.class, InputStream.class, new C4164e.C4167c()).m23714d(Uri.class, InputStream.class, new C4164e.C4167c()).m23714d(String.class, InputStream.class, new C4209u.C4212c()).m23714d(String.class, ParcelFileDescriptor.class, new C4209u.C4211b()).m23714d(String.class, AssetFileDescriptor.class, new C4209u.C4210a()).m23714d(Uri.class, InputStream.class, new C4149a.C4152c(context.getAssets())).m23714d(Uri.class, ParcelFileDescriptor.class, new C4149a.C4151b(context.getAssets())).m23714d(Uri.class, InputStream.class, new C4225b.C4226a(context)).m23714d(Uri.class, InputStream.class, new C4227c.C4228a(context));
        if (i2 >= 29) {
            registry.m23714d(Uri.class, InputStream.class, new C4229d.C4232c(context));
            registry.m23714d(Uri.class, ParcelFileDescriptor.class, new C4229d.C4231b(context));
        }
        registry.m23714d(Uri.class, InputStream.class, new C4216w.C4220d(contentResolver)).m23714d(Uri.class, ParcelFileDescriptor.class, new C4216w.C4218b(contentResolver)).m23714d(Uri.class, AssetFileDescriptor.class, new C4216w.C4217a(contentResolver)).m23714d(Uri.class, InputStream.class, new C4221x.C4222a()).m23714d(URL.class, InputStream.class, new C4234e.C4235a()).m23714d(Uri.class, File.class, new C4184k.C4185a(context)).m23714d(C4177g.class, InputStream.class, new C4223a.C4224a()).m23714d(byte[].class, ByteBuffer.class, new C4153b.C4154a()).m23714d(byte[].class, InputStream.class, new C4153b.C4158d()).m23714d(Uri.class, Uri.class, C4213v.C4214a.m23105a()).m23714d(Drawable.class, Drawable.class, C4213v.C4214a.m23105a()).m23715c(Drawable.class, Drawable.class, new C4248e()).m23699s(Bitmap.class, BitmapDrawable.class, new C4269b(resources)).m23699s(Bitmap.class, byte[].class, c4268a).m23699s(Drawable.class, byte[].class, new C4270c(abstractC4096e, c4268a, c4271d)).m23699s(C4255c.class, byte[].class, c4271d);
        if (i2 >= 23) {
            AbstractC4146f<ByteBuffer, Bitmap> m22964d = VideoDecoder.m22964d(abstractC4096e);
            registry.m23715c(ByteBuffer.class, Bitmap.class, m22964d);
            registry.m23715c(ByteBuffer.class, BitmapDrawable.class, new C4293a(resources, m22964d));
        }
        this.f12445i = new C3965e(context, abstractC4091b, registry, new C4409f(), abstractC3959a, map, list, c4060i, c3966f, i);
    }

    /* renamed from: a */
    private static void m23697a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f12441e) {
            f12441e = true;
            m23685m(context, generatedAppGlideModule);
            f12441e = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    /* renamed from: c */
    public static ComponentCallbacks2C3958c m23695c(Context context) {
        if (f12440d == null) {
            GeneratedAppGlideModule m23694d = m23694d(context.getApplicationContext());
            synchronized (ComponentCallbacks2C3958c.class) {
                try {
                    if (f12440d == null) {
                        m23697a(context, m23694d);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f12440d;
    }

    /* renamed from: d */
    private static GeneratedAppGlideModule m23694d(Context context) {
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
            m23681q(e2);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InstantiationException e3) {
            m23681q(e3);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (NoSuchMethodException e4) {
            m23681q(e4);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        } catch (InvocationTargetException e5) {
            m23681q(e5);
            generatedAppGlideModule = null;
            return generatedAppGlideModule;
        }
        return generatedAppGlideModule;
    }

    /* renamed from: l */
    private static C4347o m23686l(Context context) {
        C4382j.m22718e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m23695c(context).m23687k();
    }

    /* renamed from: m */
    private static void m23685m(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        m23684n(context, new C3960d(), generatedAppGlideModule);
    }

    /* renamed from: n */
    private static void m23684n(Context context, C3960d c3960d, GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<AbstractC4327b> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.mo22853c()) {
            emptyList = new C4329d(applicationContext).m22849a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.mo23720d().isEmpty()) {
            Set<Class<?>> mo23720d = generatedAppGlideModule.mo23720d();
            Iterator<AbstractC4327b> it = emptyList.iterator();
            while (it.hasNext()) {
                AbstractC4327b next = it.next();
                if (mo23720d.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (AbstractC4327b abstractC4327b : emptyList) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + abstractC4327b.getClass());
            }
        }
        c3960d.m23674b(generatedAppGlideModule != null ? generatedAppGlideModule.mo23719e() : null);
        for (AbstractC4327b abstractC4327b2 : emptyList) {
            abstractC4327b2.m22852a(applicationContext, c3960d);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.mo22854b(applicationContext, c3960d);
        }
        ComponentCallbacks2C3958c m23675a = c3960d.m23675a(applicationContext);
        for (AbstractC4327b abstractC4327b3 : emptyList) {
            try {
                abstractC4327b3.m22851b(applicationContext, m23675a, m23675a.f12446j);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + abstractC4327b3.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.mo22850a(applicationContext, m23675a, m23675a.f12446j);
        }
        applicationContext.registerComponentCallbacks(m23675a);
        f12440d = m23675a;
    }

    /* renamed from: q */
    private static void m23681q(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: t */
    public static ComponentCallbacks2C3971i m23678t(Activity activity) {
        return m23686l(activity).m22819e(activity);
    }

    /* renamed from: u */
    public static ComponentCallbacks2C3971i m23677u(Context context) {
        return m23686l(context).m22818f(context);
    }

    /* renamed from: v */
    public static ComponentCallbacks2C3971i m23676v(FragmentActivity fragmentActivity) {
        return m23686l(fragmentActivity).m22817g(fragmentActivity);
    }

    /* renamed from: b */
    public void m23696b() {
        C4383k.m22717a();
        this.f12444h.m23212b();
        this.f12443g.mo23259b();
        this.f12447k.mo23278b();
    }

    /* renamed from: e */
    public AbstractC4091b m23693e() {
        return this.f12447k;
    }

    /* renamed from: f */
    public AbstractC4096e m23692f() {
        return this.f12443g;
    }

    /* renamed from: g */
    public AbstractC4335d m23691g() {
        return this.f12449m;
    }

    /* renamed from: h */
    public Context m23690h() {
        return this.f12445i.getBaseContext();
    }

    /* renamed from: i */
    public C3965e m23689i() {
        return this.f12445i;
    }

    /* renamed from: j */
    public Registry m23688j() {
        return this.f12446j;
    }

    /* renamed from: k */
    public C4347o m23687k() {
        return this.f12448l;
    }

    /* renamed from: o */
    public void m23683o(ComponentCallbacks2C3971i componentCallbacks2C3971i) {
        synchronized (this.f12450n) {
            if (this.f12450n.contains(componentCallbacks2C3971i)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f12450n.add(componentCallbacks2C3971i);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m23696b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        m23680r(i);
    }

    /* renamed from: p */
    public boolean m23682p(AbstractC4411h<?> abstractC4411h) {
        synchronized (this.f12450n) {
            Iterator<ComponentCallbacks2C3971i> it = this.f12450n.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!it.next().m23640A(abstractC4411h));
            return true;
        }
    }

    /* renamed from: r */
    public void m23680r(int i) {
        C4383k.m22717a();
        synchronized (this.f12450n) {
            for (ComponentCallbacks2C3971i componentCallbacks2C3971i : this.f12450n) {
                componentCallbacks2C3971i.onTrimMemory(i);
            }
        }
        this.f12444h.mo23213a(i);
        this.f12443g.mo23260a(i);
        this.f12447k.mo23279a(i);
    }

    /* renamed from: s */
    public void m23679s(ComponentCallbacks2C3971i componentCallbacks2C3971i) {
        synchronized (this.f12450n) {
            if (!this.f12450n.contains(componentCallbacks2C3971i)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f12450n.remove(componentCallbacks2C3971i);
        }
    }
}
