package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzl.class */
public final class zzl extends zzaz {
    public static final Parcelable.Creator<zzl> CREATOR = new C5875a();

    /* renamed from: d */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f18859d;

    /* renamed from: e */
    private final Set<Integer> f18860e;

    /* renamed from: f */
    private final int f18861f;

    /* renamed from: g */
    private ArrayList<zzr> f18862g;

    /* renamed from: h */
    private int f18863h;

    /* renamed from: i */
    private zzo f18864i;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f18859d = hashMap;
        hashMap.put("authenticatorData", FastJsonResponse.Field.m16874m0("authenticatorData", 2, zzr.class));
        hashMap.put("progress", FastJsonResponse.Field.m16875l0("progress", 4, zzo.class));
    }

    public zzl() {
        this.f18860e = new HashSet(1);
        this.f18861f = 1;
    }

    public zzl(Set<Integer> set, int i, ArrayList<zzr> arrayList, int i2, zzo zzoVar) {
        this.f18860e = set;
        this.f18861f = i;
        this.f18862g = arrayList;
        this.f18863h = i2;
        this.f18864i = zzoVar;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public final /* synthetic */ Map mo16861a() {
        return f18859d;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public final Object mo16880b(FastJsonResponse.Field field) {
        int m16870q0 = field.m16870q0();
        if (m16870q0 != 1) {
            if (m16870q0 == 2) {
                return this.f18862g;
            }
            if (m16870q0 == 4) {
                return this.f18864i;
            }
            int m16870q02 = field.m16870q0();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unknown SafeParcelable id=");
            sb.append(m16870q02);
            throw new IllegalStateException(sb.toString());
        }
        return Integer.valueOf(this.f18861f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: d */
    public final boolean mo16879d(FastJsonResponse.Field field) {
        return this.f18860e.contains(Integer.valueOf(field.m16870q0()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        Set<Integer> set = this.f18860e;
        if (set.contains(1)) {
            C6170a.m16937k(parcel, 1, this.f18861f);
        }
        if (set.contains(2)) {
            C6170a.m16926v(parcel, 2, this.f18862g, true);
        }
        if (set.contains(3)) {
            C6170a.m16937k(parcel, 3, this.f18863h);
        }
        if (set.contains(4)) {
            C6170a.m16931q(parcel, 4, this.f18864i, i, true);
        }
        C6170a.m16946b(parcel, m16947a);
    }
}
