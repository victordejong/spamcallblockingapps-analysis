package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.engine.AbstractC1745i;
import com.bumptech.glide.load.p083c.p088e.C1643c;
import com.bumptech.glide.p070c.AbstractC1364c;
import com.bumptech.glide.p070c.AbstractC1366d;
import com.bumptech.glide.p070c.AbstractC1371h;
import com.bumptech.glide.p070c.AbstractC1372i;
import com.bumptech.glide.p070c.AbstractC1379m;
import com.bumptech.glide.p070c.C1380n;
import com.bumptech.glide.p070c.C1383p;
import com.bumptech.glide.p073f.AbstractC1414b;
import com.bumptech.glide.p073f.C1422e;
import com.bumptech.glide.p073f.p074a.AbstractC1410h;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i.class */
public class C1459i implements AbstractC1372i {

    /* renamed from: d */
    private static final C1422e f4772d = C1422e.m17137a(Bitmap.class).m17120i();

    /* renamed from: e */
    private static final C1422e f4773e = C1422e.m17137a(C1643c.class).m17120i();

    /* renamed from: f */
    private static final C1422e f4774f = C1422e.m17142a(AbstractC1745i.f5303c).m17146a(EnumC1428g.LOW).m17128b(true);

    /* renamed from: a */
    protected final ComponentCallbacks2C1361c f4775a;

    /* renamed from: b */
    protected final Context f4776b;

    /* renamed from: c */
    final AbstractC1371h f4777c;

    /* renamed from: g */
    private final C1380n f4778g;

    /* renamed from: h */
    private final AbstractC1379m f4779h;

    /* renamed from: i */
    private final C1383p f4780i;

    /* renamed from: j */
    private final Runnable f4781j;

    /* renamed from: k */
    private final Handler f4782k;

    /* renamed from: l */
    private final AbstractC1364c f4783l;

    /* renamed from: m */
    private C1422e f4784m;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/i$a.class */
    public static class C1462a implements AbstractC1364c.AbstractC1365a {

        /* renamed from: a */
        private final C1380n f4788a;

        C1462a(C1380n c1380n) {
            this.f4788a = c1380n;
        }

        @Override // com.bumptech.glide.p070c.AbstractC1364c.AbstractC1365a
        /* renamed from: a */
        public void mo16948a(boolean z) {
            if (z) {
                this.f4788a.m17252d();
            }
        }
    }

    public C1459i(ComponentCallbacks2C1361c componentCallbacks2C1361c, AbstractC1371h abstractC1371h, AbstractC1379m abstractC1379m, Context context) {
        this(componentCallbacks2C1361c, abstractC1371h, abstractC1379m, new C1380n(), componentCallbacks2C1361c.m17298d(), context);
    }

    C1459i(ComponentCallbacks2C1361c componentCallbacks2C1361c, AbstractC1371h abstractC1371h, AbstractC1379m abstractC1379m, C1380n c1380n, AbstractC1366d abstractC1366d, Context context) {
        this.f4780i = new C1383p();
        this.f4781j = new Runnable() { // from class: com.bumptech.glide.i.1
            @Override // java.lang.Runnable
            public void run() {
                C1459i.this.f4777c.mo17283a(C1459i.this);
            }
        };
        this.f4782k = new Handler(Looper.getMainLooper());
        this.f4775a = componentCallbacks2C1361c;
        this.f4777c = abstractC1371h;
        this.f4779h = abstractC1379m;
        this.f4778g = c1380n;
        this.f4776b = context;
        this.f4783l = abstractC1366d.mo17284a(context.getApplicationContext(), new C1462a(c1380n));
        if (C1457j.m16966c()) {
            this.f4782k.post(this.f4781j);
        } else {
            abstractC1371h.mo17283a(this);
        }
        abstractC1371h.mo17283a(this.f4783l);
        m16962a(componentCallbacks2C1361c.m17296e().m17227a());
        componentCallbacks2C1361c.m17305a(this);
    }

    /* renamed from: c */
    private void m16954c(AbstractC1410h<?> abstractC1410h) {
        if (m16957b(abstractC1410h) || this.f4775a.m17306a(abstractC1410h) || abstractC1410h.mo17181b() == null) {
            return;
        }
        AbstractC1414b mo17181b = abstractC1410h.mo17181b();
        abstractC1410h.mo17183a((AbstractC1414b) null);
        mo17181b.mo17074b();
    }

    /* renamed from: a */
    public <ResourceType> C1432h<ResourceType> m16961a(Class<ResourceType> cls) {
        return new C1432h<>(this.f4775a, this, cls, this.f4776b);
    }

    /* renamed from: a */
    public C1432h<Drawable> m16960a(Integer num) {
        return m16950g().m17042a(num);
    }

    /* renamed from: a */
    public C1432h<Drawable> m16959a(String str) {
        return m16950g().m17040a(str);
    }

    /* renamed from: a */
    public void m16965a() {
        C1457j.m16984a();
        this.f4778g.m17258a();
    }

    /* renamed from: a */
    public void m16964a(final AbstractC1410h<?> abstractC1410h) {
        if (abstractC1410h == null) {
            return;
        }
        if (C1457j.m16970b()) {
            m16954c(abstractC1410h);
        } else {
            this.f4782k.post(new Runnable() { // from class: com.bumptech.glide.i.2
                @Override // java.lang.Runnable
                public void run() {
                    C1459i.this.m16964a(abstractC1410h);
                }
            });
        }
    }

    /* renamed from: a */
    public void m16963a(AbstractC1410h<?> abstractC1410h, AbstractC1414b abstractC1414b) {
        this.f4780i.m17238a(abstractC1410h);
        this.f4778g.m17257a(abstractC1414b);
    }

    /* renamed from: a */
    protected void m16962a(C1422e c1422e) {
        this.f4784m = c1422e.clone().m17119j();
    }

    /* renamed from: b */
    public <T> AbstractC1463j<?, T> m16956b(Class<T> cls) {
        return this.f4775a.m17296e().m17225a(cls);
    }

    /* renamed from: b */
    public void m16958b() {
        C1457j.m16984a();
        this.f4778g.m17255b();
    }

    /* renamed from: b */
    public boolean m16957b(AbstractC1410h<?> abstractC1410h) {
        boolean z = true;
        AbstractC1414b mo17181b = abstractC1410h.mo17181b();
        if (mo17181b != null) {
            if (this.f4778g.m17254b(mo17181b)) {
                this.f4780i.m17236b(abstractC1410h);
                abstractC1410h.mo17183a((AbstractC1414b) null);
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: c */
    public void mo16955c() {
        m16958b();
        this.f4780i.mo16955c();
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: d */
    public void mo16953d() {
        m16965a();
        this.f4780i.mo16953d();
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: e */
    public void mo16952e() {
        this.f4780i.mo16952e();
        for (AbstractC1410h<?> abstractC1410h : this.f4780i.m17239a()) {
            m16964a(abstractC1410h);
        }
        this.f4780i.m17237b();
        this.f4778g.m17253c();
        this.f4777c.mo17282b(this);
        this.f4777c.mo17282b(this.f4783l);
        this.f4782k.removeCallbacks(this.f4781j);
        this.f4775a.m17301b(this);
    }

    /* renamed from: f */
    public C1432h<Bitmap> m16951f() {
        return m16961a(Bitmap.class).m17045a(f4772d);
    }

    /* renamed from: g */
    public C1432h<Drawable> m16950g() {
        return m16961a(Drawable.class);
    }

    /* renamed from: h */
    public C1422e m16949h() {
        return this.f4784m;
    }

    public String toString() {
        return super.toString() + "{tracker=" + this.f4778g + ", treeNode=" + this.f4779h + "}";
    }
}
