package p193e.p194a.p1341w3;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1365y.p1382c.AbstractC21665w;
import s1.z.c.l;
/* renamed from: e.a.w3.b */
/* loaded from: classes9-dex2jar.jar:e/a/w3/b.class */
public final class C21191b implements AbstractC21665w {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC19463a0>> f59376a;

    /* renamed from: b */
    public final a<AbstractC19462a> f59377b;

    @Inject
    public C21191b(a<AbstractC19854f<AbstractC19463a0>> aVar, a<AbstractC19462a> aVar2) {
        l.e(aVar, "eventTracker");
        l.e(aVar2, "analytic");
        this.f59376a = aVar;
        this.f59377b = aVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00c9, code lost:
        if (r7.equals("FlashBlockUser") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00d5, code lost:
        if (r7.equals("FlashReplied") != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00d8, code lost:
        r0 = p193e.p194a.p1050l5.p1051a.C17688p0.f50011k;
        r0 = new p193e.p194a.p1050l5.p1051a.C17688p0.C17690b(null);
        r0 = r8.getString("type");
        r0.validate(r0.fields()[5], r0);
        r0.f50028d = r0;
        r0.fieldSetFlags()[5] = true;
        r0 = r8.getString("flashMessageId");
        r0.validate(r0.fields()[2], r0);
        r0.f50025a = r0;
        r0.fieldSetFlags()[2] = true;
        r0 = r8.getBoolean("flashFromPhonebook");
        r0.validate(r0.fields()[6], java.lang.Boolean.valueOf(r0));
        r0.f50029e = r0;
        r0.fieldSetFlags()[6] = true;
        r0 = r8.getString("flashReceiverId");
        r0.validate(r0.fields()[3], r0);
        r0.f50026b = r0;
        r0.fieldSetFlags()[3] = true;
        r0 = r8.getString("flashContext");
        r0.validate(r0.fields()[4], r0);
        r0.f50027c = r0;
        r0.fieldSetFlags()[4] = true;
        r0 = r8.getString("flashReplyId");
        r0.validate(r0.fields()[7], r0);
        r0.f50030f = r0;
        r0.fieldSetFlags()[7] = true;
        r0 = java.lang.Integer.parseInt(r8.getString("historyLength", ""));
        r0.validate(r0.fields()[9], java.lang.Integer.valueOf(r0));
        r0.f50032h = r0;
        r0.fieldSetFlags()[9] = true;
        s1.z.c.l.d(r0, "flashInitiatedEvent.setC…ics.HISTORY_LENGTH, \"\")))");
        r0 = r8.getString("flashThreadId");
        r0.validate(r0.fields()[8], r0);
        r0.f50031g = r0;
        r0.fieldSetFlags()[8] = true;
        ((p193e.p194a.p1146q2.AbstractC19463a0) ((p193e.p194a.p1187r2.AbstractC19854f) r6.f59376a.get()).mo11854a()).mo13111a(r0.build());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0250, code lost:
        if (r7.equals("FlashViewProfile") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x054f, code lost:
        if (r7.equals("FlashOpened") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x055c, code lost:
        if (r7.equals("FlashMissed") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x055f, code lost:
        r0 = p193e.p194a.p1050l5.p1051a.C17660n0.f49859j;
        r0 = new p193e.p194a.p1050l5.p1051a.C17660n0.C17662b(null);
        r0 = r8.getString("type");
        r0.validate(r0.fields()[5], r0);
        r0.f49875d = r0;
        r0.fieldSetFlags()[5] = true;
        r0 = r8.getString("flashMessageId");
        r0.validate(r0.fields()[2], r0);
        r0.f49872a = r0;
        r0.fieldSetFlags()[2] = true;
        r0 = r8.getBoolean("flashFromPhonebook");
        r0.validate(r0.fields()[6], java.lang.Boolean.valueOf(r0));
        r0.f49876e = r0;
        r0.fieldSetFlags()[6] = true;
        r0 = r8.getBoolean("flashMissed");
        r0.validate(r0.fields()[7], java.lang.Boolean.valueOf(r0));
        r0.f49877f = r0;
        r0.fieldSetFlags()[7] = true;
        r0 = r8.getString("flashSenderId");
        r0.validate(r0.fields()[3], r0);
        r0.f49873b = r0;
        r0.fieldSetFlags()[3] = true;
        r0 = r8.getString("flashThreadId");
        r0.validate(r0.fields()[4], r0);
        r0.f49874c = r0;
        r0.fieldSetFlags()[4] = true;
        s1.z.c.l.d(r0, "flashActionEvent.setCont…alytics.FLASH_THREAD_ID))");
        r0 = r8.getString("flashActionName");
        r0.validate(r0.fields()[8], r0);
        r0.f49878g = r0;
        r0.fieldSetFlags()[8] = true;
        ((p193e.p194a.p1146q2.AbstractC19463a0) ((p193e.p194a.p1187r2.AbstractC19854f) r6.f59376a.get()).mo11854a()).mo13111a(r0.build());
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x00b1, code lost:
        if (r7.equals("FlashSent") != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00bd, code lost:
        if (r7.equals("FlashClose") != false) goto L65;
     */
    @Override // p193e.p194a.p1365y.p1382c.AbstractC21665w
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9215a(java.lang.String r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 2069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1341w3.C21191b.mo9215a(java.lang.String, android.os.Bundle):void");
    }
}
