package p193e.p1545k.p1546a.p1556c.p1565h0;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23650e;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.h0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/h0/a.class */
public class C23695a {

    /* renamed from: a */
    public final AbstractC23444c f65715a;

    /* renamed from: b */
    public final C23624f f65716b;

    /* renamed from: c */
    public final AbstractC23426b f65717c;

    /* renamed from: d */
    public final List<C23650e> f65718d;

    /* renamed from: e */
    public final C23650e f65719e;

    /* renamed from: f */
    public final C23696b[] f65720f;

    public C23695a(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c) {
        C23650e c23650e;
        this.f65715a = abstractC23444c;
        this.f65717c = abstractC23632g.m6455y();
        this.f65716b = abstractC23632g.f65501c;
        RuntimeException runtimeException = C23697c.f65724e;
        if (runtimeException == null) {
            C23697c c23697c = C23697c.f65723d;
            Class<?> cls = abstractC23444c.f65020a.f65728a;
            Object[] m6245a = c23697c.m6245a(cls);
            int length = m6245a.length;
            C23696b[] c23696bArr = new C23696b[length];
            for (int i = 0; i < m6245a.length; i++) {
                try {
                    try {
                        c23696bArr[i] = new C23696b((Class) c23697c.f65727c.invoke(m6245a[i], new Object[0]), (String) c23697c.f65726b.invoke(m6245a[i], new Object[0]));
                    } catch (Exception e) {
                        throw new IllegalArgumentException(String.format("Failed to access type of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(m6245a.length), C23914g.m5776E(cls)), e);
                    }
                } catch (Exception e2) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(m6245a.length), C23914g.m5776E(cls)), e2);
                }
            }
            this.f65720f = c23696bArr;
            if (length != 0) {
                List<C23650e> m6441i = ((C23679q) abstractC23444c).f65652e.m6441i();
                this.f65718d = m6441i;
                Iterator<C23650e> it = m6441i.iterator();
                loop1: while (true) {
                    c23650e = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    c23650e = it.next();
                    if (c23650e.mo6368q() == length) {
                        for (int i2 = 0; i2 < length; i2++) {
                            if (!c23650e.mo6366s(i2).equals(this.f65720f[i2].f65721a)) {
                                break;
                            }
                        }
                        break loop1;
                    }
                }
            } else {
                c23650e = ((C23679q) abstractC23444c).f65652e.m6444f().f65551a;
                this.f65718d = Collections.singletonList(c23650e);
            }
            if (c23650e != null) {
                this.f65719e = c23650e;
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Failed to find the canonical Record constructor of type ");
            m8728C.append(C23914g.m5747t(this.f65715a.f65020a));
            throw new IllegalArgumentException(m8728C.toString());
        }
        throw runtimeException;
    }
}
