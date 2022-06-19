package p193e.p194a.p1080o;

import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.presence.p139v1.models.CallContext;
import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
import com.truecaller.data.entity.Number;
import java.io.Serializable;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1080o.p1097b.AbstractC18733j;
import p193e.p194a.p682e.p698c.C13090i0;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.k */
/* loaded from: classes8-dex2jar.jar:e/a/o/k.class */
public final class C18778k implements AbstractC18777j, i0 {

    /* renamed from: a */
    public final AbstractC18765c f52749a;

    /* renamed from: b */
    public final f f52750b;

    /* renamed from: c */
    public final f f52751c;

    @e(c = "com.truecaller.contextcall.ContextCallUtilsImpl$isContextCallCapable$2", f = "ContextCallUtils.kt", l = {66}, m = "invokeSuspend")
    /* renamed from: e.a.o.k$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/k$a.class */
    public static final class C18779a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f52752e;

        /* renamed from: g */
        public final /* synthetic */ Number f52754g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18779a(Number number, d dVar) {
            super(2, dVar);
            C18778k.this = r5;
            this.f52754g = number;
        }

        /* renamed from: i */
        public final d<s> m14479i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18779a(this.f52754g, dVar);
        }

        /* renamed from: k */
        public final Object m14478k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18779a(this.f52754g, dVar).m14477s(s.a);
        }

        /* renamed from: s */
        public final Object m14477s(Object obj) {
            a aVar = a.a;
            int i = this.f52752e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18765c abstractC18765c = C18778k.this.f52749a;
                String m35479e = this.f52754g.m35479e();
                l.d(m35479e, "phoneNumber.normalizedNumber");
                this.f52752e = 1;
                Object mo14511n = abstractC18765c.mo14511n(m35479e, this);
                obj = mo14511n;
                if (mo14511n == aVar) {
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

    @e(c = "com.truecaller.contextcall.ContextCallUtilsImpl$isOnBoarded$1", f = "ContextCallUtils.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: e.a.o.k$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/k$b.class */
    public static final class C18780b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f52755e;

        /* renamed from: f */
        public int f52756f;

        /* renamed from: h */
        public final /* synthetic */ s1.z.b.l f52758h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18780b(s1.z.b.l lVar, d dVar) {
            super(2, dVar);
            C18778k.this = r5;
            this.f52758h = lVar;
        }

        /* renamed from: i */
        public final d<s> m14476i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18780b(this.f52758h, dVar);
        }

        /* renamed from: k */
        public final Object m14475k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18780b(this.f52758h, dVar).m14474s(s.a);
        }

        /* renamed from: s */
        public final Object m14474s(Object obj) {
            Object obj2;
            s1.z.b.l lVar;
            a aVar = a.a;
            int i = this.f52756f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                s1.z.b.l lVar2 = this.f52758h;
                AbstractC18765c abstractC18765c = C18778k.this.f52749a;
                this.f52755e = lVar2;
                this.f52756f = 1;
                obj2 = abstractC18765c.mo14519f(this);
                if (obj2 == aVar) {
                    return aVar;
                }
                lVar = lVar2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                lVar = (s1.z.b.l) this.f52755e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            lVar.d(obj2);
            return s.a;
        }
    }

    @e(c = "com.truecaller.contextcall.ContextCallUtilsImpl$userHasHiddenNumber$1", f = "ContextCallUtils.kt", l = {87}, m = "invokeSuspend")
    /* renamed from: e.a.o.k$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/k$c.class */
    public static final class C18781c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f52759e;

        /* renamed from: f */
        public int f52760f;

        /* renamed from: h */
        public final /* synthetic */ s1.z.b.l f52762h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18781c(s1.z.b.l lVar, d dVar) {
            super(2, dVar);
            C18778k.this = r5;
            this.f52762h = lVar;
        }

        /* renamed from: i */
        public final d<s> m14473i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18781c(this.f52762h, dVar);
        }

        /* renamed from: k */
        public final Object m14472k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18781c(this.f52762h, dVar).m14471s(s.a);
        }

        /* renamed from: s */
        public final Object m14471s(Object obj) {
            Object obj2;
            s1.z.b.l lVar;
            a aVar = a.a;
            int i = this.f52760f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                s1.z.b.l lVar2 = this.f52762h;
                AbstractC18765c abstractC18765c = C18778k.this.f52749a;
                this.f52759e = lVar2;
                this.f52760f = 1;
                obj2 = abstractC18765c.mo14499z(this);
                if (obj2 == aVar) {
                    return aVar;
                }
                lVar = lVar2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                lVar = (s1.z.b.l) this.f52759e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            lVar.d(obj2);
            return s.a;
        }
    }

    @Inject
    public C18778k(AbstractC18765c abstractC18765c, @Named("IO") f fVar, @Named("UI") f fVar2) {
        l.e(abstractC18765c, "contextCall");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f52749a = abstractC18765c;
        this.f52750b = fVar;
        this.f52751c = fVar2;
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: d */
    public void mo14486d(Intent intent) {
        l.e(intent, "intent");
        Serializable serializableExtra = intent.getSerializableExtra("com.truecaller.datamanager.EXTRA_PRESENCE");
        Serializable serializable = serializableExtra;
        if (!(serializableExtra instanceof ArrayList)) {
            serializable = null;
        }
        ArrayList<C17409e> arrayList = (ArrayList) serializable;
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            for (C17409e c17409e : arrayList) {
                CallContext callContext = c17409e.f48763j;
                ContextCallAvailability contextCallAvailability = callContext != null ? new ContextCallAvailability(c17409e.f48754a, 1 ^ callContext.getDisabled(), callContext.getVersion()) : null;
                if (contextCallAvailability != null) {
                    arrayList2.add(contextCallAvailability);
                }
            }
            this.f52749a.mo14507r(arrayList2);
        }
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: e */
    public void mo14485e(String str, boolean z) {
        l.e(str, AnalyticsConstants.CONTEXT);
        this.f52749a.mo14520e(str, z);
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: f */
    public Object mo14484f(Number number, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f52750b, new C18779a(number, null), dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: g */
    public void mo14483g(s1.z.b.l<? super Boolean, s> lVar) {
        l.e(lVar, "callback");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18781c(lVar, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f52751c;
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: h */
    public void mo14482h(s1.z.b.l<? super AbstractC18733j, s> lVar) {
        l.e(lVar, "callback");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18780b(lVar, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: i */
    public void mo14481i(Number number, C13090i0 c13090i0) {
        l.e(number, "phoneNumber");
        l.e(c13090i0, "contextCallButtonCallbackCallback");
        s1.a.a.a.v0.f.d.w2(this, this.f52751c, (j0) null, new C18782l(this, number, c13090i0, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    public boolean isSupported() {
        return this.f52749a.isSupported();
    }

    @Override // p193e.p194a.p1080o.AbstractC18777j
    /* renamed from: o */
    public void mo14480o(boolean z) {
        this.f52749a.mo14510o(z);
    }
}
