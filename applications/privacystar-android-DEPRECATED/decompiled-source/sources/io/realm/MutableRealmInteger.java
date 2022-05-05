package io.realm;

import io.realm.internal.ManagableObject;
import io.realm.internal.Row;
import io.realm.internal.Table;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger.class */
public abstract class MutableRealmInteger implements Comparable<MutableRealmInteger>, ManagableObject {

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
            long index = row.getIndex();
            long columnIndex = getColumnIndex();
            if (l == null) {
                table.setNull(columnIndex, index, z);
            } else {
                table.setLong(columnIndex, index, l.longValue(), z);
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
            row.getTable().incrementLong(getColumnIndex(), row.getIndex(), j);
        }

        @Override // io.realm.internal.ManagableObject
        public final boolean isManaged() {
            return true;
        }

        @Override // io.realm.internal.ManagableObject
        public final boolean isValid() {
            return !getRealm().isClosed() && getRow().isAttached();
        }

        @Override // io.realm.MutableRealmInteger
        public final void set(@Nullable Long l) {
            ProxyState<T> proxyState = getProxyState();
            proxyState.getRealm$realm().checkIfValidAndInTransaction();
            if (!proxyState.isUnderConstruction()) {
                setValue(l, false);
            } else if (proxyState.getAcceptDefaultValue$realm()) {
                setValue(l, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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
            if (this.value == null) {
                throw new IllegalStateException("Cannot increment a MutableRealmInteger whose value is null. Set its value first.");
            }
            this.value = Long.valueOf(this.value.longValue() + j);
        }

        @Override // io.realm.internal.ManagableObject
        public boolean isManaged() {
            return false;
        }

        @Override // io.realm.internal.ManagableObject
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
