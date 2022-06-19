package p193e.p194a.p195a.p200c.p206i;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import com.truecaller.data.entity.HistoryEvent;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p195a.p200c.p206i.AbstractC5352d;
import s1.z.c.l;
/* renamed from: e.a.a.c.i.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/e.class */
public final class C5354e implements AbstractC5352d {

    /* renamed from: a */
    public AbstractC17373b f18309a;

    /* renamed from: b */
    public AbstractC5352d.AbstractC5353a f18310b;

    /* renamed from: c */
    public boolean f18311c;

    /* renamed from: d */
    public final C5355a f18312d = new C5355a(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.a.c.i.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/e$a.class */
    public static final class C5355a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5355a(Handler handler) {
            super(handler);
            C5354e.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC5352d.AbstractC5353a abstractC5353a = C5354e.this.f18310b;
            if (abstractC5353a != null) {
                abstractC5353a.onDataChanged();
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d
    /* renamed from: a */
    public void mo33270a(AbstractC5352d.AbstractC5353a abstractC5353a) {
        l.e(abstractC5353a, "observer");
        this.f18310b = abstractC5353a;
        AbstractC17373b abstractC17373b = this.f18309a;
        if (abstractC17373b != null) {
            if (!(!this.f18311c)) {
                abstractC17373b = null;
            }
            if (abstractC17373b == null) {
                return;
            }
            abstractC17373b.registerContentObserver(this.f18312d);
            this.f18311c = true;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d
    /* renamed from: b */
    public int mo33269b() {
        AbstractC17373b abstractC17373b = this.f18309a;
        return abstractC17373b != null ? abstractC17373b.getCount() : 0;
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d
    /* renamed from: c */
    public void mo33268c(AbstractC17373b abstractC17373b) {
        mo33267n0();
        AbstractC17373b abstractC17373b2 = this.f18309a;
        if (abstractC17373b2 != null && !abstractC17373b2.isClosed()) {
            abstractC17373b2.close();
        }
        this.f18309a = abstractC17373b;
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d
    public C5356f getItem(int i) {
        AbstractC17373b abstractC17373b = this.f18309a;
        C5356f c5356f = null;
        if (abstractC17373b != null) {
            abstractC17373b.moveToPosition(i);
            HistoryEvent mo16159n = abstractC17373b.mo16159n();
            c5356f = null;
            if (mo16159n != null) {
                long id = abstractC17373b.getId();
                long mo16163A0 = abstractC17373b.mo16163A0();
                l.d(mo16159n, "historyEvent");
                long j = mo16159n.f11541h;
                long j2 = mo16159n.f11542i;
                int i2 = mo16159n.f11550q;
                boolean a = l.a(mo16159n.f11552s, "com.truecaller.voip.manager.VOIP");
                boolean z = mo16159n.f11553t == 3;
                String str = mo16159n.f11544k;
                l.d(str, "historyEvent.subscriptionId");
                c5356f = new C5356f(id, mo16163A0, i2, j, j2, a, z, str, mo16159n.f11551r);
            }
        }
        return c5356f;
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d
    /* renamed from: n0 */
    public void mo33267n0() {
        AbstractC17373b abstractC17373b = this.f18309a;
        if (abstractC17373b != null) {
            if (!this.f18311c) {
                abstractC17373b = null;
            }
            if (abstractC17373b != null) {
                abstractC17373b.unregisterContentObserver(this.f18312d);
            }
        }
        this.f18310b = null;
        this.f18311c = false;
    }
}
