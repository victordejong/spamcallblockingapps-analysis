package p193e.p194a.p195a.p258m.p262e3;

import p193e.p194a.p195a.p258m.AbstractC6849f1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6982z;
import p193e.p194a.p851h5.AbstractC14946m;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.e3.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/e3/c.class */
public abstract class AbstractC6843c extends AbstractC6894i2<AbstractC6849f1> implements AbstractC6982z {

    /* renamed from: c */
    public final AbstractC6849f1.AbstractC6850a f22388c;

    /* renamed from: d */
    public final AbstractC14946m f22389d;

    /* renamed from: e.a.a.m.e3.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/e3/c$a.class */
    public static final class C6844a extends m implements l<Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6844a() {
            super(1);
            AbstractC6843c.this = r4;
        }

        /* renamed from: d */
        public Object m30422d(Object obj) {
            ((Boolean) obj).booleanValue();
            AbstractC6843c.this.f22388c.mo30419gh();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC6843c(AbstractC6900j2 abstractC6900j2, AbstractC6849f1.AbstractC6850a abstractC6850a, AbstractC14946m abstractC14946m) {
        super(abstractC6900j2);
        s1.z.c.l.e(abstractC6900j2, "promoProvider");
        s1.z.c.l.e(abstractC6850a, "actionListener");
        s1.z.c.l.e(abstractC14946m, "roleRequester");
        this.f22388c = abstractC6850a;
        this.f22389d = abstractC14946m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
        if (r0.equals("ItemEvent.ACTION_LEARN_MORE") != false) goto L12;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10026v(p193e.p194a.p1111o2.C18900h r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "event"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r0 = r0.f53001a
            r6 = r0
            r0 = r6
            int r0 = r0.hashCode()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = -1690488014(0xffffffff9b3d3332, float:-1.5650256E-22)
            if (r0 == r1) goto L3e
            r0 = r7
            r1 = -551677003(0xffffffffdf1e13b5, float:-1.1390647E19)
            if (r0 == r1) goto L21
            goto L4a
        L21:
            r0 = r6
            java.lang.String r1 = "ItemEvent.ACTION_ENABLE_CALLER_ID"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r5
            e.a.h5.m r0 = r0.f22389d
            e.a.a.m.e3.c$a r1 = new e.a.a.m.e3.c$a
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.mo19389b(r1)
            goto L4c
        L3e:
            r0 = r6
            java.lang.String r1 = "ItemEvent.ACTION_LEARN_MORE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r8 = r0
        L4c:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p258m.p262e3.AbstractC6843c.mo10026v(e.a.o2.h):boolean");
    }
}
