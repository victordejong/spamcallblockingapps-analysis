package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/BooleanListOperator.class */
public final class BooleanListOperator extends ManagedListOperator<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BooleanListOperator(BaseRealm baseRealm, OsList osList, Class<Boolean> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: c */
    public void mo2845c(Object obj) {
        this.f19832b.m2779b(((Boolean) obj).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: d */
    protected void mo2844d(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Boolean)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Boolean", obj.getClass().getName()));
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
        this.f19832b.m2763r(i, ((Boolean) obj).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: q */
    protected void mo2840q(int i, Object obj) {
        this.f19832b.m2789G(i, ((Boolean) obj).booleanValue());
    }

    @Nullable
    /* renamed from: s */
    public Boolean mo2842f(int i) {
        return (Boolean) this.f19832b.m2765p(i);
    }
}
