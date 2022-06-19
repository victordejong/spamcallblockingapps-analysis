package p193e.p194a.p1341w3;

import android.content.Intent;
import com.google.protobuf.Int32Value;
import com.truecaller.api.services.presence.p139v1.models.Flash;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1389g.C21746d;
import q3.a.i0;
import q3.a.j0;
import q3.a.o0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flash.FlashStatusManagerImpl$onPresenceUpdated$1", f = "FlashStatusManager.kt", l = {34}, m = "invokeSuspend")
/* renamed from: e.a.w3.g */
/* loaded from: classes9-dex2jar.jar:e/a/w3/g.class */
public final class C21196g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f59384e;

    /* renamed from: f */
    public int f59385f;

    /* renamed from: g */
    public final /* synthetic */ C21198h f59386g;

    /* renamed from: h */
    public final /* synthetic */ Intent f59387h;

    @e(c = "com.truecaller.flash.FlashStatusManagerImpl$onPresenceUpdated$1$1", f = "FlashStatusManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.w3.g$a */
    /* loaded from: classes9-dex2jar.jar:e/a/w3/g$a.class */
    public static final class C21197a extends i implements p<i0, d<? super List<? extends C21746d>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ ArrayList f59389f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21197a(ArrayList arrayList, d dVar) {
            super(2, dVar);
            C21196g.this = r5;
            this.f59389f = arrayList;
        }

        /* renamed from: i */
        public final d<s> m10146i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21197a(this.f59389f, dVar);
        }

        /* renamed from: k */
        public final Object m10145k(Object obj, Object obj2) {
            C21746d c21746d;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21196g c21196g = C21196g.this;
            ArrayList<C17409e> arrayList = this.f59389f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ArrayList arrayList2 = new ArrayList();
            for (C17409e c17409e : arrayList) {
                Objects.requireNonNull(c21196g.f59386g);
                Flash flash = c17409e.f48756c;
                if (flash != null) {
                    String t = r.t(c17409e.f48754a, "+", "", false, 4);
                    Int32Value version = flash.getVersion();
                    l.d(version, "flash.version");
                    c21746d = new C21746d(t, version.getValue(), flash.getEnabled());
                } else {
                    c21746d = null;
                }
                if (c21746d != null) {
                    arrayList2.add(c21746d);
                }
            }
            return arrayList2;
        }

        /* renamed from: s */
        public final Object m10144s(Object obj) {
            C21746d c21746d;
            C25225a.m3932a3(obj);
            ArrayList<C17409e> arrayList = this.f59389f;
            ArrayList arrayList2 = new ArrayList();
            for (C17409e c17409e : arrayList) {
                Objects.requireNonNull(C21196g.this.f59386g);
                Flash flash = c17409e.f48756c;
                if (flash != null) {
                    String t = r.t(c17409e.f48754a, "+", "", false, 4);
                    Int32Value version = flash.getVersion();
                    l.d(version, "flash.version");
                    c21746d = new C21746d(t, version.getValue(), flash.getEnabled());
                } else {
                    c21746d = null;
                }
                if (c21746d != null) {
                    arrayList2.add(c21746d);
                }
            }
            return arrayList2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21196g(C21198h c21198h, Intent intent, d dVar) {
        super(2, dVar);
        this.f59386g = c21198h;
        this.f59387h = intent;
    }

    /* renamed from: i */
    public final d<s> m10149i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C21196g c21196g = new C21196g(this.f59386g, this.f59387h, dVar);
        c21196g.f59384e = obj;
        return c21196g;
    }

    /* renamed from: k */
    public final Object m10148k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21196g c21196g = new C21196g(this.f59386g, this.f59387h, dVar);
        c21196g.f59384e = obj;
        return c21196g.m10147s(s.a);
    }

    /* renamed from: s */
    public final Object m10147s(Object obj) {
        AbstractC21631b abstractC21631b;
        a aVar = a.a;
        int i = this.f59385f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f59384e;
            Serializable serializableExtra = this.f59387h.getSerializableExtra("com.truecaller.datamanager.EXTRA_PRESENCE");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.presence.Presence> /* = java.util.ArrayList<com.truecaller.presence.Presence> */");
            ArrayList arrayList = (ArrayList) serializableExtra;
            C21198h c21198h = this.f59386g;
            abstractC21631b = c21198h.f59390a;
            o0 H = s1.a.a.a.v0.f.d.H(i0Var, c21198h.f59391b, (j0) null, new C21197a(arrayList, null), 2, (Object) null);
            this.f59384e = abstractC21631b;
            this.f59385f = 1;
            obj = H.A(this);
            if (obj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            abstractC21631b = (AbstractC21631b) this.f59384e;
            C25225a.m3932a3(obj);
        }
        abstractC21631b.mo9304n((List) obj);
        return s.a;
    }
}
