package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.a */
/* loaded from: classes2-dex2jar.jar:h/n/a/a.class */
public abstract class AbstractC10751a<T> {

    /* renamed from: a */
    public final C10798u f24514a;

    /* renamed from: b */
    public final C10811x f24515b;

    /* renamed from: c */
    public final WeakReference<T> f24516c;

    /* renamed from: d */
    public final boolean f24517d;

    /* renamed from: e */
    public final int f24518e;

    /* renamed from: f */
    public final int f24519f;

    /* renamed from: g */
    public final int f24520g;

    /* renamed from: h */
    public final Drawable f24521h;

    /* renamed from: i */
    public final String f24522i;

    /* renamed from: j */
    public final Object f24523j;

    /* renamed from: k */
    public boolean f24524k;

    /* renamed from: l */
    public boolean f24525l;

    /* renamed from: h.n.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/a$a.class */
    public static class C10752a<M> extends WeakReference<M> {

        /* renamed from: a */
        public final AbstractC10751a f24526a;

        public C10752a(AbstractC10751a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f24526a = aVar;
        }
    }

    public AbstractC10751a(C10798u uVar, T t, C10811x xVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f24514a = uVar;
        this.f24515b = xVar;
        this.f24516c = t == null ? null : new C10752a(this, t, uVar.f24664k);
        this.f24518e = i;
        this.f24519f = i2;
        this.f24517d = z;
        this.f24520g = i3;
        this.f24521h = drawable;
        this.f24522i = str;
        this.f24523j = obj == null ? this : obj;
    }

    /* renamed from: a */
    public void mo10632a() {
        this.f24525l = true;
    }

    /* renamed from: a */
    public abstract void mo10631a(Bitmap bitmap, C10798u.EnumC10804e eVar);

    /* renamed from: a */
    public abstract void mo10630a(Exception exc);

    /* renamed from: b */
    public String m10735b() {
        return this.f24522i;
    }

    /* renamed from: c */
    public int m10734c() {
        return this.f24518e;
    }

    /* renamed from: d */
    public int m10733d() {
        return this.f24519f;
    }

    /* renamed from: e */
    public C10798u m10732e() {
        return this.f24514a;
    }

    /* renamed from: f */
    public C10798u.EnumC10805f m10731f() {
        return this.f24515b.f24721t;
    }

    /* renamed from: g */
    public C10811x m10730g() {
        return this.f24515b;
    }

    /* renamed from: h */
    public Object m10729h() {
        return this.f24523j;
    }

    /* renamed from: i */
    public T mo10634i() {
        WeakReference<T> weakReference = this.f24516c;
        return weakReference == null ? null : weakReference.get();
    }

    /* renamed from: j */
    public boolean m10728j() {
        return this.f24525l;
    }

    /* renamed from: k */
    public boolean m10727k() {
        return this.f24524k;
    }
}
