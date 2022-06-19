package p193e.p194a.p1365y.p1382c;

import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashExtras;
import com.truecaller.flashsdk.models.FlashImageEntity;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.MediaUrl;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.Sender;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21607h;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1381b.AbstractC21620q;
import p193e.p194a.p1365y.p1390h.AbstractC21747a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.y.c.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/g.class */
public final class C21637g extends AbstractC20574a<AbstractC21636f> implements AbstractC21635e, AbstractC21630a {

    /* renamed from: d */
    public final f f60301d;

    /* renamed from: e */
    public final f f60302e;

    /* renamed from: f */
    public final AbstractC21644k f60303f;

    /* renamed from: g */
    public final AbstractC21606g0 f60304g;

    /* renamed from: h */
    public final AbstractC21607h f60305h;

    /* renamed from: i */
    public final AbstractC21614m f60306i;

    /* renamed from: j */
    public final AbstractC21747a f60307j;

    /* renamed from: k */
    public final AbstractC21620q f60308k;

    @e(c = "com.truecaller.flashsdk.core.FlashMediaServicePresenter", f = "FlashMediaServicePresenter.kt", l = {84, 87}, m = "handleNewImageFlash")
    /* renamed from: e.a.y.c.g$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/g$a.class */
    public static final class C21638a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60309d;

        /* renamed from: e */
        public int f60310e;

        /* renamed from: g */
        public Object f60312g;

        /* renamed from: h */
        public Object f60313h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21638a(d dVar) {
            super(dVar);
            C21637g.this = r4;
        }

        /* renamed from: s */
        public final Object m9278s(Object obj) {
            this.f60309d = obj;
            this.f60310e |= Integer.MIN_VALUE;
            return C21637g.this.m9284Ij(null, this);
        }
    }

    @e(c = "com.truecaller.flashsdk.core.FlashMediaServicePresenter", f = "FlashMediaServicePresenter.kt", l = {96, 99}, m = "handleUploading")
    /* renamed from: e.a.y.c.g$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/g$b.class */
    public static final class C21639b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f60314d;

        /* renamed from: e */
        public int f60315e;

        /* renamed from: g */
        public Object f60317g;

        /* renamed from: h */
        public Object f60318h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21639b(d dVar) {
            super(dVar);
            C21637g.this = r4;
        }

        /* renamed from: s */
        public final Object m9277s(Object obj) {
            this.f60314d = obj;
            this.f60315e |= Integer.MIN_VALUE;
            return C21637g.this.m9283Jj(null, this);
        }
    }

    @e(c = "com.truecaller.flashsdk.core.FlashMediaServicePresenter$onStartCommand$2$1", f = "FlashMediaServicePresenter.kt", l = {45, 46}, m = "invokeSuspend")
    /* renamed from: e.a.y.c.g$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/c/g$c.class */
    public static final class C21640c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f60319e;

        /* renamed from: f */
        public final /* synthetic */ ImageFlash f60320f;

        /* renamed from: g */
        public final /* synthetic */ C21637g f60321g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21640c(ImageFlash imageFlash, d dVar, C21637g c21637g) {
            super(2, dVar);
            this.f60320f = imageFlash;
            this.f60321g = c21637g;
        }

        /* renamed from: i */
        public final d<s> m9276i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21640c(this.f60320f, dVar, this.f60321g);
        }

        /* renamed from: k */
        public final Object m9275k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21640c(this.f60320f, dVar, this.f60321g).m9274s(s.a);
        }

        /* renamed from: s */
        public final Object m9274s(Object obj) {
            a aVar = a.a;
            int i = this.f60319e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ImageFlash imageFlash = this.f60320f;
                if (imageFlash.f12004k && imageFlash.f12003j != null) {
                    this.f60321g.m9282Kj(imageFlash);
                } else if (imageFlash.f12003j != null) {
                    C21637g c21637g = this.f60321g;
                    this.f60319e = 1;
                    if (c21637g.m9283Jj(imageFlash, this) == aVar) {
                        return aVar;
                    }
                } else {
                    C21637g c21637g2 = this.f60321g;
                    this.f60319e = 2;
                    if (c21637g2.m9284Ij(imageFlash, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21637g(@Named("Async") f fVar, @Named("UI") f fVar2, AbstractC21644k abstractC21644k, AbstractC21606g0 abstractC21606g0, AbstractC21607h abstractC21607h, AbstractC21614m abstractC21614m, AbstractC21747a abstractC21747a, AbstractC21620q abstractC21620q) {
        super(fVar2);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC21644k, "flashRequestHandler");
        l.e(abstractC21606g0, "resourceProvider");
        l.e(abstractC21607h, "fileUtils");
        l.e(abstractC21614m, "flashMediaHelper");
        l.e(abstractC21747a, "flashNotificationManager");
        l.e(abstractC21620q, "gson");
        this.f60301d = fVar;
        this.f60302e = fVar2;
        this.f60303f = abstractC21644k;
        this.f60304g = abstractC21606g0;
        this.f60305h = abstractC21607h;
        this.f60306i = abstractC21614m;
        this.f60307j = abstractC21747a;
        this.f60308k = abstractC21620q;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m9284Ij(com.truecaller.flashsdk.models.ImageFlash r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21637g.m9284Ij(com.truecaller.flashsdk.models.ImageFlash, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019c  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m9283Jj(com.truecaller.flashsdk.models.ImageFlash r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1382c.C21637g.m9283Jj(com.truecaller.flashsdk.models.ImageFlash, s1.w.d):java.lang.Object");
    }

    /* renamed from: Kj */
    public final void m9282Kj(ImageFlash imageFlash) {
        this.f60307j.mo9134c(imageFlash);
        MediaUrl mediaUrl = imageFlash.f12003j;
        FlashExtras flashExtras = new FlashExtras(null, new FlashImageEntity(mediaUrl.getDownloadUrl(), "image/jpg"), null, 5, null);
        Payload payload = imageFlash.f11996f;
        l.d(payload, "flash.payload");
        payload.m35381f(mediaUrl.getDownloadUrl());
        Payload payload2 = imageFlash.f11996f;
        l.d(payload2, "flash.payload");
        payload2.m35380g(this.f60308k.mo9352a(flashExtras));
        AbstractC21644k abstractC21644k = this.f60303f;
        String str = imageFlash.f12006m;
        l.d(str, "flash.screenContext");
        abstractC21644k.mo9263b(imageFlash, str, true, this);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21630a
    /* renamed from: U9 */
    public void mo9281U9(ImageFlash imageFlash, int i, int i2) {
        l.e(imageFlash, "flash");
        AbstractC21636f abstractC21636f = (AbstractC21636f) this.f57683a;
        if (abstractC21636f != null) {
            abstractC21636f.mo9288d();
        }
        this.f60307j.mo9129h(imageFlash);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21635e
    /* renamed from: n4 */
    public int mo9280n4(String str, Flash flash, ImageFlash imageFlash) {
        FlashImageEntity media;
        if (!l.a("action_image_download", str)) {
            if (imageFlash == null) {
                return 2;
            }
            if (imageFlash.f11996f == null) {
                throw new IllegalStateException("Flash must've a payload set");
            }
            s1.a.a.a.v0.f.d.H(h1.a, this.f60302e.plus(this.f60301d), (j0) null, new C21640c(imageFlash, null, this), 2, (Object) null);
            return 2;
        } else if (flash == null) {
            return 2;
        } else {
            AbstractC21620q abstractC21620q = this.f60308k;
            Payload payload = flash.f11996f;
            l.d(payload, "flash.payload");
            String m35385b = payload.m35385b();
            l.d(m35385b, "flash.payload.extra");
            FlashExtras flashExtras = (FlashExtras) abstractC21620q.mo9351b(m35385b, FlashExtras.class);
            String imageUrl = (flashExtras == null || (media = flashExtras.getMedia()) == null) ? null : media.getImageUrl();
            String str2 = imageUrl;
            if (imageUrl == null) {
                Payload payload2 = flash.f11996f;
                l.d(payload2, "flash.payload");
                String m35386a = payload2.m35386a();
                str2 = imageUrl;
                if (!(m35386a == null || m35386a.length() == 0)) {
                    Payload payload3 = flash.f11996f;
                    l.d(payload3, "flash.payload");
                    String m35386a2 = payload3.m35386a();
                    l.d(m35386a2, "flash.payload.attachment");
                    str2 = (String) v.U(m35386a2, new String[]{","}, false, 0, 6).get(0);
                }
            }
            if (str2 != null) {
                AbstractC21636f abstractC21636f = (AbstractC21636f) this.f57683a;
                if (abstractC21636f != null) {
                    abstractC21636f.mo9285l(this.f60304g.mo9375b(C3909R.string.flash_downloading, new Object[0]));
                }
                AbstractC21607h abstractC21607h = this.f60305h;
                Sender sender = flash.f11991a;
                l.d(sender, "flash.sender");
                String mo9366d = abstractC21607h.mo9366d(String.valueOf(sender.m35377c().longValue()), ".jpg");
                AbstractC21636f abstractC21636f2 = (AbstractC21636f) this.f57683a;
                s sVar = null;
                if (abstractC21636f2 != null) {
                    abstractC21636f2.mo9289c(str2, mo9366d, this.f60304g.mo9375b(C3909R.string.true_flash, new Object[0]));
                    sVar = s.a;
                }
                if (sVar != null) {
                    return 2;
                }
            }
            AbstractC21636f abstractC21636f3 = (AbstractC21636f) this.f57683a;
            if (abstractC21636f3 == null) {
                return 2;
            }
            abstractC21636f3.mo9285l(this.f60304g.mo9375b(C3909R.string.flash_download_failed, new Object[0]));
            return 2;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21630a
    /* renamed from: tg */
    public void mo9279tg(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        AbstractC21636f abstractC21636f = (AbstractC21636f) this.f57683a;
        if (abstractC21636f != null) {
            abstractC21636f.mo9287e();
        }
        this.f60307j.mo9136a(imageFlash);
    }
}
