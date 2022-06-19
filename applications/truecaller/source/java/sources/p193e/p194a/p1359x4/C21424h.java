package p193e.p194a.p1359x4;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1359x4.p1360j.AbstractC21427a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.x4.h */
/* loaded from: classes13-dex2jar.jar:e/a/x4/h.class */
public final class C21424h implements AbstractC21423g {

    /* renamed from: a */
    public final C20592g f59898a;

    /* renamed from: b */
    public final AbstractC21427a f59899b;

    @e(c = "com.truecaller.searchwarnings.SearchWarningsHelperImpl", f = "SearchWarningsHelper.kt", l = {51}, m = "getSearchWarningViewModel")
    /* renamed from: e.a.x4.h$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/h$a.class */
    public static final class C21425a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f59900d;

        /* renamed from: e */
        public int f59901e;

        /* renamed from: g */
        public Object f59903g;

        /* renamed from: h */
        public Object f59904h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21425a(d dVar) {
            super(dVar);
            C21424h.this = r4;
        }

        /* renamed from: s */
        public final Object m9744s(Object obj) {
            this.f59900d = obj;
            this.f59901e |= Integer.MIN_VALUE;
            return C21424h.this.mo9747a(null, this);
        }
    }

    @Inject
    public C21424h(@Named("features_registry") C20592g c20592g, AbstractC21427a abstractC21427a) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC21427a, "searchWarningsRepository");
        this.f59898a = c20592g;
        this.f59899b = abstractC21427a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c6  */
    @Override // p193e.p194a.p1359x4.AbstractC21423g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo9747a(com.truecaller.data.entity.SearchWarning r11, s1.w.d<? super com.truecaller.searchwarnings.data.SearchWarningViewModel> r12) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1359x4.C21424h.mo9747a(com.truecaller.data.entity.SearchWarning, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1359x4.AbstractC21423g
    /* renamed from: b */
    public boolean mo9746b(Contact contact) {
        boolean z = false;
        if (contact != null && !contact.m35495t0() && !contact.m35565G0() && !contact.m35492v0() && !contact.m35538Y().isEmpty()) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1359x4.AbstractC21423g
    /* renamed from: c */
    public boolean mo9745c(Contact contact) {
        boolean z = false;
        if (contact != null) {
            C20592g c20592g = this.f59898a;
            if (c20592g.f58045v4.m10941a(c20592g, C20592g.f57695p6[285]).isEnabled() && !contact.m35538Y().isEmpty() && C17891a1.C17902k.m15668J0(contact)) {
                z = true;
            }
        }
        return z;
    }
}
