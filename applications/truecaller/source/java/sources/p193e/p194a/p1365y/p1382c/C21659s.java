package p193e.p194a.p1365y.p1382c;

import android.graphics.Bitmap;
import com.truecaller.flashsdk.core.KidFlashService;
import com.truecaller.flashsdk.models.Contact;
import com.truecaller.flashsdk.models.QueuedFlash;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.core.KidFlashService$showFlashPendingNotification$1", f = "KidFlashService.kt", l = {694}, m = "invokeSuspend")
/* renamed from: e.a.y.c.s */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/s.class */
public final class C21659s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f60364e;

    /* renamed from: f */
    public Object f60365f;

    /* renamed from: g */
    public int f60366g;

    /* renamed from: h */
    public final /* synthetic */ KidFlashService f60367h;

    /* renamed from: i */
    public final /* synthetic */ QueuedFlash f60368i;

    /* renamed from: j */
    public final /* synthetic */ Bitmap f60369j;

    @e(c = "com.truecaller.flashsdk.core.KidFlashService$showFlashPendingNotification$1$contact$1", f = "KidFlashService.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.s$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/s$a.class */
    public static final class C21660a extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f60371f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21660a(c0 c0Var, d dVar) {
            super(2, dVar);
            C21659s.this = r5;
            this.f60371f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m9224i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21660a(this.f60371f, dVar);
        }

        /* renamed from: k */
        public final Object m9223k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21659s c21659s = C21659s.this;
            c0 c0Var = this.f60371f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c21659s.f60367h.m35411d().mo9388b((String) c0Var.a);
        }

        /* renamed from: s */
        public final Object m9222s(Object obj) {
            C25225a.m3932a3(obj);
            return C21659s.this.f60367h.m35411d().mo9388b((String) this.f60371f.a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21659s(KidFlashService kidFlashService, QueuedFlash queuedFlash, Bitmap bitmap, d dVar) {
        super(2, dVar);
        this.f60367h = kidFlashService;
        this.f60368i = queuedFlash;
        this.f60369j = bitmap;
    }

    /* renamed from: i */
    public final d<s> m9227i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21659s(this.f60367h, this.f60368i, this.f60369j, dVar);
    }

    /* renamed from: k */
    public final Object m9226k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21659s(this.f60367h, this.f60368i, this.f60369j, dVar).m9225s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00cf, code lost:
        if (r8 != null) goto L18;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m9225s(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21659s.m9225s(java.lang.Object):java.lang.Object");
    }
}
