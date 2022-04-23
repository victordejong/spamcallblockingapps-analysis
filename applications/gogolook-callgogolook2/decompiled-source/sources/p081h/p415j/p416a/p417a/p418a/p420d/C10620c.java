package p081h.p415j.p416a.p417a.p418a.p420d;

import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10645e;
/* renamed from: h.j.a.a.a.d.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/d/c.class */
public class C10620c {

    /* renamed from: a */
    public final EnumC10623f f24169a;

    /* renamed from: b */
    public final EnumC10623f f24170b;

    /* renamed from: c */
    public final boolean f24171c;

    public C10620c(EnumC10623f fVar, EnumC10623f fVar2, boolean z) {
        this.f24169a = fVar;
        if (fVar2 == null) {
            this.f24170b = EnumC10623f.NONE;
        } else {
            this.f24170b = fVar2;
        }
        this.f24171c = z;
    }

    /* renamed from: a */
    public static C10620c m11187a(EnumC10623f fVar, EnumC10623f fVar2, boolean z) {
        C10645e.m11081a(fVar, "Impression owner is null");
        C10645e.m11083a(fVar);
        return new C10620c(fVar, fVar2, z);
    }

    /* renamed from: a */
    public boolean m11188a() {
        return EnumC10623f.NATIVE == this.f24169a;
    }

    /* renamed from: b */
    public JSONObject m11186b() {
        JSONObject jSONObject = new JSONObject();
        C10641b.m11096a(jSONObject, "impressionOwner", this.f24169a);
        C10641b.m11096a(jSONObject, "videoEventsOwner", this.f24170b);
        C10641b.m11096a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f24171c));
        return jSONObject;
    }
}
