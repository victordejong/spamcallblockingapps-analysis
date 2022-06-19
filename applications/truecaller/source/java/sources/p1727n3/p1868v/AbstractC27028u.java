package p1727n3.p1868v;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: n3.v.u */
/* loaded from: classes-dex2jar.jar:n3/v/u.class */
public abstract class AbstractC27028u {

    /* renamed from: a */
    public AtomicReference<Object> f75565a = new AtomicReference<>();

    /* renamed from: n3.v.u$a */
    /* loaded from: classes-dex2jar.jar:n3/v/u$a.class */
    public enum EnumC27029a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        /* renamed from: c */
        public static EnumC27029a m985c(EnumC27030b enumC27030b) {
            int ordinal = enumC27030b.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return ON_START;
                }
                if (ordinal == 3) {
                    return ON_RESUME;
                }
                return null;
            }
            return ON_CREATE;
        }

        /* renamed from: a */
        public EnumC27030b m986a() {
            int ordinal = ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        return EnumC27030b.RESUMED;
                    }
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal == 5) {
                                return EnumC27030b.DESTROYED;
                            }
                            throw new IllegalArgumentException(this + " has no target state");
                        }
                    }
                }
                return EnumC27030b.STARTED;
            }
            return EnumC27030b.CREATED;
        }
    }

    /* renamed from: n3.v.u$b */
    /* loaded from: classes-dex2jar.jar:n3/v/u$b.class */
    public enum EnumC27030b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: a */
        public boolean m984a(EnumC27030b enumC27030b) {
            return compareTo(enumC27030b) >= 0;
        }
    }

    /* renamed from: a */
    public abstract void mo988a(AbstractC26985a0 abstractC26985a0);

    /* renamed from: b */
    public abstract void mo987b(AbstractC26985a0 abstractC26985a0);
}
