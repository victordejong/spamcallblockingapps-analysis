package p193e.p194a.p1396y4;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.y4.b */
/* loaded from: classes13-dex2jar.jar:e/a/y4/b.class */
public final class C21790b implements AbstractC21789a {

    /* renamed from: a */
    public final int f60630a = 24;

    /* renamed from: b */
    public final f f60631b;

    /* renamed from: c */
    public final C16461b f60632c;

    /* renamed from: d */
    public final AbstractC17405c f60633d;

    @e(c = "com.truecaller.service.CallMeBackManagerImpl", f = "CallMeBackManager.kt", l = {47}, m = "maybeShowCallMeBack")
    /* renamed from: e.a.y4.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/b$a.class */
    public static final class C21791a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60634d;

        /* renamed from: e */
        public int f60635e;

        /* renamed from: g */
        public Object f60637g;

        /* renamed from: h */
        public Object f60638h;

        /* renamed from: i */
        public Object f60639i;

        /* renamed from: j */
        public Object f60640j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21791a(d dVar) {
            super(dVar);
            C21790b.this = r4;
        }

        /* renamed from: s */
        public final Object m9073s(Object obj) {
            this.f60634d = obj;
            this.f60635e |= Integer.MIN_VALUE;
            return C21790b.this.m9074a(null, null, null, null, this);
        }
    }

    @e(c = "com.truecaller.service.CallMeBackManagerImpl$maybeShowCallMeBack$contact$1", f = "CallMeBackManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y4.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/b$b.class */
    public static final class C21792b extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f60642f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21792b(String str, d dVar) {
            super(2, dVar);
            C21790b.this = r5;
            this.f60642f = str;
        }

        /* renamed from: i */
        public final d<s> m9072i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21792b(this.f60642f, dVar);
        }

        /* renamed from: k */
        public final Object m9071k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21790b c21790b = C21790b.this;
            String str = this.f60642f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c21790b.f60632c.m17364h(str);
        }

        /* renamed from: s */
        public final Object m9070s(Object obj) {
            C25225a.m3932a3(obj);
            return C21790b.this.f60632c.m17364h(this.f60642f);
        }
    }

    @Inject
    public C21790b(@Named("Async") f fVar, C16461b c16461b, AbstractC17405c abstractC17405c) {
        l.e(fVar, "asyncContext");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC17405c, "availabilityManager");
        this.f60631b = fVar;
        this.f60632c = c16461b;
        this.f60633d = abstractC17405c;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m9074a(android.content.Context r9, java.lang.String r10, java.lang.String r11, com.truecaller.calling.initiate_call.InitiateCallHelper.CallContextOption r12, s1.w.d<? super java.lang.Boolean> r13) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.C21790b.m9074a(android.content.Context, java.lang.String, java.lang.String, com.truecaller.calling.initiate_call.InitiateCallHelper$CallContextOption, s1.w.d):java.lang.Object");
    }
}
