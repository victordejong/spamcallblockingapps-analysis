package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.zab;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    @VisibleForTesting
    @SafeParcelable.Class
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zai CREATOR = new zai();
        @SafeParcelable.VersionField

        /* renamed from: f */
        private final int f7591f;
        @SafeParcelable.Field

        /* renamed from: g */
        protected final int f7592g;
        @SafeParcelable.Field

        /* renamed from: h */
        protected final boolean f7593h;
        @SafeParcelable.Field

        /* renamed from: i */
        protected final int f7594i;
        @SafeParcelable.Field

        /* renamed from: j */
        protected final boolean f7595j;
        @SafeParcelable.Field

        /* renamed from: k */
        protected final String f7596k;
        @SafeParcelable.Field

        /* renamed from: l */
        protected final int f7597l;

        /* renamed from: m */
        protected final Class<? extends FastJsonResponse> f7598m;
        @SafeParcelable.Field

        /* renamed from: n */
        private final String f7599n;

        /* renamed from: o */
        private zaj f7600o;
        @SafeParcelable.Field

        /* renamed from: p */
        private FieldConverter<I, O> f7601p;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) zab zabVar) {
            this.f7591f = i;
            this.f7592g = i2;
            this.f7593h = z;
            this.f7594i = i3;
            this.f7595j = z2;
            this.f7596k = str;
            this.f7597l = i4;
            if (str2 == null) {
                this.f7598m = null;
                this.f7599n = null;
            } else {
                this.f7598m = SafeParcelResponse.class;
                this.f7599n = str2;
            }
            if (zabVar == null) {
                this.f7601p = null;
            } else {
                this.f7601p = (FieldConverter<I, O>) zabVar.m14394I();
            }
        }

        /* renamed from: Y */
        private final String m14388Y() {
            String str = this.f7599n;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        /* renamed from: j0 */
        private final zab m14385j0() {
            FieldConverter<I, O> fieldConverter = this.f7601p;
            if (fieldConverter == null) {
                return null;
            }
            return zab.m14395B(fieldConverter);
        }

        @KeepForSdk
        /* renamed from: B */
        public int m14391B() {
            return this.f7597l;
        }

        /* renamed from: W */
        public final void m14389W(zaj zajVar) {
            this.f7600o = zajVar;
        }

        /* renamed from: d0 */
        public final boolean m14387d0() {
            return this.f7601p != null;
        }

        /* renamed from: e */
        public final I m14386e(O o) {
            return this.f7601p.mo14383e(o);
        }

        public String toString() {
            Objects.ToStringHelper c = Objects.m14535c(this);
            c.m14534a("versionCode", Integer.valueOf(this.f7591f));
            c.m14534a("typeIn", Integer.valueOf(this.f7592g));
            c.m14534a("typeInArray", Boolean.valueOf(this.f7593h));
            c.m14534a("typeOut", Integer.valueOf(this.f7594i));
            c.m14534a("typeOutArray", Boolean.valueOf(this.f7595j));
            c.m14534a("outputFieldName", this.f7596k);
            c.m14534a("safeParcelFieldId", Integer.valueOf(this.f7597l));
            c.m14534a("concreteTypeName", m14388Y());
            Class<? extends FastJsonResponse> cls = this.f7598m;
            if (cls != null) {
                c.m14534a("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.f7601p;
            if (fieldConverter != null) {
                c.m14534a("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return c.toString();
        }

        /* renamed from: u0 */
        public final Map<String, Field<?, ?>> m14384u0() {
            Preconditions.m14523k(this.f7599n);
            Preconditions.m14523k(this.f7600o);
            return this.f7600o.m14374W(this.f7599n);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int a = SafeParcelWriter.m14463a(parcel);
            SafeParcelWriter.m14453k(parcel, 1, this.f7591f);
            SafeParcelWriter.m14453k(parcel, 2, this.f7592g);
            SafeParcelWriter.m14461c(parcel, 3, this.f7593h);
            SafeParcelWriter.m14453k(parcel, 4, this.f7594i);
            SafeParcelWriter.m14461c(parcel, 5, this.f7595j);
            SafeParcelWriter.m14447q(parcel, 6, this.f7596k, false);
            SafeParcelWriter.m14453k(parcel, 7, m14391B());
            SafeParcelWriter.m14447q(parcel, 8, m14388Y(), false);
            SafeParcelWriter.m14448p(parcel, 9, m14385j0(), i, false);
            SafeParcelWriter.m14462b(parcel, a);
        }
    }

    @ShowFirstParty
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        /* renamed from: e */
        I mo14383e(O o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static <O, I> I m14392d(Field<I, O> field, Object obj) {
        return ((Field) field).f7601p != null ? field.m14386e(obj) : obj;
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract Map<String, Field<?, ?>> mo14382a();

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    /* renamed from: b */
    public boolean m14393b(Field field) {
        if (field.f7594i != 11) {
            mo14381c(field.f7596k);
            throw null;
        } else if (field.f7595j) {
            String str = field.f7596k;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        } else {
            String str2 = field.f7596k;
            throw new UnsupportedOperationException("Concrete types not supported");
        }
    }

    @KeepForSdk
    /* renamed from: c */
    protected abstract boolean mo14381c(String str);

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> a = mo14382a();
        StringBuilder sb = new StringBuilder(100);
        Iterator<String> it = a.keySet().iterator();
        if (!it.hasNext()) {
            if (sb.length() > 0) {
                sb.append("}");
            } else {
                sb.append("{}");
            }
            return sb.toString();
        }
        m14393b(a.get(it.next()));
        throw null;
    }
}
