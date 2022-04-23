package io.realm;

import io.realm.internal.OsList;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/ManagedListOperator.class */
public abstract class ManagedListOperator<T> {
    static final String INVALID_OBJECT_TYPE_MESSAGE = "Unacceptable value type. Acceptable: %1$s, actual: %2$s .";
    static final String NULL_OBJECTS_NOT_ALLOWED_MESSAGE = "RealmList does not accept null values.";
    @Nullable
    final Class<T> clazz;
    final OsList osList;
    final BaseRealm realm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ManagedListOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<T> cls) {
        this.realm = baseRealm;
        this.clazz = cls;
        this.osList = osList;
    }

    private void appendNull() {
        this.osList.addNull();
    }

    public final void append(@Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            appendNull();
        } else {
            appendValue(obj);
        }
    }

    protected abstract void appendValue(Object obj);

    protected abstract void checkValidValue(@Nullable Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void delete(int i) {
        this.osList.delete(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void deleteAll() {
        this.osList.deleteAll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void deleteLast() {
        this.osList.delete(this.osList.size() - 1);
    }

    public abstract boolean forRealmModel();

    @Nullable
    public abstract T get(int i);

    public final OsList getOsList() {
        return this.osList;
    }

    public final void insert(int i, @Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            insertNull(i);
        } else {
            insertValue(i, obj);
        }
    }

    protected void insertNull(int i) {
        this.osList.insertNull(i);
    }

    protected abstract void insertValue(int i, Object obj);

    public final boolean isEmpty() {
        return this.osList.isEmpty();
    }

    public final boolean isValid() {
        return this.osList.isValid();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void move(int i, int i2) {
        this.osList.move(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void remove(int i) {
        this.osList.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void removeAll() {
        this.osList.removeAll();
    }

    @Nullable
    public final T set(int i, @Nullable Object obj) {
        checkValidValue(obj);
        T t = get(i);
        if (obj == null) {
            setNull(i);
        } else {
            setValue(i, obj);
        }
        return t;
    }

    protected void setNull(int i) {
        this.osList.setNull(i);
    }

    protected abstract void setValue(int i, Object obj);

    public final int size() {
        long size = this.osList.size();
        return size < 2147483647L ? (int) size : Integer.MAX_VALUE;
    }
}
