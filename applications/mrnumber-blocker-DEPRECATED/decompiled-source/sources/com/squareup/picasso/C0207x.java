package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import com.squareup.picasso.C0204w;
import com.squareup.picasso.Picasso;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.squareup.picasso.x */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/x.class */
public class C0207x {

    /* renamed from: m */
    private static final AtomicInteger f436m = new AtomicInteger();

    /* renamed from: a */
    private final Picasso f437a;

    /* renamed from: b */
    private final C0204w.C0206b f438b;

    /* renamed from: c */
    private boolean f439c;

    /* renamed from: d */
    private boolean f440d;

    /* renamed from: e */
    private boolean f441e = true;

    /* renamed from: f */
    private int f442f;

    /* renamed from: g */
    private int f443g;

    /* renamed from: h */
    private int f444h;

    /* renamed from: i */
    private int f445i;

    /* renamed from: j */
    private Drawable f446j;

    /* renamed from: k */
    private Drawable f447k;

    /* renamed from: l */
    private Object f448l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0207x(Picasso picasso, Uri uri, int i) {
        if (!picasso.shutdown) {
            this.f437a = picasso;
            this.f438b = new C0204w.C0206b(uri, i, picasso.defaultBitmapConfig);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    /* renamed from: c */
    private C0204w m714c(long j) {
        int andIncrement = f436m.getAndIncrement();
        C0204w a = this.f438b.m722a();
        a.f399a = andIncrement;
        a.f400b = j;
        boolean z = this.f437a.loggingEnabled;
        if (z) {
            C0185f0.m774t("Main", "created", a.m723g(), a.toString());
        }
        C0204w transformRequest = this.f437a.transformRequest(a);
        if (transformRequest != a) {
            transformRequest.f399a = andIncrement;
            transformRequest.f400b = j;
            if (z) {
                String d = transformRequest.m726d();
                C0185f0.m774t("Main", "changed", d, "into " + transformRequest);
            }
        }
        return transformRequest;
    }

    /* renamed from: e */
    private Drawable m712e() {
        int i = this.f442f;
        if (i == 0) {
            return this.f446j;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return this.f437a.context.getDrawable(i);
        }
        if (i2 >= 16) {
            return this.f437a.context.getResources().getDrawable(this.f442f);
        }
        TypedValue typedValue = new TypedValue();
        this.f437a.context.getResources().getValue(this.f442f, typedValue, true);
        return this.f437a.context.getResources().getDrawable(typedValue.resourceId);
    }

    /* renamed from: a */
    public C0207x m716a() {
        this.f438b.m721b(17);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C0207x m715b() {
        this.f448l = null;
        return this;
    }

    /* renamed from: d */
    public C0207x m713d() {
        this.f440d = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Object m711f() {
        return this.f448l;
    }

    /* renamed from: g */
    public void m710g(ImageView imageView) {
        m709h(imageView, null);
    }

    /* renamed from: h */
    public void m709h(ImageView imageView, AbstractC0183e eVar) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C0185f0.m791c();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f438b.m720c()) {
            this.f437a.cancelRequest(imageView);
            if (this.f441e) {
                C0200t.m733d(imageView, m712e());
            }
        } else {
            if (this.f440d) {
                if (!this.f438b.m719d()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.f441e) {
                            C0200t.m733d(imageView, m712e());
                        }
                        this.f437a.defer(imageView, new ViewTreeObserver$OnPreDrawListenerC0189h(this, imageView, eVar));
                        return;
                    }
                    this.f438b.m718e(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            C0204w c = m714c(nanoTime);
            String f = C0185f0.m788f(c);
            if (!EnumC0198p.shouldReadFromMemoryCache(this.f444h) || (quickMemoryCacheCheck = this.f437a.quickMemoryCacheCheck(f)) == null) {
                if (this.f441e) {
                    C0200t.m733d(imageView, m712e());
                }
                this.f437a.enqueueAndSubmit(new l(this.f437a, imageView, c, this.f444h, this.f445i, this.f443g, this.f447k, f, this.f448l, eVar, this.f439c));
                return;
            }
            this.f437a.cancelRequest(imageView);
            Picasso picasso = this.f437a;
            Context context = picasso.context;
            Picasso.EnumC0166e eVar2 = Picasso.EnumC0166e.MEMORY;
            C0200t.m734c(imageView, context, quickMemoryCacheCheck, eVar2, this.f439c, picasso.indicatorsEnabled);
            if (this.f437a.loggingEnabled) {
                String g = c.m723g();
                C0185f0.m774t("Main", "completed", g, "from " + eVar2);
            }
            if (eVar != null) {
                eVar.onSuccess();
            }
        }
    }

    /* renamed from: i */
    public void m708i(AbstractC0181c0 c0Var) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C0185f0.m791c();
        if (c0Var == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f440d) {
            Drawable drawable = null;
            Drawable drawable2 = null;
            if (!this.f438b.m720c()) {
                this.f437a.cancelRequest(c0Var);
                if (this.f441e) {
                    drawable2 = m712e();
                }
                c0Var.onPrepareLoad(drawable2);
                return;
            }
            C0204w c = m714c(nanoTime);
            String f = C0185f0.m788f(c);
            if (!EnumC0198p.shouldReadFromMemoryCache(this.f444h) || (quickMemoryCacheCheck = this.f437a.quickMemoryCacheCheck(f)) == null) {
                if (this.f441e) {
                    drawable = m712e();
                }
                c0Var.onPrepareLoad(drawable);
                this.f437a.enqueueAndSubmit(new d0(this.f437a, c0Var, c, this.f444h, this.f445i, this.f447k, f, this.f448l, this.f443g));
                return;
            }
            this.f437a.cancelRequest(c0Var);
            c0Var.m798b(quickMemoryCacheCheck, Picasso.EnumC0166e.MEMORY);
        } else {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
    }

    /* renamed from: j */
    public C0207x m707j() {
        this.f439c = true;
        return this;
    }

    /* renamed from: k */
    public C0207x m706k() {
        if (this.f442f != 0) {
            throw new IllegalStateException("Placeholder resource already set.");
        } else if (this.f446j == null) {
            this.f441e = false;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    /* renamed from: l */
    public C0207x m705l(int i) {
        if (!this.f441e) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        } else if (this.f446j == null) {
            this.f442f = i;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    /* renamed from: m */
    public C0207x m704m(int i, int i2) {
        this.f438b.m718e(i, i2);
        return this;
    }

    /* renamed from: n */
    public C0207x m703n(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Tag invalid.");
        } else if (this.f448l == null) {
            this.f448l = obj;
            return this;
        } else {
            throw new IllegalStateException("Tag already set.");
        }
    }

    /* renamed from: o */
    public C0207x m702o(AbstractC0184e0 e0Var) {
        this.f438b.m717f(e0Var);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public C0207x m701p() {
        this.f440d = false;
        return this;
    }
}
