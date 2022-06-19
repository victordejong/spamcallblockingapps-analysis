package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/l.class */
public class C19699l {

    /* renamed from: a */
    protected volatile AbstractC19705p f65863a;

    /* renamed from: b */
    private AbstractC19673d f65864b;

    /* renamed from: c */
    private C19678f f65865c;

    /* renamed from: d */
    private volatile boolean f65866d;

    /* renamed from: a */
    public final AbstractC19705p m1670a(AbstractC19705p abstractC19705p) {
        if (this.f65863a == null) {
            synchronized (this) {
                if (this.f65863a == null) {
                    try {
                        if (this.f65864b != null) {
                            this.f65863a = abstractC19705p.mo1661b().mo1652a(this.f65864b, this.f65865c);
                        } else {
                            this.f65863a = abstractC19705p;
                        }
                    } catch (IOException e) {
                    }
                }
            }
        }
        return this.f65863a;
    }

    /* renamed from: b */
    public final int m1669b() {
        return this.f65866d ? this.f65863a.mo1660f() : this.f65864b.mo1649a();
    }

    /* renamed from: b */
    public final AbstractC19705p m1668b(AbstractC19705p abstractC19705p) {
        AbstractC19705p abstractC19705p2 = this.f65863a;
        this.f65863a = abstractC19705p;
        this.f65864b = null;
        this.f65866d = true;
        return abstractC19705p2;
    }
}
