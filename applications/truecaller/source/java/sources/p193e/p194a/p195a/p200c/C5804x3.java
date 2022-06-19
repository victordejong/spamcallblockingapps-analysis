package p193e.p194a.p195a.p200c;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import com.truecaller.messaging.data.types.Message;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.a.c.x3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/x3.class */
public final class C5804x3 implements AbstractC5794w3 {

    /* renamed from: b */
    public AbstractC5794w3.AbstractC5795a f19414b;

    /* renamed from: c */
    public boolean f19415c;

    /* renamed from: f */
    public AbstractC6149q f19418f;

    /* renamed from: g */
    public AbstractC6225a f19419g;

    /* renamed from: h */
    public final ContentResolver f19420h;

    /* renamed from: a */
    public final C5805a f19413a = new C5805a(new Handler());

    /* renamed from: d */
    public List<? extends AbstractC6225a> f19416d = s.a;

    /* renamed from: e */
    public final C5806b f19417e = new C5806b(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.a.c.x3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/x3$a.class */
    public static final class C5805a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5805a(Handler handler) {
            super(handler);
            C5804x3.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC5794w3.AbstractC5795a abstractC5795a;
            C5804x3 c5804x3 = C5804x3.this;
            if (!c5804x3.f19415c || (abstractC5795a = c5804x3.f19414b) == null) {
                return;
            }
            abstractC5795a.mo32589C();
        }
    }

    /* renamed from: e.a.a.c.x3$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/x3$b.class */
    public static final class C5806b extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5806b(Handler handler) {
            super(handler);
            C5804x3.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC5794w3.AbstractC5795a abstractC5795a = C5804x3.this.f19414b;
            if (abstractC5795a != null) {
                abstractC5795a.mo32588da();
            }
        }
    }

    @Inject
    public C5804x3(ContentResolver contentResolver) {
        l.e(contentResolver, "contentResolver");
        this.f19420h = contentResolver;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: a */
    public Integer mo32583a(long j) {
        AbstractC6149q abstractC6149q = this.f19418f;
        if (abstractC6149q != null) {
            int count = abstractC6149q.getCount();
            for (int i = 0; i < count; i++) {
                abstractC6149q.moveToPosition(i);
                if (j == abstractC6149q.mo31736u()) {
                    return Integer.valueOf(this.f19416d.size() + i);
                }
            }
            return null;
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: b */
    public List<AbstractC6225a> mo32582b() {
        return i.a1(this.f19416d);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: c */
    public void mo32581c(AbstractC5794w3.AbstractC5795a abstractC5795a) {
        l.e(abstractC5795a, "messagesObserver");
        this.f19414b = abstractC5795a;
        if (this.f19415c) {
            return;
        }
        this.f19420h.registerContentObserver(C8582g0.m28294z(), true, this.f19413a);
        this.f19420h.registerContentObserver(C8582g0.m28338C(), true, this.f19417e);
        this.f19415c = true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: d */
    public void mo32580d(List<? extends AbstractC6225a> list) {
        l.e(list, "items");
        this.f19416d = list;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: e */
    public void mo32579e(AbstractC6149q abstractC6149q) {
        AbstractC6149q abstractC6149q2 = this.f19418f;
        if (abstractC6149q2 != null && !abstractC6149q2.isClosed()) {
            abstractC6149q2.close();
        }
        this.f19418f = abstractC6149q;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: f */
    public AbstractC6149q mo32578f() {
        return this.f19418f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: g */
    public int mo32577g(long j) {
        Iterator<? extends AbstractC6225a> it = this.f19416d.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (it.next().getId() == j) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    public int getCount() {
        AbstractC6149q abstractC6149q = this.f19418f;
        int i = 0;
        if (abstractC6149q != null) {
            i = (this.f19419g == null ? 0 : 1) + this.f19416d.size() + abstractC6149q.getCount();
        }
        return i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    public AbstractC6225a getItem(int i) {
        AbstractC6149q abstractC6149q = this.f19418f;
        Message message = null;
        if (abstractC6149q != null) {
            if (i < this.f19416d.size()) {
                message = this.f19416d.get(i);
            } else {
                if (i >= this.f19416d.size() + abstractC6149q.getCount()) {
                    message = this.f19419g;
                } else {
                    int size = this.f19416d.size();
                    AbstractC6149q abstractC6149q2 = this.f19418f;
                    if (abstractC6149q2 != null) {
                        abstractC6149q2.moveToPosition(i - size);
                        message = abstractC6149q2.getMessage();
                    }
                }
            }
            return message;
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: h */
    public int mo32576h() {
        AbstractC6149q abstractC6149q = this.f19418f;
        return abstractC6149q != null ? abstractC6149q.getCount() : 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: i */
    public int mo32575i(int i) {
        return this.f19416d.size() + i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: j */
    public void mo32574j(AbstractC6225a abstractC6225a) {
        this.f19419g = abstractC6225a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: n0 */
    public void mo32573n0() {
        this.f19414b = null;
        if (!this.f19415c) {
            return;
        }
        this.f19420h.unregisterContentObserver(this.f19413a);
        this.f19420h.unregisterContentObserver(this.f19417e);
        this.f19415c = false;
    }
}
