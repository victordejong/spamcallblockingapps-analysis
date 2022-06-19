package p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a;

import e.m.d.r.k.e;
/* renamed from: e.m.a.b.j.a0.a.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/a0/a/c.class */
public final class C24035c {

    /* renamed from: c */
    public static final /* synthetic */ int f66636c = 0;

    /* renamed from: a */
    public final long f66637a;

    /* renamed from: b */
    public final EnumC24036a f66638b;

    /* renamed from: e.m.a.b.j.a0.a.c$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/a0/a/c$a.class */
    public enum EnumC24036a implements e {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);
        

        /* renamed from: a */
        public final int f66647a;

        EnumC24036a(int i) {
            this.f66647a = i;
        }

        public int getNumber() {
            return this.f66647a;
        }
    }

    public C24035c(long j, EnumC24036a enumC24036a) {
        this.f66637a = j;
        this.f66638b = enumC24036a;
    }
}
