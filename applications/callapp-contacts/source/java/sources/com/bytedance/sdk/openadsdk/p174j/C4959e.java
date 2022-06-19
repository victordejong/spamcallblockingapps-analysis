package com.bytedance.sdk.openadsdk.p174j;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4215l;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.adnet.p141b.C4159b;
import com.bytedance.sdk.adnet.p141b.C4166d;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p174j.p175a.C4943b;
/* renamed from: com.bytedance.sdk.openadsdk.j.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/e.class */
public class C4959e {

    /* renamed from: a */
    private static volatile C4959e f18022a;

    /* renamed from: c */
    private static IHttpStack f18023c;

    /* renamed from: b */
    private Context f18024b = C4600n.m34815a();

    /* renamed from: d */
    private C4215l f18025d;

    /* renamed from: e */
    private C4159b f18026e;

    /* renamed from: f */
    private C4215l f18027f;

    /* renamed from: g */
    private C4215l f18028g;

    /* renamed from: h */
    private C4166d f18029h;

    /* renamed from: i */
    private C4943b f18030i;

    /* renamed from: com.bytedance.sdk.openadsdk.j.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/e$a.class */
    public static class C4960a implements C4166d.AbstractC4179e {

        /* renamed from: a */
        private ImageView f18031a;

        /* renamed from: b */
        private final String f18032b;

        /* renamed from: c */
        private final int f18033c;

        /* renamed from: d */
        private final int f18034d;

        C4960a(ImageView imageView, String str, int i, int i2) {
            this.f18031a = imageView;
            this.f18032b = str;
            this.f18033c = i;
            this.f18034d = i2;
            if (imageView != null) {
                imageView.setTag(1094453505, str);
            }
        }

        /* renamed from: c */
        private boolean m33418c() {
            Object tag;
            ImageView imageView = this.f18031a;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(this.f18032b)) ? false : true;
        }

        @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
        /* renamed from: a */
        public void mo33424a() {
            int i;
            ImageView imageView = this.f18031a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f18031a.getContext()).isFinishing()) && this.f18031a != null && m33418c() && (i = this.f18033c) != 0) {
                this.f18031a.setImageResource(i);
            }
        }

        @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
        /* renamed from: a */
        public void mo33423a(C4166d.C4177c c4177c, boolean z) {
            ImageView imageView = this.f18031a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f18031a.getContext()).isFinishing()) && this.f18031a != null && m33418c() && c4177c.m36241a() != null) {
                this.f18031a.setImageBitmap(c4177c.m36241a());
            }
        }

        @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
        /* renamed from: a */
        public void mo33422a(C4218m<Bitmap> c4218m) {
        }

        @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
        /* renamed from: a */
        public boolean mo33421a(byte[] bArr) {
            return false;
        }

        @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
        /* renamed from: b */
        public void mo33420b() {
            this.f18031a = null;
        }

        @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
        /* renamed from: b */
        public void mo33419b(C4218m<Bitmap> c4218m) {
            ImageView imageView = this.f18031a;
            if ((imageView == null || !(imageView.getContext() instanceof Activity) || !((Activity) this.f18031a.getContext()).isFinishing()) && this.f18031a != null && this.f18034d != 0 && m33418c()) {
                this.f18031a.setImageResource(this.f18034d);
            }
        }
    }

    private C4959e() {
    }

    /* renamed from: a */
    public static IHttpStack m33441a() {
        return f18023c;
    }

    /* renamed from: a */
    public static C4960a m33438a(String str, ImageView imageView, int i, int i2) {
        return new C4960a(imageView, str, i, i2);
    }

    /* renamed from: a */
    public static void m33440a(IHttpStack iHttpStack) {
        f18023c = iHttpStack;
    }

    /* renamed from: b */
    public static C4203e m33435b() {
        return new C4203e();
    }

    /* renamed from: c */
    public static C4959e m33434c() {
        if (f18022a == null) {
            synchronized (C4959e.class) {
                try {
                    if (f18022a == null) {
                        f18022a = new C4959e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18022a;
    }

    /* renamed from: i */
    private void m33428i() {
        if (this.f18030i == null) {
            m33425l();
            this.f18030i = new C4943b(this.f18028g);
        }
    }

    /* renamed from: j */
    private void m33427j() {
        if (this.f18029h == null) {
            m33425l();
            this.f18029h = new C4166d(this.f18028g, C4939a.m33490a());
        }
    }

    /* renamed from: k */
    private void m33426k() {
        if (this.f18025d == null) {
            this.f18025d = C4151a.m36307a(this.f18024b, m33441a(), 2);
        }
    }

    /* renamed from: l */
    private void m33425l() {
        if (this.f18028g == null) {
            this.f18028g = C4151a.m36307a(this.f18024b, (IHttpStack) null, 3);
        }
    }

    /* renamed from: a */
    public void m33439a(String str, ImageView imageView) {
        m33437a(str, imageView, m33438a(str, imageView, 0, 0));
    }

    /* renamed from: a */
    public void m33437a(String str, ImageView imageView, C4166d.AbstractC4179e abstractC4179e) {
        m33427j();
        this.f18029h.m36258a(str, abstractC4179e);
    }

    /* renamed from: a */
    public void m33436a(String str, C4159b.AbstractC4161a abstractC4161a) {
        m33426k();
        if (this.f18026e == null) {
            this.f18026e = new C4159b(this.f18024b, this.f18025d);
        }
        this.f18026e.m36276a(str, abstractC4161a);
    }

    /* renamed from: d */
    public C4215l m33433d() {
        m33426k();
        return this.f18025d;
    }

    /* renamed from: e */
    public C4215l m33432e() {
        m33425l();
        return this.f18028g;
    }

    /* renamed from: f */
    public C4215l m33431f() {
        if (this.f18027f == null) {
            this.f18027f = C4151a.m36307a(this.f18024b, (IHttpStack) null, 2);
        }
        return this.f18027f;
    }

    /* renamed from: g */
    public C4943b m33430g() {
        m33428i();
        return this.f18030i;
    }

    /* renamed from: h */
    public C4166d m33429h() {
        m33427j();
        return this.f18029h;
    }
}
