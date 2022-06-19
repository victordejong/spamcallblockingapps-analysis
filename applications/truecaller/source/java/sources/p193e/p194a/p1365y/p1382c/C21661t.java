package p193e.p194a.p1365y.p1382c;

import android.graphics.Bitmap;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.core.KidFlashService;
import com.truecaller.flashsdk.models.QueuedFlash;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.core.KidFlashService$showMissed$1", f = "KidFlashService.kt", l = {655, 673}, m = "invokeSuspend")
/* renamed from: e.a.y.c.t */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/t.class */
public final class C21661t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f60372e;

    /* renamed from: f */
    public Object f60373f;

    /* renamed from: g */
    public int f60374g;

    /* renamed from: h */
    public int f60375h;

    /* renamed from: i */
    public final /* synthetic */ KidFlashService f60376i;

    /* renamed from: j */
    public final /* synthetic */ QueuedFlash f60377j;

    /* renamed from: k */
    public final /* synthetic */ KidFlashService f60378k;

    @e(c = "com.truecaller.flashsdk.core.KidFlashService$showMissed$1$bitmap$1", f = "KidFlashService.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.t$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/t$a.class */
    public static final class C21662a extends i implements p<i0, d<? super Bitmap>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f60380f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21662a(List list, d dVar) {
            super(2, dVar);
            C21661t.this = r5;
            this.f60380f = list;
        }

        /* renamed from: i */
        public final d<s> m9218i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21662a(this.f60380f, dVar);
        }

        /* renamed from: k */
        public final Object m9217k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21661t c21661t = C21661t.this;
            List list = this.f60380f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            KidFlashService kidFlashService = c21661t.f60376i;
            AbstractC21606g0 abstractC21606g0 = kidFlashService.f11961e;
            if (abstractC21606g0 == null) {
                l.l("resourceProvider");
                throw null;
            }
            String string = kidFlashService.getString(C3909R.string.map_url, new Object[]{list.get(0), list.get(1), list.get(0), list.get(1)});
            l.d(string, "getString(R.string.map_u…s[1], parts[0], parts[1])");
            return abstractC21606g0.mo9371f(string, false);
        }

        /* renamed from: s */
        public final Object m9216s(Object obj) {
            C25225a.m3932a3(obj);
            KidFlashService kidFlashService = C21661t.this.f60376i;
            AbstractC21606g0 abstractC21606g0 = kidFlashService.f11961e;
            if (abstractC21606g0 == null) {
                l.l("resourceProvider");
                throw null;
            }
            String string = kidFlashService.getString(C3909R.string.map_url, new Object[]{this.f60380f.get(0), this.f60380f.get(1), this.f60380f.get(0), this.f60380f.get(1)});
            l.d(string, "getString(R.string.map_u…s[1], parts[0], parts[1])");
            return abstractC21606g0.mo9371f(string, false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21661t(KidFlashService kidFlashService, QueuedFlash queuedFlash, KidFlashService kidFlashService2, d dVar) {
        super(2, dVar);
        this.f60376i = kidFlashService;
        this.f60377j = queuedFlash;
        this.f60378k = kidFlashService2;
    }

    /* renamed from: i */
    public final d<s> m9221i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C21661t c21661t = new C21661t(this.f60376i, this.f60377j, this.f60378k, dVar);
        c21661t.f60372e = obj;
        return c21661t;
    }

    /* renamed from: k */
    public final Object m9220k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21661t c21661t = new C21661t(this.f60376i, this.f60377j, this.f60378k, dVar);
        c21661t.f60372e = obj;
        return c21661t.m9219s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e2, code lost:
        if (r13 != null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0480  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m9219s(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 1215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21661t.m9219s(java.lang.Object):java.lang.Object");
    }
}
