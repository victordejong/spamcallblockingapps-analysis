package p193e.p194a.p1060m4.p1061c;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.common.profile.ImageSource;
import com.truecaller.common.profile.ProfileSaveError;
import com.truecaller.common.profile.ProfileSaveErrorResponse;
import com.truecaller.profile.data.dto.Profile;
import com.truecaller.profile.data.dto.ProfileResponse;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import e.m.e.k;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18222a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.C18230g;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.j0;
import u3.l0;
import x3.a0;
/* renamed from: e.a.m4.c.d */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/d.class */
public final class C18205d implements AbstractC18204c, i0 {

    /* renamed from: a */
    public final AbstractC18218f f51472a;

    /* renamed from: b */
    public final f f51473b;

    @e(c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$deleteImageAsync$1", f = "ProfileNetworkHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/d$a.class */
    public static final class C18206a extends i implements p<i0, d<? super Boolean>, Object> {
        public C18206a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m15441i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18206a(dVar);
        }

        /* renamed from: k */
        public final Object m15440k(Object obj, Object obj2) {
            boolean z;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                a0 execute = ((AbstractC18202a) C8367d.m28633a(KnownEndpoints.IMAGES, AbstractC18202a.class)).m15453b().execute();
                z = C12864a2.m22540r(execute != null ? Boolean.valueOf(execute.b()) : null);
            } catch (IOException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m15439s(Object obj) {
            boolean z;
            C25225a.m3932a3(obj);
            try {
                a0 execute = ((AbstractC18202a) C8367d.m28633a(KnownEndpoints.IMAGES, AbstractC18202a.class)).m15453b().execute();
                z = C12864a2.m22540r(execute != null ? Boolean.valueOf(execute.b()) : null);
            } catch (IOException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$getBizProfileAsync$1", f = "ProfileNetworkHelper.kt", l = {101}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.d$b */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/d$b.class */
    public static final class C18207b extends i implements p<i0, d<? super C18230g>, Object> {

        /* renamed from: e */
        public int f51474e;

        public C18207b(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m15438i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18207b(dVar);
        }

        /* renamed from: k */
        public final Object m15437k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18207b(dVar).m15436s(s.a);
        }

        /* renamed from: s */
        public final Object m15436s(Object obj) {
            C18230g c18230g;
            a aVar = a.a;
            int i = this.f51474e;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f51474e = 1;
                    Object m15402a = ((AbstractC18222a) C8367d.m28633a(KnownEndpoints.COMPANYPROFILE, AbstractC18222a.class)).m15402a(this);
                    obj = m15402a;
                    if (m15402a == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                a0 a0Var = (a0) obj;
                c18230g = new C18230g(a0Var.a.e, (BusinessProfile) a0Var.b);
            } catch (IOException e) {
                c18230g = new C18230g(0, null);
            }
            return c18230g;
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$getProfileAsync$1", f = "ProfileNetworkHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.d$c */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/d$c.class */
    public static final class C18208c extends i implements p<i0, d<? super C18221h>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18208c(d dVar) {
            super(2, dVar);
            C18205d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15435i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18208c(dVar);
        }

        /* renamed from: k */
        public final Object m15434k(Object obj, Object obj2) {
            C18221h c18221h;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18205d c18205d = C18205d.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                a0 execute = c18205d.f51472a.mo15406a().execute();
                c18221h = new C18221h(execute.a.e, (ProfileResponse) execute.b);
            } catch (IOException e) {
                c18221h = new C18221h(0, null);
            }
            return c18221h;
        }

        /* renamed from: s */
        public final Object m15433s(Object obj) {
            C18221h c18221h;
            C25225a.m3932a3(obj);
            try {
                a0 execute = C18205d.this.f51472a.mo15406a().execute();
                c18221h = new C18221h(execute.a.e, (ProfileResponse) execute.b);
            } catch (IOException e) {
                c18221h = new C18221h(0, null);
            }
            return c18221h;
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$saveAsync$1", f = "ProfileNetworkHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.d$d */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/d$d.class */
    public static final class C18209d extends i implements p<i0, d<? super AbstractC8532h>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Profile f51477f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18209d(Profile profile, d dVar) {
            super(2, dVar);
            C18205d.this = r5;
            this.f51477f = profile;
        }

        /* renamed from: i */
        public final d<s> m15432i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18209d(this.f51477f, dVar);
        }

        /* renamed from: k */
        public final Object m15431k(Object obj, Object obj2) {
            AbstractC8532h abstractC8532h;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18205d c18205d = C18205d.this;
            Profile profile = this.f51477f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                a0 execute = c18205d.f51472a.mo15405b(profile).execute();
                abstractC8532h = execute != null ? C18205d.m15442f(c18205d, execute) : new AbstractC8532h.C8538f(0);
            } catch (IOException e) {
                abstractC8532h = AbstractC8532h.C8536d.f26327c;
            }
            return abstractC8532h;
        }

        /* renamed from: s */
        public final Object m15430s(Object obj) {
            AbstractC8532h abstractC8532h;
            C25225a.m3932a3(obj);
            try {
                a0 execute = C18205d.this.f51472a.mo15405b(this.f51477f).execute();
                abstractC8532h = execute != null ? C18205d.m15442f(C18205d.this, execute) : new AbstractC8532h.C8538f(0);
            } catch (IOException e) {
                abstractC8532h = AbstractC8532h.C8536d.f26327c;
            }
            return abstractC8532h;
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$uploadImageAsync$1", f = "ProfileNetworkHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.d$e */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/d$e.class */
    public static final class C18210e extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ j0 f51479f;

        /* renamed from: g */
        public final /* synthetic */ ImageSource f51480g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18210e(j0 j0Var, ImageSource imageSource, d dVar) {
            super(2, dVar);
            C18205d.this = r5;
            this.f51479f = j0Var;
            this.f51480g = imageSource;
        }

        /* renamed from: i */
        public final d<s> m15429i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18210e(this.f51479f, this.f51480g, dVar);
        }

        /* renamed from: k */
        public final Object m15428k(Object obj, Object obj2) {
            String str;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18205d c18205d = C18205d.this;
            j0 j0Var = this.f51479f;
            ImageSource imageSource = this.f51480g;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            AbstractC18202a abstractC18202a = (AbstractC18202a) C8367d.m28633a(KnownEndpoints.IMAGES, AbstractC18202a.class);
            Objects.requireNonNull(c18205d);
            int ordinal = imageSource.ordinal();
            int i = 2;
            if (ordinal == 0) {
                i = 0;
            } else if (ordinal != 1) {
                if (ordinal != 2) {
                    throw new s1.i();
                }
                i = 3;
            }
            try {
                a0 execute = abstractC18202a.m15454a(j0Var, i).execute();
                l.d(execute, "response");
                str = null;
                if (execute.b()) {
                    l0 l0Var = (l0) execute.b;
                    str = null;
                    if (l0Var != null) {
                        str = l0Var.s();
                    }
                }
            } catch (IOException e) {
                str = null;
            }
            return str;
        }

        /* renamed from: s */
        public final Object m15427s(Object obj) {
            String str;
            C25225a.m3932a3(obj);
            AbstractC18202a abstractC18202a = (AbstractC18202a) C8367d.m28633a(KnownEndpoints.IMAGES, AbstractC18202a.class);
            j0 j0Var = this.f51479f;
            C18205d c18205d = C18205d.this;
            ImageSource imageSource = this.f51480g;
            Objects.requireNonNull(c18205d);
            int ordinal = imageSource.ordinal();
            int i = 2;
            if (ordinal == 0) {
                i = 0;
            } else if (ordinal != 1) {
                if (ordinal != 2) {
                    throw new s1.i();
                }
                i = 3;
            }
            try {
                a0 execute = abstractC18202a.m15454a(j0Var, i).execute();
                l.d(execute, "response");
                str = null;
                if (execute.b()) {
                    l0 l0Var = (l0) execute.b;
                    str = null;
                    if (l0Var != null) {
                        str = l0Var.s();
                    }
                }
            } catch (IOException e) {
                str = null;
            }
            return str;
        }
    }

    @Inject
    public C18205d(AbstractC18218f abstractC18218f, @Named("IO") f fVar) {
        l.e(abstractC18218f, "adapter");
        l.e(fVar, "coroutineContext");
        this.f51472a = abstractC18218f;
        this.f51473b = fVar;
    }

    /* renamed from: f */
    public static final AbstractC8532h m15442f(C18205d c18205d, a0 a0Var) {
        AbstractC8532h.C8538f c8538f;
        k kVar;
        Type type;
        Objects.requireNonNull(c18205d);
        int i = a0Var.a.e;
        if (i == 204) {
            c8538f = AbstractC8532h.C8537e.f26328c;
        } else if (i == 400) {
            c8538f = AbstractC8532h.C8533a.f26324c;
        } else if (i == 403) {
            c8538f = AbstractC8532h.C8534b.f26325c;
        } else if (i != 422) {
            c8538f = i != 500 ? new AbstractC8532h.C8538f(i) : AbstractC8532h.C8535c.f26326c;
        } else {
            Objects.requireNonNull(ProfileSaveErrorResponse.Companion);
            l.e(a0Var, "response");
            kVar = ProfileSaveErrorResponse.gson;
            l0 l0Var = a0Var.c;
            Reader j = l0Var != null ? l0Var.j() : null;
            type = ProfileSaveErrorResponse.type;
            Object e = kVar.e(j, type);
            l.d(e, "gson.fromJson(response.e…           type\n        )");
            List<ProfileSaveError> errors = ((ProfileSaveErrorResponse) e).getErrors();
            if (errors == null) {
                errors = s1.u.s.a;
            }
            c8538f = new AbstractC8532h.C8539g(errors);
        }
        return c8538f;
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18204c
    /* renamed from: a */
    public n0<AbstractC8532h> mo15447a(Profile profile) {
        l.e(profile, "profile");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (q3.a.j0) null, new C18209d(profile, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18204c
    /* renamed from: b */
    public n0<C18221h> mo15446b() {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (q3.a.j0) null, new C18208c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18204c
    /* renamed from: c */
    public n0<Boolean> mo15445c() {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (q3.a.j0) null, new C18206a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18204c
    /* renamed from: d */
    public n0<String> mo15444d(j0 j0Var, ImageSource imageSource) {
        l.e(j0Var, "requestBody");
        l.e(imageSource, "source");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (q3.a.j0) null, new C18210e(j0Var, imageSource, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1060m4.p1061c.AbstractC18204c
    /* renamed from: e */
    public n0<C18230g> mo15443e() {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (q3.a.j0) null, new C18207b(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f51473b;
    }
}
