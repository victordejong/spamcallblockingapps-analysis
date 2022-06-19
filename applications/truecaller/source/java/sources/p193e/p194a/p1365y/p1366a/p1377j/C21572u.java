package p193e.p194a.p1365y.p1366a.p1377j;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.firebase.messaging.FirebaseMessaging;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Contact;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashExtras;
import com.truecaller.flashsdk.models.FlashImageEntity;
import com.truecaller.flashsdk.models.FlashLocationExtras;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.Sender;
import e.m.e.k;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d;
import p193e.p194a.p1365y.p1366a.p1372g.C21505c;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.AbstractC21643j;
import p193e.p194a.p1365y.p1382c.AbstractC21644k;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1365y.p1391i.C21751a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.r;
import s1.u.i;
import s1.u.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.y.a.j.u */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/u.class */
public final class C21572u extends AbstractC21491d<AbstractC21566o> implements AbstractC21571t, AbstractC21643j {

    /* renamed from: A */
    public String f60184A;

    /* renamed from: B */
    public String f60185B;

    /* renamed from: C */
    public Flash f60186C;

    /* renamed from: E */
    public boolean f60188E;

    /* renamed from: F */
    public String f60189F;

    /* renamed from: G */
    public boolean f60190G;

    /* renamed from: H */
    public long f60191H;

    /* renamed from: I */
    public boolean f60192I;

    /* renamed from: J */
    public String f60193J;

    /* renamed from: K */
    public String f60194K;

    /* renamed from: L */
    public boolean f60195L;

    /* renamed from: N */
    public Uri f60197N;

    /* renamed from: O */
    public ImageFlash f60198O;

    /* renamed from: P */
    public final AbstractC21626w f60199P;

    /* renamed from: Q */
    public final AbstractC21597c f60200Q;

    /* renamed from: R */
    public final k f60201R;

    /* renamed from: S */
    public final AbstractC21644k f60202S;

    /* renamed from: w */
    public String f60203w;

    /* renamed from: x */
    public String f60204x;

    /* renamed from: y */
    public String f60205y;

    /* renamed from: z */
    public String f60206z;

    /* renamed from: D */
    public boolean f60187D = true;

    /* renamed from: M */
    public boolean f60196M = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21572u(f fVar, FirebaseMessaging firebaseMessaging, AbstractC21629z<C21733i> abstractC21629z, AbstractC21626w abstractC21626w, AbstractC21606g0 abstractC21606g0, AbstractC21603f abstractC21603f, AbstractC21597c abstractC21597c, AbstractC21593a abstractC21593a, C21751a c21751a, AbstractC21624u abstractC21624u, k kVar, AbstractC21644k abstractC21644k, AbstractC21614m abstractC21614m, AbstractC19219a0 abstractC19219a0, AbstractC8541a abstractC8541a) {
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
        l.e(abstractC21644k, "flashRequestHandler");
        l.e(abstractC21614m, "mediaHelper");
        l.e(abstractC19219a0, "permissionsUtil");
        l.e(abstractC8541a, "coreSettings");
        this.f60199P = abstractC21626w;
        this.f60200Q = abstractC21597c;
        this.f60201R = kVar;
        this.f60202S = abstractC21644k;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: A */
    public void mo9435A() {
        this.f60015j = false;
        this.f60013h = false;
        this.f60188E = true;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: B */
    public void mo9434B() {
        super.mo9434B();
        if (this.f60027v.getBoolean("featureShareImageInFlash")) {
            m9429L(StringConstant.DOT);
        }
        this.f60188E = false;
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            abstractC21566o.mo9593p8();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: C */
    public void mo9433C(Uri uri) {
        l.e(uri, "uri");
        this.f60013h = true;
        this.f60197N = uri;
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            abstractC21566o.mo9448P5();
            abstractC21566o.mo9444Z0(uri);
            int i = C3909R.attr.theme_bg_contact_transparent_header;
            AbstractC21593a abstractC21593a = this.f60022q;
            int i2 = C3909R.color.white;
            abstractC21566o.mo9592q5(i, abstractC21593a.mo9391a(i2));
            abstractC21566o.mo9453B2();
            abstractC21566o.mo9614c5(this.f60020o.mo9375b(C3909R.string.flash_hint_image_caption, new Object[0]));
            abstractC21566o.mo9440h2(this.f60022q.mo9391a(i2));
        }
    }

    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: F */
    public void mo9432F(AbstractC21566o abstractC21566o) {
        int i;
        AbstractC21566o abstractC21566o2 = abstractC21566o;
        l.e(abstractC21566o2, "presenterView");
        super.mo9432F(abstractC21566o2);
        Bundle extras = abstractC21566o2.mo9638H9().getExtras();
        if (extras != null) {
            l.d(extras, "presenterView.getViewIntent().extras ?: return");
            char c = extras.containsKey("to_phone") ? extras.getLong("to_phone") : (char) 0;
            if (extras.containsKey("to_name")) {
                this.f60203w = extras.getString("to_name");
            }
            this.f60204x = extras.getString("screen_context", "UNKNOWN");
            if (extras.containsKey("image")) {
                this.f60205y = extras.getString("image");
                this.f60196M = false;
            }
            if (extras.containsKey("background")) {
                this.f60206z = extras.getString("background");
                this.f60196M = false;
            }
            if (extras.containsKey("video")) {
                this.f60184A = extras.getString("video");
                this.f60196M = false;
            }
            if (extras.containsKey("description")) {
                this.f60185B = extras.getString("description");
                this.f60196M = false;
            }
            if (extras.containsKey(AnalyticsConstants.MODE)) {
                this.f60013h = extras.getBoolean(AnalyticsConstants.MODE);
            }
            if (extras.containsKey("time_left")) {
                this.f60191H = extras.getLong("time_left");
            }
            if (extras.containsKey("prefilled_text")) {
                this.f60194K = extras.getString("prefilled_text");
            }
            if (extras.containsKey("preset_flash_type")) {
                this.f60193J = extras.getString("preset_flash_type");
            }
            if (extras.containsKey("show_waiting")) {
                this.f60187D = extras.getBoolean("show_waiting");
            }
            Flash flash = new Flash();
            this.f60186C = flash;
            flash.f11992b = c;
            AbstractC21566o abstractC21566o3 = (AbstractC21566o) this.f60006a;
            if (abstractC21566o3 != null && (i = extras.getInt("notification_id", -1)) != -1) {
                abstractC21566o3.mo9442e3(i);
            }
            if (this.f60191H > 0) {
                this.f60190G = true;
                m9426O(C3909R.string.flash_sent_to);
                String valueOf = String.valueOf(this.f60189F);
                boolean z = this.f60195L;
                long j = this.f60191H;
                Flash flash2 = this.f60186C;
                if (flash2 == null) {
                    return;
                }
                abstractC21566o2.mo9447T3("", valueOf, z, j, flash2.f11992b);
                return;
            }
            m9426O(C3909R.string.send_flash_to_v2);
            Flash flash3 = this.f60186C;
            if (flash3 == null) {
                return;
            }
            long j2 = flash3.f11992b;
            abstractC21566o2.mo9624R4(this.f60019n, j2);
            m9662I(j2);
            if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                int i2 = C3909R.C3910drawable.flash_ic_location__selected_24dp;
                int i3 = C3909R.string.sfc_location;
                AbstractC21593a abstractC21593a = this.f60022q;
                int i4 = C3909R.attr.theme_flash_attach_button_tint;
                i.d0(new C21505c[]{new C21505c(0, i2, i3, abstractC21593a.mo9390b(i4), null, 0, 48), new C21505c(1, C3909R.C3910drawable.flash_ic_photo_camera_24dp, C3909R.string.flash_attach_camera, this.f60022q.mo9390b(i4), null, 0, 48)});
                abstractC21566o2.mo9445Y6();
            }
            if (!this.f60013h) {
                return;
            }
            String str = this.f60205y;
            String str2 = "";
            if (str != null) {
                if (!(!(str.length() == 0))) {
                    str = null;
                }
                if (str != null) {
                    if (!this.f60027v.getBoolean("featureShareImageInFlash")) {
                        String str3 = this.f60185B;
                        if (str3 != null) {
                            str2 = str3;
                        }
                        abstractC21566o2.mo9628O4(str, str2);
                        return;
                    }
                    String str4 = this.f60185B;
                    if (str4 != null) {
                        str2 = str4;
                    }
                    abstractC21566o2.mo9451D5(str, str2);
                    abstractC21566o2.mo9448P5();
                    AbstractC21593a abstractC21593a2 = this.f60022q;
                    int i5 = C3909R.color.white;
                    abstractC21566o2.mo9440h2(abstractC21593a2.mo9391a(i5));
                    abstractC21566o2.mo9592q5(C3909R.attr.theme_bg_contact_transparent_header, this.f60022q.mo9391a(i5));
                    abstractC21566o2.mo9453B2();
                    return;
                }
            }
            String str5 = this.f60184A;
            if (str5 == null) {
                return;
            }
            boolean z2 = false;
            if (str5.length() == 0) {
                z2 = true;
            }
            String str6 = null;
            if (true ^ z2) {
                str6 = str5;
            }
            if (str6 == null) {
                return;
            }
            String str7 = this.f60185B;
            if (str7 != null) {
                str2 = str7;
            }
            abstractC21566o2.mo9612d5(str6, str2);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: G */
    public void mo9431G(C21733i c21733i) {
        l.e(c21733i, "emoticon");
        this.f60023r.m9120c(2);
        Payload payload = new Payload("emoji", c21733i.f60541a, null, null);
        Flash flash = this.f60186C;
        if (flash != null) {
            flash.f11996f = payload;
        }
        m9425P();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: J */
    public void mo9430J() {
        this.f60195L = true;
        this.f60023r.m9120c(1);
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            abstractC21566o.mo9452C8();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9429L(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r6
            int r0 = r0.length()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
        Lc:
            r0 = r8
            r1 = r7
            if (r0 > r1) goto L5a
            r0 = r9
            if (r0 != 0) goto L1c
            r0 = r8
            r10 = r0
            goto L1f
        L1c:
            r0 = r7
            r10 = r0
        L1f:
            r0 = r6
            r1 = r10
            char r0 = r0.charAt(r1)
            r1 = 32
            int r0 = s1.z.c.l.g(r0, r1)
            if (r0 > 0) goto L33
            r0 = 1
            r10 = r0
            goto L36
        L33:
            r0 = 0
            r10 = r0
        L36:
            r0 = r9
            if (r0 != 0) goto L4c
            r0 = r10
            if (r0 != 0) goto L46
            r0 = 1
            r9 = r0
            goto Lc
        L46:
            int r8 = r8 + 1
            goto Lc
        L4c:
            r0 = r10
            if (r0 != 0) goto L54
            goto L5a
        L54:
            int r7 = r7 + (-1)
            goto Lc
        L5a:
            r0 = r6
            r1 = r8
            r2 = r7
            r3 = 1
            int r2 = r2 + r3
            java.lang.CharSequence r0 = r0.subSequence(r1, r2)
            java.lang.String r0 = r0.toString()
            int r0 = r0.length()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L79
            r0 = r8
            r1 = 8
            if (r0 >= r1) goto L79
            r0 = 48
            r8 = r0
            goto L90
        L79:
            r0 = r8
            r1 = 16
            if (r0 >= r1) goto L87
            r0 = 32
            float r0 = (float) r0
            r11 = r0
            goto L9c
        L87:
            r0 = r8
            r1 = 32
            if (r0 >= r1) goto L97
            r0 = 24
            r8 = r0
        L90:
            r0 = r8
            float r0 = (float) r0
            r11 = r0
            goto L9c
        L97:
            r0 = 16
            float r0 = (float) r0
            r11 = r0
        L9c:
            r0 = r5
            T extends e.a.y.a.e.e r0 = r0.f60006a
            e.a.y.a.j.o r0 = (p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lb0
            r0 = r6
            r1 = r11
            r0.mo9450E3(r1)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1377j.C21572u.m9429L(java.lang.String):void");
    }

    /* renamed from: M */
    public final boolean m9428M() {
        String str = this.f60205y;
        boolean z = false;
        if (!(str == null || r.p(str)) || this.f60197N != null || this.f60007b != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: N */
    public final Payload m9427N(String str) {
        List list;
        Payload payload = new Payload("location", str, null, this.f60007b);
        if (this.f60027v.getBoolean("featureShareImageInFlash")) {
            String str2 = this.f60007b;
            if (str2 == null) {
                return null;
            }
            List m8641b0 = C22128a.m8641b0(",", str2, 0);
            if (!m8641b0.isEmpty()) {
                ListIterator listIterator = m8641b0.listIterator(m8641b0.size());
                while (listIterator.hasPrevious()) {
                    if (!(((String) listIterator.previous()).length() == 0)) {
                        list = i.K0(m8641b0, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            list = s.a;
            Object[] array = list.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            if (strArr.length < 2) {
                return null;
            }
            payload.m35380g(this.f60201R.m(new FlashExtras(null, null, new FlashLocationExtras(this.f60008c, Double.valueOf(Double.parseDouble(strArr[0])), Double.valueOf(Double.parseDouble(strArr[1])), str), 3, null)));
        }
        return payload;
    }

    /* renamed from: O */
    public final void m9426O(int i) {
        Flash flash = this.f60186C;
        String valueOf = String.valueOf(flash != null ? Long.valueOf(flash.f11992b) : null);
        Contact mo9388b = this.f60021p.mo9384a() ? this.f60200Q.mo9388b(valueOf) : null;
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            if (mo9388b == null || TextUtils.isEmpty(mo9388b.getName()) || !(!l.a(mo9388b.getName(), valueOf))) {
                String str = this.f60203w;
                if (str != null) {
                    valueOf = str;
                }
            } else {
                valueOf = mo9388b.getName();
            }
            this.f60189F = valueOf;
            abstractC21566o.mo9606i5(this.f60020o.mo9375b(i, new Object[0]), String.valueOf(this.f60189F));
            String str2 = null;
            if (mo9388b != null) {
                str2 = mo9388b.getImageUrl();
            }
            if (str2 != null) {
                abstractC21566o.mo9622S4(mo9388b.getImageUrl());
            } else {
                abstractC21566o.mo9610f5(C3909R.C3910drawable.ic_empty_avatar);
            }
            String str3 = this.f60194K;
            if (str3 == null) {
                return;
            }
            abstractC21566o.mo9630N4(str3, 0, 0, Math.max(str3.length(), 80) - 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ed, code lost:
        if (android.text.TextUtils.isEmpty(r0.m35386a()) == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ae  */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9425P() {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1377j.C21572u.m9425P():void");
    }

    /* renamed from: Q */
    public final void m9424Q() {
        AbstractC21566o abstractC21566o;
        boolean z;
        Flash flash = this.f60186C;
        if (flash == null || (abstractC21566o = (AbstractC21566o) this.f60006a) == null) {
            return;
        }
        Payload payload = flash.f11996f;
        l.d(payload, "flashCopy.payload");
        if (TextUtils.equals(payload.m35382e(), "emoji")) {
            this.f60019n.mo9332d(flash.f11992b);
        }
        Flash flash2 = this.f60186C;
        if (flash2 != null && !TextUtils.isEmpty(flash2.f11998h) && !TextUtils.isEmpty(flash2.f11993c) && !TextUtils.isEmpty(this.f60204x)) {
            Bundle bundle = new Bundle();
            String l = Long.toString(flash2.f11992b);
            if (this.f60021p.mo9384a()) {
                AbstractC21597c abstractC21597c = this.f60200Q;
                l.d(l, "phoneNumber");
                z = abstractC21597c.mo9389a(l);
            } else {
                z = false;
            }
            Payload payload2 = flash2.f11996f;
            l.d(payload2, "flashCopy.payload");
            bundle.putString("type", payload2.m35382e());
            bundle.putString("flashMessageId", flash2.f11998h);
            bundle.putString("flashReceiverId", l);
            bundle.putString("flashContext", this.f60204x);
            bundle.putBoolean("flashFromPhonebook", z);
            bundle.putString("flashReplyId", null);
            bundle.putString("flashThreadId", flash2.f11993c);
            bundle.putString("flashFromHistory", String.valueOf(this.f60016k));
            if (!TextUtils.isEmpty(this.f60185B)) {
                bundle.putString("campaignDescription", this.f60185B);
            }
            bundle.putString("historyLength", DtbConstants.NETWORK_TYPE_UNKNOWN);
            C21632c.m9330b().mo9308j("FlashSent", bundle);
            this.f60016k = false;
        }
        AbstractC21629z<C21733i> abstractC21629z = this.f60019n;
        Flash flash3 = this.f60186C;
        if (flash3 == null) {
            return;
        }
        abstractC21629z.mo9332d(flash3.f11992b);
        abstractC21566o.mo9606i5(this.f60020o.mo9375b(C3909R.string.flash_sent_to, new Object[0]), String.valueOf(this.f60189F));
        if (this.f60187D) {
            this.f60190G = true;
            String m35393a = flash.m35393a();
            l.d(m35393a, "flashCopy.history");
            abstractC21566o.mo9447T3(m9645z(m35393a), String.valueOf(this.f60189F), this.f60195L, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, flash.f11992b);
        } else {
            abstractC21566o.close();
        }
        this.f60199P.mo9339m();
        if (!this.f60027v.getBoolean("featureShareImageInFlash")) {
            return;
        }
        abstractC21566o.mo9436z0();
        abstractC21566o.mo9592q5(C3909R.attr.theme_bg_contact_header, this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
        if (!this.f60188E) {
            return;
        }
        mo9434B();
        abstractC21566o.mo9439la();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: T0 */
    public void mo9423T0(CharSequence charSequence) {
        String obj;
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            boolean z = false;
            if (!(charSequence == null || r.p(charSequence)) || m9428M()) {
                z = true;
            }
            abstractC21566o.mo9644A0(z);
        }
        if (charSequence == null || (obj = charSequence.toString()) == null) {
            return;
        }
        m9429L(obj);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: W0 */
    public void mo9422W0() {
        super.mo9422W0();
        this.f60203w = null;
        this.f60204x = null;
        this.f60205y = null;
        this.f60184A = null;
        this.f60206z = null;
        this.f60185B = null;
        this.f60186C = null;
        this.f60013h = false;
        this.f60189F = null;
        this.f60191H = 0L;
        this.f60188E = false;
        this.f60190G = false;
        this.f60196M = true;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    /* renamed from: a */
    public void mo9421a(String str, ImageFlash imageFlash) {
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o == null || str == null) {
            return;
        }
        switch (str.hashCode()) {
            case -1350001074:
                if (!str.equals("state_uploaded")) {
                    return;
                }
                abstractC21566o.mo9635J7(this.f60020o.mo9375b(C3909R.string.flash_sending_flash, new Object[0]), false);
                abstractC21566o.mo9620T7();
                return;
            case -1223111947:
                if (!str.equals("state_flash_sent")) {
                    return;
                }
                abstractC21566o.mo9635J7(this.f60020o.mo9375b(C3909R.string.flash_sent, new Object[0]), false);
                abstractC21566o.mo9618U9();
                m9424Q();
                return;
            case -849991191:
                if (!str.equals("state_uploading_failed") || imageFlash == null) {
                    return;
                }
                this.f60198O = imageFlash;
                abstractC21566o.mo9594p5();
                ImageFlash imageFlash2 = this.f60198O;
                Objects.requireNonNull(imageFlash2, "null cannot be cast to non-null type com.truecaller.flashsdk.models.Flash");
                Payload payload = imageFlash2.f11996f;
                l.d(payload, "(imageFlashDraft as Flash).payload");
                String m35384c = payload.m35384c();
                l.d(m35384c, "(imageFlashDraft as Flash).payload.message");
                abstractC21566o.mo9635J7(m35384c, true);
                abstractC21566o.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_sending_failed, new Object[0]));
                return;
            case 1034431578:
                if (!str.equals("state_flash_failed") || imageFlash == null) {
                    return;
                }
                this.f60198O = imageFlash;
                Objects.requireNonNull(imageFlash, "null cannot be cast to non-null type com.truecaller.flashsdk.models.Flash");
                Payload payload2 = imageFlash.f11996f;
                l.d(payload2, "(imageFlashDraft as Flash).payload");
                String m35384c2 = payload2.m35384c();
                l.d(m35384c2, "(imageFlashDraft as Flash).payload.message");
                abstractC21566o.mo9635J7(m35384c2, true);
                abstractC21566o.mo9631M4();
                abstractC21566o.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_sending_failed, new Object[0]));
                return;
            default:
                return;
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21643j
    /* renamed from: b */
    public void mo9266b(Flash flash) {
        l.e(flash, "flash");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    /* renamed from: d */
    public void mo9420d() {
        if (!m9428M()) {
            AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
            if (abstractC21566o == null) {
                return;
            }
            abstractC21566o.close();
            return;
        }
        AbstractC21566o abstractC21566o2 = (AbstractC21566o) this.f60006a;
        if (abstractC21566o2 == null) {
            return;
        }
        abstractC21566o2.mo9595p0();
        abstractC21566o2.mo9592q5(C3909R.attr.theme_bg_contact_header, this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
        this.f60197N = null;
        this.f60205y = null;
        this.f60013h = false;
        AbstractC21566o abstractC21566o3 = (AbstractC21566o) this.f60006a;
        if (abstractC21566o3 != null) {
            abstractC21566o3.mo9440h2(this.f60022q.mo9390b(C3909R.attr.theme_text_hint));
            abstractC21566o3.mo9437t1();
            abstractC21566o3.mo9614c5(this.f60020o.mo9375b(C3909R.string.type_a_flash, new Object[0]));
        }
        if (!this.f60188E) {
            return;
        }
        mo9434B();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: e1 */
    public boolean mo9419e1(int i) {
        boolean z;
        if (i == 16908332) {
            AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
            z = true;
            if (abstractC21566o != null) {
                abstractC21566o.close();
                z = true;
            }
        } else if (i == C3909R.C3911id.about) {
            this.f60023r.m9120c(8);
            AbstractC21566o abstractC21566o2 = (AbstractC21566o) this.f60006a;
            if (abstractC21566o2 != null) {
                abstractC21566o2.mo9611e9();
            }
            Bundle bundle = new Bundle();
            bundle.putString("flashContext", this.f60190G ? "waiting" : "send");
            C21632c.m9330b().mo9308j("FlashTutorialClicked", bundle);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: h1 */
    public void mo9418h1() {
        if (this.f60196M) {
            this.f60196M = false;
            C21751a c21751a = this.f60023r;
            m9664E(c21751a.m9122a(c21751a.f60578a.mo9341k(), c21751a.f60578a.getInt("send_tooltips", 15)));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: i1 */
    public void mo9417i1(boolean z) {
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            if (!z) {
                abstractC21566o.close();
                return;
            }
            abstractC21566o.mo9639H4();
            abstractC21566o.mo9595p0();
        }
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21643j
    /* renamed from: j */
    public void mo9265j(Flash flash, int i, int i2) {
        l.e(flash, "flash");
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            abstractC21566o.mo9602l(this.f60020o.mo9375b(C3909R.string.no_internet, new Object[0]));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    /* renamed from: k */
    public void mo9416k(String str) {
        Payload payload;
        String str2;
        l.e(str, "messageText");
        if (!(!r.p(str))) {
            if (this.f60188E) {
                this.f60023r.m9120c(4);
                Flash flash = this.f60186C;
                if (flash != null) {
                    Payload m9427N = m9427N(this.f60020o.mo9375b(C3909R.string.flash_shared_via, new Object[0]));
                    if (m9427N == null) {
                        return;
                    }
                    flash.f11996f = m9427N;
                }
                m9425P();
                return;
            }
            if (this.f60013h) {
                String str3 = this.f60205y;
                boolean z = true;
                if (str3 != null) {
                    z = r.p(str3);
                }
                if (z && this.f60027v.getBoolean("featureShareImageInFlash")) {
                    this.f60023r.m9120c(4);
                    Flash flash2 = this.f60186C;
                    if (flash2 != null) {
                        flash2.f11996f = new Payload("image", this.f60020o.mo9375b(C3909R.string.flash_shared_via, new Object[0]), null, null);
                    }
                    m9425P();
                    return;
                }
            }
            AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
            if (abstractC21566o == null) {
                return;
            }
            abstractC21566o.mo9602l(this.f60020o.mo9375b(C3909R.string.enter_valid_message, new Object[0]));
            return;
        }
        if (this.f60188E) {
            this.f60023r.m9120c(4);
            payload = m9427N(str);
            if (payload == null) {
                return;
            }
        } else {
            if (this.f60013h) {
                String str4 = this.f60205y;
                if ((str4 == null || r.p(str4)) && this.f60027v.getBoolean("featureShareImageInFlash")) {
                    this.f60023r.m9120c(4);
                    payload = new Payload("image", str, null, null);
                }
            }
            if (this.f60013h && !TextUtils.isEmpty(this.f60205y)) {
                l.e(str, "messageText");
                String str5 = this.f60206z;
                boolean z2 = true;
                if (str5 != null) {
                    z2 = str5.length() == 0;
                }
                if (!z2) {
                    str2 = this.f60205y + ',' + this.f60206z;
                } else {
                    str2 = this.f60205y;
                }
                payload = new Payload("image", str, null, str2);
                String str6 = this.f60205y;
                if (str6 != null) {
                    payload.m35380g(this.f60201R.m(new FlashExtras(null, new FlashImageEntity(str6, "image/jpg"), null, 5, null)));
                }
            } else if (!this.f60013h || TextUtils.isEmpty(this.f60184A)) {
                String str7 = this.f60193J;
                if (str7 == null) {
                    str7 = "text";
                }
                payload = new Payload(str7, str, null, null);
            } else {
                payload = new Payload("video", str, null, this.f60184A);
            }
        }
        Flash flash3 = this.f60186C;
        if (flash3 != null) {
            flash3.f11996f = payload;
        }
        m9425P();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: l1 */
    public void mo9415l1() {
        String valueOf;
        AbstractC21631b m9330b = C21632c.m9330b();
        Flash flash = this.f60186C;
        if (flash == null || (valueOf = String.valueOf(flash.f11992b)) == null) {
            return;
        }
        m9330b.mo9296v(valueOf);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    /* renamed from: m */
    public void mo9414m(Bundle bundle) {
        Flash flash;
        if (bundle == null || (flash = (Flash) bundle.getParcelable("extra_flash")) == null) {
            return;
        }
        Payload payload = flash.f11996f;
        l.d(payload, "flashReplied.payload");
        if (l.a(payload.m35382e(), "call")) {
            Sender sender = flash.f11991a;
            l.d(sender, "flashReplied.sender");
            Long m35377c = sender.m35377c();
            Flash flash2 = this.f60186C;
            if (l.a(m35377c, flash2 != null ? Long.valueOf(flash2.f11992b) : null)) {
                AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
                if (abstractC21566o == null) {
                    return;
                }
                abstractC21566o.mo9438o(this.f60020o.mo9375b(C3909R.string.calling_you_back, new Object[0]));
                return;
            }
        }
        Sender sender2 = flash.f11991a;
        l.d(sender2, "flashReplied.sender");
        Long m35377c2 = sender2.m35377c();
        Flash flash3 = this.f60186C;
        Long l = null;
        if (flash3 != null) {
            l = Long.valueOf(flash3.f11992b);
        }
        if (!l.a(m35377c2, l)) {
            this.f60192I = true;
            return;
        }
        AbstractC21566o abstractC21566o2 = (AbstractC21566o) this.f60006a;
        if (abstractC21566o2 == null) {
            return;
        }
        abstractC21566o2.close();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    public void onPause() {
        if (this.f60192I) {
            AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
            if (abstractC21566o == null) {
                return;
            }
            abstractC21566o.close();
            return;
        }
        AbstractC21566o abstractC21566o2 = (AbstractC21566o) this.f60006a;
        if (abstractC21566o2 == null) {
            return;
        }
        abstractC21566o2.mo9443e0();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    public void onResume() {
        if (this.f60190G || this.f60015j) {
            return;
        }
        if (!this.f60013h || !this.f60027v.getBoolean("featureShareImageInFlash")) {
            AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
            if (abstractC21566o == null) {
                return;
            }
            abstractC21566o.mo9595p0();
            return;
        }
        AbstractC21566o abstractC21566o2 = (AbstractC21566o) this.f60006a;
        if (abstractC21566o2 == null) {
            return;
        }
        abstractC21566o2.mo9453B2();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    public void onStart() {
        AbstractC21566o abstractC21566o = (AbstractC21566o) this.f60006a;
        if (abstractC21566o != null) {
            if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                abstractC21566o.mo9441g9();
            }
            abstractC21566o.mo9449J9();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t
    /* renamed from: s */
    public void mo9413s() {
        if (this.f60013h) {
            mo9420d();
        } else {
            mo9648k1(1);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d
    /* renamed from: y */
    public boolean mo9412y(Intent intent) {
        AbstractC21566o abstractC21566o;
        l.e(intent, "viewIntent");
        boolean hasExtra = intent.hasExtra("to_phone");
        if (!hasExtra && (abstractC21566o = (AbstractC21566o) this.f60006a) != null) {
            abstractC21566o.mo9602l(this.f60020o.mo9375b(C3909R.string.required_to_send, new Object[0]));
        }
        return hasExtra;
    }
}
