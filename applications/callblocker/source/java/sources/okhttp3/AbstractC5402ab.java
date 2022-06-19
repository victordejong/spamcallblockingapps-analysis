package okhttp3;

import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import p000a.AbstractC0006d;
/* renamed from: okhttp3.ab */
/* loaded from: classes-dex2jar.jar:okhttp3/ab.class */
public abstract class AbstractC5402ab {
    /* renamed from: a */
    public static AbstractC5402ab m812a(@Nullable C5546v c5546v, byte[] bArr) {
        return m811a(c5546v, bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC5402ab m811a(@Nullable final C5546v c5546v, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        C5449c.m676a(bArr.length, i, i2);
        return new AbstractC5402ab() { // from class: okhttp3.ab.1
            @Override // okhttp3.AbstractC5402ab
            @Nullable
            /* renamed from: a */
            public C5546v mo60a() {
                return c5546v;
            }

            @Override // okhttp3.AbstractC5402ab
            /* renamed from: a */
            public void mo59a(AbstractC0006d abstractC0006d) {
                abstractC0006d.mo22511c(bArr, i, i2);
            }

            @Override // okhttp3.AbstractC5402ab
            /* renamed from: b */
            public long mo58b() {
                return i2;
            }
        };
    }

    @Nullable
    /* renamed from: a */
    public abstract C5546v mo60a();

    /* renamed from: a */
    public abstract void mo59a(AbstractC0006d abstractC0006d);

    /* renamed from: b */
    public long mo58b() {
        return -1L;
    }
}
