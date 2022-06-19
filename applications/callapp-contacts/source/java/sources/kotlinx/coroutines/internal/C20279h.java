package kotlinx.coroutines.internal;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.C18298b;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\t\u001a\u00020\u0004H\u0082\bJ1\u0010\n\u001a\u0002H\u000b\"\u0004\b��\u0010\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\bH\u0002¢\u0006\u0002\u0010\u0010J*\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0012\"\u0004\b��\u0010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0013\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H��¢\u0006\u0002\b\u0014J/\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0012\"\u0004\b��\u0010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\b2\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J,\u0010\u001d\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e*\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u0002H\u001e0!H\u0082\b¢\u0006\u0002\u0010\"R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006#"}, m4298d2 = {"Lkotlinx/coroutines/internal/FastServiceLoader;", "", "()V", "PREFIX", "", "createInstanceOf", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "baseClass", "Ljava/lang/Class;", "serviceClass", "getProviderInstance", "S", "name", "loader", "Ljava/lang/ClassLoader;", "service", "(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;", "load", "", "loadMainDispatcherFactory", "loadMainDispatcherFactory$kotlinx_coroutines_core", "loadProviders", "loadProviders$kotlinx_coroutines_core", "parse", "url", "Ljava/net/URL;", "parseFile", "r", "Ljava/io/BufferedReader;", "use", "R", "Ljava/util/jar/JarFile;", "block", "Lkotlin/Function1;", "(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.h */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/h.class */
public final class C20279h {

    /* renamed from: a */
    public static final C20279h f66744a = new C20279h();

    private C20279h() {
    }

    /* renamed from: a */
    private static List<String> m865a(BufferedReader bufferedReader) {
        String b;
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return C18282n.m4118h(linkedHashSet);
            }
            b = C18425p.m3921b(readLine, "#", readLine);
            Objects.requireNonNull(b, "null cannot be cast to non-null type kotlin.CharSequence");
            String obj = C18425p.m3930b((CharSequence) b).toString();
            String str = obj;
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char charAt = str.charAt(i);
                if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                    z = false;
                    break;
                }
                i++;
            }
            if (!z) {
                throw new IllegalArgumentException("Illegal service provider class name: ".concat(String.valueOf(obj)).toString());
            }
            boolean z2 = false;
            if (str.length() > 0) {
                z2 = true;
            }
            if (z2) {
                linkedHashSet.add(obj);
            }
        }
    }

    /* renamed from: a */
    private static <S> List<S> m864a(Class<S> cls, ClassLoader classLoader) {
        ArrayList arrayList;
        Set j;
        try {
            ArrayList list = Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
            C18524p.m3843b(list, "java.util.Collections.list(this)");
            ArrayList<URL> arrayList2 = list;
            ArrayList arrayList3 = new ArrayList();
            for (URL url : arrayList2) {
                C18282n.m4158a((Collection) arrayList3, (Iterable) m863a(url));
            }
            j = C18282n.m4114j((Iterable) arrayList3);
        } catch (Throwable th) {
            arrayList = C18282n.m4118h(ServiceLoader.load(cls, classLoader));
        }
        if (!j.isEmpty()) {
            Set<String> set = j;
            ArrayList arrayList4 = new ArrayList(C18282n.m4163a(set, 10));
            for (String str : set) {
                Class<?> cls2 = Class.forName(str, false, classLoader);
                if (!cls.isAssignableFrom(cls2)) {
                    throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
                }
                arrayList4.add(cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])));
            }
            arrayList = arrayList4;
            return arrayList;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }

    /* renamed from: a */
    private static List<String> m863a(URL url) {
        BufferedReader bufferedReader;
        String c;
        String a;
        String c2;
        String url2 = url.toString();
        if (!C18425p.m3957a(url2, "jar", false)) {
            try {
                th = null;
                return m865a(new BufferedReader(new InputStreamReader(url.openStream())));
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        c = C18425p.m3916c(url2, "jar:file:", url2);
        a = C18425p.m3932a(c, '!', c);
        c2 = C18425p.m3916c(url2, "!/", url2);
        JarFile jarFile = new JarFile(a, false);
        try {
            List<String> m865a = m865a(new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(c2)), "UTF-8")));
            th = null;
            jarFile.close();
            return m865a;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarFile.close();
                    throw th2;
                } catch (Throwable th3) {
                    C18298b.m4101a(th, th3);
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public final List<MainDispatcherFactory> m866a() {
        ArrayList arrayList;
        MainDispatcherFactory mainDispatcherFactory;
        MainDispatcherFactory mainDispatcherFactory2;
        if (!C20280i.m862a()) {
            return m864a(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        try {
            ArrayList arrayList2 = new ArrayList(2);
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException e) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory != null) {
                arrayList2.add(mainDispatcherFactory);
            }
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException e2) {
                mainDispatcherFactory2 = null;
            }
            if (mainDispatcherFactory2 != null) {
                arrayList2.add(mainDispatcherFactory2);
            }
            arrayList = arrayList2;
        } catch (Throwable th) {
            arrayList = m864a(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        return arrayList;
    }
}
