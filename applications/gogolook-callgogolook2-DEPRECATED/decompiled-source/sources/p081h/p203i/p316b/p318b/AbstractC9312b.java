package p081h.p203i.p316b.p318b;

import java.util.NoSuchElementException;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/b.class */
public abstract class AbstractC9312b<T> extends AbstractC9311a0<T> {

    /* renamed from: a */
    public EnumC9314b f21337a = EnumC9314b.NOT_READY;

    /* renamed from: b */
    public T f21338b;

    /* renamed from: h.i.b.b.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/b$a.class */
    public static /* synthetic */ class C9313a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21339a = new int[EnumC9314b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f21339a[EnumC9314b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21339a[EnumC9314b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: h.i.b.b.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/b$b.class */
    public enum EnumC9314b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: a */
    public abstract T mo15373a();

    /* renamed from: b */
    public final T m15442b() {
        this.f21337a = EnumC9314b.DONE;
        return null;
    }

    /* renamed from: c */
    public final boolean m15441c() {
        this.f21337a = EnumC9314b.FAILED;
        this.f21338b = mo15373a();
        if (this.f21337a == EnumC9314b.DONE) {
            return false;
        }
        this.f21337a = EnumC9314b.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C9301k.m15468b(this.f21337a != EnumC9314b.FAILED);
        int i = C9313a.f21339a[this.f21337a.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m15441c();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f21337a = EnumC9314b.NOT_READY;
            T t = this.f21338b;
            this.f21338b = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
