package p1727n3.p1869w.p1870a;

import android.os.Bundle;
import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.Objects;
import p1727n3.p1788g.C26188i;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.w.a.b */
/* loaded from: classes-dex2jar.jar:n3/w/a/b.class */
public class C27045b extends AbstractC27043a {

    /* renamed from: a */
    public final AbstractC26992b0 f75591a;

    /* renamed from: b */
    public final C27047c f75592b;

    /* renamed from: n3.w.a.b$b */
    /* loaded from: classes-dex2jar.jar:n3/w/a/b$b.class */
    public static class C27046b<D> implements AbstractC27012l0<D> {

        /* renamed from: a */
        public final C27051b<D> f75593a;

        /* renamed from: b */
        public final AbstractC27043a.AbstractC27044a<D> f75594b;

        /* renamed from: c */
        public boolean f75595c = false;

        public C27046b(C27051b<D> c27051b, AbstractC27043a.AbstractC27044a<D> abstractC27044a) {
            this.f75593a = c27051b;
            this.f75594b = abstractC27044a;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(D d) {
            this.f75594b.onLoadFinished(this.f75593a, d);
            this.f75595c = true;
        }

        public String toString() {
            return this.f75594b.toString();
        }
    }

    /* renamed from: n3.w.a.b$c */
    /* loaded from: classes-dex2jar.jar:n3/w/a/b$c.class */
    public static class C27047c extends AbstractC27040y0 {

        /* renamed from: c */
        public static final C26986a1.AbstractC26987b f75596c = new C27048a();

        /* renamed from: a */
        public C26188i<a> f75597a = new C26188i<>();

        /* renamed from: b */
        public boolean f75598b = false;

        /* renamed from: n3.w.a.b$c$a */
        /* loaded from: classes-dex2jar.jar:n3/w/a/b$c$a.class */
        public static final class C27048a implements C26986a1.AbstractC26987b {
            @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
            public <T extends AbstractC27040y0> T create(Class<T> cls) {
                return new C27047c();
            }
        }

        @Override // p1727n3.p1868v.AbstractC27040y0
        public void onCleared() {
            super.onCleared();
            int m2563j = this.f75597a.m2563j();
            for (int i = 0; i < m2563j; i++) {
                this.f75597a.m2562k(i).m(true);
            }
            this.f75597a.m2570b();
        }
    }

    public C27045b(AbstractC26992b0 abstractC26992b0, C26993b1 c26993b1) {
        AbstractC27040y0 abstractC27040y0;
        this.f75591a = abstractC26992b0;
        C26986a1.AbstractC26987b abstractC26987b = C27047c.f75596c;
        String canonicalName = C27047c.class.getCanonicalName();
        if (canonicalName != null) {
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = c26993b1.f75499a.get(m8543z2);
            if (C27047c.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C27047c.class) : ((C27047c.C27048a) abstractC26987b).create(C27047c.class);
                AbstractC27040y0 put = c26993b1.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            this.f75592b = (C27047c) abstractC27040y0;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a
    @Deprecated
    /* renamed from: a */
    public void mo978a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        C27047c c27047c = this.f75592b;
        if (c27047c.f75597a.m2563j() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < c27047c.f75597a.m2563j(); i++) {
                a m2562k = c27047c.f75597a.m2562k(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(c27047c.f75597a.m2565h(i));
                printWriter.print(": ");
                printWriter.println(m2562k.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(m2562k.l);
                printWriter.print(" mArgs=");
                printWriter.println(m2562k.m);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(m2562k.n);
                m2562k.n.dump(C22128a.m8543z2(str2, "  "), fileDescriptor, printWriter, strArr);
                if (m2562k.p != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(m2562k.p);
                    C27046b c27046b = m2562k.p;
                    Objects.requireNonNull(c27046b);
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(c27046b.f75595c);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                printWriter.println(m2562k.n.dataToString(m2562k.m42869d()));
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(m2562k.m42868e());
            }
        }
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a
    /* renamed from: c */
    public <D> C27051b<D> mo977c(int i, Bundle bundle, AbstractC27043a.AbstractC27044a<D> abstractC27044a) {
        if (!this.f75592b.f75598b) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("initLoader must be called on the main thread");
            }
            a m2566g = this.f75592b.f75597a.m2566g(i, null);
            return m2566g == null ? m975e(i, bundle, abstractC27044a, null) : m2566g.p(this.f75591a, abstractC27044a);
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a
    /* renamed from: d */
    public <D> C27051b<D> mo976d(int i, Bundle bundle, AbstractC27043a.AbstractC27044a<D> abstractC27044a) {
        if (!this.f75592b.f75598b) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("restartLoader must be called on the main thread");
            }
            C27051b<D> c27051b = null;
            a m2566g = this.f75592b.f75597a.m2566g(i, null);
            if (m2566g != null) {
                c27051b = m2566g.m(false);
            }
            return m975e(i, bundle, abstractC27044a, c27051b);
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public final <D> C27051b<D> m975e(int i, Bundle bundle, AbstractC27043a.AbstractC27044a<D> abstractC27044a, C27051b<D> c27051b) {
        try {
            this.f75592b.f75598b = true;
            C27051b<D> onCreateLoader = abstractC27044a.onCreateLoader(i, bundle);
            if (onCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + onCreateLoader);
            }
            a aVar = new a(i, bundle, onCreateLoader, c27051b);
            this.f75592b.f75597a.m2564i(i, aVar);
            this.f75592b.f75598b = false;
            return aVar.p(this.f75591a, abstractC27044a);
        } catch (Throwable th) {
            this.f75592b.f75598b = false;
            throw th;
        }
    }

    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(128, "LoaderManager{");
        m8554x.append(Integer.toHexString(System.identityHashCode(this)));
        m8554x.append(" in ");
        MediaSessionCompat.m43229j(this.f75591a, m8554x);
        m8554x.append("}}");
        return m8554x.toString();
    }
}
