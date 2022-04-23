package p081h.p119d.p120a.p145w;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Queue;
import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.C5828c;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p144v.AbstractC6049f;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p146i.AbstractC6065d;
import p081h.p119d.p120a.p145w.p147j.AbstractC6079i;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p081h.p119d.p120a.p149y.C6092d;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.w.b */
/* loaded from: classes-dex2jar.jar:h/d/a/w/b.class */
public final class C6051b<A, T, Z, R> implements AbstractC6053c, AbstractC6079i, AbstractC6058g {

    /* renamed from: D */
    public static final Queue<C6051b<?, ?, ?, ?>> f15053D = C6096h.m23864a(0);

    /* renamed from: A */
    public C5828c.C5831c f15054A;

    /* renamed from: B */
    public long f15055B;

    /* renamed from: C */
    public EnumC6052a f15056C;

    /* renamed from: a */
    public final String f15057a = String.valueOf(hashCode());

    /* renamed from: b */
    public AbstractC5806c f15058b;

    /* renamed from: c */
    public Drawable f15059c;

    /* renamed from: d */
    public int f15060d;

    /* renamed from: e */
    public int f15061e;

    /* renamed from: f */
    public int f15062f;

    /* renamed from: g */
    public Context f15063g;

    /* renamed from: h */
    public AbstractC5810g<Z> f15064h;

    /* renamed from: i */
    public AbstractC6049f<A, T, Z, R> f15065i;

    /* renamed from: j */
    public AbstractC6054d f15066j;

    /* renamed from: k */
    public A f15067k;

    /* renamed from: l */
    public Class<R> f15068l;

    /* renamed from: m */
    public boolean f15069m;

    /* renamed from: n */
    public EnumC5779n f15070n;

    /* renamed from: o */
    public AbstractC6082k<R> f15071o;

    /* renamed from: p */
    public AbstractC6057f<? super A, R> f15072p;

    /* renamed from: q */
    public float f15073q;

    /* renamed from: r */
    public C5828c f15074r;

    /* renamed from: s */
    public AbstractC6065d<R> f15075s;

    /* renamed from: t */
    public int f15076t;

    /* renamed from: u */
    public int f15077u;

    /* renamed from: v */
    public EnumC5827b f15078v;

    /* renamed from: w */
    public Drawable f15079w;

    /* renamed from: x */
    public Drawable f15080x;

    /* renamed from: y */
    public boolean f15081y;

    /* renamed from: z */
    public AbstractC5848l<?> f15082z;

    /* renamed from: h.d.a.w.b$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/b$a.class */
    public enum EnumC6052a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    /* renamed from: a */
    public static void m23962a(String str, Object obj, String str2) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(" must not be null");
            if (str2 != null) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(str2);
            }
            throw new NullPointerException(sb.toString());
        }
    }

    /* renamed from: b */
    public static <A, T, Z, R> C6051b<A, T, Z, R> m23960b(AbstractC6049f<A, T, Z, R> fVar, A a, AbstractC5806c cVar, Context context, EnumC5779n nVar, AbstractC6082k<R> kVar, float f, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, AbstractC6057f<? super A, R> fVar2, AbstractC6054d dVar, C5828c cVar2, AbstractC5810g<Z> gVar, Class<R> cls, boolean z, AbstractC6065d<R> dVar2, int i4, int i5, EnumC5827b bVar) {
        C6051b<?, ?, ?, ?> poll = f15053D.poll();
        C6051b<A, T, Z, R> bVar2 = (C6051b<A, T, Z, R>) poll;
        if (poll == null) {
            bVar2 = new C6051b<>();
        }
        bVar2.m23964a(fVar, a, cVar, context, nVar, kVar, f, drawable, i, drawable2, i2, drawable3, i3, fVar2, dVar, cVar2, gVar, cls, z, dVar2, i4, i5, bVar);
        return bVar2;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: a */
    public void mo23943a() {
        this.f15055B = C6092d.m23879a();
        if (this.f15067k == null) {
            mo23944a((Exception) null);
            return;
        }
        this.f15056C = EnumC6052a.WAITING_FOR_SIZE;
        if (C6096h.m23863a(this.f15076t, this.f15077u)) {
            mo23913a(this.f15076t, this.f15077u);
        } else {
            this.f15071o.mo23905a((AbstractC6079i) this);
        }
        if (!mo23936d() && !m23952k() && m23958e()) {
            this.f15071o.mo6306a(m23953j());
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            m23963a("finished run method in " + C6092d.m23878a(this.f15055B));
        }
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6079i
    /* renamed from: a */
    public void mo23913a(int i, int i2) {
        if (Log.isLoggable("GenericRequest", 2)) {
            m23963a("Got onSizeReady in " + C6092d.m23878a(this.f15055B));
        }
        if (this.f15056C == EnumC6052a.WAITING_FOR_SIZE) {
            this.f15056C = EnumC6052a.RUNNING;
            int round = Math.round(this.f15073q * i);
            int round2 = Math.round(this.f15073q * i2);
            AbstractC5813c<T> a = this.f15065i.mo23966i().mo24060a(this.f15067k, round, round2);
            if (a == null) {
                mo23944a(new Exception("Failed to load model: '" + this.f15067k + "'"));
                return;
            }
            AbstractC6019d<Z, R> e = this.f15065i.mo23967e();
            if (Log.isLoggable("GenericRequest", 2)) {
                m23963a("finished setup for calling load in " + C6092d.m23878a(this.f15055B));
            }
            boolean z = true;
            this.f15081y = true;
            this.f15054A = this.f15074r.m24280a(this.f15058b, round, round2, a, this.f15065i, this.f15064h, e, this.f15070n, this.f15069m, this.f15078v, this);
            if (this.f15082z == null) {
                z = false;
            }
            this.f15081y = z;
            if (Log.isLoggable("GenericRequest", 2)) {
                m23963a("finished onSizeReady in " + C6092d.m23878a(this.f15055B));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.p145w.AbstractC6058g
    /* renamed from: a */
    public void mo23945a(AbstractC5848l<?> lVar) {
        if (lVar == null) {
            mo23944a(new Exception("Expected to receive a Resource<R> with an object of " + this.f15068l + " inside, but instead got null."));
            return;
        }
        Object obj = lVar.get();
        if (obj == null || !this.f15068l.isAssignableFrom(obj.getClass())) {
            m23961b(lVar);
            StringBuilder sb = new StringBuilder();
            sb.append("Expected to receive an object of ");
            sb.append(this.f15068l);
            sb.append(" but instead got ");
            String str = "";
            sb.append(obj != null ? obj.getClass() : "");
            sb.append(CssParser.BLOCK_START);
            sb.append(obj);
            sb.append(CssParser.BLOCK_END);
            sb.append(" inside Resource{");
            sb.append(lVar);
            sb.append("}.");
            if (obj == null) {
                str = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
            }
            sb.append(str);
            mo23944a(new Exception(sb.toString()));
        } else if (!m23957f()) {
            m23961b(lVar);
            this.f15056C = EnumC6052a.COMPLETE;
        } else {
            m23965a(lVar, (AbstractC5848l<?>) obj);
        }
    }

    /* renamed from: a */
    public final void m23965a(AbstractC5848l<?> lVar, R r) {
        boolean l = m23951l();
        this.f15056C = EnumC6052a.COMPLETE;
        this.f15082z = lVar;
        AbstractC6057f<? super A, R> fVar = this.f15072p;
        if (fVar == null || !fVar.mo3711a(r, (A) this.f15067k, this.f15071o, this.f15081y, l)) {
            this.f15071o.mo2507a((AbstractC6082k<R>) r, (AbstractC6063c<? super AbstractC6082k<R>>) this.f15075s.mo23923a(this.f15081y, l));
        }
        m23950m();
        if (Log.isLoggable("GenericRequest", 2)) {
            m23963a("Resource ready in " + C6092d.m23878a(this.f15055B) + " size: " + (lVar.mo24037a() * 9.5367431640625E-7d) + " fromCache: " + this.f15081y);
        }
    }

    /* renamed from: a */
    public final void m23964a(AbstractC6049f<A, T, Z, R> fVar, A a, AbstractC5806c cVar, Context context, EnumC5779n nVar, AbstractC6082k<R> kVar, float f, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, AbstractC6057f<? super A, R> fVar2, AbstractC6054d dVar, C5828c cVar2, AbstractC5810g<Z> gVar, Class<R> cls, boolean z, AbstractC6065d<R> dVar2, int i4, int i5, EnumC5827b bVar) {
        this.f15065i = fVar;
        this.f15067k = a;
        this.f15058b = cVar;
        this.f15059c = drawable3;
        this.f15060d = i3;
        this.f15063g = context.getApplicationContext();
        this.f15070n = nVar;
        this.f15071o = kVar;
        this.f15073q = f;
        this.f15079w = drawable;
        this.f15061e = i;
        this.f15080x = drawable2;
        this.f15062f = i2;
        this.f15072p = fVar2;
        this.f15066j = dVar;
        this.f15074r = cVar2;
        this.f15064h = gVar;
        this.f15068l = cls;
        this.f15069m = z;
        this.f15075s = dVar2;
        this.f15076t = i4;
        this.f15077u = i5;
        this.f15078v = bVar;
        this.f15056C = EnumC6052a.PENDING;
        if (a != null) {
            m23962a("ModelLoader", fVar.mo23966i(), "try .using(ModelLoader)");
            m23962a("Transcoder", fVar.mo23967e(), "try .as*(Class).transcode(ResourceTranscoder)");
            m23962a("Transformation", gVar, "try .transform(UnitTransformation.get())");
            if (bVar.m24283b()) {
                m23962a("SourceEncoder", fVar.mo23971d(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                m23962a("SourceDecoder", fVar.mo23969g(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (bVar.m24283b() || bVar.m24284a()) {
                m23962a("CacheDecoder", fVar.mo23968h(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (bVar.m24284a()) {
                m23962a("Encoder", fVar.mo23970f(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6058g
    /* renamed from: a */
    public void mo23944a(Exception exc) {
        Log.isLoggable("GenericRequest", 3);
        this.f15056C = EnumC6052a.FAILED;
        AbstractC6057f<? super A, R> fVar = this.f15072p;
        if (fVar == null || !fVar.mo3713a(exc, (A) this.f15067k, this.f15071o, m23951l())) {
            m23959b(exc);
        }
    }

    /* renamed from: a */
    public final void m23963a(String str) {
        String str2 = str + " this: " + this.f15057a;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: b */
    public void mo23940b() {
        this.f15065i = null;
        this.f15067k = null;
        this.f15063g = null;
        this.f15071o = null;
        this.f15079w = null;
        this.f15080x = null;
        this.f15059c = null;
        this.f15072p = null;
        this.f15066j = null;
        this.f15064h = null;
        this.f15075s = null;
        this.f15081y = false;
        this.f15054A = null;
        f15053D.offer(this);
    }

    /* renamed from: b */
    public final void m23961b(AbstractC5848l lVar) {
        this.f15074r.m24275b(lVar);
        this.f15082z = null;
    }

    /* renamed from: b */
    public final void m23959b(Exception exc) {
        if (m23958e()) {
            Drawable i = this.f15067k == null ? m23954i() : null;
            Drawable drawable = i;
            if (i == null) {
                drawable = m23955h();
            }
            Drawable drawable2 = drawable;
            if (drawable == null) {
                drawable2 = m23953j();
            }
            this.f15071o.mo2453a(exc, drawable2);
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: c */
    public boolean mo23938c() {
        return mo23936d();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public void clear() {
        C6096h.m23856b();
        if (this.f15056C != EnumC6052a.CLEARED) {
            m23956g();
            AbstractC5848l<?> lVar = this.f15082z;
            if (lVar != null) {
                m23961b(lVar);
            }
            if (m23958e()) {
                this.f15071o.mo23908b(m23953j());
            }
            this.f15056C = EnumC6052a.CLEARED;
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: d */
    public boolean mo23936d() {
        return this.f15056C == EnumC6052a.COMPLETE;
    }

    /* renamed from: e */
    public final boolean m23958e() {
        AbstractC6054d dVar = this.f15066j;
        return dVar == null || dVar.mo23942a(this);
    }

    /* renamed from: f */
    public final boolean m23957f() {
        AbstractC6054d dVar = this.f15066j;
        return dVar == null || dVar.mo23939b(this);
    }

    /* renamed from: g */
    public void m23956g() {
        this.f15056C = EnumC6052a.CANCELLED;
        C5828c.C5831c cVar = this.f15054A;
        if (cVar != null) {
            cVar.m24272a();
            this.f15054A = null;
        }
    }

    /* renamed from: h */
    public final Drawable m23955h() {
        if (this.f15080x == null && this.f15062f > 0) {
            this.f15080x = this.f15063g.getResources().getDrawable(this.f15062f);
        }
        return this.f15080x;
    }

    /* renamed from: i */
    public final Drawable m23954i() {
        if (this.f15059c == null && this.f15060d > 0) {
            this.f15059c = this.f15063g.getResources().getDrawable(this.f15060d);
        }
        return this.f15059c;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public boolean isCancelled() {
        EnumC6052a aVar = this.f15056C;
        return aVar == EnumC6052a.CANCELLED || aVar == EnumC6052a.CLEARED;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public boolean isRunning() {
        EnumC6052a aVar = this.f15056C;
        return aVar == EnumC6052a.RUNNING || aVar == EnumC6052a.WAITING_FOR_SIZE;
    }

    /* renamed from: j */
    public final Drawable m23953j() {
        if (this.f15079w == null && this.f15061e > 0) {
            this.f15079w = this.f15063g.getResources().getDrawable(this.f15061e);
        }
        return this.f15079w;
    }

    /* renamed from: k */
    public boolean m23952k() {
        return this.f15056C == EnumC6052a.FAILED;
    }

    /* renamed from: l */
    public final boolean m23951l() {
        AbstractC6054d dVar = this.f15066j;
        return dVar == null || !dVar.mo23935e();
    }

    /* renamed from: m */
    public final void m23950m() {
        AbstractC6054d dVar = this.f15066j;
        if (dVar != null) {
            dVar.mo23937c(this);
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public void pause() {
        clear();
        this.f15056C = EnumC6052a.PAUSED;
    }
}
