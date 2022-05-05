package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p247b.C7062e;
import p081h.p203i.p204a.p224e.p235d.p249s.C7070b;
import p081h.p203i.p204a.p224e.p235d.p249s.C7071c;
import p081h.p203i.p204a.p224e.p235d.p249s.C7081m;
import p081h.p203i.p204a.p224e.p235d.p249s.C7082n;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new C7062e();

    /* renamed from: a */
    public final int f6637a;

    /* renamed from: b */
    public final Parcel f6638b;

    /* renamed from: c */
    public final int f6639c = 2;

    /* renamed from: d */
    public final zak f6640d;

    /* renamed from: e */
    public final String f6641e;

    /* renamed from: f */
    public int f6642f;

    /* renamed from: g */
    public int f6643g;

    public SafeParcelResponse(int i, Parcel parcel, zak zakVar) {
        this.f6637a = i;
        C7021t.m21290a(parcel);
        this.f6638b = parcel;
        this.f6640d = zakVar;
        zak zakVar2 = this.f6640d;
        if (zakVar2 == null) {
            this.f6641e = null;
        } else {
            this.f6641e = zakVar2.m31906H();
        }
        this.f6642f = 2;
    }

    /* renamed from: a */
    public static void m31911a(StringBuilder sb, int i, Object obj) {
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
                sb.append(C7081m.m21133a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(C7071c.m21160a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(C7071c.m21159b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                C7082n.m21132a(sb, (HashMap) obj);
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

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Object mo31912a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Map<String, FastJsonResponse.Field<?, ?>> mo31913a() {
        zak zakVar = this.f6640d;
        if (zakVar == null) {
            return null;
        }
        return zakVar.m31905a(this.f6641e);
    }

    /* renamed from: a */
    public final void m31910a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().m31917c(), entry);
        }
        sb.append('{');
        int b = C7029a.m21258b(parcel);
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(C7029a.m21265a(a));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.m31927I()) {
                    int i = field.f6629d;
                    switch (i) {
                        case 0:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, Integer.valueOf(C7029a.m21231z(parcel, a))));
                            break;
                        case 1:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, C7029a.m21255c(parcel, a)));
                            break;
                        case 2:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, Long.valueOf(C7029a.m21270B(parcel, a))));
                            break;
                        case 3:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, Float.valueOf(C7029a.m21234w(parcel, a))));
                            break;
                        case 4:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, Double.valueOf(C7029a.m21236u(parcel, a))));
                            break;
                        case 5:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, C7029a.m21263a(parcel, a)));
                            break;
                        case 6:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, Boolean.valueOf(C7029a.m21238s(parcel, a))));
                            break;
                        case 7:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, C7029a.m21242o(parcel, a)));
                            break;
                        case 8:
                        case 9:
                            m31907b(sb, field, FastJsonResponse.m31931a(field, C7029a.m21250g(parcel, a)));
                            break;
                        case 10:
                            Bundle f = C7029a.m21251f(parcel, a);
                            HashMap hashMap = new HashMap();
                            for (String str2 : f.keySet()) {
                                hashMap.put(str2, f.getString(str2));
                            }
                            m31907b(sb, field, FastJsonResponse.m31931a(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f6630e) {
                    sb.append("[");
                    switch (field.f6629d) {
                        case 0:
                            C7070b.m21168a(sb, C7029a.m21246k(parcel, a));
                            break;
                        case 1:
                            C7070b.m21166a(sb, C7029a.m21253d(parcel, a));
                            break;
                        case 2:
                            C7070b.m21167a(sb, C7029a.m21245l(parcel, a));
                            break;
                        case 3:
                            C7070b.m21169a(sb, C7029a.m21247j(parcel, a));
                            break;
                        case 4:
                            C7070b.m21170a(sb, C7029a.m21248i(parcel, a));
                            break;
                        case 5:
                            C7070b.m21166a(sb, C7029a.m21257b(parcel, a));
                            break;
                        case 6:
                            C7070b.m21164a(sb, C7029a.m21252e(parcel, a));
                            break;
                        case 7:
                            C7070b.m21165a(sb, C7029a.m21241p(parcel, a));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] n = C7029a.m21243n(parcel, a);
                            int length = n.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                n[i2].setDataPosition(0);
                                m31910a(sb, field.m31925K(), n[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f6629d) {
                        case 0:
                            sb.append(C7029a.m21231z(parcel, a));
                            break;
                        case 1:
                            sb.append(C7029a.m21255c(parcel, a));
                            break;
                        case 2:
                            sb.append(C7029a.m21270B(parcel, a));
                            break;
                        case 3:
                            sb.append(C7029a.m21234w(parcel, a));
                            break;
                        case 4:
                            sb.append(C7029a.m21236u(parcel, a));
                            break;
                        case 5:
                            sb.append(C7029a.m21263a(parcel, a));
                            break;
                        case 6:
                            sb.append(C7029a.m21238s(parcel, a));
                            break;
                        case 7:
                            String o = C7029a.m21242o(parcel, a);
                            sb.append("\"");
                            sb.append(C7081m.m21133a(o));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] g = C7029a.m21250g(parcel, a);
                            sb.append("\"");
                            sb.append(C7071c.m21160a(g));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] g2 = C7029a.m21250g(parcel, a);
                            sb.append("\"");
                            sb.append(C7071c.m21159b(g2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle f2 = C7029a.m21251f(parcel, a);
                            Set<String> keySet = f2.keySet();
                            keySet.size();
                            sb.append(CssParser.BLOCK_START);
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(C7081m.m21133a(f2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append(CssParser.BLOCK_END);
                            break;
                        case 11:
                            Parcel m = C7029a.m21244m(parcel, a);
                            m.setDataPosition(0);
                            m31910a(sb, field.m31925K(), m);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == b) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(b);
        throw new C7029a.C7030a(sb3.toString(), parcel);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r0 != 1) goto L_0x002c;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Parcel m31909b() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f6642f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0011
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x001c
            goto L_0x002c
        L_0x0011:
            r0 = r3
            r1 = r3
            android.os.Parcel r1 = r1.f6638b
            int r1 = p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b.m21230a(r1)
            r0.f6643g = r1
        L_0x001c:
            r0 = r3
            android.os.Parcel r0 = r0.f6638b
            r1 = r3
            int r1 = r1.f6643g
            p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b.m21229a(r0, r1)
            r0 = r3
            r1 = 2
            r0.f6642f = r1
        L_0x002c:
            r0 = r3
            android.os.Parcel r0 = r0.f6638b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.m31909b():android.os.Parcel");
    }

    /* renamed from: b */
    public final void m31907b(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f6628c) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                m31911a(sb, field.f6627b, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        m31911a(sb, field.f6627b, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public boolean mo31908b(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        C7021t.m21289a(this.f6640d, "Cannot convert to JSON on client side.");
        Parcel b = m31909b();
        b.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        m31910a(sb, this.f6640d.m31905a(this.f6641e), b);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zak zakVar;
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6637a);
        C7031b.m21221a(parcel, 2, m31909b(), false);
        int i2 = this.f6639c;
        if (i2 == 0) {
            zakVar = null;
        } else if (i2 == 1) {
            zakVar = this.f6640d;
        } else if (i2 == 2) {
            zakVar = this.f6640d;
        } else {
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        C7031b.m21220a(parcel, 3, (Parcelable) zakVar, i, false);
        C7031b.m21229a(parcel, a);
    }
}
