package p131c.p161d.p282e.p315q.p333r0;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
/* renamed from: c.d.e.q.r0.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/h.class */
public class C5860h extends AbstractC5863i {

    /* renamed from: d */
    public C5858g f19156d;

    /* renamed from: e */
    public C5842a f19157e;

    /* renamed from: c.d.e.q.r0.h$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/h$b.class */
    public static class C5862b {

        /* renamed from: a */
        public C5858g f19158a;

        /* renamed from: b */
        public C5842a f19159b;

        /* renamed from: a */
        public C5862b m22866a(C5842a aVar) {
            this.f19159b = aVar;
            return this;
        }

        /* renamed from: a */
        public C5862b m22864a(C5858g gVar) {
            this.f19158a = gVar;
            return this;
        }

        /* renamed from: a */
        public C5860h m22865a(C5854e eVar, Map<String, String> map) {
            C5858g gVar = this.f19158a;
            if (gVar != null) {
                return new C5860h(eVar, gVar, this.f19159b, map);
            }
            throw new IllegalArgumentException("ImageOnly model must have image data");
        }
    }

    public C5860h(C5854e eVar, C5858g gVar, C5842a aVar, Map<String, String> map) {
        super(eVar, MessageType.IMAGE_ONLY, map);
        this.f19156d = gVar;
        this.f19157e = aVar;
    }

    /* renamed from: e */
    public static C5862b m22867e() {
        return new C5862b();
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5863i
    /* renamed from: b */
    public C5858g mo22861b() {
        return this.f19156d;
    }

    /* renamed from: d */
    public C5842a m22868d() {
        return this.f19157e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5860h)) {
            return false;
        }
        C5860h hVar = (C5860h) obj;
        if (hashCode() != hVar.hashCode()) {
            return false;
        }
        if (this.f19157e == null && hVar.f19157e != null) {
            return false;
        }
        C5842a aVar = this.f19157e;
        return (aVar == null || aVar.equals(hVar.f19157e)) && this.f19156d.equals(hVar.f19156d);
    }

    public int hashCode() {
        C5842a aVar = this.f19157e;
        return this.f19156d.hashCode() + (aVar != null ? aVar.hashCode() : 0);
    }
}
