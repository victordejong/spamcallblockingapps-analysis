package p185o0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
/* renamed from: o0.f */
/* loaded from: classes-dex2jar.jar:o0/f.class */
public final class C3811f {

    /* renamed from: a */
    public final AbstractC3814c f12286a;

    /* renamed from: o0.f$a */
    /* loaded from: classes-dex2jar.jar:o0/f$a.class */
    public static final class C3812a implements AbstractC3814c {

        /* renamed from: a */
        public final InputContentInfo f12287a;

        public C3812a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f12287a = new InputContentInfo(uri, clipDescription, uri2);
        }

        public C3812a(Object obj) {
            this.f12287a = (InputContentInfo) obj;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: a */
        public Object mo1781a() {
            return this.f12287a;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: b */
        public Uri mo1780b() {
            return this.f12287a.getContentUri();
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: c */
        public void mo1779c() {
            this.f12287a.requestPermission();
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: d */
        public Uri mo1778d() {
            return this.f12287a.getLinkUri();
        }

        @Override // p185o0.C3811f.AbstractC3814c
        public ClipDescription getDescription() {
            return this.f12287a.getDescription();
        }
    }

    /* renamed from: o0.f$b */
    /* loaded from: classes-dex2jar.jar:o0/f$b.class */
    public static final class C3813b implements AbstractC3814c {

        /* renamed from: a */
        public final Uri f12288a;

        /* renamed from: b */
        public final ClipDescription f12289b;

        /* renamed from: c */
        public final Uri f12290c;

        public C3813b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f12288a = uri;
            this.f12289b = clipDescription;
            this.f12290c = uri2;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: a */
        public Object mo1781a() {
            return null;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: b */
        public Uri mo1780b() {
            return this.f12288a;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: c */
        public void mo1779c() {
        }

        @Override // p185o0.C3811f.AbstractC3814c
        /* renamed from: d */
        public Uri mo1778d() {
            return this.f12290c;
        }

        @Override // p185o0.C3811f.AbstractC3814c
        public ClipDescription getDescription() {
            return this.f12289b;
        }
    }

    /* renamed from: o0.f$c */
    /* loaded from: classes-dex2jar.jar:o0/f$c.class */
    public interface AbstractC3814c {
        /* renamed from: a */
        Object mo1781a();

        /* renamed from: b */
        Uri mo1780b();

        /* renamed from: c */
        void mo1779c();

        /* renamed from: d */
        Uri mo1778d();

        ClipDescription getDescription();
    }

    public C3811f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f12286a = new C3812a(uri, clipDescription, uri2);
        } else {
            this.f12286a = new C3813b(uri, clipDescription, uri2);
        }
    }

    public C3811f(AbstractC3814c abstractC3814c) {
        this.f12286a = abstractC3814c;
    }
}
