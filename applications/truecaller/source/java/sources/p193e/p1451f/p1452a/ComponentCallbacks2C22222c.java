package p193e.p1451f.p1452a;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
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
import android.view.View;
import com.bumptech.glide.GeneratedAppGlideModule;
import com.bumptech.glide.load.ImageHeaderParser;
import e.f.a.n.o.c0.g;
import e.f.a.n.q.d.b;
import e.f.a.n.q.d.c;
import e.f.a.n.q.h.d;
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
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n3.r.a.l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1454l.AbstractC22249a;
import p193e.p1451f.p1452a.p1457n.p1458n.C22285k;
import p193e.p1451f.p1452a.p1457n.p1460o.C22369l;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22304e;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22309i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22312j;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22334i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22333h;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22336j;
import p193e.p1451f.p1452a.p1457n.p1460o.p1463d0.ExecutorServiceC22344a;
import p193e.p1451f.p1452a.p1457n.p1464p.C22399a;
import p193e.p1451f.p1452a.p1457n.p1464p.C22403b;
import p193e.p1451f.p1452a.p1457n.p1464p.C22410c;
import p193e.p1451f.p1452a.p1457n.p1464p.C22411d;
import p193e.p1451f.p1452a.p1457n.p1464p.C22414e;
import p193e.p1451f.p1452a.p1457n.p1464p.C22419f;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22429k;
import p193e.p1451f.p1452a.p1457n.p1464p.C22448s;
import p193e.p1451f.p1452a.p1457n.p1464p.C22453t;
import p193e.p1451f.p1452a.p1457n.p1464p.C22454u;
import p193e.p1451f.p1452a.p1457n.p1464p.C22458v;
import p193e.p1451f.p1452a.p1457n.p1464p.C22461w;
import p193e.p1451f.p1452a.p1457n.p1464p.C22466x;
import p193e.p1451f.p1452a.p1457n.p1464p.p1465y.C22468a;
import p193e.p1451f.p1452a.p1457n.p1464p.p1465y.C22470b;
import p193e.p1451f.p1452a.p1457n.p1464p.p1465y.C22472c;
import p193e.p1451f.p1452a.p1457n.p1464p.p1465y.C22474d;
import p193e.p1451f.p1452a.p1457n.p1464p.p1465y.C22476e;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22482a;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22488d0;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22491e0;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22498g;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22499h;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22500l;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22516q;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22518u;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22522x;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22523z;
import p193e.p1451f.p1452a.p1457n.p1466q.p1468e.C22525a;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22531e;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22532f;
import p193e.p1451f.p1452a.p1457n.p1466q.p1470g.C22533a;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22534a;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22543h;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22545j;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22546a;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22547b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22548c;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22549d;
import p193e.p1451f.p1452a.p1473o.AbstractC22558d;
import p193e.p1451f.p1452a.p1473o.C22559f;
import p193e.p1451f.p1452a.p1473o.C22565l;
import p193e.p1451f.p1452a.p1474p.AbstractC22572c;
import p193e.p1451f.p1452a.p1474p.C22574e;
import p193e.p1451f.p1452a.p1475q.C22578b;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.C22596g;
import p193e.p1451f.p1452a.p1480t.C22620g;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.c */
/* loaded from: classes-dex2jar.jar:e/f/a/c.class */
public class ComponentCallbacks2C22222c implements ComponentCallbacks2 {

    /* renamed from: j */
    public static volatile ComponentCallbacks2C22222c f61710j;

    /* renamed from: k */
    public static volatile boolean f61711k;

    /* renamed from: a */
    public final C22369l f61712a;

    /* renamed from: b */
    public final AbstractC22303d f61713b;

    /* renamed from: c */
    public final AbstractC22334i f61714c;

    /* renamed from: d */
    public final C22226e f61715d;

    /* renamed from: e */
    public final C22228g f61716e;

    /* renamed from: f */
    public final AbstractC22301b f61717f;

    /* renamed from: g */
    public final C22565l f61718g;

    /* renamed from: h */
    public final AbstractC22558d f61719h;

    /* renamed from: i */
    public final List<ComponentCallbacks2C22236i> f61720i = new ArrayList();

    /* renamed from: e.f.a.c$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/c$a.class */
    public interface AbstractC22223a {
    }

    public ComponentCallbacks2C22222c(Context context, C22369l c22369l, AbstractC22334i abstractC22334i, AbstractC22303d abstractC22303d, AbstractC22301b abstractC22301b, C22565l c22565l, AbstractC22558d abstractC22558d, int i, AbstractC22223a abstractC22223a, Map map, List list, boolean z, boolean z2) {
        C22499h c22499h;
        C22518u c22518u;
        this.f61712a = c22369l;
        this.f61713b = abstractC22303d;
        this.f61717f = abstractC22301b;
        this.f61714c = abstractC22334i;
        this.f61718g = c22565l;
        this.f61719h = abstractC22558d;
        Resources resources = context.getResources();
        C22228g c22228g = new C22228g();
        this.f61716e = c22228g;
        C22500l c22500l = new C22500l();
        C22578b c22578b = c22228g.f61758g;
        synchronized (c22578b) {
            c22578b.f62511a.add(c22500l);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            C22516q c22516q = new C22516q();
            C22578b c22578b2 = c22228g.f61758g;
            synchronized (c22578b2) {
                c22578b2.f62511a.add(c22516q);
            }
        }
        List<ImageHeaderParser> m8439e = c22228g.m8439e();
        C22534a c22534a = new C22534a(context, m8439e, abstractC22303d, abstractC22301b);
        C22491e0 c22491e0 = new C22491e0(abstractC22303d, new C22491e0.C22497f());
        if (!z2 || i2 < 28) {
            C22512n c22512n = new C22512n(c22228g.m8439e(), resources.getDisplayMetrics(), abstractC22303d, abstractC22301b);
            c22499h = new C22498g(c22512n);
            c22518u = new C22523z(c22512n, abstractC22301b);
        } else {
            c22518u = new C22518u();
            c22499h = new C22499h();
        }
        C22531e c22531e = new C22531e(context);
        C22448s.C22451c c22451c = new C22448s.C22451c(resources);
        C22448s.C22452d c22452d = new C22448s.C22452d(resources);
        C22448s.C22450b c22450b = new C22448s.C22450b(resources);
        C22448s.C22449a c22449a = new C22448s.C22449a(resources);
        c cVar = new c(abstractC22301b);
        C22546a c22546a = new C22546a();
        C22549d c22549d = new C22549d();
        ContentResolver contentResolver = context.getContentResolver();
        c22228g.m8443a(ByteBuffer.class, new C22410c());
        c22228g.m8443a(InputStream.class, new C22453t(abstractC22301b));
        c22228g.m8440d("Bitmap", ByteBuffer.class, Bitmap.class, c22499h);
        c22228g.m8440d("Bitmap", InputStream.class, Bitmap.class, c22518u);
        c22228g.m8440d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, c22491e0);
        c22228g.m8440d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new C22491e0(abstractC22303d, new C22491e0.C22494c(null)));
        C22458v.C22459a<?> c22459a = C22458v.C22459a.f62317a;
        c22228g.m8441c(Bitmap.class, Bitmap.class, c22459a);
        c22228g.m8440d("Bitmap", Bitmap.class, Bitmap.class, new C22488d0());
        c22228g.m8442b(Bitmap.class, cVar);
        c22228g.m8440d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C22482a(resources, c22499h));
        c22228g.m8440d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C22482a(resources, c22518u));
        c22228g.m8440d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C22482a(resources, c22491e0));
        c22228g.m8442b(BitmapDrawable.class, new b(abstractC22303d, cVar));
        c22228g.m8440d("Gif", InputStream.class, C22538c.class, new C22545j(m8439e, c22534a, abstractC22301b));
        c22228g.m8440d("Gif", ByteBuffer.class, C22538c.class, c22534a);
        c22228g.m8442b(C22538c.class, new d());
        c22228g.m8441c(AbstractC22249a.class, AbstractC22249a.class, c22459a);
        c22228g.m8440d("Bitmap", AbstractC22249a.class, Bitmap.class, new C22543h(abstractC22303d));
        c22228g.m8440d("legacy_append", Uri.class, Drawable.class, c22531e);
        c22228g.m8440d("legacy_append", Uri.class, Bitmap.class, new C22522x(c22531e, abstractC22303d));
        c22228g.m8436h(new C22525a.C22526a());
        c22228g.m8441c(File.class, ByteBuffer.class, new C22411d.C22413b());
        c22228g.m8441c(File.class, InputStream.class, new C22419f.e());
        c22228g.m8440d("legacy_append", File.class, File.class, new C22533a());
        c22228g.m8441c(File.class, ParcelFileDescriptor.class, new C22419f.b());
        c22228g.m8441c(File.class, File.class, c22459a);
        c22228g.m8436h(new C22285k.C22286a(abstractC22301b));
        Class cls = Integer.TYPE;
        c22228g.m8441c(cls, InputStream.class, c22451c);
        c22228g.m8441c(cls, ParcelFileDescriptor.class, c22450b);
        c22228g.m8441c(Integer.class, InputStream.class, c22451c);
        c22228g.m8441c(Integer.class, ParcelFileDescriptor.class, c22450b);
        c22228g.m8441c(Integer.class, Uri.class, c22452d);
        c22228g.m8441c(cls, AssetFileDescriptor.class, c22449a);
        c22228g.m8441c(Integer.class, AssetFileDescriptor.class, c22449a);
        c22228g.m8441c(cls, Uri.class, c22452d);
        c22228g.m8441c(String.class, InputStream.class, new C22414e.C22417c());
        c22228g.m8441c(Uri.class, InputStream.class, new C22414e.C22417c());
        c22228g.m8441c(String.class, InputStream.class, new C22454u.C22457c());
        c22228g.m8441c(String.class, ParcelFileDescriptor.class, new C22454u.C22456b());
        c22228g.m8441c(String.class, AssetFileDescriptor.class, new C22454u.C22455a());
        c22228g.m8441c(Uri.class, InputStream.class, new C22470b.C22471a());
        c22228g.m8441c(Uri.class, InputStream.class, new C22399a.C22402c(context.getAssets()));
        c22228g.m8441c(Uri.class, ParcelFileDescriptor.class, new C22399a.C22401b(context.getAssets()));
        c22228g.m8441c(Uri.class, InputStream.class, new C22472c.C22473a(context));
        c22228g.m8441c(Uri.class, InputStream.class, new C22474d.C22475a(context));
        c22228g.m8441c(Uri.class, InputStream.class, new C22461w.C22465d(contentResolver));
        c22228g.m8441c(Uri.class, ParcelFileDescriptor.class, new C22461w.C22463b(contentResolver));
        c22228g.m8441c(Uri.class, AssetFileDescriptor.class, new C22461w.C22462a(contentResolver));
        c22228g.m8441c(Uri.class, InputStream.class, new C22466x.C22467a());
        c22228g.m8441c(URL.class, InputStream.class, new C22476e.C22477a());
        c22228g.m8441c(Uri.class, File.class, new C22429k.C22430a(context));
        c22228g.m8441c(C22423g.class, InputStream.class, new C22468a.C22469a());
        c22228g.m8441c(byte[].class, ByteBuffer.class, new C22403b.C22404a());
        c22228g.m8441c(byte[].class, InputStream.class, new C22403b.C22408d());
        c22228g.m8441c(Uri.class, Uri.class, c22459a);
        c22228g.m8441c(Drawable.class, Drawable.class, c22459a);
        c22228g.m8440d("legacy_append", Drawable.class, Drawable.class, new C22532f());
        c22228g.m8435i(Bitmap.class, BitmapDrawable.class, new C22547b(resources));
        c22228g.m8435i(Bitmap.class, byte[].class, c22546a);
        c22228g.m8435i(Drawable.class, byte[].class, new C22548c(abstractC22303d, c22546a, c22549d));
        c22228g.m8435i(C22538c.class, byte[].class, c22549d);
        this.f61715d = new C22226e(context, abstractC22301b, c22228g, new C22596g(), abstractC22223a, map, list, c22369l, z, i);
    }

    /* renamed from: a */
    public static void m8450a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f61711k) {
            f61711k = true;
            C22224d c22224d = new C22224d();
            Context applicationContext = context.getApplicationContext();
            ArrayList<AbstractC22572c> emptyList = Collections.emptyList();
            if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
                Log.isLoggable("ManifestParser", 3);
                ArrayList arrayList = new ArrayList();
                try {
                    ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                    if (applicationInfo.metaData == null) {
                        Log.isLoggable("ManifestParser", 3);
                        emptyList = arrayList;
                    } else {
                        if (Log.isLoggable("ManifestParser", 2)) {
                            String str = "Got app info metadata: " + applicationInfo.metaData;
                        }
                        for (String str2 : applicationInfo.metaData.keySet()) {
                            if ("GlideModule".equals(applicationInfo.metaData.get(str2))) {
                                arrayList.add(C22574e.m8120a(str2));
                                Log.isLoggable("ManifestParser", 3);
                            }
                        }
                        Log.isLoggable("ManifestParser", 3);
                        emptyList = arrayList;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
                }
            }
            if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
                Set d = generatedAppGlideModule.d();
                Iterator it = emptyList.iterator();
                while (it.hasNext()) {
                    AbstractC22572c abstractC22572c = (AbstractC22572c) it.next();
                    if (d.contains(abstractC22572c.getClass())) {
                        if (Log.isLoggable("Glide", 3)) {
                            String str3 = "AppGlideModule excludes manifest GlideModule: " + abstractC22572c;
                        }
                        it.remove();
                    }
                }
            }
            if (Log.isLoggable("Glide", 3)) {
                for (AbstractC22572c abstractC22572c2 : emptyList) {
                    StringBuilder m8728C = C22128a.m8728C("Discovered GlideModule from manifest: ");
                    m8728C.append(abstractC22572c2.getClass());
                    m8728C.toString();
                }
            }
            c22224d.f61733m = generatedAppGlideModule != null ? generatedAppGlideModule.e() : null;
            for (AbstractC22572c abstractC22572c3 : emptyList) {
                abstractC22572c3.m8121a(applicationContext, c22224d);
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.a(applicationContext, c22224d);
            }
            ExecutorServiceC22344a.AbstractC22347b abstractC22347b = ExecutorServiceC22344a.AbstractC22347b.f62045b;
            if (c22224d.f61726f == null) {
                int m8304a = ExecutorServiceC22344a.m8304a();
                c22224d.f61726f = new ExecutorServiceC22344a(new ThreadPoolExecutor(m8304a, m8304a, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ExecutorServiceC22344a.ThreadFactoryC22345a("source", abstractC22347b, false)));
            }
            if (c22224d.f61727g == null) {
                c22224d.f61727g = new ExecutorServiceC22344a(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ExecutorServiceC22344a.ThreadFactoryC22345a("disk-cache", abstractC22347b, true)));
            }
            if (c22224d.f61734n == null) {
                int i = ExecutorServiceC22344a.m8304a() >= 4 ? 2 : 1;
                c22224d.f61734n = new ExecutorServiceC22344a(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ExecutorServiceC22344a.ThreadFactoryC22345a("animation", abstractC22347b, true)));
            }
            if (c22224d.f61729i == null) {
                c22224d.f61729i = new C22336j(new C22336j.C22337a(applicationContext));
            }
            if (c22224d.f61730j == null) {
                c22224d.f61730j = new C22559f();
            }
            if (c22224d.f61723c == null) {
                int i2 = c22224d.f61729i.f62013a;
                if (i2 > 0) {
                    c22224d.f61723c = new C22312j(i2);
                } else {
                    c22224d.f61723c = new C22304e();
                }
            }
            if (c22224d.f61724d == null) {
                c22224d.f61724d = new C22309i(c22224d.f61729i.f62016d);
            }
            if (c22224d.f61725e == null) {
                c22224d.f61725e = new C22333h(c22224d.f61729i.f62014b);
            }
            if (c22224d.f61728h == null) {
                c22224d.f61728h = new g(applicationContext);
            }
            if (c22224d.f61722b == null) {
                c22224d.f61722b = new C22369l(c22224d.f61725e, c22224d.f61728h, c22224d.f61727g, c22224d.f61726f, new ExecutorServiceC22344a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, ExecutorServiceC22344a.f62036b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ExecutorServiceC22344a.ThreadFactoryC22345a("source-unlimited", abstractC22347b, false))), c22224d.f61734n, false);
            }
            List<AbstractC22590g<Object>> list = c22224d.f61735o;
            if (list == null) {
                c22224d.f61735o = Collections.emptyList();
            } else {
                c22224d.f61735o = Collections.unmodifiableList(list);
            }
            ComponentCallbacks2C22222c componentCallbacks2C22222c = new ComponentCallbacks2C22222c(applicationContext, c22224d.f61722b, c22224d.f61725e, c22224d.f61723c, c22224d.f61724d, new C22565l(c22224d.f61733m), c22224d.f61730j, c22224d.f61731k, c22224d.f61732l, c22224d.f61721a, c22224d.f61735o, false, false);
            for (AbstractC22572c abstractC22572c4 : emptyList) {
                try {
                    abstractC22572c4.mo8118b(applicationContext, componentCallbacks2C22222c, componentCallbacks2C22222c.f61716e);
                } catch (AbstractMethodError e2) {
                    StringBuilder m8728C2 = C22128a.m8728C("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
                    m8728C2.append(abstractC22572c4.getClass().getName());
                    throw new IllegalStateException(m8728C2.toString(), e2);
                }
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.mo8118b(applicationContext, componentCallbacks2C22222c, componentCallbacks2C22222c.f61716e);
            }
            applicationContext.registerComponentCallbacks(componentCallbacks2C22222c);
            f61710j = componentCallbacks2C22222c;
            f61711k = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    /* renamed from: b */
    public static ComponentCallbacks2C22222c m8449b(Context context) {
        if (f61710j == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException e) {
                Log.isLoggable("Glide", 5);
            } catch (IllegalAccessException e2) {
                m8447d(e2);
                throw null;
            } catch (InstantiationException e3) {
                m8447d(e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                m8447d(e4);
                throw null;
            } catch (InvocationTargetException e5) {
                m8447d(e5);
                throw null;
            }
            synchronized (ComponentCallbacks2C22222c.class) {
                try {
                    if (f61710j == null) {
                        m8450a(context, generatedAppGlideModule);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f61710j;
    }

    /* renamed from: c */
    public static C22565l m8448c(Context context) {
        Objects.requireNonNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m8449b(context).f61718g;
    }

    /* renamed from: d */
    public static void m8447d(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: e */
    public static ComponentCallbacks2C22236i m8446e(Context context) {
        Objects.requireNonNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m8449b(context).f61718g.m8130f(context);
    }

    /* renamed from: f */
    public static ComponentCallbacks2C22236i m8445f(View view) {
        ComponentCallbacks2C22236i componentCallbacks2C22236i;
        Fragment fragment;
        androidx.fragment.app.Fragment fragment2;
        C22565l m8448c = m8448c(view.getContext());
        Objects.requireNonNull(m8448c);
        if (C22623j.m8016h()) {
            componentCallbacks2C22236i = m8448c.m8130f(view.getContext().getApplicationContext());
        } else {
            Objects.requireNonNull(view.getContext(), "Unable to obtain a request manager for a view without a Context");
            Activity m8135a = C22565l.m8135a(view.getContext());
            if (m8135a == null) {
                componentCallbacks2C22236i = m8448c.m8130f(view.getContext().getApplicationContext());
            } else if (m8135a instanceof l) {
                l lVar = (l) m8135a;
                m8448c.f62500f.clear();
                C22565l.m8133c(lVar.getSupportFragmentManager().m42936Q(), m8448c.f62500f);
                View findViewById = lVar.findViewById(16908290);
                View view2 = view;
                androidx.fragment.app.Fragment fragment3 = null;
                while (true) {
                    fragment2 = fragment3;
                    if (view2.equals(findViewById)) {
                        break;
                    }
                    fragment3 = m8448c.f62500f.getOrDefault(view2, null);
                    if (fragment3 == null) {
                        fragment2 = fragment3;
                        if (!(view2.getParent() instanceof View)) {
                            break;
                        }
                        view2 = (View) view2.getParent();
                    } else {
                        fragment2 = fragment3;
                        break;
                    }
                }
                m8448c.f62500f.clear();
                componentCallbacks2C22236i = fragment2 != null ? m8448c.m8129g(fragment2) : m8448c.m8128h(lVar);
            } else {
                m8448c.f62501g.clear();
                m8448c.m8134b(m8135a.getFragmentManager(), m8448c.f62501g);
                View findViewById2 = m8135a.findViewById(16908290);
                View view3 = view;
                Fragment fragment4 = null;
                while (true) {
                    fragment = fragment4;
                    if (view3.equals(findViewById2)) {
                        break;
                    }
                    fragment4 = m8448c.f62501g.getOrDefault(view3, null);
                    if (fragment4 == null) {
                        fragment = fragment4;
                        if (!(view3.getParent() instanceof View)) {
                            break;
                        }
                        view3 = (View) view3.getParent();
                    } else {
                        fragment = fragment4;
                        break;
                    }
                }
                m8448c.f62501g.clear();
                if (fragment == null) {
                    componentCallbacks2C22236i = m8448c.m8131e(m8135a);
                } else if (fragment.getActivity() == null) {
                    throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
                } else {
                    componentCallbacks2C22236i = !C22623j.m8016h() ? m8448c.m8132d(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible()) : m8448c.m8130f(fragment.getActivity().getApplicationContext());
                }
            }
        }
        return componentCallbacks2C22236i;
    }

    /* renamed from: g */
    public static ComponentCallbacks2C22236i m8444g(androidx.fragment.app.Fragment fragment) {
        return m8448c(fragment.getContext()).m8129g(fragment);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        C22623j.m8023a();
        ((C22620g) this.f61714c).m8026e(0L);
        this.f61713b.mo8328b();
        this.f61717f.mo8338b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        long j;
        C22623j.m8023a();
        for (ComponentCallbacks2C22236i componentCallbacks2C22236i : this.f61720i) {
            Objects.requireNonNull(componentCallbacks2C22236i);
        }
        C22333h c22333h = (C22333h) this.f61714c;
        Objects.requireNonNull(c22333h);
        if (i >= 40) {
            c22333h.m8026e(0L);
        } else if (i >= 20 || i == 15) {
            synchronized (c22333h) {
                j = c22333h.f62642b;
            }
            c22333h.m8026e(j / 2);
        }
        this.f61713b.mo8329a(i);
        this.f61717f.mo8339a(i);
    }
}
