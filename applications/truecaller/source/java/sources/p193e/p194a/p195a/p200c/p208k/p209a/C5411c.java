package p193e.p194a.p195a.p200c.p208k.p209a;

import android.graphics.drawable.Drawable;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5062a7;
import p193e.p194a.p195a.p200c.AbstractC5403j6;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.AbstractC5769t7;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.C5485l6;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.c.k.a.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/c.class */
public final class C5411c extends AbstractC5409a implements AbstractC5410b {

    /* renamed from: h */
    public final AbstractC18951b0 f18502h;

    /* renamed from: i */
    public final AbstractC5403j6 f18503i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5411c(AbstractC5524m5 abstractC5524m5, AbstractC5484l5 abstractC5484l5, AbstractC5794w3 abstractC5794w3, AbstractC6708t abstractC6708t, AbstractC5418j.AbstractC5420b abstractC5420b, AbstractC5418j.AbstractC5419a abstractC5419a, AbstractC5769t7 abstractC5769t7, AbstractC18951b0 abstractC18951b0, C20592g c20592g, AbstractC5403j6 abstractC5403j6) {
        super(abstractC5524m5, abstractC5484l5, abstractC6708t, abstractC5769t7, abstractC5794w3, abstractC5420b, abstractC5419a, c20592g);
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC5794w3, "items");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5420b, "listener");
        l.e(abstractC5419a, "actionModeListener");
        l.e(abstractC5769t7, "viewProvider");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC5403j6, "historyResourceProvider");
        this.f18502h = abstractC18951b0;
        this.f18503i = abstractC5403j6;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        String str;
        String str2;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        AbstractC5062a7 abstractC5062a7 = (AbstractC5062a7) obj;
        l.e(abstractC5062a7, ViewAction.VIEW);
        super.mo11464G(abstractC5062a7, i);
        AbstractC6225a item = this.f18499e.getItem(i);
        Objects.requireNonNull(item, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message");
        Message message = (Message) item;
        TransportInfo transportInfo = message.f13393n;
        Drawable drawable4 = null;
        if (!(transportInfo instanceof HistoryTransportInfo)) {
            transportInfo = null;
        }
        HistoryTransportInfo historyTransportInfo = (HistoryTransportInfo) transportInfo;
        if (historyTransportInfo != null) {
            AbstractC18951b0 abstractC18951b0 = this.f18502h;
            b bVar = message.f13384e;
            l.d(bVar, "date");
            String mo14283l = abstractC18951b0.mo14283l(((e) bVar).a);
            l.e(mo14283l, "date");
            Integer valueOf = Integer.valueOf(message.f13369E);
            if (!(valueOf.intValue() > 1)) {
                valueOf = null;
            }
            if (valueOf != null) {
                str = '(' + valueOf.intValue() + ") ";
            } else {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            int i2 = message.f13386g;
            if (i2 == 1) {
                Drawable mo33113h = this.f18503i.mo33113h();
                StringBuilder m8728C = C22128a.m8728C(str);
                m8728C.append(this.f18503i.mo33120a(historyTransportInfo.f13705d));
                String sb = m8728C.toString();
                l.e(sb, "type");
                drawable = mo33113h;
                str2 = sb;
            } else if (i2 != 8) {
                Drawable mo33115f = this.f18503i.mo33115f();
                StringBuilder m8728C2 = C22128a.m8728C(str);
                m8728C2.append(this.f18503i.mo33111j(historyTransportInfo.f13705d));
                str2 = m8728C2.toString();
                l.e(str2, "type");
                drawable = mo33115f;
            } else if (historyTransportInfo.f13707f == 1) {
                Drawable mo33117d = this.f18503i.mo33117d();
                StringBuilder m8728C3 = C22128a.m8728C(str);
                m8728C3.append(this.f18503i.mo33110k());
                str2 = m8728C3.toString();
                l.e(str2, "type");
                drawable = mo33117d;
            } else {
                Drawable mo33109l = this.f18503i.mo33109l();
                StringBuilder m8728C4 = C22128a.m8728C(str);
                m8728C4.append(this.f18503i.mo33118c(historyTransportInfo.f13705d));
                str2 = m8728C4.toString();
                l.e(str2, "type");
                drawable = mo33109l;
            }
            int i3 = historyTransportInfo.f13705d;
            if (i3 == 0) {
                drawable4 = this.f18503i.mo33116e(message);
            } else if (i3 == 1) {
                drawable3 = this.f18503i.mo33119b();
                drawable2 = null;
                abstractC5062a7.mo33668L1(new C5485l6(0, drawable2, drawable3, str2, mo14283l), message);
                return;
            } else if (i3 == 4) {
                drawable4 = this.f18503i.mo33114g();
            }
            Drawable drawable5 = drawable4;
            drawable2 = drawable;
            drawable3 = drawable5;
            abstractC5062a7.mo33668L1(new C5485l6(0, drawable2, drawable3, str2, mo14283l), message);
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r0.f13368D <= 1) goto L9;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo14344m(int r4) {
        /*
            r3 = this;
            r0 = r3
            e.a.a.c.w3 r0 = r0.f18499e
            r1 = r4
            e.a.a.g.l0.a r0 = r0.getItem(r1)
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof com.truecaller.messaging.data.types.Message
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2f
            r0 = r5
            com.truecaller.messaging.data.types.Message r0 = (com.truecaller.messaging.data.types.Message) r0
            r5 = r0
            r0 = r5
            int r0 = r0.f13390k
            r1 = 5
            if (r0 != r1) goto L2f
            r0 = r5
            int r0 = r0.f13368D
            r1 = 1
            if (r0 > r1) goto L2f
            goto L32
        L2f:
            r0 = 0
            r7 = r0
        L32:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p208k.p209a.C5411c.mo14344m(int):boolean");
    }
}
