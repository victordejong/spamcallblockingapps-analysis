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
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.EnumC1493b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.C1751j;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.engine.p091b.AbstractC1710h;
import com.bumptech.glide.load.engine.p093d.C1730a;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.load.p079a.C1488k;
import com.bumptech.glide.load.p081b.C1494a;
import com.bumptech.glide.load.p081b.C1508b;
import com.bumptech.glide.load.p081b.C1515c;
import com.bumptech.glide.load.p081b.C1516d;
import com.bumptech.glide.load.p081b.C1519e;
import com.bumptech.glide.load.p081b.C1524f;
import com.bumptech.glide.load.p081b.C1532g;
import com.bumptech.glide.load.p081b.C1539k;
import com.bumptech.glide.load.p081b.C1558s;
import com.bumptech.glide.load.p081b.C1563t;
import com.bumptech.glide.load.p081b.C1564u;
import com.bumptech.glide.load.p081b.C1568v;
import com.bumptech.glide.load.p081b.C1571w;
import com.bumptech.glide.load.p081b.C1576x;
import com.bumptech.glide.load.p081b.p082a.C1498a;
import com.bumptech.glide.load.p081b.p082a.C1500b;
import com.bumptech.glide.load.p081b.p082a.C1502c;
import com.bumptech.glide.load.p081b.p082a.C1504d;
import com.bumptech.glide.load.p081b.p082a.C1506e;
import com.bumptech.glide.load.p083c.p084a.C1580a;
import com.bumptech.glide.load.p083c.p084a.C1581b;
import com.bumptech.glide.load.p083c.p084a.C1582c;
import com.bumptech.glide.load.p083c.p084a.C1585f;
import com.bumptech.glide.load.p083c.p084a.C1589j;
import com.bumptech.glide.load.p083c.p084a.C1602l;
import com.bumptech.glide.load.p083c.p084a.C1608o;
import com.bumptech.glide.load.p083c.p084a.C1614t;
import com.bumptech.glide.load.p083c.p084a.C1615u;
import com.bumptech.glide.load.p083c.p084a.C1619w;
import com.bumptech.glide.load.p083c.p084a.C1621x;
import com.bumptech.glide.load.p083c.p085b.C1629a;
import com.bumptech.glide.load.p083c.p086c.C1635d;
import com.bumptech.glide.load.p083c.p086c.C1636e;
import com.bumptech.glide.load.p083c.p087d.C1637a;
import com.bumptech.glide.load.p083c.p088e.C1639a;
import com.bumptech.glide.load.p083c.p088e.C1643c;
import com.bumptech.glide.load.p083c.p088e.C1645d;
import com.bumptech.glide.load.p083c.p088e.C1653h;
import com.bumptech.glide.load.p083c.p088e.C1655j;
import com.bumptech.glide.load.p083c.p089f.C1656a;
import com.bumptech.glide.load.p083c.p089f.C1657b;
import com.bumptech.glide.load.p083c.p089f.C1658c;
import com.bumptech.glide.load.p083c.p089f.C1659d;
import com.bumptech.glide.p069b.AbstractC1355a;
import com.bumptech.glide.p070c.AbstractC1366d;
import com.bumptech.glide.p070c.C1376l;
import com.bumptech.glide.p071d.AbstractC1387c;
import com.bumptech.glide.p071d.C1389e;
import com.bumptech.glide.p073f.C1422e;
import com.bumptech.glide.p073f.p074a.AbstractC1410h;
import com.bumptech.glide.p073f.p074a.C1407e;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
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
public class ComponentCallbacks2C1361c implements ComponentCallbacks2 {

    /* renamed from: a */
    private static volatile ComponentCallbacks2C1361c f4532a;

    /* renamed from: b */
    private static volatile boolean f4533b;

    /* renamed from: c */
    private final C1751j f4534c;

    /* renamed from: d */
    private final AbstractC1678e f4535d;

    /* renamed from: e */
    private final AbstractC1710h f4536e;

    /* renamed from: f */
    private final C1730a f4537f;

    /* renamed from: g */
    private final C1391e f4538g;

    /* renamed from: i */
    private final AbstractC1673b f4540i;

    /* renamed from: j */
    private final C1376l f4541j;

    /* renamed from: k */
    private final AbstractC1366d f4542k;

    /* renamed from: l */
    private final List<C1459i> f4543l = new ArrayList();

    /* renamed from: m */
    private EnumC1401f f4544m = EnumC1401f.NORMAL;

    /* renamed from: h */
    private final Registry f4539h = new Registry();

    public ComponentCallbacks2C1361c(Context context, C1751j c1751j, AbstractC1710h abstractC1710h, AbstractC1678e abstractC1678e, AbstractC1673b abstractC1673b, C1376l c1376l, AbstractC1366d abstractC1366d, int i, C1422e c1422e, Map<Class<?>, AbstractC1463j<?, ?>> map) {
        this.f4534c = c1751j;
        this.f4535d = abstractC1678e;
        this.f4540i = abstractC1673b;
        this.f4536e = abstractC1710h;
        this.f4541j = c1376l;
        this.f4542k = abstractC1366d;
        this.f4537f = new C1730a(abstractC1710h, abstractC1678e, (EnumC1493b) c1422e.m17116m().m16324a(C1602l.f4979a));
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT >= 27) {
            this.f4539h.m17424a((ImageHeaderParser) new C1608o());
        }
        this.f4539h.m17424a((ImageHeaderParser) new C1589j());
        C1602l c1602l = new C1602l(this.f4539h.m17425a(), resources.getDisplayMetrics(), abstractC1678e, abstractC1673b);
        C1639a c1639a = new C1639a(context, this.f4539h.m17425a(), abstractC1678e, abstractC1673b);
        AbstractC1782i<ParcelFileDescriptor, Bitmap> m16706b = C1621x.m16706b(abstractC1678e);
        C1585f c1585f = new C1585f(c1602l);
        C1615u c1615u = new C1615u(c1602l, abstractC1673b);
        C1635d c1635d = new C1635d(context);
        C1558s.C1561c c1561c = new C1558s.C1561c(resources);
        C1558s.C1562d c1562d = new C1558s.C1562d(resources);
        C1558s.C1560b c1560b = new C1558s.C1560b(resources);
        C1558s.C1559a c1559a = new C1558s.C1559a(resources);
        C1582c c1582c = new C1582c(abstractC1673b);
        C1656a c1656a = new C1656a();
        C1659d c1659d = new C1659d();
        ContentResolver contentResolver = context.getContentResolver();
        this.f4539h.m17421a(ByteBuffer.class, new C1515c()).m17421a(InputStream.class, new C1563t(abstractC1673b)).m17414a("Bitmap", ByteBuffer.class, Bitmap.class, c1585f).m17414a("Bitmap", InputStream.class, Bitmap.class, c1615u).m17414a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, m16706b).m17414a("Bitmap", AssetFileDescriptor.class, Bitmap.class, C1621x.m16708a(abstractC1678e)).m17419a(Bitmap.class, Bitmap.class, C1568v.C1569a.m16814a()).m17414a("Bitmap", Bitmap.class, Bitmap.class, new C1619w()).m17420a(Bitmap.class, (AbstractC1783j) c1582c).m17414a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C1580a(resources, c1585f)).m17414a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C1580a(resources, c1615u)).m17414a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C1580a(resources, m16706b)).m17420a(BitmapDrawable.class, (AbstractC1783j) new C1581b(abstractC1678e, c1582c)).m17414a("Gif", InputStream.class, C1643c.class, new C1655j(this.f4539h.m17425a(), c1639a, abstractC1673b)).m17414a("Gif", ByteBuffer.class, C1643c.class, c1639a).m17420a(C1643c.class, (AbstractC1783j) new C1645d()).m17419a(AbstractC1355a.class, AbstractC1355a.class, C1568v.C1569a.m16814a()).m17414a("Bitmap", AbstractC1355a.class, Bitmap.class, new C1653h(abstractC1678e)).m17417a(Uri.class, Drawable.class, c1635d).m17417a(Uri.class, Bitmap.class, new C1614t(c1635d, abstractC1678e)).m17423a((AbstractC1477e.AbstractC1478a<?>) new C1629a.C1630a()).m17419a(File.class, ByteBuffer.class, new C1516d.C1518b()).m17419a(File.class, InputStream.class, new C1524f.C1530e()).m17417a(File.class, File.class, new C1637a()).m17419a(File.class, ParcelFileDescriptor.class, new C1524f.C1526b()).m17419a(File.class, File.class, C1568v.C1569a.m16814a()).m17423a((AbstractC1477e.AbstractC1478a<?>) new C1488k.C1489a(abstractC1673b)).m17419a(Integer.TYPE, InputStream.class, c1561c).m17419a(Integer.TYPE, ParcelFileDescriptor.class, c1560b).m17419a(Integer.class, InputStream.class, c1561c).m17419a(Integer.class, ParcelFileDescriptor.class, c1560b).m17419a(Integer.class, Uri.class, c1562d).m17419a(Integer.TYPE, AssetFileDescriptor.class, c1559a).m17419a(Integer.class, AssetFileDescriptor.class, c1559a).m17419a(Integer.TYPE, Uri.class, c1562d).m17419a(String.class, InputStream.class, new C1519e.C1522c()).m17419a(Uri.class, InputStream.class, new C1519e.C1522c()).m17419a(String.class, InputStream.class, new C1564u.C1567c()).m17419a(String.class, ParcelFileDescriptor.class, new C1564u.C1566b()).m17419a(String.class, AssetFileDescriptor.class, new C1564u.C1565a()).m17419a(Uri.class, InputStream.class, new C1500b.C1501a()).m17419a(Uri.class, InputStream.class, new C1494a.C1497c(context.getAssets())).m17419a(Uri.class, ParcelFileDescriptor.class, new C1494a.C1496b(context.getAssets())).m17419a(Uri.class, InputStream.class, new C1502c.C1503a(context)).m17419a(Uri.class, InputStream.class, new C1504d.C1505a(context)).m17419a(Uri.class, InputStream.class, new C1571w.C1575d(contentResolver)).m17419a(Uri.class, ParcelFileDescriptor.class, new C1571w.C1573b(contentResolver)).m17419a(Uri.class, AssetFileDescriptor.class, new C1571w.C1572a(contentResolver)).m17419a(Uri.class, InputStream.class, new C1576x.C1577a()).m17419a(URL.class, InputStream.class, new C1506e.C1507a()).m17419a(Uri.class, File.class, new C1539k.C1540a(context)).m17419a(C1532g.class, InputStream.class, new C1498a.C1499a()).m17419a(byte[].class, ByteBuffer.class, new C1508b.C1509a()).m17419a(byte[].class, InputStream.class, new C1508b.C1513d()).m17419a(Uri.class, Uri.class, C1568v.C1569a.m16814a()).m17419a(Drawable.class, Drawable.class, C1568v.C1569a.m16814a()).m17417a(Drawable.class, Drawable.class, new C1636e()).m17418a(Bitmap.class, BitmapDrawable.class, new C1657b(resources)).m17418a(Bitmap.class, byte[].class, c1656a).m17418a(Drawable.class, byte[].class, new C1658c(abstractC1678e, c1656a, c1659d)).m17418a(C1643c.class, byte[].class, c1659d);
        this.f4538g = new C1391e(context, abstractC1673b, this.f4539h, new C1407e(), c1422e, map, c1751j, i);
    }

    /* renamed from: a */
    public static ComponentCallbacks2C1361c m17308a(Context context) {
        if (f4532a == null) {
            synchronized (ComponentCallbacks2C1361c.class) {
                try {
                    if (f4532a == null) {
                        m17299c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4532a;
    }

    /* renamed from: a */
    public static C1459i m17309a(Activity activity) {
        return m17295e(activity).m17271a(activity);
    }

    /* renamed from: a */
    private static void m17307a(Context context, C1384d c1384d) {
        Context applicationContext = context.getApplicationContext();
        AbstractC1344a m17291i = m17291i();
        List<AbstractC1387c> emptyList = Collections.emptyList();
        if (m17291i == null || m17291i.m17233c()) {
            emptyList = new C1389e(applicationContext).m17231a();
        }
        if (m17291i != null && !m17291i.m17407a().isEmpty()) {
            Set<Class<?>> m17407a = m17291i.m17407a();
            Iterator<AbstractC1387c> it = emptyList.iterator();
            while (it.hasNext()) {
                AbstractC1387c next = it.next();
                if (m17407a.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<AbstractC1387c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        c1384d.m17234a(m17291i != null ? m17291i.m17406b() : null);
        for (AbstractC1387c abstractC1387c : emptyList) {
            abstractC1387c.mo17232a(applicationContext, c1384d);
        }
        if (m17291i != null) {
            m17291i.mo17232a(applicationContext, c1384d);
        }
        ComponentCallbacks2C1361c m17235a = c1384d.m17235a(applicationContext);
        for (AbstractC1387c abstractC1387c2 : emptyList) {
            abstractC1387c2.mo17228a(applicationContext, m17235a, m17235a.f4539h);
        }
        if (m17291i != null) {
            m17291i.mo17228a(applicationContext, m17235a, m17235a.f4539h);
        }
        applicationContext.registerComponentCallbacks(m17235a);
        f4532a = m17235a;
    }

    /* renamed from: a */
    private static void m17304a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: b */
    public static C1459i m17302b(Context context) {
        return m17295e(context).m17269a(context);
    }

    /* renamed from: c */
    private static void m17299c(Context context) {
        if (f4533b) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f4533b = true;
        m17297d(context);
        f4533b = false;
    }

    /* renamed from: d */
    private static void m17297d(Context context) {
        m17307a(context, new C1384d());
    }

    /* renamed from: e */
    private static C1376l m17295e(Context context) {
        C1456i.m16988a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m17308a(context).m17293g();
    }

    /* renamed from: i */
    private static AbstractC1344a m17291i() {
        AbstractC1344a abstractC1344a;
        try {
            abstractC1344a = (AbstractC1344a) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            abstractC1344a = null;
        } catch (IllegalAccessException e2) {
            m17304a(e2);
            abstractC1344a = null;
        } catch (InstantiationException e3) {
            m17304a(e3);
            abstractC1344a = null;
        } catch (NoSuchMethodException e4) {
            m17304a(e4);
            abstractC1344a = null;
        } catch (InvocationTargetException e5) {
            m17304a(e5);
            abstractC1344a = null;
        }
        return abstractC1344a;
    }

    /* renamed from: a */
    public AbstractC1678e m17311a() {
        return this.f4535d;
    }

    /* renamed from: a */
    public void m17310a(int i) {
        C1457j.m16984a();
        this.f4536e.mo16494a(i);
        this.f4535d.mo16544a(i);
        this.f4540i.mo16563a(i);
    }

    /* renamed from: a */
    public void m17305a(C1459i c1459i) {
        synchronized (this.f4543l) {
            if (this.f4543l.contains(c1459i)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f4543l.add(c1459i);
        }
    }

    /* renamed from: a */
    public boolean m17306a(AbstractC1410h<?> abstractC1410h) {
        boolean z;
        synchronized (this.f4543l) {
            Iterator<C1459i> it = this.f4543l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().m16957b(abstractC1410h)) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public AbstractC1673b m17303b() {
        return this.f4540i;
    }

    /* renamed from: b */
    public void m17301b(C1459i c1459i) {
        synchronized (this.f4543l) {
            if (!this.f4543l.contains(c1459i)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f4543l.remove(c1459i);
        }
    }

    /* renamed from: c */
    public Context m17300c() {
        return this.f4538g.getBaseContext();
    }

    /* renamed from: d */
    public AbstractC1366d m17298d() {
        return this.f4542k;
    }

    /* renamed from: e */
    public C1391e m17296e() {
        return this.f4538g;
    }

    /* renamed from: f */
    public void m17294f() {
        C1457j.m16984a();
        this.f4536e.m16495a();
        this.f4535d.mo16545a();
        this.f4540i.mo16564a();
    }

    /* renamed from: g */
    public C1376l m17293g() {
        return this.f4541j;
    }

    /* renamed from: h */
    public Registry m17292h() {
        return this.f4539h;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m17294f();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        m17310a(i);
    }
}
