package p193e.p194a.p1365y.p1366a.p1370e;

import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import android.util.Pair;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.FlashLocation;
import com.truecaller.flashsdk.p166ui.base.BaseFlashActivity;
import e.m.e.k;
import java.util.Arrays;
import java.util.Objects;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1365y.p1391i.C21751a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.y.a.e.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/e/d.class */
public abstract class AbstractC21491d<T extends AbstractC21492e> implements AbstractC21488b<T> {

    /* renamed from: a */
    public T f60006a;

    /* renamed from: b */
    public String f60007b;

    /* renamed from: c */
    public String f60008c;

    /* renamed from: d */
    public FlashLocation f60009d;

    /* renamed from: e */
    public String f60010e;

    /* renamed from: f */
    public final f f60011f;

    /* renamed from: g */
    public String f60012g;

    /* renamed from: h */
    public boolean f60013h;

    /* renamed from: i */
    public final String[] f60014i = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: j */
    public boolean f60015j;

    /* renamed from: k */
    public boolean f60016k;

    /* renamed from: l */
    public Uri f60017l;

    /* renamed from: m */
    public C21733i[] f60018m;

    /* renamed from: n */
    public final AbstractC21629z<C21733i> f60019n;

    /* renamed from: o */
    public final AbstractC21606g0 f60020o;

    /* renamed from: p */
    public final AbstractC21603f f60021p;

    /* renamed from: q */
    public final AbstractC21593a f60022q;

    /* renamed from: r */
    public final C21751a f60023r;

    /* renamed from: s */
    public final AbstractC21624u f60024s;

    /* renamed from: t */
    public final AbstractC21614m f60025t;

    /* renamed from: u */
    public final AbstractC19219a0 f60026u;

    /* renamed from: v */
    public final AbstractC8541a f60027v;

    public AbstractC21491d(f fVar, AbstractC21629z<C21733i> abstractC21629z, FirebaseMessaging firebaseMessaging, AbstractC21606g0 abstractC21606g0, AbstractC21603f abstractC21603f, AbstractC21593a abstractC21593a, C21751a c21751a, AbstractC21624u abstractC21624u, k kVar, AbstractC21614m abstractC21614m, AbstractC19219a0 abstractC19219a0, AbstractC8541a abstractC8541a) {
        l.e(fVar, "uiContext");
        l.e(abstractC21629z, "recentEmojiManager");
        l.e(firebaseMessaging, "messaging");
        l.e(abstractC21606g0, "resourceProvider");
        l.e(abstractC21603f, "deviceUtils");
        l.e(abstractC21593a, "colorProvider");
        l.e(c21751a, "toolTipsManager");
        l.e(abstractC21624u, "locationFormatter");
        l.e(kVar, "gson");
        l.e(abstractC21614m, "mediaHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8541a, "coreSettings");
        this.f60019n = abstractC21629z;
        this.f60020o = abstractC21606g0;
        this.f60021p = abstractC21603f;
        this.f60022q = abstractC21593a;
        this.f60023r = c21751a;
        this.f60024s = abstractC21624u;
        this.f60025t = abstractC21614m;
        this.f60026u = abstractC19219a0;
        this.f60027v = abstractC8541a;
        this.f60011f = fVar;
    }

    /* renamed from: A */
    public abstract void mo9435A();

    /* renamed from: B */
    public void mo9434B() {
        if (!this.f60027v.getBoolean("featureShareImageInFlash")) {
            T t = this.f60006a;
            if (t == null) {
                return;
            }
            t.mo9642B5();
            return;
        }
        T t2 = this.f60006a;
        if (t2 != null) {
            t2.mo9640F9();
        }
        this.f60007b = null;
        T t3 = this.f60006a;
        if (t3 == null) {
            return;
        }
        t3.mo9592q5(C3909R.attr.theme_bg_contact_header, this.f60022q.mo9390b(C3909R.attr.theme_incoming_text));
    }

    /* renamed from: C */
    public abstract void mo9433C(Uri uri);

    /* renamed from: D */
    public final void m9665D() {
        T t = this.f60006a;
        if (t != null) {
            if (this.f60021p.mo9382c()) {
                t.mo9607h8();
            } else if (this.f60007b != null) {
                m9663H();
            } else {
                this.f60015j = false;
                t.mo9626Q4();
            }
        }
    }

    /* renamed from: E */
    public final void m9664E(int i) {
        T t;
        T t2;
        if (i == 1) {
            mo9430J();
        } else if (i == 2) {
            T t3 = this.f60006a;
            if (t3 == null) {
                return;
            }
            t3.mo9619U4();
        } else if (i != 4) {
            if (i != 8 || (t2 = this.f60006a) == null) {
                return;
            }
            t2.mo9629N8();
        } else if (this.f60027v.getBoolean("featureShareImageInFlash") || (t = this.f60006a) == null) {
        } else {
            t.mo9590w8();
        }
    }

    /* renamed from: F */
    public void mo9432F(T t) {
        l.e(t, "presenterView");
        t.mo9609g0();
        AbstractC21593a abstractC21593a = this.f60022q;
        int i = C3909R.attr.theme_incoming_secondary_text;
        t.mo9636J4(abstractC21593a.mo9390b(i));
        t.mo9604j8(this.f60022q.mo9390b(i));
        t.mo9627P4(true);
    }

    /* renamed from: G */
    public abstract void mo9431G(C21733i c21733i);

    /* JADX WARN: Removed duplicated region for block: B:73:0x01e1  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9663H() {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d.m9663H():void");
    }

    /* renamed from: I */
    public final void m9662I(long j) {
        this.f60019n.mo9334b(j);
        Object[] array = this.f60019n.getAll().subList(0, 4).toArray(new C21733i[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        C21733i[] c21733iArr = (C21733i[]) array;
        this.f60018m = c21733iArr;
        T t = this.f60006a;
        if (t != null) {
            if (c21733iArr != null) {
                t.mo9597o5(c21733iArr);
            } else {
                l.l("recentEmojis");
                throw null;
            }
        }
    }

    /* renamed from: J */
    public abstract void mo9430J();

    /* renamed from: K */
    public final void m9661K() {
        T t;
        if (this.f60027v.getBoolean("featureShareImageInFlash") && (t = this.f60006a) != null) {
            if (!this.f60026u.mo13825h("android.permission.CAMERA")) {
                t.mo9600m5(12);
                return;
            }
            Uri mo9357c = this.f60025t.mo9357c(".jpg");
            this.f60017l = mo9357c;
            if (mo9357c != null) {
                t.mo9625Q5(mo9357c, 100);
            } else {
                t.mo9602l(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: O0 */
    public void mo9660O0(boolean z) {
        T t = this.f60006a;
        if (t != null) {
            if (this.f60027v.getBoolean("featureShareImageInFlash")) {
                t.mo9599m9();
            }
            this.f60012g = null;
            if (!z) {
                mo9434B();
            } else if (!this.f60021p.mo9383b()) {
                t.mo9633K7(this.f60020o.mo9375b(C3909R.string.no_internet, new Object[0]));
            } else if (this.f60021p.mo9380e()) {
                m9665D();
            } else {
                this.f60015j = true;
                t.mo9641D7(10);
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: U0 */
    public void mo9659U0(Task<LocationSettingsResponse> task) {
        l.e(task, "task");
        T t = this.f60006a;
        if (t != null) {
            if (task.m38519s()) {
                this.f60015j = false;
                t.mo9632L4();
                return;
            }
            Throwable m38524n = task.m38524n();
            Throwable th = m38524n;
            if (!(m38524n instanceof ResolvableApiException)) {
                th = null;
            }
            ResolvableApiException resolvableApiException = (ResolvableApiException) th;
            if (resolvableApiException == null) {
                t.mo9633K7(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
            } else if (resolvableApiException.f5693a.f5728b != 6) {
            } else {
                t.mo9608h5(resolvableApiException);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        if (s1.f0.r.p(r0) != false) goto L24;
     */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: V0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9658V0(android.os.Bundle r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "resultData"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "com.truecaller.flashsdk.assist.LOCATION_DATA_AREA"
            java.lang.String r0 = r0.getString(r1)
            r9 = r0
            r0 = r8
            java.lang.String r1 = "com.truecaller.flashsdk.assist.LOCATION_DATA_CITY"
            java.lang.String r0 = r0.getString(r1)
            r10 = r0
            r0 = r8
            java.lang.String r1 = "com.truecaller.flashsdk.assist.LOCATION_DATA_STREET"
            java.lang.String r0 = r0.getString(r1)
            r11 = r0
            r0 = r7
            com.truecaller.flashsdk.models.FlashLocation r1 = new com.truecaller.flashsdk.models.FlashLocation
            r2 = r1
            r3 = r11
            r4 = r9
            r5 = r10
            r2.<init>(r3, r4, r5)
            r0.f60009d = r1
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L48
            r0 = r11
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L42
            goto L48
        L42:
            r0 = 0
            r13 = r0
            goto L4b
        L48:
            r0 = 1
            r13 = r0
        L4b:
            r0 = r13
            if (r0 != 0) goto L56
            r0 = r11
            r8 = r0
            goto L9b
        L56:
            r0 = r9
            if (r0 == 0) goto L6a
            r0 = r9
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L64
            goto L6a
        L64:
            r0 = 0
            r13 = r0
            goto L6d
        L6a:
            r0 = 1
            r13 = r0
        L6d:
            r0 = r13
            if (r0 != 0) goto L77
            r0 = r9
            r8 = r0
            goto L9b
        L77:
            r0 = r10
            if (r0 == 0) goto L86
            r0 = r12
            r13 = r0
            r0 = r10
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L89
        L86:
            r0 = 1
            r13 = r0
        L89:
            r0 = r13
            if (r0 != 0) goto L93
            r0 = r10
            r8 = r0
            goto L9b
        L93:
            r0 = r8
            java.lang.String r1 = "com.truecaller.flashsdk.assist.RESULT_DATA_KEY"
            java.lang.String r0 = r0.getString(r1)
            r8 = r0
        L9b:
            r0 = r7
            r1 = r8
            r0.f60008c = r1
            r0 = r7
            r0.m9663H()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1370e.AbstractC21491d.mo9658V0(android.os.Bundle):void");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: W0 */
    public void mo9422W0() {
        this.f60016k = false;
        this.f60015j = false;
        T t = this.f60006a;
        if (t != null) {
            t.mo9615b5();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: X0 */
    public void mo9657X0(Location location) {
        T t = this.f60006a;
        if (t != null) {
            if (location == null) {
                t.mo9633K7(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
                return;
            }
            Pair<String, String> mo9350a = this.f60024s.mo9350a(location);
            if (mo9350a == null) {
                t.mo9633K7(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
                return;
            }
            AbstractC21606g0 abstractC21606g0 = this.f60020o;
            int i = C3909R.string.lat_long;
            Object obj = mo9350a.first;
            l.d(obj, "latLongCopy.first");
            Object obj2 = mo9350a.second;
            l.d(obj2, "latLongCopy.second");
            this.f60007b = abstractC21606g0.mo9375b(i, obj, obj2);
            t.mo9637I4(location);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: Y0 */
    public void mo9656Y0(String str, boolean z, boolean z2) {
        l.e(str, "messageText");
        T t = this.f60006a;
        if (t != null) {
            t.mo9627P4(z);
            t.mo9593p8();
            if (z) {
                t.mo9601l5(true);
                t.mo9639H4();
            } else if (!z2) {
                t.mo9591r8();
                t.mo9595p0();
            } else {
                t.mo9616Z4();
                if (!r.p(str)) {
                    return;
                }
                t.mo9601l5(false);
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: Z0 */
    public void mo9655Z0(Location location) {
        T t = this.f60006a;
        if (t != null) {
            if (location == null) {
                t.mo9607h8();
                return;
            }
            Pair<String, String> mo9350a = this.f60024s.mo9350a(location);
            if (mo9350a == null) {
                return;
            }
            AbstractC21606g0 abstractC21606g0 = this.f60020o;
            int i = C3909R.string.lat_long;
            Object obj = mo9350a.first;
            l.d(obj, "latLongCopy.first");
            Object obj2 = mo9350a.second;
            l.d(obj2, "latLongCopy.second");
            this.f60007b = abstractC21606g0.mo9375b(i, obj, obj2);
            t.mo9637I4(location);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: a1 */
    public void mo9654a1() {
        m9663H();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: b1 */
    public void mo9653b1() {
        String str;
        T t = this.f60006a;
        if (t == null || (str = this.f60010e) == null) {
            return;
        }
        t.mo9634K4(str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: c */
    public void mo9555c() {
        this.f60006a = null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: c1 */
    public void mo9652c1(String str) {
        l.e(str, "videoUrl");
        this.f60010e = str;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: d1 */
    public void mo9651d1(String str, C21733i c21733i, int i, int i2) {
        l.e(str, "messageText");
        l.e(c21733i, "emoticon");
        if (!r.p(str) || this.f60013h) {
            m9646x(c21733i, i, i2);
        } else {
            mo9431G(c21733i);
        }
        this.f60019n.push(c21733i);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.truecaller.flashsdk.ui.base.BaseFlashActivity, android.app.Activity] */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: f1 */
    public final void mo9650f1(T t) {
        l.e(t, "presenterView");
        this.f60006a = t;
        ?? r0 = (BaseFlashActivity) t;
        if (mo9412y(r0.mo9638H9())) {
            mo9432F(t);
        } else {
            r0.finish();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: g1 */
    public void mo9551g1(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i == 10) {
            AbstractC19219a0 abstractC19219a0 = this.f60026u;
            String[] strArr2 = this.f60014i;
            if (abstractC19219a0.mo13826g(strArr, iArr, (String[]) Arrays.copyOf(strArr2, strArr2.length))) {
                m9665D();
                return;
            }
            this.f60015j = false;
            T t = this.f60006a;
            if (t == null) {
                return;
            }
            t.mo9633K7(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
        } else if (!this.f60027v.getBoolean("featureShareImageInFlash") || i != 12) {
        } else {
            if (this.f60026u.mo13826g(strArr, iArr, "android.permission.CAMERA")) {
                m9661K();
                return;
            }
            T t2 = this.f60006a;
            if (t2 == null) {
                return;
            }
            t2.mo9602l("Write access denied");
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: j1 */
    public void mo9649j1(String str, int i, int i2, int i3) {
        l.e(str, "messageText");
        C21733i[] c21733iArr = this.f60018m;
        if (c21733iArr == null) {
            l.l("recentEmojis");
            throw null;
        }
        C21733i c21733i = c21733iArr[i];
        if (!r.p(str) || this.f60013h) {
            m9646x(c21733i, i2, i3);
        } else {
            mo9431G(c21733i);
            this.f60016k = true;
        }
        this.f60019n.push(c21733i);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: k1 */
    public void mo9648k1(int i) {
        if (i != 0) {
            if (i != 1) {
                return;
            }
            m9661K();
            return;
        }
        T t = this.f60006a;
        if (t != null) {
            t.mo9599m9();
        }
        mo9660O0(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: m1 */
    public void mo9647m1(int i, int i2, Intent intent) {
        T t;
        T t2;
        if (i == 100) {
            if (!this.f60027v.getBoolean("featureShareImageInFlash") || (t = this.f60006a) == null) {
                return;
            }
            if (i2 == -1) {
                d.w2(h1.a, this.f60011f, (j0) null, new C21489c(this, t, null), 2, (Object) null);
            } else {
                t.mo9602l(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
            }
        } else if (i != 1000 || (t2 = this.f60006a) == null) {
        } else {
            this.f60015j = false;
            if (i2 != -1) {
                t2.mo9633K7(this.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
                return;
            }
            t2.mo9632L4();
            t2.mo9602l(this.f60020o.mo9375b(C3909R.string.flash_fetching_location, new Object[0]));
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: o0 */
    public void mo9545o0() {
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b
    /* renamed from: q0 */
    public void mo9542q0() {
        T t = this.f60006a;
        if (t != null) {
            t.mo9613c8();
        }
    }

    /* renamed from: x */
    public final void m9646x(C21733i c21733i, int i, int i2) {
        int length;
        T t = this.f60006a;
        if (t == null || (length = c21733i.f60541a.length() + i) >= 80) {
            return;
        }
        String str = c21733i.f60541a;
        l.d(str, "emoticon.emoji");
        t.mo9630N4(str, i, i2, length);
        t.mo9593p8();
    }

    /* renamed from: y */
    public abstract boolean mo9412y(Intent intent);

    /* renamed from: z */
    public final String m9645z(String str) {
        int i;
        l.e(str, "history");
        int length = str.length() - r.t(str, StringConstant.SPACE, "", false, 4).length();
        String str2 = str;
        if (length > 8) {
            int i2 = length - 8;
            int H = v.H(str, StringConstant.SPACE, 0, false, 6);
            while (true) {
                i = H;
                i2--;
                if (i2 <= 0 || i == -1) {
                    break;
                }
                H = v.H(str, StringConstant.SPACE, i + 1, false, 4);
            }
            str2 = str.substring(i);
            l.d(str2, "(this as java.lang.String).substring(startIndex)");
        }
        return str2;
    }
}
