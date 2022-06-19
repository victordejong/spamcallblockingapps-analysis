package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/LongListOperator.class */
public final class LongListOperator<T> extends ManagedListOperator<T> {
    public LongListOperator(BaseRealm baseRealm, OsList osList, Class<T> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addLong(((Number) obj).longValue());
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Long] */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public T get(int i) {
        ?? r0 = (T) ((Long) this.osList.getValue(i));
        if (r0 == 0) {
            return null;
        }
        if (this.clazz == Long.class) {
            return r0;
        }
        if (this.clazz == Integer.class) {
            return this.clazz.cast(Integer.valueOf(r0.intValue()));
        }
        if (this.clazz == Short.class) {
            return this.clazz.cast(Short.valueOf(r0.shortValue()));
        }
        if (this.clazz == Byte.class) {
            return this.clazz.cast(Byte.valueOf(r0.byteValue()));
        }
        throw new IllegalStateException("Unexpected element type: " + this.clazz.getName());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertLong(i, ((Number) obj).longValue());
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int i, Object obj) {
        this.osList.setLong(i, ((Number) obj).longValue());
    }
}
