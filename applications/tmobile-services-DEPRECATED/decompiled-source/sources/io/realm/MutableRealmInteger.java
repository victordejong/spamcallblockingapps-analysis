package io.realm;

import io.realm.internal.ManageableObject;
import io.realm.internal.Row;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger.class */
public abstract class MutableRealmInteger implements Comparable<MutableRealmInteger>, ManageableObject {

    /* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger$Managed.class */
    static abstract class Managed<T extends RealmModel> extends MutableRealmInteger {
        Managed() {
        }

        /* renamed from: h */
        private Row m3109h() {
            return m3110g().m3084e();
        }

        @Override // io.realm.MutableRealmInteger
        /* renamed from: b */
        public final Long mo3108b() {
            Row h = m3109h();
            h.checkIfAttached();
            long e = m3111e();
            return h.isNull(e) ? null : Long.valueOf(h.getLong(e));
        }

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return MutableRealmInteger.super.compareTo(mutableRealmInteger);
        }

        /* renamed from: e */
        protected abstract long m3111e();

        /* renamed from: g */
        protected abstract ProxyState<T> m3110g();
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmInteger$Unmanaged.class */
    private static final class Unmanaged extends MutableRealmInteger {
        @Nullable

        /* renamed from: f */
        private Long f19834f;

        @Override // io.realm.MutableRealmInteger
        @Nullable
        /* renamed from: b */
        public Long mo3108b() {
            return this.f19834f;
        }

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return MutableRealmInteger.super.compareTo(mutableRealmInteger);
        }
    }

    MutableRealmInteger() {
    }

    /* renamed from: a */
    public final int compareTo(MutableRealmInteger mutableRealmInteger) {
        Long b = mo3108b();
        Long b2 = mutableRealmInteger.mo3108b();
        return b == null ? b2 == null ? 0 : -1 : b2 == null ? 1 : b.compareTo(b2);
    }

    @Nullable
    /* renamed from: b */
    public abstract Long mo3108b();

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MutableRealmInteger)) {
            return false;
        }
        Long b = mo3108b();
        Long b2 = ((MutableRealmInteger) obj).mo3108b();
        if (b != null) {
            z = b.equals(b2);
        } else if (b2 != null) {
            z = false;
        }
        return z;
    }

    public final int hashCode() {
        Long b = mo3108b();
        return b == null ? 0 : b.hashCode();
    }
}
