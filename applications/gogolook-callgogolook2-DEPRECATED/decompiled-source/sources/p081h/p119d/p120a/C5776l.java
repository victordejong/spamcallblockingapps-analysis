package p081h.p119d.p120a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.C5828c;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h;
import p081h.p119d.p120a.p124s.p126i.p130q.C5899a;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5904d;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p131j.p132s.C5925a;
import p081h.p119d.p120a.p124s.p131j.p132s.C5928c;
import p081h.p119d.p120a.p124s.p131j.p132s.C5930d;
import p081h.p119d.p120a.p124s.p131j.p132s.C5932e;
import p081h.p119d.p120a.p124s.p131j.p133t.C5934a;
import p081h.p119d.p120a.p124s.p131j.p133t.C5936b;
import p081h.p119d.p120a.p124s.p131j.p133t.C5938c;
import p081h.p119d.p120a.p124s.p131j.p133t.C5941e;
import p081h.p119d.p120a.p124s.p131j.p133t.C5943f;
import p081h.p119d.p120a.p124s.p131j.p133t.C5945g;
import p081h.p119d.p120a.p124s.p131j.p133t.C5947h;
import p081h.p119d.p120a.p124s.p134k.p135e.C5957e;
import p081h.p119d.p120a.p124s.p134k.p135e.C5962g;
import p081h.p119d.p120a.p124s.p134k.p135e.C5964i;
import p081h.p119d.p120a.p124s.p134k.p135e.C5965j;
import p081h.p119d.p120a.p124s.p134k.p135e.C5969m;
import p081h.p119d.p120a.p124s.p134k.p135e.C5972o;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p124s.p134k.p138h.C5984d;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p124s.p134k.p139i.C5990c;
import p081h.p119d.p120a.p124s.p134k.p140j.C6007a;
import p081h.p119d.p120a.p124s.p134k.p140j.C6014f;
import p081h.p119d.p120a.p124s.p134k.p140j.C6015g;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p124s.p134k.p141k.C6017b;
import p081h.p119d.p120a.p124s.p134k.p141k.C6018c;
import p081h.p119d.p120a.p124s.p134k.p141k.C6020e;
import p081h.p119d.p120a.p142t.C6036k;
import p081h.p119d.p120a.p143u.AbstractC6042a;
import p081h.p119d.p120a.p143u.C6043b;
import p081h.p119d.p120a.p144v.AbstractC6045b;
import p081h.p119d.p120a.p144v.C6046c;
import p081h.p119d.p120a.p145w.AbstractC6053c;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p081h.p119d.p120a.p145w.p147j.AbstractC6083l;
import p081h.p119d.p120a.p145w.p147j.C6076f;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.l */
/* loaded from: classes-dex2jar.jar:h/d/a/l.class */
public class C5776l {

    /* renamed from: n */
    public static volatile C5776l f14468n;

    /* renamed from: o */
    public static boolean f14469o = true;

    /* renamed from: a */
    public final C5902c f14470a;

    /* renamed from: b */
    public final C5828c f14471b;

    /* renamed from: c */
    public final AbstractC5856c f14472c;

    /* renamed from: d */
    public final AbstractC5884h f14473d;

    /* renamed from: e */
    public final EnumC5804a f14474e;

    /* renamed from: i */
    public final C5957e f14478i;

    /* renamed from: j */
    public final C6014f f14479j;

    /* renamed from: k */
    public final C5964i f14480k;

    /* renamed from: l */
    public final C6014f f14481l;

    /* renamed from: f */
    public final C6076f f14475f = new C6076f();

    /* renamed from: g */
    public final C6020e f14476g = new C6020e();

    /* renamed from: m */
    public final Handler f14482m = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    public final C6046c f14477h = new C6046c();

    /* renamed from: h.d.a.l$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/l$a.class */
    public static class C5777a extends AbstractC6083l<View, Object> {
        public C5777a(View view) {
            super(view);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo6306a(Drawable drawable) {
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2453a(Exception exc, Drawable drawable) {
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2507a(Object obj, AbstractC6063c<? super Object> cVar) {
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: b */
        public void mo23908b(Drawable drawable) {
        }
    }

    public C5776l(C5828c cVar, AbstractC5884h hVar, AbstractC5856c cVar2, Context context, EnumC5804a aVar) {
        this.f14471b = cVar;
        this.f14472c = cVar2;
        this.f14473d = hVar;
        this.f14474e = aVar;
        this.f14470a = new C5902c(context);
        new C5899a(hVar, cVar2, aVar);
        C5972o oVar = new C5972o(cVar2, aVar);
        this.f14477h.m23973a(InputStream.class, Bitmap.class, oVar);
        C5962g gVar = new C5962g(cVar2, aVar);
        this.f14477h.m23973a(ParcelFileDescriptor.class, Bitmap.class, gVar);
        C5969m mVar = new C5969m(oVar, gVar);
        this.f14477h.m23973a(C5909g.class, Bitmap.class, mVar);
        C5990c cVar3 = new C5990c(context, cVar2);
        this.f14477h.m23973a(InputStream.class, C5988b.class, cVar3);
        this.f14477h.m23973a(C5909g.class, C6007a.class, new C6015g(mVar, cVar3, cVar2));
        this.f14477h.m23973a(InputStream.class, File.class, new C5984d());
        m24476a(File.class, ParcelFileDescriptor.class, new C5925a.C5926a());
        m24476a(File.class, InputStream.class, new C5938c.C5939a());
        m24476a(Integer.TYPE, ParcelFileDescriptor.class, new C5928c.C5929a());
        m24476a(Integer.TYPE, InputStream.class, new C5941e.C5942a());
        m24476a(Integer.class, ParcelFileDescriptor.class, new C5928c.C5929a());
        m24476a(Integer.class, InputStream.class, new C5941e.C5942a());
        m24476a(String.class, ParcelFileDescriptor.class, new C5930d.C5931a());
        m24476a(String.class, InputStream.class, new C5943f.C5944a());
        m24476a(Uri.class, ParcelFileDescriptor.class, new C5932e.C5933a());
        m24476a(Uri.class, InputStream.class, new C5945g.C5946a());
        m24476a(URL.class, InputStream.class, new C5947h.C5948a());
        m24476a(C5904d.class, InputStream.class, new C5934a.C5935a());
        m24476a(byte[].class, InputStream.class, new C5936b.C5937a());
        this.f14476g.m24023a(Bitmap.class, C5965j.class, new C6018c(context.getResources(), cVar2));
        this.f14476g.m24023a(C6007a.class, AbstractC5979b.class, new C6017b(new C6018c(context.getResources(), cVar2)));
        this.f14478i = new C5957e(cVar2);
        this.f14479j = new C6014f(cVar2, this.f14478i);
        this.f14480k = new C5964i(cVar2);
        this.f14481l = new C6014f(cVar2, this.f14480k);
    }

    /* renamed from: a */
    public static C5776l m24484a(Context context) {
        if (f14468n == null) {
            synchronized (C5776l.class) {
                try {
                    if (f14468n == null) {
                        Context applicationContext = context.getApplicationContext();
                        C5778m mVar = new C5778m(applicationContext);
                        List<AbstractC6042a> b = m24474b(applicationContext);
                        for (AbstractC6042a aVar : b) {
                            aVar.mo23979a(applicationContext, mVar);
                        }
                        f14468n = mVar.m24461a();
                        for (AbstractC6042a aVar2 : b) {
                            aVar2.mo23980a(applicationContext, f14468n);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f14468n;
    }

    /* renamed from: a */
    public static C5780o m24481a(FragmentActivity fragmentActivity) {
        return C6036k.m24001a().m23995a(fragmentActivity);
    }

    /* renamed from: a */
    public static <T> AbstractC5918l<T, ParcelFileDescriptor> m24479a(Class<T> cls, Context context) {
        return m24477a(cls, ParcelFileDescriptor.class, context);
    }

    /* renamed from: a */
    public static <T, Y> AbstractC5918l<T, Y> m24477a(Class<T> cls, Class<Y> cls2, Context context) {
        if (cls != null) {
            return m24484a(context).m24463j().m24161a(cls, cls2);
        }
        Log.isLoggable("Glide", 3);
        return null;
    }

    /* renamed from: a */
    public static void m24483a(View view) {
        m24480a(new C5777a(view));
    }

    /* renamed from: a */
    public static void m24480a(AbstractC6082k<?> kVar) {
        C6096h.m23856b();
        AbstractC6053c a = kVar.mo23907a();
        if (a != null) {
            a.clear();
            kVar.mo23906a((AbstractC6053c) null);
        }
    }

    /* renamed from: b */
    public static <T> AbstractC5918l<T, InputStream> m24473b(Class<T> cls, Context context) {
        return m24477a(cls, InputStream.class, context);
    }

    /* renamed from: b */
    public static List<AbstractC6042a> m24474b(Context context) {
        return f14469o ? new C6043b(context).m23978a() : Collections.emptyList();
    }

    /* renamed from: c */
    public static C5780o m24470c(Context context) {
        return C6036k.m24001a().m23998a(context);
    }

    /* renamed from: a */
    public <T, Z> AbstractC6045b<T, Z> m24478a(Class<T> cls, Class<Z> cls2) {
        return this.f14477h.m23974a(cls, cls2);
    }

    /* renamed from: a */
    public <R> AbstractC6082k<R> m24482a(ImageView imageView, Class<R> cls) {
        return this.f14475f.m23915a(imageView, cls);
    }

    /* renamed from: a */
    public void m24486a() {
        C6096h.m23865a();
        m24464i().m24282a();
    }

    /* renamed from: a */
    public void m24485a(int i) {
        C6096h.m23856b();
        this.f14473d.mo24179a(i);
        this.f14472c.mo24222a(i);
    }

    /* renamed from: a */
    public <T, Y> void m24476a(Class<T> cls, Class<Y> cls2, AbstractC5919m<T, Y> mVar) {
        AbstractC5919m<T, Y> a = this.f14470a.m24159a(cls, cls2, mVar);
        if (a != null) {
            a.mo24129a();
        }
    }

    /* renamed from: b */
    public <Z, R> AbstractC6019d<Z, R> m24472b(Class<Z> cls, Class<R> cls2) {
        return this.f14476g.m24024a(cls, cls2);
    }

    /* renamed from: b */
    public void m24475b() {
        C6096h.m23856b();
        this.f14473d.m24180a();
        this.f14472c.mo24223a();
    }

    /* renamed from: c */
    public C5957e m24471c() {
        return this.f14478i;
    }

    /* renamed from: d */
    public C5964i m24469d() {
        return this.f14480k;
    }

    /* renamed from: e */
    public AbstractC5856c m24468e() {
        return this.f14472c;
    }

    /* renamed from: f */
    public EnumC5804a m24467f() {
        return this.f14474e;
    }

    /* renamed from: g */
    public C6014f m24466g() {
        return this.f14479j;
    }

    /* renamed from: h */
    public C6014f m24465h() {
        return this.f14481l;
    }

    /* renamed from: i */
    public C5828c m24464i() {
        return this.f14471b;
    }

    /* renamed from: j */
    public final C5902c m24463j() {
        return this.f14470a;
    }

    /* renamed from: k */
    public Handler m24462k() {
        return this.f14482m;
    }
}
