package p020b.p041h.p050l.p052g0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
/* renamed from: b.h.l.g0.c */
/* loaded from: classes-dex2jar.jar:b/h/l/g0/c.class */
public final class C1660c {

    /* renamed from: a */
    private final AbstractC1663c f6323a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.g0.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/c$a.class */
    public static final class C1661a implements AbstractC1663c {

        /* renamed from: a */
        final InputContentInfo f6324a;

        C1661a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f6324a = new InputContentInfo(uri, clipDescription, uri2);
        }

        C1661a(Object obj) {
            this.f6324a = (InputContentInfo) obj;
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: a */
        public Uri mo29407a() {
            return this.f6324a.getContentUri();
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: b */
        public void mo29406b() {
            this.f6324a.requestPermission();
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: c */
        public Uri mo29405c() {
            return this.f6324a.getLinkUri();
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: d */
        public ClipDescription mo29404d() {
            return this.f6324a.getDescription();
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: e */
        public Object mo29403e() {
            return this.f6324a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.g0.c$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/c$b.class */
    public static final class C1662b implements AbstractC1663c {

        /* renamed from: a */
        private final Uri f6325a;

        /* renamed from: b */
        private final ClipDescription f6326b;

        /* renamed from: c */
        private final Uri f6327c;

        C1662b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f6325a = uri;
            this.f6326b = clipDescription;
            this.f6327c = uri2;
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: a */
        public Uri mo29407a() {
            return this.f6325a;
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: b */
        public void mo29406b() {
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: c */
        public Uri mo29405c() {
            return this.f6327c;
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: d */
        public ClipDescription mo29404d() {
            return this.f6326b;
        }

        @Override // p020b.p041h.p050l.p052g0.C1660c.AbstractC1663c
        /* renamed from: e */
        public Object mo29403e() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.g0.c$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/c$c.class */
    public interface AbstractC1663c {
        /* renamed from: a */
        Uri mo29407a();

        /* renamed from: b */
        void mo29406b();

        /* renamed from: c */
        Uri mo29405c();

        /* renamed from: d */
        ClipDescription mo29404d();

        /* renamed from: e */
        Object mo29403e();
    }

    public C1660c(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f6323a = new C1661a(uri, clipDescription, uri2);
        } else {
            this.f6323a = new C1662b(uri, clipDescription, uri2);
        }
    }

    private C1660c(AbstractC1663c abstractC1663c) {
        this.f6323a = abstractC1663c;
    }

    /* renamed from: f */
    public static C1660c m29408f(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new C1660c(new C1661a(obj));
        }
        return null;
    }

    /* renamed from: a */
    public Uri m29413a() {
        return this.f6323a.mo29407a();
    }

    /* renamed from: b */
    public ClipDescription m29412b() {
        return this.f6323a.mo29404d();
    }

    /* renamed from: c */
    public Uri m29411c() {
        return this.f6323a.mo29405c();
    }

    /* renamed from: d */
    public void m29410d() {
        this.f6323a.mo29406b();
    }

    /* renamed from: e */
    public Object m29409e() {
        return this.f6323a.mo29403e();
    }
}
