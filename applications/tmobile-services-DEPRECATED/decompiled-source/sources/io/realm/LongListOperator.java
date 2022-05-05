package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/LongListOperator.class */
public final class LongListOperator<T> extends ManagedListOperator<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LongListOperator(BaseRealm baseRealm, OsList osList, Class<T> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: c */
    public void mo2845c(Object obj) {
        this.f19832b.m2773h(((Number) obj).longValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: d */
    protected void mo2844d(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: e */
    public boolean mo2843e() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // io.realm.ManagedListOperator
    @javax.annotation.Nullable
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T mo2842f(int r5) {
        /*
            r4 = this;
            r0 = r4
            io.realm.internal.OsList r0 = r0.f19832b
            r1 = r5
            long r1 = (long) r1
            java.lang.Object r0 = r0.m2765p(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0013
            r0 = 0
            return r0
        L_0x0013:
            r0 = r4
            java.lang.Class<T> r0 = r0.f19833c
            r7 = r0
            r0 = r7
            java.lang.Class<java.lang.Long> r1 = java.lang.Long.class
            if (r0 != r1) goto L_0x0020
            r0 = r6
            return r0
        L_0x0020:
            r0 = r7
            java.lang.Class<java.lang.Integer> r1 = java.lang.Integer.class
            if (r0 != r1) goto L_0x0032
            r0 = r7
            r1 = r6
            int r1 = r1.intValue()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.cast(r1)
            return r0
        L_0x0032:
            r0 = r7
            java.lang.Class<java.lang.Short> r1 = java.lang.Short.class
            if (r0 != r1) goto L_0x0044
            r0 = r7
            r1 = r6
            short r1 = r1.shortValue()
            java.lang.Short r1 = java.lang.Short.valueOf(r1)
            java.lang.Object r0 = r0.cast(r1)
            return r0
        L_0x0044:
            r0 = r7
            java.lang.Class<java.lang.Byte> r1 = java.lang.Byte.class
            if (r0 != r1) goto L_0x0056
            r0 = r7
            r1 = r6
            byte r1 = r1.byteValue()
            java.lang.Byte r1 = java.lang.Byte.valueOf(r1)
            java.lang.Object r0 = r0.cast(r1)
            return r0
        L_0x0056:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Unexpected element type: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            java.lang.Class<T> r1 = r1.f19833c
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.LongListOperator.mo2842f(int):java.lang.Object");
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: j */
    public void mo2841j(int i, Object obj) {
        this.f19832b.m2759v(i, ((Number) obj).longValue());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: q */
    protected void mo2840q(int i, Object obj) {
        this.f19832b.m2785K(i, ((Number) obj).longValue());
    }
}
