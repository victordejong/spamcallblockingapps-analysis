package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
/* renamed from: c.d.e.q.r0.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/f.class */
public class C5855f extends AbstractC5863i {

    /* renamed from: d */
    public final C5874n f19138d;

    /* renamed from: e */
    public final C5874n f19139e;

    /* renamed from: f */
    public final String f19140f;

    /* renamed from: g */
    public final C5842a f19141g;

    /* renamed from: h */
    public final C5842a f19142h;

    /* renamed from: i */
    public final C5858g f19143i;

    /* renamed from: j */
    public final C5858g f19144j;

    /* renamed from: c.d.e.q.r0.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/f$b.class */
    public static class C5857b {

        /* renamed from: a */
        public C5858g f19145a;

        /* renamed from: b */
        public C5858g f19146b;

        /* renamed from: c */
        public String f19147c;

        /* renamed from: d */
        public C5842a f19148d;

        /* renamed from: e */
        public C5874n f19149e;

        /* renamed from: f */
        public C5874n f19150f;

        /* renamed from: g */
        public C5842a f19151g;

        /* renamed from: a */
        public C5857b m22880a(C5842a aVar) {
            this.f19148d = aVar;
            return this;
        }

        /* renamed from: a */
        public C5857b m22878a(C5858g gVar) {
            this.f19146b = gVar;
            return this;
        }

        /* renamed from: a */
        public C5857b m22877a(C5874n nVar) {
            this.f19150f = nVar;
            return this;
        }

        /* renamed from: a */
        public C5857b m22876a(String str) {
            this.f19147c = str;
            return this;
        }

        /* renamed from: a */
        public C5855f m22879a(C5854e eVar, Map<String, String> map) {
            C5842a aVar = this.f19148d;
            if (aVar == null) {
                throw new IllegalArgumentException("Card model must have a primary action");
            } else if (aVar.m22913b() != null) {
                C5842a aVar2 = this.f19151g;
                if (aVar2 != null && aVar2.m22913b() == null) {
                    throw new IllegalArgumentException("Card model secondary action must be null or have a button");
                } else if (this.f19149e == null) {
                    throw new IllegalArgumentException("Card model must have a title");
                } else if (this.f19145a == null && this.f19146b == null) {
                    throw new IllegalArgumentException("Card model must have at least one image");
                } else if (!TextUtils.isEmpty(this.f19147c)) {
                    return new C5855f(eVar, this.f19149e, this.f19150f, this.f19145a, this.f19146b, this.f19147c, this.f19148d, this.f19151g, map);
                } else {
                    throw new IllegalArgumentException("Card model must have a background color");
                }
            } else {
                throw new IllegalArgumentException("Card model must have a primary action button");
            }
        }

        /* renamed from: b */
        public C5857b m22875b(C5842a aVar) {
            this.f19151g = aVar;
            return this;
        }

        /* renamed from: b */
        public C5857b m22874b(C5858g gVar) {
            this.f19145a = gVar;
            return this;
        }

        /* renamed from: b */
        public C5857b m22873b(C5874n nVar) {
            this.f19149e = nVar;
            return this;
        }
    }

    public C5855f(C5854e eVar, C5874n nVar, C5874n nVar2, C5858g gVar, C5858g gVar2, String str, C5842a aVar, C5842a aVar2, Map<String, String> map) {
        super(eVar, MessageType.CARD, map);
        this.f19138d = nVar;
        this.f19139e = nVar2;
        this.f19143i = gVar;
        this.f19144j = gVar2;
        this.f19140f = str;
        this.f19141g = aVar;
        this.f19142h = aVar2;
    }

    /* renamed from: k */
    public static C5857b m22881k() {
        return new C5857b();
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5863i
    @Deprecated
    /* renamed from: b */
    public C5858g mo22861b() {
        return this.f19143i;
    }

    /* renamed from: d */
    public String m22888d() {
        return this.f19140f;
    }

    /* renamed from: e */
    public C5874n m22887e() {
        return this.f19139e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5855f)) {
            return false;
        }
        C5855f fVar = (C5855f) obj;
        if (hashCode() != fVar.hashCode()) {
            return false;
        }
        if (this.f19139e == null && fVar.f19139e != null) {
            return false;
        }
        C5874n nVar = this.f19139e;
        if (nVar != null && !nVar.equals(fVar.f19139e)) {
            return false;
        }
        if (this.f19142h == null && fVar.f19142h != null) {
            return false;
        }
        C5842a aVar = this.f19142h;
        if (aVar != null && !aVar.equals(fVar.f19142h)) {
            return false;
        }
        if (this.f19143i == null && fVar.f19143i != null) {
            return false;
        }
        C5858g gVar = this.f19143i;
        if (gVar != null && !gVar.equals(fVar.f19143i)) {
            return false;
        }
        if (this.f19144j == null && fVar.f19144j != null) {
            return false;
        }
        C5858g gVar2 = this.f19144j;
        return (gVar2 == null || gVar2.equals(fVar.f19144j)) && this.f19138d.equals(fVar.f19138d) && this.f19141g.equals(fVar.f19141g) && this.f19140f.equals(fVar.f19140f);
    }

    /* renamed from: f */
    public C5858g m22886f() {
        return this.f19144j;
    }

    /* renamed from: g */
    public C5858g m22885g() {
        return this.f19143i;
    }

    /* renamed from: h */
    public C5842a m22884h() {
        return this.f19141g;
    }

    public int hashCode() {
        C5874n nVar = this.f19139e;
        int i = 0;
        int hashCode = nVar != null ? nVar.hashCode() : 0;
        C5842a aVar = this.f19142h;
        int hashCode2 = aVar != null ? aVar.hashCode() : 0;
        C5858g gVar = this.f19143i;
        int hashCode3 = gVar != null ? gVar.hashCode() : 0;
        C5858g gVar2 = this.f19144j;
        if (gVar2 != null) {
            i = gVar2.hashCode();
        }
        return this.f19138d.hashCode() + hashCode + this.f19140f.hashCode() + this.f19141g.hashCode() + hashCode2 + hashCode3 + i;
    }

    /* renamed from: i */
    public C5842a m22883i() {
        return this.f19142h;
    }

    /* renamed from: j */
    public C5874n m22882j() {
        return this.f19138d;
    }
}
