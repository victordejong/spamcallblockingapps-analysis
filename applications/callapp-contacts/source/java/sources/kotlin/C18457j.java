package kotlin;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\u001a \u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\t"}, m4298d2 = {"lazy", "Lkotlin/Lazy;", "T", "initializer", "Lkotlin/Function0;", "lock", "", "mode", "Lkotlin/LazyThreadSafetyMode;", "kotlin-stdlib"}, m4297k = 5, m4296mv = {1, 4, 1}, m4294xi = 1, m4293xs = "kotlin/LazyKt")
/* renamed from: kotlin.j */
/* loaded from: classes5-dex2jar.jar:kotlin/j.class */
public class C18457j {
    /* renamed from: a */
    public static final <T> Lazy<T> m3897a(Function0<? extends T> initializer) {
        C18524p.m3840d(initializer, "initializer");
        return new C18547r(initializer, null, 2, null);
    }

    /* renamed from: a */
    public static final <T> Lazy<T> m3896a(EnumC18536l mode, Function0<? extends T> initializer) {
        C18524p.m3840d(mode, "mode");
        C18524p.m3840d(initializer, "initializer");
        int i = C18440i.f63557a[mode.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new C18545q(initializer);
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return new C20129w(initializer);
        }
        return new C18547r(initializer, null, 2, null);
    }
}
