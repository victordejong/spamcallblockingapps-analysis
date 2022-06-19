package p193e.p194a.p294b.p295a.p296a.p301b;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1868v.AbstractC27005g0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p295a.p296a.p301b.p302c.C7598a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7613b;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7617d;
import p193e.p194a.p294b.p295a.p324g.AbstractC7809g;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8038n;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b.class */
public final class C7592b implements AbstractC7591a {

    /* renamed from: a */
    public final C7598a f23918a;

    /* renamed from: b */
    public final C7613b f23919b;

    /* renamed from: c */
    public final AbstractC7809g f23920c;

    @e(c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl", f = "BizProfileRepository.kt", l = {57}, m = "deleteProfile")
    /* renamed from: e.a.b.a.a.b.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b$a.class */
    public static final class C7593a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23921d;

        /* renamed from: e */
        public int f23922e;

        /* renamed from: g */
        public Object f23924g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7593a(d dVar) {
            super(dVar);
            C7592b.this = r4;
        }

        /* renamed from: s */
        public final Object m29501s(Object obj) {
            this.f23921d = obj;
            this.f23922e |= Integer.MIN_VALUE;
            return C7592b.this.mo29504b(this);
        }
    }

    /* renamed from: e.a.b.a.a.b.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b$b.class */
    public static final class C7594b extends m implements a<LiveData<BusinessProfile>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7594b() {
            super(0);
            C7592b.this = r4;
        }

        public Object invoke() {
            return C7592b.this.f23918a.f23934a;
        }
    }

    @e(c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$fetchProfile$2", f = "BizProfileRepository.kt", l = {37}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.a.b.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b$c.class */
    public static final class C7595c extends i implements l<d<? super AbstractC7602a<BusinessProfile>>, Object> {

        /* renamed from: e */
        public int f23926e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7595c(d dVar) {
            super(1, dVar);
            C7592b.this = r5;
        }

        /* renamed from: d */
        public final Object m29500d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C7595c(dVar).m29498s(s.a);
        }

        /* renamed from: l */
        public final d<s> m29499l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C7595c(dVar);
        }

        /* renamed from: s */
        public final Object m29498s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23926e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7613b c7613b = C7592b.this.f23919b;
                this.f23926e = 1;
                Objects.requireNonNull(c7613b);
                Object m15252P = C18334g0.m15252P(new C7617d(c7613b, null), this);
                obj = m15252P;
                if (m15252P == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$fetchProfile$3", f = "BizProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.a.b.b$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b$d.class */
    public static final class C7596d extends i implements p<BusinessProfile, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f23928e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7596d(d dVar) {
            super(2, dVar);
            C7592b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29497i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C7596d c7596d = new C7596d(dVar);
            c7596d.f23928e = obj;
            return c7596d;
        }

        /* renamed from: k */
        public final Object m29496k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C7592b c7592b = C7592b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            BusinessProfile businessProfile = (BusinessProfile) obj;
            C7598a c7598a = c7592b.f23918a;
            Objects.requireNonNull(c7598a);
            s1.z.c.l.e(businessProfile, "bizProfile");
            c7598a.f23935b.mo15397e(businessProfile);
            return sVar;
        }

        /* renamed from: s */
        public final Object m29495s(Object obj) {
            C25225a.m3932a3(obj);
            BusinessProfile businessProfile = (BusinessProfile) this.f23928e;
            C7598a c7598a = C7592b.this.f23918a;
            Objects.requireNonNull(c7598a);
            s1.z.c.l.e(businessProfile, "bizProfile");
            c7598a.f23935b.mo15397e(businessProfile);
            return s.a;
        }
    }

    @e(c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$updateProfile$1", f = "BizProfileRepository.kt", l = {44, 46, 50, 52}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.a.b.b$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/b$e.class */
    public static final class C7597e extends i implements p<AbstractC27005g0<AbstractC8042q<s>>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f23930e;

        /* renamed from: f */
        public int f23931f;

        /* renamed from: h */
        public final /* synthetic */ BusinessProfileRequest f23933h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7597e(BusinessProfileRequest businessProfileRequest, d dVar) {
            super(2, dVar);
            C7592b.this = r5;
            this.f23933h = businessProfileRequest;
        }

        /* renamed from: i */
        public final d<s> m29494i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C7597e c7597e = new C7597e(this.f23933h, dVar);
            c7597e.f23930e = obj;
            return c7597e;
        }

        /* renamed from: k */
        public final Object m29493k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C7597e c7597e = new C7597e(this.f23933h, dVar);
            c7597e.f23930e = obj;
            return c7597e.m29492s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x016c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x018f  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x01a5  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01bb  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0220  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0242  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x026e  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x02b2  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x02bc  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29492s(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 752
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p296a.p301b.C7592b.C7597e.m29492s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C7592b(C7598a c7598a, C7613b c7613b, AbstractC7809g abstractC7809g) {
        s1.z.c.l.e(c7598a, "bizProfileLocalDS");
        s1.z.c.l.e(c7613b, "bizProfileRemoteDS");
        s1.z.c.l.e(abstractC7809g, "dispatchers");
        this.f23918a = c7598a;
        this.f23919b = c7613b;
        this.f23920c = abstractC7809g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0158  */
    @Override // p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29504b(s1.w.d<? super p193e.p194a.p294b.p354l.AbstractC8042q<s1.s>> r8) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p296a.p301b.C7592b.mo29504b(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a
    /* renamed from: c */
    public LiveData<AbstractC8042q<BusinessProfile>> mo29503c() {
        C7594b c7594b = new C7594b();
        C7595c c7595c = new C7595c(null);
        C7596d c7596d = new C7596d(null);
        AbstractC7809g abstractC7809g = this.f23920c;
        s1.z.c.l.e(c7594b, "dbQuery");
        s1.z.c.l.e(c7595c, "networkQuery");
        s1.z.c.l.e(c7596d, "saveOnCall");
        s1.z.c.l.e(abstractC7809g, "dispatchers");
        return MediaSessionCompat.m43285M0(abstractC7809g.mo29283a(), 0L, new C8038n(c7594b, c7595c, c7596d, null), 2);
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a
    /* renamed from: d */
    public LiveData<AbstractC8042q<s>> mo29502d(BusinessProfileRequest businessProfileRequest) {
        s1.z.c.l.e(businessProfileRequest, "bizProfileRequest");
        return MediaSessionCompat.m43285M0(this.f23920c.mo29283a(), 0L, new C7597e(businessProfileRequest, null), 2);
    }
}
