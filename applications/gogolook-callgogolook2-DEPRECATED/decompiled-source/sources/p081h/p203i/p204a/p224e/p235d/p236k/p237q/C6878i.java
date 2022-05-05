package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.k.q.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/i.class */
public final class C6878i<L> {

    /* renamed from: a */
    public final HandlerC6881c f16859a;

    /* renamed from: b */
    public volatile L f16860b;

    /* renamed from: c */
    public final C6879a<L> f16861c;

    /* renamed from: h.i.a.e.d.k.q.i$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/i$a.class */
    public static final class C6879a<L> {

        /* renamed from: a */
        public final L f16862a;

        /* renamed from: b */
        public final String f16863b;

        public C6879a(L l, String str) {
            this.f16862a = l;
            this.f16863b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C6879a)) {
                return false;
            }
            C6879a aVar = (C6879a) obj;
            return this.f16862a == aVar.f16862a && this.f16863b.equals(aVar.f16863b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f16862a) * 31) + this.f16863b.hashCode();
        }
    }

    /* renamed from: h.i.a.e.d.k.q.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/i$b.class */
    public interface AbstractC6880b<L> {
        /* renamed from: a */
        void mo17872a();

        /* renamed from: a */
        void mo17871a(L l);
    }

    /* renamed from: h.i.a.e.d.k.q.i$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/i$c.class */
    public final class HandlerC6881c extends HandlerC7537i {
        public HandlerC6881c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            C7021t.m21286a(z);
            C6878i.this.m21665b((AbstractC6880b) message.obj);
        }
    }

    public C6878i(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        this.f16859a = new HandlerC6881c(looper);
        C7021t.m21289a(l, "Listener must not be null");
        this.f16860b = l;
        C7021t.m21283b(str);
        this.f16861c = new C6879a<>(l, str);
    }

    /* renamed from: a */
    public final void m21668a() {
        this.f16860b = null;
    }

    /* renamed from: a */
    public final void m21667a(AbstractC6880b<? super L> bVar) {
        C7021t.m21289a(bVar, "Notifier must not be null");
        this.f16859a.sendMessage(this.f16859a.obtainMessage(1, bVar));
    }

    @NonNull
    /* renamed from: b */
    public final C6879a<L> m21666b() {
        return this.f16861c;
    }

    /* renamed from: b */
    public final void m21665b(AbstractC6880b<? super L> bVar) {
        Object obj = (L) this.f16860b;
        if (obj == null) {
            bVar.mo17872a();
            return;
        }
        try {
            bVar.mo17871a(obj);
        } catch (RuntimeException e) {
            bVar.mo17872a();
            throw e;
        }
    }
}
