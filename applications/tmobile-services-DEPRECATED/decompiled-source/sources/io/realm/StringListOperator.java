package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/StringListOperator.class */
public final class StringListOperator extends ManagedListOperator<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public StringListOperator(BaseRealm baseRealm, OsList osList, Class<String> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: c */
    public void mo2845c(Object obj) {
        this.f19832b.m2770k((String) obj);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: d */
    protected void mo2844d(@Nullable Object obj) {
        if (obj != null && !(obj instanceof String)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
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
        this.f19832b.m2756y(i, (String) obj);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: q */
    protected void mo2840q(int i, Object obj) {
        this.f19832b.m2782N(i, (String) obj);
    }

    @Nullable
    /* renamed from: s */
    public String mo2842f(int i) {
        return (String) this.f19832b.m2765p(i);
    }
}
