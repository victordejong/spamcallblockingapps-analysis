package p193e.p194a.p294b.p331b.p334c;

import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import java.io.File;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeImage$1", f = "CreateBusinessProfileActivity.kt", l = {592}, m = "invokeSuspend")
/* renamed from: e.a.b.b.c.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/i.class */
public final class C7884i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f24465e;

    /* renamed from: f */
    public final /* synthetic */ CreateBusinessProfileActivity f24466f;

    /* renamed from: g */
    public final /* synthetic */ Uri f24467g;

    @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeImage$1$2$1", f = "CreateBusinessProfileActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.b.c.i$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/i$a.class */
    public static final class C7885a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ String f24468e;

        /* renamed from: f */
        public final /* synthetic */ C7884i f24469f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7885a(String str, d dVar, C7884i c7884i) {
            super(2, dVar);
            this.f24468e = str;
            this.f24469f = c7884i;
        }

        /* renamed from: i */
        public final d<s> m29182i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7885a(this.f24468e, dVar, this.f24469f);
        }

        /* renamed from: k */
        public final Object m29181k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            String str = this.f24468e;
            C7884i c7884i = this.f24469f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C7893q m35829qa = c7884i.f24466f.m35829qa();
            l.d(str, "it");
            Objects.requireNonNull(m35829qa);
            l.e(str, "picture");
            Integer num = m35829qa.f24481g;
            if (num != null) {
                int intValue = num.intValue();
                m35829qa.f24481g = null;
                AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
                if (abstractC7892p != null) {
                    abstractC7892p.mo29147s4(intValue, str);
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m29180s(Object obj) {
            C25225a.m3932a3(obj);
            C7893q m35829qa = this.f24469f.f24466f.m35829qa();
            String str = this.f24468e;
            l.d(str, "it");
            Objects.requireNonNull(m35829qa);
            l.e(str, "picture");
            Integer num = m35829qa.f24481g;
            if (num != null) {
                int intValue = num.intValue();
                m35829qa.f24481g = null;
                AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
                if (abstractC7892p != null) {
                    abstractC7892p.mo29147s4(intValue, str);
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7884i(CreateBusinessProfileActivity createBusinessProfileActivity, Uri uri, d dVar) {
        super(2, dVar);
        this.f24466f = createBusinessProfileActivity;
        this.f24467g = uri;
    }

    /* renamed from: i */
    public final d<s> m29185i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7884i(this.f24466f, this.f24467g, dVar);
    }

    /* renamed from: k */
    public final Object m29184k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7884i(this.f24466f, this.f24467g, dVar).m29183s(s.a);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    /* renamed from: s */
    public final Object m29183s(Object obj) {
        File m13677b;
        a aVar = a.a;
        int i = this.f24465e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Uri uri = this.f24467g;
            ?? r0 = this.f24466f;
            l.e(uri, "uri");
            l.e((Object) r0, AnalyticsConstants.CONTEXT);
            m13677b = C19286f.m13677b(uri, r0, null);
            Uri fromFile = m13677b != null ? Uri.fromFile(m13677b) : null;
            String uri2 = fromFile != null ? fromFile.toString() : null;
            if (Boolean.valueOf(uri2 == null || uri2.length() == 0).booleanValue()) {
                uri2 = null;
            }
            if (uri2 != null) {
                f m35828ra = this.f24466f.m35828ra();
                C7885a c7885a = new C7885a(uri2, null, this);
                this.f24465e = 1;
                if (s1.a.a.a.v0.f.d.a4(m35828ra, c7885a, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
