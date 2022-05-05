package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p444n.p445a.C10798u;
import p081h.p444n.p445a.C10811x;
/* renamed from: h.n.a.y */
/* loaded from: classes2-dex2jar.jar:h/n/a/y.class */
public class C10814y {

    /* renamed from: m */
    public static final AtomicInteger f24739m = new AtomicInteger();

    /* renamed from: a */
    public final C10798u f24740a;

    /* renamed from: b */
    public final C10811x.C10813b f24741b;

    /* renamed from: c */
    public boolean f24742c;

    /* renamed from: d */
    public boolean f24743d;

    /* renamed from: e */
    public boolean f24744e = true;

    /* renamed from: f */
    public int f24745f;

    /* renamed from: g */
    public int f24746g;

    /* renamed from: h */
    public int f24747h;

    /* renamed from: i */
    public int f24748i;

    /* renamed from: j */
    public Drawable f24749j;

    /* renamed from: k */
    public Drawable f24750k;

    /* renamed from: l */
    public Object f24751l;

    public C10814y(C10798u uVar, Uri uri, int i) {
        if (!uVar.f24668o) {
            this.f24740a = uVar;
            this.f24741b = new C10811x.C10813b(uri, i, uVar.f24665l);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    /* renamed from: a */
    public final C10811x m10574a(long j) {
        int andIncrement = f24739m.getAndIncrement();
        C10811x a = this.f24741b.m10582a();
        a.f24702a = andIncrement;
        a.f24703b = j;
        if (this.f24740a.f24667n) {
            C10770e0.m10667a("Main", "created", a.m10583g(), a.toString());
        }
        this.f24740a.m10605a(a);
        return a;
    }

    /* renamed from: a */
    public C10814y m10576a() {
        this.f24751l = null;
        return this;
    }

    /* renamed from: a */
    public C10814y m10575a(int i, int i2) {
        this.f24741b.m10581a(i, i2);
        return this;
    }

    /* renamed from: a */
    public C10814y m10573a(@NonNull Drawable drawable) {
        if (!this.f24744e) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (this.f24745f == 0) {
            this.f24749j = drawable;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    /* renamed from: a */
    public void m10572a(ImageView imageView) {
        m10571a(imageView, (AbstractC10769e) null);
    }

    /* renamed from: a */
    public void m10571a(ImageView imageView, AbstractC10769e eVar) {
        Bitmap b;
        long nanoTime = System.nanoTime();
        C10770e0.m10681a();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f24741b.m10579b()) {
            this.f24740a.m10609a(imageView);
            if (this.f24744e) {
                C10808v.m10593a(imageView, m10568c());
            }
        } else {
            if (this.f24743d) {
                if (!this.f24741b.m10577d()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.f24744e) {
                            C10808v.m10593a(imageView, m10568c());
                        }
                        this.f24740a.m10608a(imageView, new ViewTreeObserver$OnPreDrawListenerC10776h(this, imageView, eVar));
                        return;
                    }
                    this.f24741b.m10581a(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            C10811x a = m10574a(nanoTime);
            String a2 = C10770e0.m10672a(a);
            if (!EnumC10792q.m10619a(this.f24747h) || (b = this.f24740a.m10601b(a2)) == null) {
                if (this.f24744e) {
                    C10808v.m10593a(imageView, m10568c());
                }
                this.f24740a.m10607a((AbstractC10751a) new C10785m(this.f24740a, imageView, a, this.f24747h, this.f24748i, this.f24746g, this.f24750k, a2, this.f24751l, eVar, this.f24742c));
                return;
            }
            this.f24740a.m10609a(imageView);
            C10798u uVar = this.f24740a;
            C10808v.m10594a(imageView, uVar.f24658e, b, C10798u.EnumC10804e.MEMORY, this.f24742c, uVar.f24666m);
            if (this.f24740a.f24667n) {
                String g = a.m10583g();
                C10770e0.m10667a("Main", "completed", g, "from " + C10798u.EnumC10804e.MEMORY);
            }
            if (eVar != null) {
                eVar.onSuccess();
            }
        }
    }

    /* renamed from: a */
    public void m10570a(@Nullable AbstractC10769e eVar) {
        long nanoTime = System.nanoTime();
        if (this.f24743d) {
            throw new IllegalStateException("Fit cannot be used with fetch.");
        } else if (this.f24741b.m10579b()) {
            if (!this.f24741b.m10578c()) {
                this.f24741b.m10580a(C10798u.EnumC10805f.LOW);
            }
            C10811x a = m10574a(nanoTime);
            String a2 = C10770e0.m10671a(a, new StringBuilder());
            if (!EnumC10792q.m10619a(this.f24747h) || this.f24740a.m10601b(a2) == null) {
                this.f24740a.m10600c(new C10783k(this.f24740a, a, this.f24747h, this.f24748i, this.f24751l, a2, eVar));
                return;
            }
            if (this.f24740a.f24667n) {
                String g = a.m10583g();
                C10770e0.m10667a("Main", "completed", g, "from " + C10798u.EnumC10804e.MEMORY);
            }
            if (eVar != null) {
                eVar.onSuccess();
            }
        }
    }

    /* renamed from: b */
    public void m10569b() {
        m10570a((AbstractC10769e) null);
    }

    /* renamed from: c */
    public final Drawable m10568c() {
        int i = this.f24745f;
        if (i == 0) {
            return this.f24749j;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return this.f24740a.f24658e.getDrawable(i);
        }
        if (i2 >= 16) {
            return this.f24740a.f24658e.getResources().getDrawable(this.f24745f);
        }
        TypedValue typedValue = new TypedValue();
        this.f24740a.f24658e.getResources().getValue(this.f24745f, typedValue, true);
        return this.f24740a.f24658e.getResources().getDrawable(typedValue.resourceId);
    }

    /* renamed from: d */
    public C10814y m10567d() {
        this.f24743d = false;
        return this;
    }
}
