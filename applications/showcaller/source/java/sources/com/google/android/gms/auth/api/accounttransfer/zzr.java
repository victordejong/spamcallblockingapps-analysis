package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzr.class */
public class zzr extends zzaz {
    public static final Parcelable.Creator<zzr> CREATOR = new C5877c();

    /* renamed from: d */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f18872d;

    /* renamed from: e */
    private final Set<Integer> f18873e;

    /* renamed from: f */
    private final int f18874f;

    /* renamed from: g */
    private zzt f18875g;

    /* renamed from: h */
    private String f18876h;

    /* renamed from: i */
    private String f18877i;

    /* renamed from: j */
    private String f18878j;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f18872d = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.m16875l0("authenticatorInfo", 2, zzt.class));
        hashMap.put("signature", FastJsonResponse.Field.m16872o0("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.m16872o0("package", 4));
    }

    public zzr() {
        this.f18873e = new HashSet(3);
        this.f18874f = 1;
    }

    public zzr(Set<Integer> set, int i, zzt zztVar, String str, String str2, String str3) {
        this.f18873e = set;
        this.f18874f = i;
        this.f18875g = zztVar;
        this.f18876h = str;
        this.f18877i = str2;
        this.f18878j = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public /* synthetic */ Map mo16861a() {
        return f18872d;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public Object mo16880b(FastJsonResponse.Field field) {
        int m16870q0 = field.m16870q0();
        if (m16870q0 != 1) {
            if (m16870q0 == 2) {
                return this.f18875g;
            }
            if (m16870q0 == 3) {
                return this.f18876h;
            }
            if (m16870q0 == 4) {
                return this.f18877i;
            }
            int m16870q02 = field.m16870q0();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unknown SafeParcelable id=");
            sb.append(m16870q02);
            throw new IllegalStateException(sb.toString());
        }
        return Integer.valueOf(this.f18874f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: d */
    public boolean mo16879d(FastJsonResponse.Field field) {
        return this.f18873e.contains(Integer.valueOf(field.m16870q0()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        Set<Integer> set = this.f18873e;
        if (set.contains(1)) {
            C6170a.m16937k(parcel, 1, this.f18874f);
        }
        if (set.contains(2)) {
            C6170a.m16931q(parcel, 2, this.f18875g, i, true);
        }
        if (set.contains(3)) {
            C6170a.m16930r(parcel, 3, this.f18876h, true);
        }
        if (set.contains(4)) {
            C6170a.m16930r(parcel, 4, this.f18877i, true);
        }
        if (set.contains(5)) {
            C6170a.m16930r(parcel, 5, this.f18878j, true);
        }
        C6170a.m16946b(parcel, m16947a);
    }
}
