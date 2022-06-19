package p193e.p1545k.p1546a.p1556c.p1570l0;

import java.util.Collections;
import java.util.List;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23957y;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23786j;
/* renamed from: e.k.a.c.l0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/e.class */
public class C23762e {

    /* renamed from: i */
    public static final C23760c[] f65853i = new C23760c[0];

    /* renamed from: a */
    public final AbstractC23444c f65854a;

    /* renamed from: b */
    public C23957y f65855b;

    /* renamed from: c */
    public List<C23760c> f65856c = Collections.emptyList();

    /* renamed from: d */
    public C23760c[] f65857d;

    /* renamed from: e */
    public C23758a f65858e;

    /* renamed from: f */
    public Object f65859f;

    /* renamed from: g */
    public AbstractC23663i f65860g;

    /* renamed from: h */
    public C23786j f65861h;

    public C23762e(AbstractC23444c abstractC23444c) {
        this.f65854a = abstractC23444c;
    }

    /* renamed from: a */
    public AbstractC23890n<?> m6103a() {
        C23760c[] c23760cArr;
        if (this.f65860g != null && this.f65855b.m6859o(EnumC23942p.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            this.f65860g.m6386f(this.f65855b.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        C23758a c23758a = this.f65858e;
        if (c23758a != null) {
            c23758a.f65829b.m6386f(this.f65855b.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        List<C23760c> list = this.f65856c;
        if (list != null && !list.isEmpty()) {
            List<C23760c> list2 = this.f65856c;
            C23760c[] c23760cArr2 = (C23760c[]) list2.toArray(new C23760c[list2.size()]);
            c23760cArr = c23760cArr2;
            if (this.f65855b.m6859o(EnumC23942p.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                int length = c23760cArr2.length;
                int i = 0;
                while (true) {
                    c23760cArr = c23760cArr2;
                    if (i >= length) {
                        break;
                    }
                    c23760cArr2[i].f65842i.m6386f(this.f65855b.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    i++;
                }
            }
        } else if (this.f65858e == null && this.f65861h == null) {
            return null;
        } else {
            c23760cArr = f65853i;
        }
        C23760c[] c23760cArr3 = this.f65857d;
        if (c23760cArr3 == null || c23760cArr3.length == this.f65856c.size()) {
            return new C23761d(this.f65854a.f65020a, this, c23760cArr, this.f65857d);
        }
        throw new IllegalStateException(String.format("Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)", Integer.valueOf(this.f65856c.size()), Integer.valueOf(this.f65857d.length)));
    }
}
