package p1727n3.p1807k.p1821i.p1823g0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
/* renamed from: n3.k.i.g0.e */
/* loaded from: classes-dex2jar.jar:n3/k/i/g0/e.class */
public final class C26599e {

    /* renamed from: a */
    public final AbstractC26602c f74489a;

    /* renamed from: n3.k.i.g0.e$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/g0/e$a.class */
    public static final class C26600a implements AbstractC26602c {

        /* renamed from: a */
        public final InputContentInfo f74490a;

        public C26600a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f74490a = new InputContentInfo(uri, clipDescription, uri2);
        }

        public C26600a(Object obj) {
            this.f74490a = (InputContentInfo) obj;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: a */
        public Object mo1604a() {
            return this.f74490a;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: b */
        public Uri mo1603b() {
            return this.f74490a.getContentUri();
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: c */
        public void mo1602c() {
            this.f74490a.requestPermission();
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: d */
        public Uri mo1601d() {
            return this.f74490a.getLinkUri();
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: e */
        public void mo1600e() {
            this.f74490a.releasePermission();
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        public ClipDescription getDescription() {
            return this.f74490a.getDescription();
        }
    }

    /* renamed from: n3.k.i.g0.e$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/g0/e$b.class */
    public static final class C26601b implements AbstractC26602c {

        /* renamed from: a */
        public final Uri f74491a;

        /* renamed from: b */
        public final ClipDescription f74492b;

        /* renamed from: c */
        public final Uri f74493c;

        public C26601b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f74491a = uri;
            this.f74492b = clipDescription;
            this.f74493c = uri2;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: a */
        public Object mo1604a() {
            return null;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: b */
        public Uri mo1603b() {
            return this.f74491a;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: c */
        public void mo1602c() {
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: d */
        public Uri mo1601d() {
            return this.f74493c;
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        /* renamed from: e */
        public void mo1600e() {
        }

        @Override // p1727n3.p1807k.p1821i.p1823g0.C26599e.AbstractC26602c
        public ClipDescription getDescription() {
            return this.f74492b;
        }
    }

    /* renamed from: n3.k.i.g0.e$c */
    /* loaded from: classes-dex2jar.jar:n3/k/i/g0/e$c.class */
    public interface AbstractC26602c {
        /* renamed from: a */
        Object mo1604a();

        /* renamed from: b */
        Uri mo1603b();

        /* renamed from: c */
        void mo1602c();

        /* renamed from: d */
        Uri mo1601d();

        /* renamed from: e */
        void mo1600e();

        ClipDescription getDescription();
    }

    public C26599e(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f74489a = new C26600a(uri, clipDescription, uri2);
        } else {
            this.f74489a = new C26601b(uri, clipDescription, uri2);
        }
    }

    public C26599e(AbstractC26602c abstractC26602c) {
        this.f74489a = abstractC26602c;
    }
}
