package com.google.android.gms.common.server.response;

import android.os.Parcel;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.C6225c;
import com.google.android.gms.common.util.C6234l;
import com.google.android.gms.common.util.C6235m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final C6212a CREATOR = new C6212a();

        /* renamed from: d */
        private final int f19659d;

        /* renamed from: e */
        protected final int f19660e;

        /* renamed from: f */
        protected final boolean f19661f;

        /* renamed from: g */
        protected final int f19662g;

        /* renamed from: h */
        protected final boolean f19663h;
        @RecentlyNonNull

        /* renamed from: i */
        protected final String f19664i;

        /* renamed from: j */
        protected final int f19665j;
        @RecentlyNullable

        /* renamed from: k */
        protected final Class<? extends FastJsonResponse> f19666k;
        @RecentlyNullable

        /* renamed from: l */
        protected final String f19667l;

        /* renamed from: m */
        private zan f19668m;

        /* renamed from: n */
        private AbstractC6211a<I, O> f19669n;

        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zaa zaaVar) {
            this.f19659d = i;
            this.f19660e = i2;
            this.f19661f = z;
            this.f19662g = i3;
            this.f19663h = z2;
            this.f19664i = str;
            this.f19665j = i4;
            if (str2 == null) {
                this.f19666k = null;
                this.f19667l = null;
            } else {
                this.f19666k = SafeParcelResponse.class;
                this.f19667l = str2;
            }
            if (zaaVar == null) {
                this.f19669n = null;
            } else {
                this.f19669n = (AbstractC6211a<I, O>) zaaVar.m16881l0();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, @RecentlyNonNull String str, int i3, Class<? extends FastJsonResponse> cls, AbstractC6211a<I, O> abstractC6211a) {
            this.f19659d = 1;
            this.f19660e = i;
            this.f19661f = z;
            this.f19662g = i2;
            this.f19663h = z2;
            this.f19664i = str;
            this.f19665j = i3;
            this.f19666k = cls;
            if (cls == null) {
                this.f19667l = null;
            } else {
                this.f19667l = cls.getCanonicalName();
            }
            this.f19669n = abstractC6211a;
        }

        @RecentlyNonNull
        /* renamed from: k0 */
        public static Field<byte[], byte[]> m16876k0(@RecentlyNonNull String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        @RecentlyNonNull
        /* renamed from: l0 */
        public static <T extends FastJsonResponse> Field<T, T> m16875l0(@RecentlyNonNull String str, int i, @RecentlyNonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        @RecentlyNonNull
        /* renamed from: m0 */
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> m16874m0(@RecentlyNonNull String str, int i, @RecentlyNonNull Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        @RecentlyNonNull
        /* renamed from: n0 */
        public static Field<Integer, Integer> m16873n0(@RecentlyNonNull String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        @RecentlyNonNull
        /* renamed from: o0 */
        public static Field<String, String> m16872o0(@RecentlyNonNull String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        @RecentlyNonNull
        /* renamed from: p0 */
        public static Field<ArrayList<String>, ArrayList<String>> m16871p0(@RecentlyNonNull String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        /* renamed from: q0 */
        public int m16870q0() {
            return this.f19665j;
        }

        /* renamed from: r0 */
        final String m16869r0() {
            String str = this.f19667l;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        /* renamed from: s0 */
        public final boolean m16868s0() {
            return this.f19669n != null;
        }

        /* renamed from: t0 */
        public final void m16867t0(zan zanVar) {
            this.f19668m = zanVar;
        }

        @RecentlyNonNull
        public final String toString() {
            C6147m.C6148a m17041a = C6147m.m17042c(this).m17041a("versionCode", Integer.valueOf(this.f19659d)).m17041a("typeIn", Integer.valueOf(this.f19660e)).m17041a("typeInArray", Boolean.valueOf(this.f19661f)).m17041a("typeOut", Integer.valueOf(this.f19662g)).m17041a("typeOutArray", Boolean.valueOf(this.f19663h)).m17041a("outputFieldName", this.f19664i).m17041a("safeParcelFieldId", Integer.valueOf(this.f19665j)).m17041a("concreteTypeName", m16869r0());
            Class<? extends FastJsonResponse> cls = this.f19666k;
            if (cls != null) {
                m17041a.m17041a("concreteType.class", cls.getCanonicalName());
            }
            AbstractC6211a<I, O> abstractC6211a = this.f19669n;
            if (abstractC6211a != null) {
                m17041a.m17041a("converterName", abstractC6211a.getClass().getCanonicalName());
            }
            return m17041a.toString();
        }

        /* renamed from: u0 */
        final zaa m16866u0() {
            AbstractC6211a<I, O> abstractC6211a = this.f19669n;
            if (abstractC6211a == null) {
                return null;
            }
            return zaa.m16882k0(abstractC6211a);
        }

        @RecentlyNonNull
        /* renamed from: v0 */
        public final Map<String, Field<?, ?>> m16865v0() {
            C6155o.m17018j(this.f19667l);
            C6155o.m17018j(this.f19668m);
            return (Map) C6155o.m17018j(this.f19668m.m16853l0(this.f19667l));
        }

        @RecentlyNonNull
        /* renamed from: w0 */
        public final I m16864w0(@RecentlyNonNull O o) {
            C6155o.m17018j(this.f19669n);
            return this.f19669n.mo16862D(o);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
            int m16947a = C6170a.m16947a(parcel);
            C6170a.m16937k(parcel, 1, this.f19659d);
            C6170a.m16937k(parcel, 2, this.f19660e);
            C6170a.m16945c(parcel, 3, this.f19661f);
            C6170a.m16937k(parcel, 4, this.f19662g);
            C6170a.m16945c(parcel, 5, this.f19663h);
            C6170a.m16930r(parcel, 6, this.f19664i, false);
            C6170a.m16937k(parcel, 7, m16870q0());
            C6170a.m16930r(parcel, 8, m16869r0(), false);
            C6170a.m16931q(parcel, 9, m16866u0(), i, false);
            C6170a.m16946b(parcel, m16947a);
        }
    }

    /* renamed from: com.google.android.gms.common.server.response.FastJsonResponse$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$a.class */
    public interface AbstractC6211a<I, O> {
        @RecentlyNonNull
        /* renamed from: D */
        I mo16862D(@RecentlyNonNull O o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RecentlyNonNull
    /* renamed from: f */
    public static final <O, I> I m16878f(@RecentlyNonNull Field<I, O> field, Object obj) {
        return ((Field) field).f19669n != null ? field.m16864w0(obj) : obj;
    }

    /* renamed from: g */
    private static final void m16877g(StringBuilder sb, Field field, Object obj) {
        int i = field.f19660e;
        if (i == 11) {
            Class<? extends FastJsonResponse> cls = field.f19666k;
            C6155o.m17018j(cls);
            sb.append(cls.cast(obj).toString());
        } else if (i != 7) {
            sb.append(obj);
        } else {
            sb.append("\"");
            sb.append(C6234l.m16786a((String) obj));
            sb.append("\"");
        }
    }

    @RecentlyNonNull
    /* renamed from: a */
    public abstract Map<String, Field<?, ?>> mo16861a();

    @RecentlyNullable
    /* renamed from: b */
    public Object mo16880b(@RecentlyNonNull Field field) {
        String str = field.f19664i;
        if (field.f19666k != null) {
            C6155o.m17013o(mo16860c(str) == null, "Concrete field shouldn't be value object: %s", field.f19664i);
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append("get");
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return mo16860c(str);
    }

    @RecentlyNullable
    /* renamed from: c */
    protected abstract Object mo16860c(@RecentlyNonNull String str);

    /* renamed from: d */
    public boolean mo16879d(@RecentlyNonNull Field field) {
        if (field.f19662g == 11) {
            if (!field.f19663h) {
                throw new UnsupportedOperationException("Concrete types not supported");
            }
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        return mo16859e(field.f19664i);
    }

    /* renamed from: e */
    protected abstract boolean mo16859e(@RecentlyNonNull String str);

    @RecentlyNonNull
    public String toString() {
        Map<String, Field<?, ?>> mo16861a = mo16861a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mo16861a.keySet()) {
            Field<?, ?> field = mo16861a.get(str);
            if (mo16879d(field)) {
                Object m16878f = m16878f(field, mo16880b(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (m16878f != null) {
                    switch (field.f19662g) {
                        case 8:
                            sb.append("\"");
                            sb.append(C6225c.m16821a((byte[]) m16878f));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(C6225c.m16820b((byte[]) m16878f));
                            sb.append("\"");
                            continue;
                        case 10:
                            C6235m.m16785a(sb, (HashMap) m16878f);
                            continue;
                        default:
                            if (!field.f19661f) {
                                m16877g(sb, field, m16878f);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) m16878f;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        m16877g(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                continue;
                            }
                    }
                } else {
                    sb.append("null");
                }
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
