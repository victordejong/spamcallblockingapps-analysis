package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.a CREATOR = new com.google.android.gms.common.server.response.a();

        /* renamed from: a  reason: collision with root package name */
        final int f4064a;

        /* renamed from: b  reason: collision with root package name */
        protected final int f4065b;
        protected final boolean c;
        protected final int d;
        protected final boolean e;
        protected final String f;
        protected final int g;
        protected final Class<? extends FastJsonResponse> h;
        protected final String i;
        FieldMappingDictionary j;
        a<I, O> k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            StringToIntConverter stringToIntConverter = null;
            this.f4064a = i;
            this.f4065b = i2;
            this.c = z;
            this.d = i3;
            this.e = z2;
            this.f = str;
            this.g = i4;
            if (str2 == null) {
                this.h = null;
                this.i = null;
            } else {
                this.h = SafeParcelResponse.class;
                this.i = str2;
            }
            if (converterWrapper != null) {
                if (converterWrapper.f4059b != null) {
                    stringToIntConverter = converterWrapper.f4059b;
                } else {
                    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
                }
            }
            this.k = stringToIntConverter;
        }

        public final int a() {
            return this.f4065b;
        }

        public final boolean b() {
            return this.c;
        }

        public final int c() {
            return this.d;
        }

        public final boolean d() {
            return this.e;
        }

        public final String e() {
            return this.f;
        }

        public final int f() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String g() {
            return this.i == null ? null : this.i;
        }

        public final Map<String, Field<?, ?>> h() {
            b.a(this.i);
            b.a(this.j);
            return this.j.a(this.i);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Field\n");
            sb.append("            versionCode=").append(this.f4064a).append('\n');
            sb.append("                 typeIn=").append(this.f4065b).append('\n');
            sb.append("            typeInArray=").append(this.c).append('\n');
            sb.append("                typeOut=").append(this.d).append('\n');
            sb.append("           typeOutArray=").append(this.e).append('\n');
            sb.append("        outputFieldName=").append(this.f).append('\n');
            sb.append("      safeParcelFieldId=").append(this.g).append('\n');
            sb.append("       concreteTypeName=").append(g()).append('\n');
            if (this.h != null) {
                sb.append("     concreteType.class=").append(this.h.getCanonicalName()).append('\n');
            }
            sb.append("          converterName=").append(this.k == null ? "null" : this.k.getClass().getCanonicalName()).append('\n');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            com.google.android.gms.common.server.response.a.a(this, parcel, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$a.class */
    public interface a<I, O> {
        I a(O o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <O, I> I a(Field<I, O> field, Object obj) {
        I i = (I) obj;
        if (field.k != null) {
            i = field.k.a(obj);
        }
        return i;
    }

    public abstract Map<String, Field<?, ?>> a();

    protected abstract boolean b();

    public String toString() {
        Map<String, Field<?, ?>> a2 = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : a2.keySet()) {
            Field<?, ?> field = a2.get(str);
            if (field.c() != 11) {
                field.e();
                b();
            } else if (field.d()) {
                field.e();
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            } else {
                field.e();
                throw new UnsupportedOperationException("Concrete types not supported");
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
