package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.squareup.picasso.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a.class */
abstract class AbstractC0169a<T> {

    /* renamed from: a */
    final Picasso f279a;

    /* renamed from: b */
    final C0204w f280b;

    /* renamed from: c */
    final WeakReference<T> f281c;

    /* renamed from: d */
    final boolean f282d;

    /* renamed from: e */
    final int f283e;

    /* renamed from: f */
    final int f284f;

    /* renamed from: g */
    final int f285g;

    /* renamed from: h */
    final Drawable f286h;

    /* renamed from: i */
    final String f287i;

    /* renamed from: j */
    final Object f288j;

    /* renamed from: k */
    boolean f289k;

    /* renamed from: l */
    boolean f290l;

    /* renamed from: com.squareup.picasso.a$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a$a.class */
    static class C0170a<M> extends WeakReference<M> {

        /* renamed from: a */
        final AbstractC0169a f291a;

        C0170a(AbstractC0169a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f291a = aVar;
        }
    }

    AbstractC0169a(Picasso picasso, T t, C0204w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f279a = picasso;
        this.f280b = wVar;
        this.f281c = t == null ? null : new C0170a(this, t, picasso.referenceQueue);
        this.f283e = i;
        this.f284f = i2;
        this.f282d = z;
        this.f285g = i3;
        this.f286h = drawable;
        this.f287i = str;
        this.f288j = obj == null ? this : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m854a() {
        this.f290l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void m853b(Bitmap bitmap, Picasso.EnumC0166e eVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract void m852c(Exception exc);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m851d() {
        return this.f287i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m850e() {
        return this.f283e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m849f() {
        return this.f284f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public Picasso m848g() {
        return this.f279a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Picasso.EnumC0167f m847h() {
        return this.f280b.f418t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public C0204w m846i() {
        return this.f280b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public Object m845j() {
        return this.f288j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public T m844k() {
        WeakReference<T> weakReference = this.f281c;
        return weakReference == null ? null : weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public boolean m843l() {
        return this.f290l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public boolean m842m() {
        return this.f289k;
    }
}
