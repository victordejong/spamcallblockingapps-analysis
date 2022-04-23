package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
/* renamed from: c.d.e.q.r0.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/j.class */
public class C5864j extends AbstractC5863i {

    /* renamed from: d */
    public final C5874n f19163d;

    /* renamed from: e */
    public final C5874n f19164e;

    /* renamed from: f */
    public final C5858g f19165f;

    /* renamed from: g */
    public final C5842a f19166g;

    /* renamed from: h */
    public final String f19167h;

    /* renamed from: c.d.e.q.r0.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/j$b.class */
    public static class C5866b {

        /* renamed from: a */
        public C5874n f19168a;

        /* renamed from: b */
        public C5874n f19169b;

        /* renamed from: c */
        public C5858g f19170c;

        /* renamed from: d */
        public C5842a f19171d;

        /* renamed from: e */
        public String f19172e;

        /* renamed from: a */
        public C5866b m22855a(C5842a aVar) {
            this.f19171d = aVar;
            return this;
        }

        /* renamed from: a */
        public C5866b m22853a(C5858g gVar) {
            this.f19170c = gVar;
            return this;
        }

        /* renamed from: a */
        public C5866b m22852a(C5874n nVar) {
            this.f19169b = nVar;
            return this;
        }

        /* renamed from: a */
        public C5866b m22851a(String str) {
            this.f19172e = str;
            return this;
        }

        /* renamed from: a */
        public C5864j m22854a(C5854e eVar, Map<String, String> map) {
            if (this.f19168a != null) {
                C5842a aVar = this.f19171d;
                if (aVar != null && aVar.m22913b() == null) {
                    throw new IllegalArgumentException("Modal model action must be null or have a button");
                } else if (!TextUtils.isEmpty(this.f19172e)) {
                    return new C5864j(eVar, this.f19168a, this.f19169b, this.f19170c, this.f19171d, this.f19172e, map);
                } else {
                    throw new IllegalArgumentException("Modal model must have a background color");
                }
            } else {
                throw new IllegalArgumentException("Modal model must have a title");
            }
        }

        /* renamed from: b */
        public C5866b m22850b(C5874n nVar) {
            this.f19168a = nVar;
            return this;
        }
    }

    public C5864j(C5854e eVar, C5874n nVar, C5874n nVar2, C5858g gVar, C5842a aVar, String str, Map<String, String> map) {
        super(eVar, MessageType.MODAL, map);
        this.f19163d = nVar;
        this.f19164e = nVar2;
        this.f19165f = gVar;
        this.f19166g = aVar;
        this.f19167h = str;
    }

    /* renamed from: h */
    public static C5866b m22856h() {
        return new C5866b();
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5863i
    /* renamed from: b */
    public C5858g mo22861b() {
        return this.f19165f;
    }

    /* renamed from: d */
    public C5842a m22860d() {
        return this.f19166g;
    }

    /* renamed from: e */
    public String m22859e() {
        return this.f19167h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5864j)) {
            return false;
        }
        C5864j jVar = (C5864j) obj;
        if (hashCode() != jVar.hashCode()) {
            return false;
        }
        if (this.f19164e == null && jVar.f19164e != null) {
            return false;
        }
        C5874n nVar = this.f19164e;
        if (nVar != null && !nVar.equals(jVar.f19164e)) {
            return false;
        }
        if (this.f19166g == null && jVar.f19166g != null) {
            return false;
        }
        C5842a aVar = this.f19166g;
        if (aVar != null && !aVar.equals(jVar.f19166g)) {
            return false;
        }
        if (this.f19165f == null && jVar.f19165f != null) {
            return false;
        }
        C5858g gVar = this.f19165f;
        return (gVar == null || gVar.equals(jVar.f19165f)) && this.f19163d.equals(jVar.f19163d) && this.f19167h.equals(jVar.f19167h);
    }

    /* renamed from: f */
    public C5874n m22858f() {
        return this.f19164e;
    }

    /* renamed from: g */
    public C5874n m22857g() {
        return this.f19163d;
    }

    public int hashCode() {
        C5874n nVar = this.f19164e;
        int i = 0;
        int hashCode = nVar != null ? nVar.hashCode() : 0;
        C5842a aVar = this.f19166g;
        int hashCode2 = aVar != null ? aVar.hashCode() : 0;
        C5858g gVar = this.f19165f;
        if (gVar != null) {
            i = gVar.hashCode();
        }
        return this.f19163d.hashCode() + hashCode + this.f19167h.hashCode() + hashCode2 + i;
    }
}
