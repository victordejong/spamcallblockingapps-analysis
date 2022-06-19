package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.C6224b;
import com.google.android.gms.common.util.C6225c;
import com.google.android.gms.common.util.C6234l;
import com.google.android.gms.common.util.C6235m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    @RecentlyNonNull
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new C6216e();

    /* renamed from: d */
    private final int f19670d;

    /* renamed from: e */
    private final Parcel f19671e;

    /* renamed from: f */
    private final int f19672f = 2;

    /* renamed from: g */
    private final zan f19673g;

    /* renamed from: h */
    private final String f19674h;

    /* renamed from: i */
    private int f19675i;

    /* renamed from: j */
    private int f19676j;

    public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.f19670d = i;
        this.f19671e = (Parcel) C6155o.m17018j(parcel);
        this.f19673g = zanVar;
        this.f19674h = zanVar == null ? null : zanVar.m16852m0();
        this.f19675i = 2;
    }

    /* renamed from: i */
    private final void m16857i(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().m16870q0(), entry);
        }
        sb.append('{');
        int m16976J = SafeParcelReader.m16976J(parcel);
        boolean z = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.m16952v(m16983C));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.m16868s0()) {
                    int i = field.f19662g;
                    switch (i) {
                        case 0:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, Integer.valueOf(SafeParcelReader.m16981E(parcel, m16983C))));
                            break;
                        case 1:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, SafeParcelReader.m16971c(parcel, m16983C)));
                            break;
                        case 2:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, Long.valueOf(SafeParcelReader.m16980F(parcel, m16983C))));
                            break;
                        case 3:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, Float.valueOf(SafeParcelReader.m16985A(parcel, m16983C))));
                            break;
                        case 4:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, Double.valueOf(SafeParcelReader.m16949y(parcel, m16983C))));
                            break;
                        case 5:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, SafeParcelReader.m16973a(parcel, m16983C)));
                            break;
                        case 6:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, Boolean.valueOf(SafeParcelReader.m16951w(parcel, m16983C))));
                            break;
                        case 7:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, SafeParcelReader.m16958p(parcel, m16983C)));
                            break;
                        case 8:
                        case 9:
                            m16855k(sb, field, FastJsonResponse.m16878f(field, SafeParcelReader.m16967g(parcel, m16983C)));
                            break;
                        case 10:
                            Bundle m16968f = SafeParcelReader.m16968f(parcel, m16983C);
                            HashMap hashMap = new HashMap();
                            for (String str2 : m16968f.keySet()) {
                                hashMap.put(str2, (String) C6155o.m17018j(m16968f.getString(str2)));
                            }
                            m16855k(sb, field, FastJsonResponse.m16878f(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f19663h) {
                    sb.append("[");
                    switch (field.f19662g) {
                        case 0:
                            C6224b.m16826f(sb, SafeParcelReader.m16964j(parcel, m16983C));
                            break;
                        case 1:
                            C6224b.m16824h(sb, SafeParcelReader.m16970d(parcel, m16983C));
                            break;
                        case 2:
                            C6224b.m16825g(sb, SafeParcelReader.m16962l(parcel, m16983C));
                            break;
                        case 3:
                            C6224b.m16827e(sb, SafeParcelReader.m16965i(parcel, m16983C));
                            break;
                        case 4:
                            C6224b.m16828d(sb, SafeParcelReader.m16966h(parcel, m16983C));
                            break;
                        case 5:
                            C6224b.m16824h(sb, SafeParcelReader.m16972b(parcel, m16983C));
                            break;
                        case 6:
                            C6224b.m16823i(sb, SafeParcelReader.m16969e(parcel, m16983C));
                            break;
                        case 7:
                            C6224b.m16822j(sb, SafeParcelReader.m16957q(parcel, m16983C));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] m16960n = SafeParcelReader.m16960n(parcel, m16983C);
                            int length = m16960n.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                m16960n[i2].setDataPosition(0);
                                m16857i(sb, field.m16865v0(), m16960n[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f19662g) {
                        case 0:
                            sb.append(SafeParcelReader.m16981E(parcel, m16983C));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.m16971c(parcel, m16983C));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.m16980F(parcel, m16983C));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.m16985A(parcel, m16983C));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.m16949y(parcel, m16983C));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.m16973a(parcel, m16983C));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m16951w(parcel, m16983C));
                            break;
                        case 7:
                            String m16958p = SafeParcelReader.m16958p(parcel, m16983C);
                            sb.append("\"");
                            sb.append(C6234l.m16786a(m16958p));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] m16967g = SafeParcelReader.m16967g(parcel, m16983C);
                            sb.append("\"");
                            sb.append(C6225c.m16821a(m16967g));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] m16967g2 = SafeParcelReader.m16967g(parcel, m16983C);
                            sb.append("\"");
                            sb.append(C6225c.m16820b(m16967g2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle m16968f2 = SafeParcelReader.m16968f(parcel, m16983C);
                            Set<String> keySet = m16968f2.keySet();
                            sb.append("{");
                            Iterator<String> it = keySet.iterator();
                            boolean z2 = true;
                            while (true) {
                                boolean z3 = z2;
                                if (!it.hasNext()) {
                                    sb.append("}");
                                    break;
                                } else {
                                    String next = it.next();
                                    if (!z3) {
                                        sb.append(",");
                                    }
                                    sb.append("\"");
                                    sb.append(next);
                                    sb.append("\":\"");
                                    sb.append(C6234l.m16786a(m16968f2.getString(next)));
                                    sb.append("\"");
                                    z2 = false;
                                }
                            }
                        case 11:
                            Parcel m16961m = SafeParcelReader.m16961m(parcel, m16983C);
                            m16961m.setDataPosition(0);
                            m16857i(sb, field.m16865v0(), m16961m);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == m16976J) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(m16976J);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    /* renamed from: j */
    private static final void m16856j(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(C6234l.m16786a(C6155o.m17018j(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(C6225c.m16821a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(C6225c.m16820b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                C6235m.m16785a(sb, (HashMap) C6155o.m17018j(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: k */
    private static final void m16855k(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (!field.f19661f) {
            m16856j(sb, field.f19660e, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            m16856j(sb, field.f19660e, arrayList.get(i));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNullable
    /* renamed from: a */
    public final Map<String, FastJsonResponse.Field<?, ?>> mo16861a() {
        zan zanVar = this.f19673g;
        if (zanVar == null) {
            return null;
        }
        return zanVar.m16853l0((String) C6155o.m17018j(this.f19674h));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNonNull
    /* renamed from: c */
    public final Object mo16860c(@RecentlyNonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: e */
    public final boolean mo16859e(@RecentlyNonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @RecentlyNonNull
    /* renamed from: h */
    public final Parcel m16858h() {
        int i = this.f19675i;
        if (i == 0) {
            int m16947a = C6170a.m16947a(this.f19671e);
            this.f19676j = m16947a;
            C6170a.m16946b(this.f19671e, m16947a);
            this.f19675i = 2;
        } else if (i == 1) {
            C6170a.m16946b(this.f19671e, this.f19676j);
            this.f19675i = 2;
        }
        return this.f19671e;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNonNull
    public final String toString() {
        C6155o.m17017k(this.f19673g, "Cannot convert to JSON on client side.");
        Parcel m16858h = m16858h();
        m16858h.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        m16857i(sb, (Map) C6155o.m17018j(this.f19673g.m16853l0((String) C6155o.m17018j(this.f19674h))), m16858h);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19670d);
        C6170a.m16932p(parcel, 2, m16858h(), false);
        int i2 = this.f19672f;
        C6170a.m16931q(parcel, 3, i2 != 0 ? i2 != 1 ? this.f19673g : this.f19673g : null, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
