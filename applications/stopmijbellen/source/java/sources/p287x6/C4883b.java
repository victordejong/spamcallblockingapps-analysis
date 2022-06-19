package p287x6;

import java.util.NoSuchElementException;
import p287x6.AbstractC4890c;
/* renamed from: x6.b */
/* loaded from: classes-dex2jar.jar:x6/b.class */
public class C4883b extends AbstractC4890c.AbstractC4891a {

    /* renamed from: a */
    public int f14948a = 0;

    /* renamed from: b */
    public final int f14949b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC4890c f14950c;

    public C4883b(AbstractC4890c abstractC4890c) {
        this.f14950c = abstractC4890c;
        this.f14949b = abstractC4890c.size();
    }

    /* renamed from: a */
    public byte m317a() {
        int i = this.f14948a;
        if (i < this.f14949b) {
            this.f14948a = i + 1;
            return this.f14950c.mo277c(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f14948a < this.f14949b;
    }
}
