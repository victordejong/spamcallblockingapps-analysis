package p193e.p194a.p1365y.p1382c;

import android.graphics.Bitmap;
import com.truecaller.flashsdk.core.KidFlashService;
import com.truecaller.flashsdk.models.Flash;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.core.KidFlashService$asyncGetImageUriForContact$1", f = "KidFlashService.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y.c.r */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/r.class */
public final class C21658r extends i implements p<i0, d<? super Bitmap>, Object> {

    /* renamed from: e */
    public final /* synthetic */ KidFlashService f60361e;

    /* renamed from: f */
    public final /* synthetic */ Flash f60362f;

    /* renamed from: g */
    public final /* synthetic */ int f60363g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21658r(KidFlashService kidFlashService, Flash flash, int i, d dVar) {
        super(2, dVar);
        this.f60361e = kidFlashService;
        this.f60362f = flash;
        this.f60363g = i;
    }

    /* renamed from: i */
    public final d<s> m9230i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21658r(this.f60361e, this.f60362f, this.f60363g, dVar);
    }

    /* renamed from: k */
    public final Object m9229k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21658r(this.f60361e, this.f60362f, this.f60363g, dVar).m9228s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004f, code lost:
        if (r5 != null) goto L13;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m9228s(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r4
            com.truecaller.flashsdk.core.KidFlashService r0 = r0.f60361e
            e.a.y.b.f r0 = r0.f11960d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lb1
            r0 = r5
            boolean r0 = r0.mo9384a()
            if (r0 == 0) goto L43
            r0 = r4
            com.truecaller.flashsdk.core.KidFlashService r0 = r0.f60361e
            e.a.y.b.c r0 = r0.m35411d()
            r6 = r0
            r0 = r4
            com.truecaller.flashsdk.models.Flash r0 = r0.f60362f
            com.truecaller.flashsdk.models.Sender r0 = r0.f11991a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "flash.sender"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r5
            java.lang.Long r1 = r1.m35377c()
            long r1 = r1.longValue()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.truecaller.flashsdk.models.Contact r0 = r0.mo9388b(r1)
            r5 = r0
            goto L45
        L43:
            r0 = 0
            r5 = r0
        L45:
            r0 = r5
            if (r0 == 0) goto L55
            r0 = r5
            java.lang.String r0 = r0.getImageUrl()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L55
            goto L68
        L55:
            r0 = r4
            com.truecaller.flashsdk.models.Flash r0 = r0.f60362f
            com.truecaller.flashsdk.models.Sender r0 = r0.f11991a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "flash.sender"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r0 = r0.m35379a()
            r5 = r0
        L68:
            r0 = r5
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.String"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto L7b
            r0 = 1
            r7 = r0
            goto L7d
        L7b:
            r0 = 0
            r7 = r0
        L7d:
            r0 = r7
            if (r0 == 0) goto L93
            r0 = r4
            com.truecaller.flashsdk.core.KidFlashService r0 = r0.f60361e
            android.content.res.Resources r0 = r0.getResources()
            r1 = r4
            int r1 = r1.f60363g
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeResource(r0, r1)
            r5 = r0
            goto La8
        L93:
            r0 = r4
            com.truecaller.flashsdk.core.KidFlashService r0 = r0.f60361e
            e.a.y.b.g0 r0 = r0.f11961e
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Laa
            r0 = r6
            r1 = r5
            r2 = 1
            android.graphics.Bitmap r0 = r0.mo9371f(r1, r2)
            r5 = r0
        La8:
            r0 = r5
            return r0
        Laa:
            java.lang.String r0 = "resourceProvider"
            s1.z.c.l.l(r0)
            r0 = 0
            throw r0
        Lb1:
            java.lang.String r0 = "deviceUtils"
            s1.z.c.l.l(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21658r.m9228s(java.lang.Object):java.lang.Object");
    }
}
