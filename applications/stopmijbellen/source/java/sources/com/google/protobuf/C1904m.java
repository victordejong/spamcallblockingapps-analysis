package com.google.protobuf;

import p287x6.AbstractC4890c;
import p287x6.C4905e;
/* renamed from: com.google.protobuf.m */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/m.class */
public class C1904m {

    /* renamed from: a */
    public volatile AbstractC1916u f7096a;

    /* renamed from: b */
    public volatile AbstractC4890c f7097b;

    static {
        C4905e.m270a();
    }

    /* renamed from: a */
    public AbstractC1916u m4262a(AbstractC1916u abstractC1916u) {
        if (this.f7096a == null) {
            synchronized (this) {
                if (this.f7096a == null) {
                    try {
                        this.f7096a = abstractC1916u;
                        this.f7097b = AbstractC4890c.f14961b;
                    } catch (InvalidProtocolBufferException e) {
                        this.f7096a = abstractC1916u;
                        this.f7097b = AbstractC4890c.f14961b;
                    }
                }
            }
        }
        return this.f7096a;
    }

    /* renamed from: b */
    public AbstractC4890c m4261b() {
        if (this.f7097b != null) {
            return this.f7097b;
        }
        synchronized (this) {
            if (this.f7097b != null) {
                return this.f7097b;
            }
            if (this.f7096a == null) {
                this.f7097b = AbstractC4890c.f14961b;
            } else {
                this.f7097b = this.f7096a.mo4238i();
            }
            return this.f7097b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1904m)) {
            return false;
        }
        C1904m c1904m = (C1904m) obj;
        AbstractC1916u abstractC1916u = this.f7096a;
        AbstractC1916u abstractC1916u2 = c1904m.f7096a;
        return (abstractC1916u == null && abstractC1916u2 == null) ? m4261b().equals(c1904m.m4261b()) : (abstractC1916u == null || abstractC1916u2 == null) ? abstractC1916u != null ? abstractC1916u.equals(c1904m.m4262a(abstractC1916u.mo263c())) : m4262a(abstractC1916u2.mo263c()).equals(abstractC1916u2) : abstractC1916u.equals(abstractC1916u2);
    }

    public int hashCode() {
        return 1;
    }
}
