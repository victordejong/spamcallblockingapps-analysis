package p193e.p194a.p195a.p240i;

import com.truecaller.messaging.data.types.InboxTab;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p240i.AbstractC6388d;
import s1.z.c.l;
/* renamed from: e.a.a.i.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/i/e.class */
public final class C6390e extends AbstractC18894c<AbstractC6388d> implements AbstractC6387c {

    /* renamed from: b */
    public final AbstractC6386b f21279b;

    /* renamed from: c */
    public final AbstractC6388d.AbstractC6389a f21280c;

    @Inject
    public C6390e(AbstractC6386b abstractC6386b, AbstractC6388d.AbstractC6389a abstractC6389a) {
        l.e(abstractC6386b, "model");
        l.e(abstractC6389a, "actionListener");
        this.f21279b = abstractC6386b;
        this.f21280c = abstractC6389a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0037, code lost:
        if (r22 != null) goto L9;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(p193e.p194a.p195a.p240i.AbstractC6388d r22, int r23) {
        /*
            r21 = this;
            r0 = r22
            e.a.a.i.d r0 = (p193e.p194a.p195a.p240i.AbstractC6388d) r0
            r24 = r0
            r0 = r24
            java.lang.String r1 = "itemView"
            s1.z.c.l.e(r0, r1)
            r0 = r21
            e.a.a.i.b r0 = r0.f21279b
            e.a.a.i.f r0 = r0.mo31360r()
            r22 = r0
            r0 = r22
            if (r0 == 0) goto Lc5
            r0 = r22
            e.a.c.a.l.b$d r0 = r0.f21281a
            r25 = r0
            r0 = r22
            e.a.b0.m.a.a r0 = r0.f21282b
            r26 = r0
            r0 = r22
            boolean r0 = r0.f21283c
            r27 = r0
            r0 = r26
            if (r0 == 0) goto L3d
            r0 = r26
            java.lang.String r0 = r0.f26291b
            r22 = r0
            r0 = r22
            if (r0 == 0) goto L3d
            goto L43
        L3d:
            r0 = r25
            java.lang.String r0 = r0.f28063c
            r22 = r0
        L43:
            r0 = r24
            r1 = r22
            r0.mo31357X1(r1)
            r0 = r24
            r1 = r25
            java.lang.String r1 = r1.f28065e
            r0.mo31358W1(r1)
            r0 = r25
            e.a.c.a.l.c r0 = r0.f28067g
            if (r0 != 0) goto L63
            r0 = 1
            r28 = r0
            goto L66
        L63:
            r0 = 0
            r28 = r0
        L66:
            r0 = r24
            r1 = r28
            r0.mo31359T2(r1)
            r0 = r24
            r1 = r27
            r0.mo31355m3(r1)
            r0 = r25
            java.lang.String r0 = r0.f28063c
            r25 = r0
            r0 = r26
            if (r0 == 0) goto L8b
            r0 = r26
            android.net.Uri r0 = r0.f26292c
            r22 = r0
            goto L8d
        L8b:
            r0 = 0
            r22 = r0
        L8d:
            r0 = r26
            if (r0 == 0) goto La5
            r0 = r26
            java.lang.String r0 = r0.f26290a
            r26 = r0
            r0 = r26
            if (r0 == 0) goto La5
            r0 = r26
            r25 = r0
            goto La5
        La5:
            r0 = r24
            com.truecaller.common.ui.avatar.AvatarXConfig r1 = new com.truecaller.common.ui.avatar.AvatarXConfig
            r2 = r1
            r3 = r22
            r4 = r25
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 1
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 65468(0xffbc, float:9.174E-41)
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            r0.mo31356a(r1)
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p240i.C6390e.mo11464G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return (this.f21279b.mo31360r() == null || this.f21279b.mo31361Cg() != InboxTab.PERSONAL) ? 0 : 1;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        C6391f mo31360r = this.f21279b.mo31360r();
        boolean z = false;
        if (mo31360r != null) {
            String str = c18900h.f53001a;
            switch (str.hashCode()) {
                case -1743572928:
                    z = false;
                    if (str.equals("ItemEvent.CLICKED")) {
                        this.f21280c.mo31352l7(mo31360r.f21281a);
                        z = true;
                        break;
                    }
                    break;
                case -1314591573:
                    z = false;
                    if (str.equals("ItemEvent.LONG_CLICKED")) {
                        this.f21280c.mo31353ei(mo31360r.f21281a);
                        z = true;
                        break;
                    }
                    break;
                case 574090851:
                    z = false;
                    if (str.equals("ItemEvent.ACTION_COPY_OTP")) {
                        this.f21280c.mo31351t3(mo31360r.f21281a);
                        z = true;
                        break;
                    }
                    break;
                case 1060489556:
                    z = false;
                    if (str.equals("ItemEvent.ACTION_DISMISS_OTP")) {
                        this.f21280c.mo31354Y3(mo31360r.f21281a);
                        z = true;
                        break;
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        }
        return z;
    }
}
