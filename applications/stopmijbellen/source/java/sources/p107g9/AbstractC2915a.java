package p107g9;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import p107g9.C2953s;
/* renamed from: g9.a */
/* loaded from: classes2-dex2jar.jar:g9/a.class */
public abstract class AbstractC2915a<T> {

    /* renamed from: a */
    public final C2953s f9819a;

    /* renamed from: b */
    public final C2964v f9820b;

    /* renamed from: c */
    public final WeakReference<T> f9821c;

    /* renamed from: d */
    public final boolean f9822d;

    /* renamed from: e */
    public final int f9823e;

    /* renamed from: f */
    public final int f9824f;

    /* renamed from: g */
    public final int f9825g;

    /* renamed from: h */
    public final Drawable f9826h;

    /* renamed from: i */
    public final String f9827i;

    /* renamed from: j */
    public final Object f9828j;

    /* renamed from: k */
    public boolean f9829k;

    /* renamed from: l */
    public boolean f9830l;

    /* renamed from: g9.a$a */
    /* loaded from: classes2-dex2jar.jar:g9/a$a.class */
    public static class C2916a<M> extends WeakReference<M> {

        /* renamed from: a */
        public final AbstractC2915a f9831a;

        public C2916a(AbstractC2915a abstractC2915a, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f9831a = abstractC2915a;
        }
    }

    public AbstractC2915a(C2953s c2953s, T t, C2964v c2964v, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f9819a = c2953s;
        this.f9820b = c2964v;
        this.f9821c = t == null ? null : new C2916a(this, t, c2953s.f9931j);
        this.f9823e = i;
        this.f9824f = i2;
        this.f9822d = z;
        this.f9825g = i3;
        this.f9826h = drawable;
        this.f9827i = str;
        this.f9828j = obj != null ? obj : this;
    }

    /* renamed from: a */
    public void mo2830a() {
        this.f9830l = true;
    }

    /* renamed from: b */
    public abstract void mo2829b(Bitmap bitmap, C2953s.EnumC2958d enumC2958d);

    /* renamed from: c */
    public abstract void mo2828c(Exception exc);

    /* renamed from: d */
    public T m2852d() {
        WeakReference<T> weakReference = this.f9821c;
        return weakReference == null ? null : weakReference.get();
    }
}
