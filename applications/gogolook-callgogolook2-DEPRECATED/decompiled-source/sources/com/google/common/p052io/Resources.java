package com.google.common.p052io;

import com.google.common.collect.Lists;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import p081h.p203i.p316b.p317a.C9294f;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p320d.AbstractC9360a;
import p081h.p203i.p316b.p320d.AbstractC9364c;
import p081h.p203i.p316b.p320d.AbstractC9377j;
/* renamed from: com.google.common.io.Resources */
/* loaded from: classes2-dex2jar.jar:com/google/common/io/Resources.class */
public final class Resources {

    /* renamed from: com.google.common.io.Resources$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/Resources$a.class */
    public static final class C3668a implements AbstractC9377j<List<String>> {

        /* renamed from: a */
        public final List<String> f7714a = Lists.m31133a();

        @Override // p081h.p203i.p316b.p320d.AbstractC9377j
        /* renamed from: a */
        public boolean mo15342a(String str) {
            this.f7714a.add(str);
            return true;
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9377j
        public List<String> getResult() {
            return this.f7714a;
        }
    }

    /* renamed from: com.google.common.io.Resources$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/Resources$b.class */
    public static final class C3669b extends AbstractC9360a {

        /* renamed from: a */
        public final URL f7715a;

        public C3669b(URL url) {
            C9301k.m15478a(url);
            this.f7715a = url;
        }

        public /* synthetic */ C3669b(URL url, C3668a aVar) {
            this(url);
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9360a
        /* renamed from: a */
        public InputStream mo15348a() throws IOException {
            return this.f7715a.openStream();
        }

        public String toString() {
            return "Resources.asByteSource(" + this.f7715a + ")";
        }
    }

    public static AbstractC9360a asByteSource(URL url) {
        return new C3669b(url, null);
    }

    public static AbstractC9364c asCharSource(URL url, Charset charset) {
        return asByteSource(url).m15368a(charset);
    }

    public static void copy(URL url, OutputStream outputStream) throws IOException {
        asByteSource(url).m15369a(outputStream);
    }

    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        C9301k.m15472a(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }

    public static URL getResource(String str) {
        URL resource = ((ClassLoader) C9294f.m15489a(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        C9301k.m15473a(resource != null, "resource %s not found.", str);
        return resource;
    }

    public static <T> T readLines(URL url, Charset charset, AbstractC9377j<T> jVar) throws IOException {
        return (T) asCharSource(url, charset).m15360a(jVar);
    }

    public static List<String> readLines(URL url, Charset charset) throws IOException {
        return (List) readLines(url, charset, new C3668a());
    }

    public static byte[] toByteArray(URL url) throws IOException {
        return asByteSource(url).mo15347b();
    }

    public static String toString(URL url, Charset charset) throws IOException {
        return asCharSource(url, charset).mo15359b();
    }
}
