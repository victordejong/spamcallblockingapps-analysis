package p459j.p460a.p582w0;

import p660rx.Subscription;
import p660rx.functions.Action1;
/* renamed from: j.a.w0.j3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/j3.class */
public class C14037j3 {

    /* renamed from: a */
    public static AbstractC14039b f31478a;

    /* renamed from: b */
    public static AbstractC14039b f31479b;

    /* renamed from: j.a.w0.j3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j3$a.class */
    public static /* synthetic */ class C14038a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31480a = new int[EnumC14040c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f31480a[EnumC14040c.Event.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31480a[EnumC14040c.Debounce.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: j.a.w0.j3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j3$b.class */
    public interface AbstractC14039b {
        /* renamed from: a */
        Subscription mo2703a(Action1 action1);

        /* renamed from: a */
        void mo2704a(Object obj);
    }

    /* renamed from: j.a.w0.j3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j3$c.class */
    public enum EnumC14040c {
        Event,
        Debounce
    }

    /* renamed from: j.a.w0.j3$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j3$d.class */
    public static class C14041d<T> {

        /* renamed from: a */
        public T f31484a = null;

        /* renamed from: a */
        public T m2729a() {
            return this.f31484a;
        }

        /* renamed from: a */
        public void m2728a(T t) {
            this.f31484a = t;
        }
    }

    /* renamed from: a */
    public static AbstractC14039b m2731a() {
        return m2730a(EnumC14040c.Event);
    }

    /* renamed from: a */
    public static AbstractC14039b m2730a(EnumC14040c cVar) {
        int i = C14038a.f31480a[cVar.ordinal()];
        if (i == 1) {
            if (f31478a == null) {
                f31478a = new C14061l3();
            }
            return f31478a;
        } else if (i != 2) {
            return null;
        } else {
            if (f31479b == null) {
                f31479b = new C14054k3();
            }
            return f31479b;
        }
    }
}
