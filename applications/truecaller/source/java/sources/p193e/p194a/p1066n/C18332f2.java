package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import com.truecaller.data.entity.messaging.Participant;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.n.f2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/f2.class */
public final class C18332f2 extends AbstractC18338h0 {

    /* renamed from: b */
    public final AbstractC6392i0 f51787b;

    /* renamed from: c */
    public final C20592g f51788c;

    /* renamed from: d */
    public final AbstractC8541a f51789d;

    /* renamed from: e */
    public final ContentResolver f51790e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18332f2(C6713w.AbstractC6717c abstractC6717c, AbstractC6392i0 abstractC6392i0, C20592g c20592g, AbstractC8541a abstractC8541a, ContentResolver contentResolver) {
        super(abstractC6717c);
        l.e(abstractC6717c, "transactionExecutor");
        l.e(abstractC6392i0, "settings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8541a, "coreSettings");
        l.e(contentResolver, "contentResolver");
        this.f51787b = abstractC6392i0;
        this.f51788c = c20592g;
        this.f51789d = abstractC8541a;
        this.f51790e = contentResolver;
    }

    /* renamed from: D */
    public final void m15280D(List<ContentProviderOperation> list, long j, Participant participant, String str) {
        int m25969e1 = C10480a.m25969e1(list, participant);
        int m25974d1 = C10480a.m25974d1(list, i.y0(participant), false);
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(j));
        l.d(newUpdate, "ContentProviderOperation…getContentUri(messageId))");
        if (m25969e1 > 0) {
            newUpdate.withValueBackReference("participant_id", m25969e1);
        }
        if (m25974d1 > 0) {
            newUpdate.withValueBackReference("conversation_id", m25974d1);
        }
        newUpdate.withValue("info10", str);
        ContentProviderOperation build = newUpdate.build();
        l.d(build, "builder.build()");
        list.add(build);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 4;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        l.e(bVar, "time");
        this.f51787b.mo31147S0(4, ((e) bVar).a);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        return new b(this.f51787b.mo31057i2(4, 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0164  */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo14984m(p193e.p194a.p195a.p244k.AbstractC6691j r11, p193e.p194a.p195a.p244k.AbstractC6694m r12, p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r13, w3.b.a.b r14, w3.b.a.b r15, int r16, java.util.List<android.content.ContentProviderOperation> r17, p193e.p194a.p1129p5.AbstractC19244l0 r18, boolean r19, p193e.p194a.p437c.p580r.p587h.C10545d r20) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18332f2.mo14984m(e.a.a.k.j, e.a.a.k.m, e.a.a.g.j0.g0, w3.b.a.b, w3.b.a.b, int, java.util.List, e.a.p5.l0, boolean, e.a.c.r.h.d):long");
    }
}
