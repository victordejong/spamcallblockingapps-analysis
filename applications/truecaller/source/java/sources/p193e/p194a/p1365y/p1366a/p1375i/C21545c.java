package p193e.p194a.p1365y.p1366a.p1375i;

import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.FlashContact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import s1.f0.h;
import s1.f0.q;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.y.a.i.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/i/c.class */
public final class C21545c implements AbstractC21544b {

    /* renamed from: a */
    public FlashContact f60134a;

    /* renamed from: b */
    public boolean f60135b;

    /* renamed from: c */
    public boolean f60136c;

    /* renamed from: d */
    public int f60137d;

    /* renamed from: e */
    public long f60138e;

    /* renamed from: f */
    public final AbstractC21546d f60139f;

    /* renamed from: g */
    public final AbstractC21626w f60140g;

    /* renamed from: h */
    public final AbstractC21606g0 f60141h;

    public C21545c(AbstractC21546d abstractC21546d, AbstractC21626w abstractC21626w, AbstractC21606g0 abstractC21606g0) {
        l.e(abstractC21546d, "onBoardingView");
        l.e(abstractC21626w, "preferenceUtil");
        l.e(abstractC21606g0, "resourceProvider");
        this.f60139f = abstractC21546d;
        this.f60140g = abstractC21626w;
        this.f60141h = abstractC21606g0;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    /* renamed from: R0 */
    public void mo9465R0(int i) {
        FlashContact flashContact;
        if (i == C3909R.C3911id.btnSend) {
            if (this.f60138e == 0) {
                this.f60139f.close();
            } else {
                this.f60139f.mo9458N3();
            }
        } else if (i != C3909R.C3911id.tryFlashYourself || (flashContact = this.f60134a) == null) {
        } else {
            String str = flashContact.f11999a;
            h hVar = new h("^[+]");
            l.e(str, "input");
            l.e("", "replacement");
            String replaceFirst = hVar.a.matcher(str).replaceFirst("");
            l.d(replaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
            Long j = q.j(replaceFirst);
            if (j == null) {
                return;
            }
            long longValue = j.longValue();
            String str2 = flashContact.f12001c;
            this.f60139f.mo9454u8(str2 == null || r.p(str2) ? flashContact.f12000b : C22128a.m8562v(new Object[]{flashContact.f12000b, flashContact.f12001c}, 2, "%s %s", "java.lang.String.format(format, *args)"), longValue);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    /* renamed from: S0 */
    public void mo9464S0() {
        this.f60135b = true;
        this.f60139f.mo9455Y1();
        this.f60139f.mo9459L7();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
        if (r8 != null) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    /* renamed from: T0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9463T0(android.os.Bundle r8) {
        /*
            r7 = this;
            r0 = r7
            e.a.y.b.w r0 = r0.f60140g
            java.lang.String r1 = "first_time_user"
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            r0.mo9340l(r1, r2)
            r0 = r8
            if (r0 == 0) goto L1c
            r0 = r8
            java.lang.String r1 = "to_phone"
            long r0 = r0.getLong(r1)
            r9 = r0
            goto L1e
        L1c:
            r0 = 0
            r9 = r0
        L1e:
            r0 = r7
            r1 = r9
            r0.f60138e = r1
            r0 = 0
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L40
            r0 = r7
            e.a.y.b.g0 r0 = r0.f60141h
            int r1 = com.truecaller.flashsdk.C3909R.string.got_it
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r0 = r0.mo9375b(r1, r2)
            r8 = r0
            goto Lbb
        L40:
            e.a.y.c.b r0 = p193e.p194a.p1365y.p1382c.C21632c.m9330b()
            e.a.y.c.i r0 = r0.mo9292z()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L5b
            r0 = r12
            com.truecaller.flashsdk.models.FlashContact r0 = r0.mo9272h()
            r12 = r0
            goto L5e
        L5b:
            r0 = 0
            r12 = r0
        L5e:
            r0 = r7
            r1 = r12
            r0.f60134a = r1
            r0 = r12
            if (r0 == 0) goto L6f
            r0 = 1
            r11 = r0
            goto L72
        L6f:
            r0 = 0
            r11 = r0
        L72:
            r0 = r7
            e.a.y.b.g0 r0 = r0.f60141h
            r12 = r0
            int r0 = com.truecaller.flashsdk.C3909R.string.intro_send_a_flash_to
            r13 = r0
            r0 = r8
            if (r0 == 0) goto L8f
            r0 = r8
            java.lang.String r1 = "to_name"
            java.lang.String r0 = r0.getString(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L8f
            goto La3
        L8f:
            r0 = 43
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8558w(r0)
            r8 = r0
            r0 = r8
            r1 = r7
            long r1 = r1.f60138e
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
        La3:
            r0 = r8
            java.lang.String r1 = "extras?.getString(Consta…ME) ?: \"+$recipientPhone\""
            s1.z.c.l.d(r0, r1)
            r0 = r12
            r1 = r13
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5
            java.lang.String r0 = r0.mo9375b(r1, r2)
            r8 = r0
        Lbb:
            r0 = r7
            e.a.y.a.i.d r0 = r0.f60139f
            r1 = r11
            r2 = r8
            r0.mo9460L(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1375i.C21545c.mo9463T0(android.os.Bundle):void");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    /* renamed from: U0 */
    public void mo9462U0() {
        if (!this.f60135b) {
            int i = this.f60137d + 1;
            this.f60137d = i;
            if (i < 2) {
                this.f60139f.mo9461K5();
                return;
            }
            this.f60136c = true;
            this.f60139f.mo9457T8();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    public void onStart() {
        if (this.f60135b || this.f60136c) {
            return;
        }
        this.f60139f.mo9461K5();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b
    public void onStop() {
        if (this.f60135b || this.f60136c) {
            return;
        }
        this.f60139f.mo9456W7();
    }
}
