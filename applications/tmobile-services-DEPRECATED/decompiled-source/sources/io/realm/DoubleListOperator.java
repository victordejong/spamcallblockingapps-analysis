package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/DoubleListOperator.class */
public final class DoubleListOperator extends ManagedListOperator<Double> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DoubleListOperator(BaseRealm baseRealm, OsList osList, Class<Double> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: c */
    public void mo2845c(Object obj) {
        this.f19832b.m2777d(((Number) obj).doubleValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: d */
    protected void mo2844d(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Number", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: e */
    public boolean mo2843e() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: j */
    public void mo2841j(int i, Object obj) {
        this.f19832b.m2761t(i, ((Number) obj).doubleValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: q */
    protected void mo2840q(int i, Object obj) {
        this.f19832b.m2787I(i, ((Number) obj).doubleValue());
    }

    @Nullable
    /* renamed from: s */
    public Double mo2842f(int i) {
        return (Double) this.f19832b.m2765p(i);
    }
}
