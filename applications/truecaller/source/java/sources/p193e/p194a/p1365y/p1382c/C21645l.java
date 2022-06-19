package p193e.p194a.p1365y.p1382c;

import android.net.Uri;
import android.os.Bundle;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashRequest;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.MediaUrl;
import com.truecaller.flashsdk.models.Payload;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.d0;
import x3.a0;
/* renamed from: e.a.y.c.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/l.class */
public final class C21645l implements AbstractC21644k {

    /* renamed from: a */
    public final AbstractC21631b f60330a = C21632c.m9330b();

    /* renamed from: b */
    public final f f60331b;

    /* renamed from: c */
    public AbstractC21643j f60332c;

    /* renamed from: d */
    public final f f60333d;

    /* renamed from: e */
    public final AbstractC21653p f60334e;

    /* renamed from: f */
    public final AbstractC21603f f60335f;

    /* renamed from: g */
    public final AbstractC21614m f60336g;

    @e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl", f = "FlashRequestHandler.kt", l = {143}, m = "getMediaUrls")
    /* renamed from: e.a.y.c.l$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/l$a.class */
    public static final class C21646a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60337d;

        /* renamed from: e */
        public int f60338e;

        /* renamed from: g */
        public Object f60340g;

        /* renamed from: h */
        public Object f60341h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21646a(d dVar) {
            super(dVar);
            C21645l.this = r4;
        }

        /* renamed from: s */
        public final Object m9254s(Object obj) {
            this.f60337d = obj;
            this.f60338e |= Integer.MIN_VALUE;
            return C21645l.this.mo9262c(null, this);
        }
    }

    @e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$getMediaUrls$result$1", f = "FlashRequestHandler.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.l$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/l$b.class */
    public static final class C21647b extends i implements p<i0, d<? super a0<MediaUrl>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21647b(d dVar) {
            super(2, dVar);
            C21645l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m9253i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21647b(dVar);
        }

        /* renamed from: k */
        public final Object m9252k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21645l c21645l = C21645l.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c21645l.f60334e.mo9237b().execute();
        }

        /* renamed from: s */
        public final Object m9251s(Object obj) {
            C25225a.m3932a3(obj);
            return C21645l.this.f60334e.mo9237b().execute();
        }
    }

    @e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$triggerSendFlash$1", f = "FlashRequestHandler.kt", l = {83, 94}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.l$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/l$c.class */
    public static final class C21648c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f60343e;

        /* renamed from: g */
        public final /* synthetic */ Flash f60345g;

        /* renamed from: h */
        public final /* synthetic */ boolean f60346h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21648c(Flash flash, boolean z, d dVar) {
            super(2, dVar);
            C21645l.this = r5;
            this.f60345g = flash;
            this.f60346h = z;
        }

        /* renamed from: i */
        public final d<s> m9250i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21648c(this.f60345g, this.f60346h, dVar);
        }

        /* renamed from: k */
        public final Object m9249k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21648c(this.f60345g, this.f60346h, dVar).m9248s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x012a A[Catch: IOException -> 0x0196, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x0196, blocks: (B:8:0x001f, B:11:0x0030, B:13:0x003b, B:18:0x0067, B:20:0x0070, B:22:0x0081, B:24:0x00a2, B:26:0x00bf, B:28:0x00c9, B:32:0x00dd, B:34:0x00e3, B:39:0x0121, B:41:0x012a, B:43:0x013b, B:45:0x0153, B:47:0x015f, B:48:0x016a, B:50:0x017d, B:52:0x018a), top: B:57:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x013b A[Catch: IOException -> 0x0196, TRY_ENTER, TryCatch #0 {IOException -> 0x0196, blocks: (B:8:0x001f, B:11:0x0030, B:13:0x003b, B:18:0x0067, B:20:0x0070, B:22:0x0081, B:24:0x00a2, B:26:0x00bf, B:28:0x00c9, B:32:0x00dd, B:34:0x00e3, B:39:0x0121, B:41:0x012a, B:43:0x013b, B:45:0x0153, B:47:0x015f, B:48:0x016a, B:50:0x017d, B:52:0x018a), top: B:57:0x0010 }] */
        /* JADX WARN: Type inference failed for: r0v62, types: [long] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9248s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21645l.C21648c.m9248s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$triggerSendImageFlash$1", f = "FlashRequestHandler.kt", l = {118, Constants.ERR_WATERMARK_READ}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.l$d */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/l$d.class */
    public static final class C21649d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f60347e;

        /* renamed from: g */
        public final /* synthetic */ ImageFlash f60349g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC21630a f60350h;

        /* renamed from: i */
        public final /* synthetic */ boolean f60351i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21649d(ImageFlash imageFlash, AbstractC21630a abstractC21630a, boolean z, d dVar) {
            super(2, dVar);
            C21645l.this = r5;
            this.f60349g = imageFlash;
            this.f60350h = abstractC21630a;
            this.f60351i = z;
        }

        /* renamed from: i */
        public final d<s> m9247i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21649d(this.f60349g, this.f60350h, this.f60351i, dVar);
        }

        /* renamed from: k */
        public final Object m9246k(Object obj, Object obj2) {
            return m9247i(obj, (d) obj2).m9245s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x012e A[Catch: IOException -> 0x0185, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x0185, blocks: (B:8:0x001f, B:11:0x0030, B:13:0x003b, B:18:0x0067, B:20:0x0070, B:22:0x0085, B:24:0x00a6, B:26:0x00c3, B:28:0x00cd, B:32:0x00e1, B:34:0x00e7, B:39:0x0125, B:41:0x012e, B:43:0x0143, B:47:0x0165, B:48:0x0171), top: B:53:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0143 A[Catch: IOException -> 0x0185, TRY_ENTER, TryCatch #0 {IOException -> 0x0185, blocks: (B:8:0x001f, B:11:0x0030, B:13:0x003b, B:18:0x0067, B:20:0x0070, B:22:0x0085, B:24:0x00a6, B:26:0x00c3, B:28:0x00cd, B:32:0x00e1, B:34:0x00e7, B:39:0x0125, B:41:0x012e, B:43:0x0143, B:47:0x0165, B:48:0x0171), top: B:53:0x0010 }] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9245s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21645l.C21649d.m9245s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C21645l(@Named("UI") f fVar, AbstractC21653p abstractC21653p, AbstractC21603f abstractC21603f, AbstractC21614m abstractC21614m) {
        l.e(fVar, "uiContext");
        l.e(abstractC21653p, "flashRestAdapter");
        l.e(abstractC21603f, "deviceUtils");
        l.e(abstractC21614m, "flashMediaHelper");
        this.f60333d = fVar;
        this.f60334e = abstractC21653p;
        this.f60335f = abstractC21603f;
        this.f60336g = abstractC21614m;
        this.f60331b = fVar;
    }

    /* renamed from: e */
    public static final n0 m9260e(C21645l c21645l, String str) {
        return s1.a.a.a.v0.f.d.H(h1.a, c21645l.f60331b.plus(t0.d), (j0) null, new C21650m(c21645l, str, null), 2, (Object) null);
    }

    /* renamed from: f */
    public static final void m9259f(C21645l c21645l, Flash flash) {
        AbstractC21642i mo9292z;
        Objects.requireNonNull(c21645l);
        Payload payload = flash.f11996f;
        l.d(payload, "flash.payload");
        if (!l.a("call_me_back", payload.m35382e()) || (mo9292z = c21645l.f60330a.mo9292z()) == null) {
            return;
        }
        mo9292z.mo9271j(3, String.valueOf(flash.f11992b), null);
    }

    /* renamed from: g */
    public static final void m9258g(C21645l c21645l, Flash flash, int i, int i2) {
        AbstractC21643j abstractC21643j = c21645l.f60332c;
        if (abstractC21643j != null) {
            abstractC21643j.mo9265j(flash, i, i2);
        }
        c21645l.m9256i(flash, String.valueOf(i2));
    }

    /* renamed from: h */
    public static final n0 m9257h(C21645l c21645l, FlashRequest flashRequest) {
        return s1.a.a.a.v0.f.d.H(h1.a, c21645l.f60331b.plus(t0.d), (j0) null, new C21651n(c21645l, flashRequest, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21644k
    /* renamed from: a */
    public void mo9264a(Flash flash, String str, boolean z, AbstractC21643j abstractC21643j) {
        l.e(flash, "flash");
        l.e(str, "fromScreen");
        this.f60332c = abstractC21643j;
        if (this.f60335f.mo9383b()) {
            s1.a.a.a.v0.f.d.w2(h1.a, this.f60331b, (j0) null, new C21648c(flash, z, null), 2, (Object) null);
            return;
        }
        AbstractC21643j abstractC21643j2 = this.f60332c;
        if (abstractC21643j2 != null) {
            abstractC21643j2.mo9265j(flash, 10, 10);
        }
        m9256i(flash, String.valueOf(10));
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21644k
    /* renamed from: b */
    public void mo9263b(ImageFlash imageFlash, String str, boolean z, AbstractC21630a abstractC21630a) {
        l.e(imageFlash, "flash");
        l.e(str, "fromScreen");
        if (!this.f60335f.mo9383b()) {
            m9255j(imageFlash, 10, 10, abstractC21630a);
        } else {
            s1.a.a.a.v0.f.d.w2(h1.a, this.f60331b, (j0) null, new C21649d(imageFlash, abstractC21630a, z, null), 2, (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ea  */
    @Override // p193e.p194a.p1365y.p1382c.AbstractC21644k
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo9262c(com.truecaller.flashsdk.models.ImageFlash r6, s1.w.d<? super com.truecaller.flashsdk.models.MediaUrl> r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21645l.mo9262c(com.truecaller.flashsdk.models.ImageFlash, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21644k
    /* renamed from: d */
    public Object mo9261d(ImageFlash imageFlash, d<? super Boolean> dVar) {
        try {
            MediaUrl mediaUrl = imageFlash.f12003j;
            AbstractC21614m abstractC21614m = this.f60336g;
            Uri uri = imageFlash.f12002i;
            l.d(uri, "flash.imageUri");
            d0.c b = d0.c.b("file", (String) null, abstractC21614m.mo9359a(uri));
            a0 execute = this.f60334e.mo9238a(mediaUrl.getUploadUrl(), C17891a1.C17902k.m15565v1(mediaUrl.getFormField()), b).execute();
            m9256i(imageFlash, String.valueOf(execute.a.e));
            l.d(execute, "result");
            return Boolean.valueOf(execute.b());
        } catch (IOException e) {
            m9256i(imageFlash, String.valueOf(14));
            return Boolean.FALSE;
        }
    }

    /* renamed from: i */
    public final void m9256i(Flash flash, String str) {
        String m35393a = flash.m35393a();
        Bundle bundle = new Bundle();
        bundle.putString("flashContext", m35393a.length() > 2 ? "reply" : "send");
        bundle.putString("sentFailed", str);
        String str2 = flash.f11993c;
        if (str2 == null) {
            str2 = C22128a.m8627e2("UUID.randomUUID().toString()");
        }
        bundle.putString("flashThreadId", str2);
        this.f60330a.mo9308j("FlashSentFailed", bundle);
    }

    /* renamed from: j */
    public final void m9255j(ImageFlash imageFlash, int i, int i2, AbstractC21630a abstractC21630a) {
        if (abstractC21630a != null) {
            abstractC21630a.mo9281U9(imageFlash, i, i2);
        }
        m9256i(imageFlash, String.valueOf(i2));
    }
}
