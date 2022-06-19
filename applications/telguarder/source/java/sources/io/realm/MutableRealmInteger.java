package io.realm;

import io.realm.internal.ManageableObject;
import io.realm.internal.Row;
import io.realm.internal.Table;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger.class */
public abstract class MutableRealmInteger implements Comparable<MutableRealmInteger>, ManageableObject {

    /* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger$Managed.class */
    static abstract class Managed<T extends RealmModel> extends MutableRealmInteger {
        Managed() {
        }

        private BaseRealm getRealm() {
            return getProxyState().getRealm$realm();
        }

        private Row getRow() {
            return getProxyState().getRow$realm();
        }

        private void setValue(@Nullable Long l, boolean z) {
            Row row = getRow();
            Table table = row.getTable();
            long objectKey = row.getObjectKey();
            long columnIndex = getColumnIndex();
            if (l == null) {
                table.setNull(columnIndex, objectKey, z);
            } else {
                table.setLong(columnIndex, objectKey, l.longValue(), z);
            }
        }

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return MutableRealmInteger.super.compareTo(mutableRealmInteger);
        }

        @Override // io.realm.MutableRealmInteger
        public final void decrement(long j) {
            increment(-j);
        }

        @Override // io.realm.MutableRealmInteger
        public final Long get() {
            Row row = getRow();
            row.checkIfAttached();
            long columnIndex = getColumnIndex();
            return row.isNull(columnIndex) ? null : Long.valueOf(row.getLong(columnIndex));
        }

        protected abstract long getColumnIndex();

        protected abstract ProxyState<T> getProxyState();

        @Override // io.realm.MutableRealmInteger
        public final void increment(long j) {
            getRealm().checkIfValidAndInTransaction();
            Row row = getRow();
            row.getTable().incrementLong(getColumnIndex(), row.getObjectKey(), j);
        }

        @Override // io.realm.internal.ManageableObject
        public boolean isFrozen() {
            return getRealm().isFrozen();
        }

        @Override // io.realm.internal.ManageableObject
        public final boolean isManaged() {
            return true;
        }

        @Override // io.realm.internal.ManageableObject
        public final boolean isValid() {
            return !getRealm().isClosed() && getRow().isValid();
        }

        @Override // io.realm.MutableRealmInteger
        public final void set(@Nullable Long l) {
            ProxyState<T> proxyState = getProxyState();
            proxyState.getRealm$realm().checkIfValidAndInTransaction();
            if (!proxyState.isUnderConstruction()) {
                setValue(l, false);
            } else if (!proxyState.getAcceptDefaultValue$realm()) {
            } else {
                setValue(l, true);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger$Unmanaged.class */
    public static final class Unmanaged extends MutableRealmInteger {
        @Nullable
        private Long value;

        Unmanaged(@Nullable Long l) {
            this.value = l;
        }

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return MutableRealmInteger.super.compareTo(mutableRealmInteger);
        }

        @Override // io.realm.MutableRealmInteger
        public void decrement(long j) {
            increment(-j);
        }

        @Override // io.realm.MutableRealmInteger
        @Nullable
        public Long get() {
            return this.value;
        }

        @Override // io.realm.MutableRealmInteger
        public void increment(long j) {
            Long l = this.value;
            if (l != null) {
                this.value = Long.valueOf(l.longValue() + j);
                return;
            }
            throw new IllegalStateException("Cannot increment a MutableRealmInteger whose value is null. Set its value first.");
        }

        @Override // io.realm.internal.ManageableObject
        public boolean isFrozen() {
            return false;
        }

        @Override // io.realm.internal.ManageableObject
        public boolean isManaged() {
            return false;
        }

        @Override // io.realm.internal.ManageableObject
        public boolean isValid() {
            return true;
        }

        @Override // io.realm.MutableRealmInteger
        public void set(@Nullable Long l) {
            this.value = l;
        }
    }

    MutableRealmInteger() {
    }

    public static MutableRealmInteger ofNull() {
        return new Unmanaged(null);
    }

    public static MutableRealmInteger valueOf(long j) {
        return valueOf(Long.valueOf(j));
    }

    public static MutableRealmInteger valueOf(Long l) {
        return new Unmanaged(l);
    }

    public static MutableRealmInteger valueOf(String str) {
        return valueOf(Long.parseLong(str));
    }

    public final int compareTo(MutableRealmInteger mutableRealmInteger) {
        Long l = get();
        Long l2 = mutableRealmInteger.get();
        return l == null ? l2 == null ? 0 : -1 : l2 == null ? 1 : l.compareTo(l2);
    }

    public abstract void decrement(long j);

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MutableRealmInteger)) {
            return false;
        }
        Long l = get();
        Long l2 = ((MutableRealmInteger) obj).get();
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public abstract Long get();

    public final int hashCode() {
        Long l = get();
        return l == null ? 0 : l.hashCode();
    }

    public abstract void increment(long j);

    public final boolean isNull() {
        return get() == null;
    }

    public final void set(long j) {
        set(Long.valueOf(j));
    }

    public abstract void set(@Nullable Long l);
}
