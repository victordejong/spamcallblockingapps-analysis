package com.bytedance.sdk.openadsdk.j;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.b.b;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.l;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.core.n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static volatile e f9655a;

    /* renamed from: c  reason: collision with root package name */
    private static IHttpStack f9656c;

    /* renamed from: b  reason: collision with root package name */
    private Context f9657b = n.a();

    /* renamed from: d  reason: collision with root package name */
    private l f9658d;
    private b e;
    private l f;
    private l g;
    private d h;
    private com.bytedance.sdk.openadsdk.j.a.b i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/e$a.class */
    public static class a implements d.e {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f9659a;

        /* renamed from: b  reason: collision with root package name */
        private final String f9660b;

        /* renamed from: c  reason: collision with root package name */
        private final int f9661c;

        /* renamed from: d  reason: collision with root package name */
        private final int f9662d;

        a(ImageView imageView, String str, int i, int i2) {
            this.f9659a = imageView;
            this.f9660b = str;
            this.f9661c = i;
            this.f9662d = i2;
            if (imageView != null) {
                imageView.setTag(1094453505, str);
            }
        }

        private boolean c() {
            Object tag;
            ImageView imageView = this.f9659a;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(this.f9660b)) ? false : true;
        }

        @Override // com.bytedance.sdk.adnet.b.d.e
        public void a() {
            int i;
            ImageView imageView = this.f9659a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f9659a.getContext()).isFinishing()) && this.f9659a != null && c() && (i = this.f9661c) != 0) {
                this.f9659a.setImageResource(i);
            }
        }

        @Override // com.bytedance.sdk.adnet.b.d.e
        public void a(d.c cVar, boolean z) {
            ImageView imageView = this.f9659a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f9659a.getContext()).isFinishing()) && this.f9659a != null && c() && cVar.a() != null) {
                this.f9659a.setImageBitmap(cVar.a());
            }
        }

        @Override // com.bytedance.sdk.adnet.core.m.a
        public void a(m<Bitmap> mVar) {
        }

        @Override // com.bytedance.sdk.adnet.b.d.e
        public boolean a(byte[] bArr) {
            return false;
        }

        @Override // com.bytedance.sdk.adnet.b.d.e
        public void b() {
            this.f9659a = null;
        }

        @Override // com.bytedance.sdk.adnet.core.m.a
        public void b(m<Bitmap> mVar) {
            ImageView imageView = this.f9659a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f9659a.getContext()).isFinishing()) && this.f9659a != null && this.f9662d != 0 && c()) {
                this.f9659a.setImageResource(this.f9662d);
            }
        }
    }

    private e() {
    }

    public static IHttpStack a() {
        return f9656c;
    }

    public static a a(String str, ImageView imageView, int i, int i2) {
        return new a(imageView, str, i, i2);
    }

    public static void a(IHttpStack iHttpStack) {
        f9656c = iHttpStack;
    }

    public static com.bytedance.sdk.adnet.core.e b() {
        return new com.bytedance.sdk.adnet.core.e();
    }

    public static e c() {
        if (f9655a == null) {
            synchronized (e.class) {
                try {
                    if (f9655a == null) {
                        f9655a = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9655a;
    }

    private void i() {
        if (this.i == null) {
            l();
            this.i = new com.bytedance.sdk.openadsdk.j.a.b(this.g);
        }
    }

    private void j() {
        if (this.h == null) {
            l();
            this.h = new d(this.g, com.bytedance.sdk.openadsdk.j.a.a());
        }
    }

    private void k() {
        if (this.f9658d == null) {
            this.f9658d = com.bytedance.sdk.adnet.a.a(this.f9657b, a(), 2);
        }
    }

    private void l() {
        if (this.g == null) {
            this.g = com.bytedance.sdk.adnet.a.a(this.f9657b, (IHttpStack) null, 3);
        }
    }

    public void a(String str, ImageView imageView) {
        a(str, imageView, a(str, imageView, 0, 0));
    }

    public void a(String str, ImageView imageView, d.e eVar) {
        j();
        this.h.a(str, eVar);
    }

    public void a(String str, b.a aVar) {
        k();
        if (this.e == null) {
            this.e = new b(this.f9657b, this.f9658d);
        }
        this.e.a(str, aVar);
    }

    public l d() {
        k();
        return this.f9658d;
    }

    public l e() {
        l();
        return this.g;
    }

    public l f() {
        if (this.f == null) {
            this.f = com.bytedance.sdk.adnet.a.a(this.f9657b, (IHttpStack) null, 2);
        }
        return this.f;
    }

    public com.bytedance.sdk.openadsdk.j.a.b g() {
        i();
        return this.i;
    }

    public d h() {
        j();
        return this.h;
    }
}
