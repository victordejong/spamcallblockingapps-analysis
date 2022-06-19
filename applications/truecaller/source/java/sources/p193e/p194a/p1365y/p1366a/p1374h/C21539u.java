package p193e.p194a.p1365y.p1366a.p1374h;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.amazon.device.ads.MraidCloseCommand;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.google.firebase.messaging.FirebaseMessaging;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Contact;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashExtras;
import com.truecaller.flashsdk.models.FlashLocationExtras;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.QueuedFlash;
import com.truecaller.flashsdk.models.ReplyActionsItem;
import com.truecaller.flashsdk.models.Sender;
import e.m.d.y.n;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d;
import p193e.p194a.p1365y.p1366a.p1372g.C21505c;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.AbstractC21513e;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21509a;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21511c;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21517g;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21607h;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1365y.p1391i.C21751a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.f0.h;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.y.a.h.u */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/u.class */
public final class C21539u extends AbstractC21491d<AbstractC21542v> implements AbstractC21538t {

    /* renamed from: A */
    public boolean f60105A;

    /* renamed from: B */
    public String f60106B;

    /* renamed from: C */
    public boolean f60107C;

    /* renamed from: D */
    public boolean f60108D;

    /* renamed from: E */
    public boolean f60109E;

    /* renamed from: F */
    public boolean f60110F;

    /* renamed from: I */
    public final f f60113I;

    /* renamed from: K */
    public List<ReplyActionsItem> f60115K;

    /* renamed from: M */
    public Uri f60117M;

    /* renamed from: N */
    public boolean f60118N;

    /* renamed from: O */
    public ImageFlash f60119O;

    /* renamed from: P */
    public boolean f60120P;

    /* renamed from: Q */
    public final AbstractC21626w f60121Q;

    /* renamed from: R */
    public final AbstractC21597c f60122R;

    /* renamed from: S */
    public final k f60123S;

    /* renamed from: T */
    public final AbstractC21607h f60124T;

    /* renamed from: w */
    public QueuedFlash f60125w;

    /* renamed from: x */
    public Flash f60126x;

    /* renamed from: y */
    public boolean f60127y;

    /* renamed from: z */
    public int f60128z;

    /* renamed from: G */
    public String f60111G = "";

    /* renamed from: H */
    public String f60112H = "";

    /* renamed from: J */
    public final AbstractC21631b f60114J = C21632c.m9330b();

    /* renamed from: L */
    public boolean f60116L = true;

    /* renamed from: e.a.y.a.h.u$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/h/u$a.class */
    public static final class RunnableC21540a implements Runnable {
        public RunnableC21540a() {
            C21539u.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Sender sender;
            Long m35377c;
            QueuedFlash queuedFlash = C21539u.this.f60125w;
            if (queuedFlash == null || (sender = queuedFlash.f11991a) == null || (m35377c = sender.m35377c()) == null) {
                return;
            }
            long longValue = m35377c.longValue();
            String m35378b = sender.m35378b();
            if (m35378b == null) {
                return;
            }
            C21539u.this.f60114J.mo9305m(String.valueOf(longValue), m35378b);
            C21539u.this.m9563O("FlashBlockUser", "blockUser");
        }
    }

    @e(c = "com.truecaller.flashsdk.ui.incoming.FlashActivityPresenterImpl$shareBitmap$1", f = "FlashActivityPresenterImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.a.h.u$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/h/u$b.class */
    public static final class C21541b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Bitmap f60131f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC21542v f60132g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21541b(Bitmap bitmap, AbstractC21542v abstractC21542v, d dVar) {
            super(2, dVar);
            C21539u.this = r5;
            this.f60131f = bitmap;
            this.f60132g = abstractC21542v;
        }

        /* renamed from: i */
        public final d<s> m9536i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21541b(this.f60131f, this.f60132g, dVar);
        }

        /* renamed from: k */
        public final Object m9535k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21539u c21539u = C21539u.this;
            Bitmap bitmap = this.f60131f;
            AbstractC21542v abstractC21542v = this.f60132g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Uri mo9368b = c21539u.f60124T.mo9368b(bitmap);
            if (mo9368b != null) {
                abstractC21542v.mo9484m6(mo9368b, c21539u.f60112H);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m9534s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            Uri mo9368b = C21539u.this.f60124T.mo9368b(this.f60131f);
            if (mo9368b != null) {
                this.f60132g.mo9484m6(mo9368b, C21539u.this.f60112H);
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21539u(f fVar, FirebaseMessaging firebaseMessaging, AbstractC21629z<C21733i> abstractC21629z, AbstractC21626w abstractC21626w, AbstractC21606g0 abstractC21606g0, AbstractC21603f abstractC21603f, AbstractC21597c abstractC21597c, AbstractC21593a abstractC21593a, C21751a c21751a, AbstractC21624u abstractC21624u, k kVar, AbstractC21607h abstractC21607h, AbstractC21614m abstractC21614m, AbstractC19219a0 abstractC19219a0, AbstractC8541a abstractC8541a) {
        super(fVar, abstractC21629z, firebaseMessaging, abstractC21606g0, abstractC21603f, abstractC21593a, c21751a, abstractC21624u, kVar, abstractC21614m, abstractC19219a0, abstractC8541a);
        l.e(fVar, "uiContext");
        l.e(firebaseMessaging, "messaging");
        l.e(abstractC21629z, "recentEmojiManager");
        l.e(abstractC21626w, "preferenceUtil");
        l.e(abstractC21606g0, "resourceProvider");
        l.e(abstractC21603f, "deviceUtils");
        l.e(abstractC21597c, "contactUtils");
        l.e(abstractC21593a, "colorProvider");
        l.e(c21751a, "toolTipsManager");
        l.e(abstractC21624u, "locationFormatter");
        l.e(kVar, "gson");
        l.e(abstractC21607h, "fileUtils");
        l.e(abstractC21614m, "mediaHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8541a, "coreSettings");
        this.f60121Q = abstractC21626w;
        this.f60122R = abstractC21597c;
        this.f60123S = kVar;
        this.f60124T = abstractC21607h;
        this.f60113I = fVar;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: A */
    public void mo9435A() {
        this.f60015j = false;
        this.f60118N = false;
        this.f60120P = true;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: B */
    public void mo9434B() {
        super.mo9434B();
        this.f60120P = false;
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9593p8();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: C */
    public void mo9433C(Uri uri) {
        l.e(uri, "uri");
        this.f60118N = true;
        this.f60120P = false;
        this.f60117M = uri;
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9490e8();
            abstractC21542v.mo9499Z0(uri);
            abstractC21542v.mo9592q5(C3909R.attr.theme_bg_contact_transparent_header, this.f60022q.mo9391a(C3909R.color.white));
            abstractC21542v.mo9504W6(this.f60020o.mo9374c(C3909R.C3910drawable.flash_round_button_default_v2));
            abstractC21542v.mo9614c5(this.f60020o.mo9375b(C3909R.string.flash_hint_image_caption, new Object[0]));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0212, code lost:
        if (r6 != null) goto L58;
     */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9432F(p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v r6) {
        /*
            Method dump skipped, instructions count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1374h.C21539u.mo9432F(e.a.y.a.e.e):void");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: G */
    public void mo9431G(C21733i c21733i) {
        l.e(c21733i, "emoticon");
        Flash flash = this.f60126x;
        if (flash != null) {
            this.f60023r.m9121b(2);
            flash.f11996f = new Payload("emoji", c21733i.f60541a, null, null);
            m9560R();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: J */
    public void mo9430J() {
        String str;
        Sender sender;
        String valueOf;
        this.f60023r.m9121b(1);
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            QueuedFlash queuedFlash = this.f60125w;
            if (queuedFlash == null || (sender = queuedFlash.f11991a) == null) {
                str = "";
            } else {
                String m35378b = sender.m35378b();
                Long m35377c = sender.m35377c();
                if (m35377c == null || (valueOf = String.valueOf(m35377c.longValue())) == null) {
                    str = m35378b.toString();
                } else {
                    String str2 = m35378b;
                    if (this.f60021p.mo9384a()) {
                        Contact mo9388b = this.f60122R.mo9388b(valueOf);
                        str2 = m35378b;
                        if (mo9388b != null) {
                            str2 = m35378b;
                            if (!TextUtils.isEmpty(mo9388b.getName())) {
                                str2 = mo9388b.getName();
                            }
                        }
                    }
                    l.d(str2, AnalyticsConstants.NAME);
                    str = v.e0(str2, StringConstant.SPACE, (String) null, 2);
                }
            }
            abstractC21542v.mo9521L6(str);
        }
    }

    /* renamed from: L */
    public final void m9566L() {
        AbstractC21542v abstractC21542v;
        if (!this.f60027v.getBoolean("featureShareImageInFlash") || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
            return;
        }
        abstractC21542v.mo9473v6();
        abstractC21542v.mo9495ba();
        abstractC21542v.mo9592q5(C3909R.attr.theme_bg_contact_header, this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
        abstractC21542v.mo9504W6(this.f60020o.mo9374c(C3909R.C3910drawable.bg_solid_white_rad_24dp));
        abstractC21542v.mo9614c5(this.f60020o.mo9375b(C3909R.string.type_a_flash, new Object[0]));
    }

    /* renamed from: M */
    public final void m9565M(ReplyActionsItem replyActionsItem) {
        Flash flash;
        String str;
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v == null || (flash = this.f60126x) == null) {
            return;
        }
        String type = replyActionsItem.getType();
        int hashCode = type.hashCode();
        if (hashCode != 109400031) {
            if (hashCode == 629233382 && type.equals("deeplink")) {
                abstractC21542v.mo9479r6(replyActionsItem.getAction());
                str = "busy";
            }
            str = "custom_flash";
        } else {
            if (type.equals(ViewAction.SHARE)) {
                AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
                if (abstractC21542v2 != null) {
                    abstractC21542v2.mo9476s7();
                    m9563O("FlashShareImage", "shareImage");
                }
                str = "busy";
            }
            str = "custom_flash";
        }
        flash.f11996f = new Payload(str, replyActionsItem.getName(), null, null);
        m9560R();
        m9563O("FlashCustomButtonClicked", replyActionsItem.getType());
    }

    /* renamed from: N */
    public final boolean m9564N(Flash flash) {
        return !TextUtils.isEmpty(flash.f11998h) && !TextUtils.isEmpty(flash.f11993c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (r10 != null) goto L15;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9563O(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1374h.C21539u.m9563O(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r5 != null) goto L15;
     */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9562P(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1374h.C21539u.m9562P(java.lang.String):void");
    }

    /* renamed from: Q */
    public final void m9561Q(boolean z) {
        QueuedFlash queuedFlash;
        Payload payload;
        Payload payload2;
        AbstractC21542v abstractC21542v;
        String m35382e;
        List list;
        AbstractC21542v abstractC21542v2;
        AbstractC21542v abstractC21542v3 = (AbstractC21542v) this.f60006a;
        if (abstractC21542v3 == null || (queuedFlash = this.f60125w) == null || (payload = queuedFlash.f11996f) == null) {
            return;
        }
        abstractC21542v3.mo9519N6();
        abstractC21542v3.mo9496b6(l.a(payload.m35382e(), "emoji") ? -16777216 : this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
        String m35385b = payload.m35385b();
        if (m35385b != null) {
            FlashExtras flashExtras = (FlashExtras) n.B1(FlashExtras.class).cast(this.f60123S.g(m35385b, FlashExtras.class));
            this.f60115K = flashExtras != null ? flashExtras.getReplyActions() : null;
        }
        List<ReplyActionsItem> list2 = this.f60115K;
        if (list2 == null) {
            List<String> m35383d = payload.m35383d();
            if (m35383d == null || m35383d.size() != ((int) 3)) {
                List<String> m35383d2 = payload.m35383d();
                if (m35383d2 == null || m35383d2.size() != ((int) 2)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f60020o.mo9375b(C3909R.string.sfc_yes, new Object[0]));
                    arrayList.add(this.f60020o.mo9375b(C3909R.string.sfc_ok, new Object[0]));
                    arrayList.add(this.f60020o.mo9375b(C3909R.string.sfc_no, new Object[0]));
                    abstractC21542v3.mo9533A6(arrayList);
                } else {
                    List<String> m35383d3 = payload.m35383d();
                    l.d(m35383d3, "payload.responses");
                    abstractC21542v3.mo9514R6(m35383d3);
                }
            } else {
                List<String> m35383d4 = payload.m35383d();
                l.d(m35383d4, "payload.responses");
                abstractC21542v3.mo9533A6(m35383d4);
            }
        } else if (list2.size() == ((int) 3)) {
            AbstractC21542v abstractC21542v4 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v4 != null) {
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list2, 10));
                for (ReplyActionsItem replyActionsItem : list2) {
                    arrayList2.add(replyActionsItem.getName());
                }
                abstractC21542v4.mo9533A6(arrayList2);
            }
        } else if (list2.size() == ((int) 2) && (abstractC21542v2 = (AbstractC21542v) this.f60006a) != null) {
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list2, 10));
            for (ReplyActionsItem replyActionsItem2 : list2) {
                arrayList3.add(replyActionsItem2.getName());
            }
            abstractC21542v2.mo9514R6(arrayList3);
        }
        String m35386a = payload.m35386a();
        if (!(m35386a == null || r.p(m35386a))) {
            String m35382e2 = payload.m35382e();
            if (m35382e2 != null) {
                int hashCode = m35382e2.hashCode();
                if (hashCode != 100313435) {
                    if (hashCode != 112202875) {
                        if (hashCode == 1901043637 && m35382e2.equals("location")) {
                            m9559S(payload, false);
                        }
                    } else if (m35382e2.equals("video")) {
                        String m35386a2 = payload.m35386a();
                        String m35384c = payload.m35384c();
                        if (m35384c == null) {
                            m35384c = "";
                        }
                        l.d(m35386a2, "videoUrl");
                        abstractC21542v3.mo9612d5(m35386a2, m35384c);
                    }
                } else if (m35382e2.equals("image")) {
                    if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                        abstractC21542v3.mo9477s6(this.f60022q.mo9390b(C3909R.attr.theme_reply_button_with_attachment_text_color));
                        abstractC21542v3.mo9592q5(C3909R.attr.theme_bg_contact_transparent_header, this.f60022q.mo9391a(C3909R.color.white));
                        abstractC21542v3.mo9482o6();
                    }
                    AbstractC21542v abstractC21542v5 = (AbstractC21542v) this.f60006a;
                    if (abstractC21542v5 != null) {
                        String m35386a3 = payload.m35386a();
                        l.d(m35386a3, "payload.attachment");
                        List f = new h(",").f(m35386a3, 0);
                        if (!f.isEmpty()) {
                            ListIterator listIterator = f.listIterator(f.size());
                            while (listIterator.hasPrevious()) {
                                if (!(((String) listIterator.previous()).length() == 0)) {
                                    list = s1.u.i.K0(f, listIterator.nextIndex() + 1);
                                    break;
                                }
                            }
                        }
                        list = s1.u.s.a;
                        Object[] array = list.toArray(new String[0]);
                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                        String[] strArr = (String[]) array;
                        String m35384c2 = payload.m35384c();
                        l.d(m35384c2, "payload.message");
                        this.f60112H = m35384c2;
                        List d0 = s1.u.i.d0(new String[]{this.f60020o.mo9375b(C3909R.string.sfc_yes, new Object[0]), this.f60020o.mo9375b(C3909R.string.sfc_no, new Object[0]), this.f60020o.mo9375b(C3909R.string.sfc_share, new Object[0])});
                        if (strArr.length == 2) {
                            this.f60111G = strArr[0];
                            String str = strArr[1];
                            if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                                abstractC21542v5.mo9488ia(this.f60111G, this.f60112H, str);
                            } else {
                                abstractC21542v5.mo9478r9(this.f60111G, this.f60112H, str);
                            }
                        } else {
                            String m35386a4 = payload.m35386a();
                            l.d(m35386a4, "payload.attachment");
                            this.f60111G = m35386a4;
                            if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                                abstractC21542v5.mo9598n5(this.f60111G, this.f60112H);
                            } else {
                                abstractC21542v5.mo9628O4(this.f60111G, this.f60112H);
                            }
                        }
                        abstractC21542v5.mo9533A6(s1.u.i.S0(d0));
                    }
                }
            }
        } else {
            m9558T(payload, z);
        }
        QueuedFlash queuedFlash2 = this.f60125w;
        Payload payload3 = null;
        if (queuedFlash2 != null) {
            payload3 = queuedFlash2.f12015l;
        }
        if (payload3 == null || queuedFlash2 == null || (payload2 = queuedFlash2.f12015l) == null || (abstractC21542v = (AbstractC21542v) this.f60006a) == null || (m35382e = payload2.m35382e()) == null) {
            return;
        }
        int hashCode2 = m35382e.hashCode();
        if (hashCode2 != 3556653) {
            if (hashCode2 != 1901043637 || !m35382e.equals("location")) {
                return;
            }
            m9559S(payload2, true);
        } else if (m35382e.equals("text")) {
            String m35384c3 = payload2.m35384c();
            l.d(m35384c3, "payload.message");
            abstractC21542v.mo9532B6(m35384c3);
        }
    }

    /* renamed from: R */
    public final void m9560R() {
        Flash flash;
        AbstractC21542v abstractC21542v;
        List list;
        AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
        if (abstractC21542v2 == null || (flash = this.f60126x) == null) {
            return;
        }
        if (!this.f60021p.mo9383b()) {
            abstractC21542v2.mo9602l(this.f60020o.mo9375b(C3909R.string.no_internet, new Object[0]));
            return;
        }
        Payload payload = flash.f11996f;
        l.d(payload, "payload");
        String m35384c = TextUtils.equals(payload.m35382e(), "emoji") ? payload.m35384c() : C17891a1.C17902k.m15644T(payload.m35382e());
        if (!TextUtils.isEmpty(flash.m35393a())) {
            m35384c = C22128a.m8562v(new Object[]{flash.m35393a(), m35384c}, 2, "%s %s", "java.lang.String.format(format, *args)");
        }
        flash.f11995e = m35384c;
        flash.m35390d();
        this.f60105A = true;
        Flash flash2 = this.f60126x;
        if (flash2 == null || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
            return;
        }
        boolean z = this.f60027v.getBoolean("featureShareImageInFlash");
        if (this.f60118N && z) {
            Uri uri = this.f60117M;
            if (uri == null) {
                return;
            }
            ImageFlash imageFlash = this.f60119O;
            if (imageFlash == null) {
                imageFlash = new ImageFlash();
                imageFlash.m35387g(flash2);
                imageFlash.f12002i = uri;
                imageFlash.f12006m = "reply";
            }
            abstractC21542v.mo9508V5(imageFlash);
            abstractC21542v.mo9621T4();
            abstractC21542v.mo9635J7(this.f60020o.mo9375b(C3909R.string.flash_uploading_media, new Object[0]), false);
            return;
        }
        if (z && this.f60120P) {
            String str = this.f60007b;
            if (str == null) {
                return;
            }
            List m8641b0 = C22128a.m8641b0(",", str, 0);
            if (!m8641b0.isEmpty()) {
                ListIterator listIterator = m8641b0.listIterator(m8641b0.size());
                while (listIterator.hasPrevious()) {
                    if (!(((String) listIterator.previous()).length() == 0)) {
                        list = s1.u.i.K0(m8641b0, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            list = s1.u.s.a;
            Object[] array = list.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            if (strArr.length < 2) {
                return;
            }
            String str2 = this.f60008c;
            double parseDouble = Double.parseDouble(strArr[0]);
            double parseDouble2 = Double.parseDouble(strArr[1]);
            Payload payload2 = flash2.f11996f;
            l.d(payload2, "replyFlashCopy.payload");
            FlashExtras flashExtras = new FlashExtras(null, null, new FlashLocationExtras(str2, Double.valueOf(parseDouble), Double.valueOf(parseDouble2), payload2.m35384c()), 3, null);
            Payload payload3 = flash2.f11996f;
            l.d(payload3, "replyFlashCopy.payload");
            payload3.m35380g(this.f60123S.m(flashExtras));
            mo9434B();
            this.f60120P = false;
        }
        this.f60114J.mo9323G(flash2);
        m9557U();
    }

    /* renamed from: S */
    public final void m9559S(Payload payload, boolean z) {
        List list;
        String str;
        boolean z2 = this.f60027v.getBoolean("featureShareImageInFlash");
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            String m35386a = payload.m35386a();
            l.d(m35386a, "payload.attachment");
            List f = new h(",").f(m35386a, 0);
            if (!f.isEmpty()) {
                ListIterator listIterator = f.listIterator(f.size());
                while (listIterator.hasPrevious()) {
                    if (!(((String) listIterator.previous()).length() == 0)) {
                        list = s1.u.i.K0(f, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            list = s1.u.s.a;
            Object[] array = list.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            if (strArr.length < 2) {
                return;
            }
            String mo9375b = this.f60020o.mo9375b(C3909R.string.map_url, strArr[0], strArr[1], strArr[0], strArr[1]);
            if (!TextUtils.isEmpty(payload.m35384c())) {
                str = payload.m35384c();
                l.d(str, "payload.message");
            } else {
                str = this.f60020o.mo9375b(C3909R.string.i_am_here, new Object[0]);
            }
            if (z) {
                this.f60007b = this.f60020o.mo9375b(C3909R.string.lat_long, strArr[0], strArr[1]);
                abstractC21542v.mo9466z7(mo9375b, str);
            } else if (!z2) {
                abstractC21542v.mo9515Q9(mo9375b, str);
            } else {
                String m35385b = payload.m35385b();
                FlashLocationExtras flashLocationExtras = null;
                if (m35385b != null) {
                    flashLocationExtras = ((FlashExtras) n.B1(FlashExtras.class).cast(this.f60123S.g(m35385b, FlashExtras.class))).getLocation();
                }
                if (flashLocationExtras != null) {
                    flashLocationExtras.getLat();
                    flashLocationExtras.getLong();
                    this.f60012g = flashLocationExtras.getLocation_text();
                    this.f60008c = flashLocationExtras.getAddress();
                    this.f60007b = this.f60020o.mo9375b(C3909R.string.lat_long, String.valueOf(flashLocationExtras.getLat()), String.valueOf(flashLocationExtras.getLong()));
                } else {
                    Double.parseDouble(strArr[0]);
                    Double.parseDouble(strArr[1]);
                    this.f60012g = str;
                    this.f60007b = this.f60020o.mo9375b(C3909R.string.lat_long, strArr[0], strArr[1]);
                }
                abstractC21542v.mo9599m9();
                abstractC21542v.mo9477s6(this.f60022q.mo9390b(C3909R.attr.theme_reply_button_with_attachment_text_color));
                abstractC21542v.mo9592q5(C3909R.attr.theme_bg_contact_transparent_header, this.f60022q.mo9391a(C3909R.color.white));
                abstractC21542v.mo9520M6();
            }
        }
    }

    /* renamed from: T */
    public final void m9558T(Payload payload, boolean z) {
        AbstractC21513e.C21514a m9571a;
        AbstractC21542v abstractC21542v;
        AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
        if (abstractC21542v2 != null) {
            String mo9373d = this.f60020o.mo9373d(payload);
            if (l.a("call_me_back", payload.m35382e())) {
                mo9373d = this.f60020o.mo9375b(C3909R.string.CallMeBackFlashMessage, new Object[0]);
            } else {
                abstractC21542v2.mo9497a6(true);
                abstractC21542v2.mo9493c7(true);
            }
            abstractC21542v2.mo9525J6(mo9373d);
            if (z && l.a("emoji", payload.m35382e()) && (m9571a = new C21511c().m9571a(mo9373d)) != null) {
                if (m9571a instanceof C21509a) {
                    AbstractC21542v abstractC21542v3 = (AbstractC21542v) this.f60006a;
                    if (abstractC21542v3 != null) {
                        abstractC21542v3.mo9480q6((C21509a) m9571a);
                    }
                } else if ((m9571a instanceof C21517g) && (abstractC21542v = (AbstractC21542v) this.f60006a) != null) {
                    abstractC21542v.mo9489h6((C21517g) m9571a);
                }
            }
            if (!this.f60027v.getBoolean("featureShareImageInFlash")) {
                return;
            }
            abstractC21542v2.mo9477s6(this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
            abstractC21542v2.mo9481oa(this.f60020o.mo9374c(C3909R.C3910drawable.reply_button_bg_selector));
            abstractC21542v2.mo9494c6();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0077, code lost:
        if ((r0 == null || s1.f0.r.p(r0)) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
        if (r7 == false) goto L37;
     */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: T0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9423T0(java.lang.CharSequence r4) {
        /*
            r3 = this;
            r0 = r3
            T extends e.a.y.a.e.e r0 = r0.f60006a
            e.a.y.a.h.v r0 = (p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L94
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L22
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L1c
            goto L22
        L1c:
            r0 = 0
            r7 = r0
            goto L25
        L22:
            r0 = 1
            r7 = r0
        L25:
            r0 = r7
            if (r0 == 0) goto L8b
            r0 = r3
            java.lang.String r0 = r0.f60111G
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L43
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L3d
            goto L43
        L3d:
            r0 = 0
            r7 = r0
            goto L46
        L43:
            r0 = 1
            r7 = r0
        L46:
            r0 = r7
            if (r0 == 0) goto L83
            r0 = r3
            android.net.Uri r0 = r0.f60117M
            if (r0 != 0) goto L83
            r0 = r3
            java.lang.String r0 = r0.f60007b
            if (r0 == 0) goto L7d
            r0 = r3
            java.lang.String r0 = r0.f60012g
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L72
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L6c
            goto L72
        L6c:
            r0 = 0
            r7 = r0
            goto L75
        L72:
            r0 = 1
            r7 = r0
        L75:
            r0 = r7
            if (r0 == 0) goto L7d
            goto L83
        L7d:
            r0 = 0
            r7 = r0
            goto L86
        L83:
            r0 = 1
            r7 = r0
        L86:
            r0 = r7
            if (r0 == 0) goto L8d
        L8b:
            r0 = 1
            r6 = r0
        L8d:
            r0 = r5
            r1 = r6
            r0.mo9644A0(r1)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1374h.C21539u.mo9423T0(java.lang.CharSequence):void");
    }

    /* renamed from: U */
    public final void m9557U() {
        AbstractC21542v abstractC21542v;
        Sender sender;
        Long m35377c;
        Sender sender2;
        Long m35377c2;
        Payload payload;
        AbstractC21542v abstractC21542v2;
        Flash flash = this.f60126x;
        if (flash == null || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
            return;
        }
        if (this.f60027v.getBoolean("featureShareImageInFlash")) {
            this.f60118N = false;
            this.f60117M = null;
            abstractC21542v.mo9468z0();
            abstractC21542v.mo9592q5(C3909R.attr.theme_bg_contact_header, this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
        }
        m9562P(null);
        this.f60110F = true;
        Bundle bundle = new Bundle();
        bundle.putString("flashContext", this.f60110F ? "waiting" : "reply");
        this.f60114J.mo9308j("FlashCloseWaiting", bundle);
        String m35393a = flash.m35393a();
        l.d(m35393a, "replyFlashCopy.history");
        String m9645z = m9645z(m35393a);
        QueuedFlash queuedFlash = this.f60125w;
        if (queuedFlash == null || (sender = queuedFlash.f11991a) == null || (m35377c = sender.m35377c()) == null) {
            return;
        }
        long longValue = m35377c.longValue();
        String str = this.f60106B;
        if (str == null) {
            return;
        }
        abstractC21542v.mo9486k6(m9645z, longValue, str);
        AbstractC21629z<C21733i> abstractC21629z = this.f60019n;
        QueuedFlash queuedFlash2 = this.f60125w;
        if (queuedFlash2 == null || (sender2 = queuedFlash2.f11991a) == null || (m35377c2 = sender2.m35377c()) == null) {
            return;
        }
        abstractC21629z.mo9332d(m35377c2.longValue());
        QueuedFlash queuedFlash3 = this.f60125w;
        if (queuedFlash3 == null) {
            return;
        }
        abstractC21542v.mo9500Y5(queuedFlash3);
        String mo9375b = this.f60020o.mo9375b(C3909R.string.flash_sent_to, new Object[0]);
        String str2 = this.f60106B;
        if (str2 == null) {
            return;
        }
        abstractC21542v.mo9606i5(mo9375b, str2);
        QueuedFlash queuedFlash4 = this.f60125w;
        if (queuedFlash4 == null || (payload = queuedFlash4.f11996f) == null || !this.f60027v.getBoolean("featureShareImageInFlash") || !l.a(payload.m35382e(), "image") || (abstractC21542v2 = (AbstractC21542v) this.f60006a) == null) {
            return;
        }
        abstractC21542v2.mo9530F6();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: W0 */
    public void mo9422W0() {
        QueuedFlash queuedFlash;
        super.mo9422W0();
        if (!this.f60105A) {
            AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
            if (abstractC21542v == null || (queuedFlash = this.f60125w) == null) {
                return;
            }
            abstractC21542v.mo9512S7(queuedFlash);
        }
        this.f60125w = null;
        this.f60126x = null;
        this.f60127y = false;
        this.f60007b = null;
        this.f60008c = null;
        this.f60128z = 0;
        this.f60105A = false;
        this.f60106B = null;
        this.f60107C = false;
        this.f60108D = false;
        this.f60109E = false;
        this.f60120P = false;
        this.f60117M = null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: a */
    public void mo9556a(String str, ImageFlash imageFlash) {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v == null || str == null) {
            return;
        }
        switch (str.hashCode()) {
            case -1350001074:
                if (!str.equals("state_uploaded")) {
                    return;
                }
                abstractC21542v.mo9635J7(this.f60020o.mo9375b(C3909R.string.flash_sending_flash, new Object[0]), false);
                abstractC21542v.mo9620T7();
                return;
            case -1223111947:
                if (!str.equals("state_flash_sent")) {
                    return;
                }
                abstractC21542v.mo9635J7(this.f60020o.mo9375b(C3909R.string.flash_sent, new Object[0]), false);
                abstractC21542v.mo9618U9();
                m9557U();
                return;
            case -849991191:
                if (!str.equals("state_uploading_failed") || imageFlash == null) {
                    return;
                }
                this.f60119O = imageFlash;
                Objects.requireNonNull(imageFlash, "null cannot be cast to non-null type com.truecaller.flashsdk.models.Flash");
                Payload payload = imageFlash.f11996f;
                l.d(payload, "(imageFlashDraft as Flash).payload");
                String m35384c = payload.m35384c();
                l.d(m35384c, "(imageFlashDraft as Flash).payload.message");
                abstractC21542v.mo9635J7(m35384c, true);
                abstractC21542v.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_sending_failed, new Object[0]));
                abstractC21542v.mo9594p5();
                return;
            case 1034431578:
                if (!str.equals("state_flash_failed") || imageFlash == null) {
                    return;
                }
                this.f60119O = imageFlash;
                Objects.requireNonNull(imageFlash, "null cannot be cast to non-null type com.truecaller.flashsdk.models.Flash");
                Payload payload2 = imageFlash.f11996f;
                l.d(payload2, "(imageFlashDraft as Flash).payload");
                String m35384c2 = payload2.m35384c();
                l.d(m35384c2, "(imageFlashDraft as Flash).payload.message");
                abstractC21542v.mo9635J7(m35384c2, true);
                abstractC21542v.mo9631M4();
                abstractC21542v.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_sending_failed, new Object[0]));
                return;
            default:
                return;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: c */
    public void mo9555c() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9474u6();
            if (!this.f60105A) {
                QueuedFlash queuedFlash = this.f60125w;
                if (queuedFlash == null) {
                    return;
                }
                abstractC21542v.mo9512S7(queuedFlash);
            } else {
                this.f60118N = false;
            }
            this.f60006a = null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: e */
    public void mo9554e() {
        l.e(this.f60020o.mo9375b(C3909R.string.sfc_busy, new Object[0]), "title");
        l.e("busy", RemoteMessageConst.Notification.TAG);
        Flash flash = this.f60126x;
        if (flash != null) {
            Payload payload = new Payload("busy", this.f60020o.mo9375b(C3909R.string.is_busy, new Object[0]), null, null);
            flash.m35390d();
            flash.f11996f = payload;
            flash.f11994d = "final";
            this.f60114J.mo9323G(flash);
            this.f60105A = true;
            AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
            if (abstractC21542v != null) {
                QueuedFlash queuedFlash = this.f60125w;
                if (queuedFlash != null) {
                    abstractC21542v.mo9500Y5(queuedFlash);
                }
            }
            m9562P(null);
            AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v2 != null) {
                abstractC21542v2.close();
            }
        }
        Thread thread = new Thread(new RunnableC21540a());
        thread.setPriority(1);
        thread.start();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: e1 */
    public boolean mo9419e1(int i) {
        AbstractC21542v abstractC21542v;
        Sender sender;
        Long m35377c;
        String valueOf;
        Flash flash;
        AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
        if (abstractC21542v2 != null) {
            if (i == C3909R.C3911id.action_block_contact) {
                abstractC21542v2.mo9513S6(this.f60020o.mo9376a(C3909R.color.truecolor));
                return true;
            } else if (i == C3909R.C3911id.action_view_profile) {
                mo9415l1();
                return true;
            } else if (i == C3909R.C3911id.action_phone_call) {
                QueuedFlash queuedFlash = this.f60125w;
                if (queuedFlash == null || (sender = queuedFlash.f11991a) == null || (m35377c = sender.m35377c()) == null || (valueOf = String.valueOf(m35377c.longValue())) == null || (flash = this.f60126x) == null) {
                    return true;
                }
                if (!this.f60021p.mo9381d()) {
                    abstractC21542v2.mo9487j6(new Intent("android.intent.action.VIEW", Uri.parse(this.f60020o.mo9375b(C3909R.string.tel_num, valueOf))));
                } else {
                    Intent intent = new Intent("android.intent.action.CALL");
                    intent.setData(Uri.parse(this.f60020o.mo9375b(C3909R.string.tel_num, valueOf)));
                    abstractC21542v2.mo9487j6(intent);
                }
                flash.f11996f = new Payload("call", this.f60020o.mo9375b(C3909R.string.calling_you_back, new Object[0]), null, null);
                flash.f11994d = "final";
                flash.m35390d();
                this.f60114J.mo9323G(flash);
                m9562P(null);
                this.f60105A = true;
                QueuedFlash queuedFlash2 = this.f60125w;
                if (queuedFlash2 == null) {
                    return true;
                }
                abstractC21542v2.mo9500Y5(queuedFlash2);
                abstractC21542v2.close();
                return true;
            } else if (i != 16908332) {
                if (i == C3909R.C3911id.about) {
                    this.f60107C = true;
                    this.f60023r.m9121b(8);
                    abstractC21542v2.mo9611e9();
                    return true;
                } else if (i != C3909R.C3911id.action_download) {
                    return false;
                } else {
                    if (!this.f60021p.mo9378g() && !this.f60021p.mo9377h()) {
                        abstractC21542v2.mo9603k5(13);
                        return true;
                    }
                    m9563O("FlashDownloadImage", "downloadImage");
                    QueuedFlash queuedFlash3 = this.f60125w;
                    if (queuedFlash3 == null || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
                        return true;
                    }
                    abstractC21542v.mo9475s9(queuedFlash3);
                    return true;
                }
            } else if (this.f60118N && this.f60117M != null) {
                this.f60117M = null;
                this.f60118N = false;
                if (abstractC21542v2 != null) {
                    abstractC21542v2.mo9511T6();
                }
                m9566L();
                m9561Q(false);
                return true;
            } else {
                if (this.f60120P) {
                    String str = this.f60012g;
                    if (str == null || r.p(str)) {
                        this.f60120P = false;
                        mo9434B();
                        m9566L();
                        m9561Q(false);
                        return true;
                    }
                }
                if (this.f60105A) {
                    abstractC21542v2.close();
                    return true;
                }
                m9563O("FlashClose", MraidCloseCommand.NAME);
                abstractC21542v2.close();
                return true;
            }
        }
        return false;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: f */
    public void mo9553f(Bundle bundle, String str) {
        Flash flash;
        AbstractC21542v abstractC21542v;
        if (str == null) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1856010814) {
            if (!str.equals("type_publish_progress") || this.f60109E || bundle == null || !bundle.containsKey("extra_timer_progress")) {
                return;
            }
            long j = bundle.getLong("extra_timer_progress", -1L);
            if (j == -1) {
                return;
            }
            int i = (int) j;
            AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v2 != null) {
                abstractC21542v2.mo9492d6(i);
            }
            if (i >= DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD || this.f60108D) {
                return;
            }
            AbstractC21542v abstractC21542v3 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v3 != null) {
                String str2 = this.f60106B;
                abstractC21542v3.mo9505W5(str2 != null ? v.e0(str2, StringConstant.SPACE, (String) null, 2) : "");
            }
            this.f60108D = true;
        } else if (hashCode != 959077621) {
            if (hashCode != 1734842775 || !str.equals("type_flash_timer_expired")) {
                return;
            }
            this.f60105A = true;
            AbstractC21542v abstractC21542v4 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v4 == null) {
                return;
            }
            abstractC21542v4.close();
        } else if (!str.equals("type_flash_received") || bundle == null || (flash = (Flash) bundle.getParcelable("extra_flash")) == null) {
        } else {
            Payload payload = flash.f11996f;
            l.d(payload, "flashReplied.payload");
            if (!l.a(payload.m35382e(), "call")) {
                return;
            }
            Sender sender = flash.f11991a;
            l.d(sender, "flashReplied.sender");
            Long m35377c = sender.m35377c();
            QueuedFlash queuedFlash = this.f60125w;
            Long l = null;
            if (queuedFlash != null) {
                Sender sender2 = queuedFlash.f11991a;
                l = null;
                if (sender2 != null) {
                    l = sender2.m35377c();
                }
            }
            if (!l.a(m35377c, l) || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
                return;
            }
            abstractC21542v.mo9483o(this.f60020o.mo9375b(C3909R.string.calling_you_back, new Object[0]));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: g */
    public boolean mo9552g() {
        Payload payload;
        if (this.f60027v.getBoolean("featureShareImageInFlash")) {
            QueuedFlash queuedFlash = this.f60125w;
            if (l.a((queuedFlash == null || (payload = queuedFlash.f11996f) == null) ? null : payload.m35382e(), "image")) {
                AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
                if (abstractC21542v == null) {
                    return true;
                }
                abstractC21542v.mo9526I6();
                return true;
            }
            AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
            if (abstractC21542v2 == null) {
                return true;
            }
            abstractC21542v2.mo9472w6();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: g1 */
    public void mo9551g1(int i, String[] strArr, int[] iArr) {
        AbstractC21542v abstractC21542v;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        super.mo9551g1(i, strArr, iArr);
        AbstractC21542v abstractC21542v2 = (AbstractC21542v) this.f60006a;
        if (abstractC21542v2 == null || i != 13) {
            return;
        }
        if (!this.f60026u.mo13826g(strArr, iArr, "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
            abstractC21542v2.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_save_permission_required, new Object[0]));
            return;
        }
        m9563O("FlashDownloadImage", "downloadImage");
        QueuedFlash queuedFlash = this.f60125w;
        if (queuedFlash == null || (abstractC21542v = (AbstractC21542v) this.f60006a) == null) {
            return;
        }
        abstractC21542v.mo9475s9(queuedFlash);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: h */
    public void mo9550h(Bitmap bitmap) {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            if (bitmap != null) {
                s1.a.a.a.v0.f.d.H(h1.a, this.f60113I.plus(t0.d), (j0) null, new C21541b(bitmap, abstractC21542v, null), 2, (Object) null);
            } else {
                abstractC21542v.mo9602l(this.f60020o.mo9375b(C3909R.string.failed_to_share_image, new Object[0]));
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: h1 */
    public void mo9418h1() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9497a6(false);
            abstractC21542v.mo9493c7(false);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: i */
    public boolean mo9549i(KeyEvent keyEvent) {
        QueuedFlash queuedFlash;
        l.e(keyEvent, "keyEvent");
        if (keyEvent.getKeyCode() == 25 || keyEvent.getKeyCode() == 164 || keyEvent.getKeyCode() == 26) {
            AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
            if (abstractC21542v == null || (queuedFlash = this.f60125w) == null) {
                return true;
            }
            abstractC21542v.mo9506V8(queuedFlash);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
        if (s1.z.c.l.a("location", r0) != false) goto L20;
     */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: i1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9417i1(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f60105A
            if (r0 == 0) goto L8
            return
        L8:
            r0 = r3
            T extends e.a.y.a.e.e r0 = r0.f60006a
            e.a.y.a.h.v r0 = (p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L89
            r0 = r4
            if (r0 == 0) goto L1e
            r0 = r5
            r0.mo9639H4()
        L1e:
            r0 = r5
            r1 = 1
            r0.mo9497a6(r1)
            r0 = r3
            com.truecaller.flashsdk.models.QueuedFlash r0 = r0.f60125w
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L7d
            r0 = r6
            com.truecaller.flashsdk.models.Payload r0 = r0.f11996f
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L7d
            r0 = r6
            java.lang.String r0 = r0.m35382e()
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L7d
            java.lang.String r0 = "image"
            r1 = r6
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 != 0) goto L67
            r0 = r7
            r8 = r0
            java.lang.String r0 = "location"
            r1 = r6
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L7d
        L67:
            r0 = r7
            r8 = r0
            r0 = r3
            e.a.b0.o.a r0 = r0.f60027v
            java.lang.String r1 = "featureShareImageInFlash"
            boolean r0 = r0.getBoolean(r1)
            if (r0 == 0) goto L7d
            r0 = 1
            r8 = r0
        L7d:
            r0 = r8
            if (r0 != 0) goto L89
            r0 = r5
            r1 = 1
            r0.mo9493c7(r1)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1374h.C21539u.mo9417i1(boolean):void");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: l */
    public void mo9548l(boolean z) {
        QueuedFlash queuedFlash;
        Payload payload;
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v == null || (queuedFlash = this.f60125w) == null || (payload = queuedFlash.f11996f) == null || l.a("image", payload.m35382e())) {
            return;
        }
        if (!z) {
            m9558T(payload, false);
            return;
        }
        AbstractC21606g0 abstractC21606g0 = this.f60020o;
        int i = C3909R.string.geo_loc;
        String m35386a = payload.m35386a();
        l.d(m35386a, "payload.attachment");
        String m35386a2 = payload.m35386a();
        l.d(m35386a2, "payload.attachment");
        if (abstractC21542v.mo9518O6(abstractC21606g0.mo9375b(i, m35386a, m35386a2), this.f60020o.mo9375b(C3909R.string.map_activity, new Object[0]))) {
            return;
        }
        AbstractC21606g0 abstractC21606g02 = this.f60020o;
        int i2 = C3909R.string.map_browser;
        String m35386a3 = payload.m35386a();
        l.d(m35386a3, "payload.attachment");
        abstractC21542v.mo9529G6(abstractC21606g02.mo9375b(i2, m35386a3));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: l1 */
    public void mo9415l1() {
        String valueOf;
        AbstractC21631b abstractC21631b = this.f60114J;
        Flash flash = this.f60126x;
        if (flash == null || (valueOf = String.valueOf(flash.f11992b)) == null) {
            return;
        }
        abstractC21631b.mo9296v(valueOf);
        m9563O("FlashViewProfile", "viewProfile");
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v == null) {
            return;
        }
        abstractC21542v.close();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: n */
    public void mo9547n() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            this.f60127y = true;
            abstractC21542v.mo9528H6();
            QueuedFlash queuedFlash = this.f60125w;
            if (queuedFlash == null) {
                return;
            }
            abstractC21542v.mo9506V8(queuedFlash);
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: o */
    public void mo9546o() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            this.f60109E = true;
            abstractC21542v.mo9517O9();
            abstractC21542v.mo9498Z5(false);
            abstractC21542v.mo9503W9();
            abstractC21542v.mo9491e6();
            QueuedFlash queuedFlash = this.f60125w;
            if (queuedFlash != null) {
                queuedFlash.f12013j = false;
            }
            if (queuedFlash == null) {
                return;
            }
            abstractC21542v.mo9507V6(queuedFlash);
            m9563O("FlashOpened", "opened");
            C21751a c21751a = this.f60023r;
            m9664E(c21751a.m9122a(c21751a.f60578a.mo9343i() == 1 ? (char) 0 : c21751a.f60578a.mo9343i(), c21751a.f60578a.getInt("receive_tooltips", 15)));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: o0 */
    public void mo9545o0() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9470x7();
            abstractC21542v.mo9469y6(C3909R.C3910drawable.ic_flash_attach_file_24dp, C3909R.attr.theme_flash_round_button_icon_color);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    public void onStart() {
        AbstractC21542v abstractC21542v;
        QueuedFlash queuedFlash;
        if (this.f60107C) {
            this.f60107C = false;
        } else if (this.f60105A || (abstractC21542v = (AbstractC21542v) this.f60006a) == null || (queuedFlash = this.f60125w) == null) {
        } else {
            abstractC21542v.mo9509U7(queuedFlash);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: p */
    public void mo9544p(boolean z) {
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: q */
    public void mo9543q() {
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            if (this.f60127y) {
                abstractC21542v.mo9467z6();
                abstractC21542v.mo9501X6();
                return;
            }
            int i = this.f60128z;
            if (i < 2) {
                this.f60128z = i + 1;
                abstractC21542v.mo9524J8(700);
                return;
            }
            abstractC21542v.mo9467z6();
            abstractC21542v.mo9501X6();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: q0 */
    public void mo9542q0() {
        T t = this.f60006a;
        if (t != 0) {
            t.mo9613c8();
        }
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9469y6(C3909R.C3910drawable.ic_flash_close_black_24dp, C3909R.attr.theme_fab_close_icon_color);
            abstractC21542v.mo9523K6(this.f60022q.mo9390b(C3909R.attr.theme_fab_close_background_color));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: r */
    public void mo9541r() {
        int i = C3909R.C3910drawable.flash_ic_location__selected_24dp;
        int i2 = C3909R.string.sfc_location;
        AbstractC21593a abstractC21593a = this.f60022q;
        int i3 = C3909R.attr.theme_flash_attach_button_tint;
        List<C21505c> d0 = s1.u.i.d0(new C21505c[]{new C21505c(0, i, i2, abstractC21593a.mo9390b(i3), null, 0, 48), new C21505c(1, C3909R.C3910drawable.flash_ic_photo_camera_24dp, C3909R.string.flash_attach_camera, this.f60022q.mo9390b(i3), null, 0, 48)});
        AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
        if (abstractC21542v != null) {
            abstractC21542v.mo9502X5(d0);
            abstractC21542v.mo9485l8(C3909R.C3910drawable.ic_flash_attach_file_24dp, C3909R.attr.theme_flash_round_button_icon_color);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: t */
    public void mo9540t(CharSequence charSequence, boolean z) {
        AbstractC21542v abstractC21542v;
        QueuedFlash queuedFlash;
        l.e(charSequence, "messageText");
        boolean z2 = false;
        if (this.f60107C) {
            this.f60107C = false;
        }
        if (charSequence.length() == 0) {
            z2 = true;
        }
        if (!z2) {
            Payload payload = z ? new Payload("location", charSequence.toString(), null, this.f60007b) : new Payload("text", charSequence.toString(), null, null);
            QueuedFlash queuedFlash2 = this.f60125w;
            if (queuedFlash2 != null) {
                queuedFlash2.f12015l = payload;
            }
        }
        if (this.f60105A || (abstractC21542v = (AbstractC21542v) this.f60006a) == null || (queuedFlash = this.f60125w) == null) {
            return;
        }
        abstractC21542v.mo9512S7(queuedFlash);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: u */
    public void mo9539u() {
        if (!this.f60118N || this.f60117M == null) {
            if (this.f60120P) {
                String str = this.f60012g;
                if (str == null || r.p(str)) {
                    return;
                }
            }
            this.f60116L = !this.f60116L;
            AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
            if (abstractC21542v == null) {
                return;
            }
            abstractC21542v.mo9613c8();
            if (this.f60116L) {
                abstractC21542v.mo9531D6(true);
                abstractC21542v.mo9510U5();
                return;
            }
            abstractC21542v.mo9531D6(false);
            abstractC21542v.mo9471x6();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: v */
    public void mo9538v(int i, String str) {
        String str2;
        l.e(str, "action");
        Flash flash = this.f60126x;
        if (flash == null || ((AbstractC21542v) this.f60006a) == null) {
            return;
        }
        List<ReplyActionsItem> list = this.f60115K;
        if (list != null) {
            if (!(!list.isEmpty())) {
                list = null;
            }
            if (list != null) {
                flash.f11994d = "final";
                if (i == C3909R.C3911id.btnYes) {
                    m9565M(list.get(0));
                    return;
                } else if (i == C3909R.C3911id.btnNo) {
                    m9565M(list.get(1));
                    return;
                } else if (i != C3909R.C3911id.btnOk) {
                    return;
                } else {
                    m9565M(list.get(2));
                    return;
                }
            }
        }
        String mo9375b = this.f60020o.mo9375b(C3909R.string.sfc_ok, new Object[0]);
        String mo9375b2 = this.f60020o.mo9375b(C3909R.string.sfc_yes, new Object[0]);
        String mo9375b3 = this.f60020o.mo9375b(C3909R.string.sfc_no, new Object[0]);
        String mo9375b4 = this.f60020o.mo9375b(C3909R.string.sfc_share, new Object[0]);
        if (l.a(str, mo9375b2)) {
            str2 = "accept";
        } else if (l.a(str, mo9375b)) {
            mo9375b2 = mo9375b;
            str2 = "ok";
        } else if (l.a(str, mo9375b3)) {
            str2 = "reject";
            mo9375b2 = mo9375b3;
        } else if (l.a(str, mo9375b4)) {
            AbstractC21542v abstractC21542v = (AbstractC21542v) this.f60006a;
            if (abstractC21542v == null) {
                return;
            }
            abstractC21542v.mo9476s7();
            m9563O("FlashShareImage", "shareImage");
            return;
        } else {
            mo9375b2 = str;
            str2 = "custom_flash";
        }
        flash.f11996f = new Payload(str2, mo9375b2, null, null);
        m9560R();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t
    /* renamed from: w */
    public void mo9537w(CharSequence charSequence, boolean z) {
        Payload payload;
        l.e(charSequence, "messageText");
        Flash flash = this.f60126x;
        if (flash != null) {
            String obj = charSequence.toString();
            boolean z2 = z;
            if (this.f60120P) {
                String str = this.f60012g;
                z2 = z;
                if (str == null || r.p(str)) {
                    z2 = true;
                }
            }
            if (z2) {
                if (obj.length() == 0) {
                    obj = this.f60020o.mo9375b(C3909R.string.flash_shared_via, new Object[0]);
                }
                this.f60023r.m9121b(4);
                payload = new Payload("location", obj, null, this.f60007b);
            } else if (this.f60118N) {
                if (obj.length() == 0) {
                    obj = this.f60020o.mo9375b(C3909R.string.flash_shared_via, new Object[0]);
                }
                payload = new Payload("image", obj, null, null);
            } else {
                payload = new Payload("text", obj, null, null);
            }
            flash.f11996f = payload;
            m9560R();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: y */
    public boolean mo9412y(Intent intent) {
        l.e(intent, "viewIntent");
        return intent.hasExtra("flash");
    }
}
