package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.List;
import java.util.Map;
import p020b.p036e.C1489a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzo.class */
public class zzo extends zzaz {
    public static final Parcelable.Creator<zzo> CREATOR = new C5876b();

    /* renamed from: d */
    private static final C1489a<String, FastJsonResponse.Field<?, ?>> f18865d;

    /* renamed from: e */
    private final int f18866e;

    /* renamed from: f */
    private List<String> f18867f;

    /* renamed from: g */
    private List<String> f18868g;

    /* renamed from: h */
    private List<String> f18869h;

    /* renamed from: i */
    private List<String> f18870i;

    /* renamed from: j */
    private List<String> f18871j;

    static {
        C1489a<String, FastJsonResponse.Field<?, ?>> c1489a = new C1489a<>();
        f18865d = c1489a;
        c1489a.put("registered", FastJsonResponse.Field.m16871p0("registered", 2));
        c1489a.put("in_progress", FastJsonResponse.Field.m16871p0("in_progress", 3));
        c1489a.put("success", FastJsonResponse.Field.m16871p0("success", 4));
        c1489a.put("failed", FastJsonResponse.Field.m16871p0("failed", 5));
        c1489a.put("escrowed", FastJsonResponse.Field.m16871p0("escrowed", 6));
    }

    public zzo() {
        this.f18866e = 1;
    }

    public zzo(int i, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        this.f18866e = i;
        this.f18867f = list;
        this.f18868g = list2;
        this.f18869h = list3;
        this.f18870i = list4;
        this.f18871j = list5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Map<String, FastJsonResponse.Field<?, ?>> mo16861a() {
        return f18865d;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public Object mo16880b(FastJsonResponse.Field field) {
        switch (field.m16870q0()) {
            case 1:
                return Integer.valueOf(this.f18866e);
            case 2:
                return this.f18867f;
            case 3:
                return this.f18868g;
            case 4:
                return this.f18869h;
            case 5:
                return this.f18870i;
            case 6:
                return this.f18871j;
            default:
                int m16870q0 = field.m16870q0();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(m16870q0);
                throw new IllegalStateException(sb.toString());
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: d */
    public boolean mo16879d(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18866e);
        C6170a.m16928t(parcel, 2, this.f18867f, false);
        C6170a.m16928t(parcel, 3, this.f18868g, false);
        C6170a.m16928t(parcel, 4, this.f18869h, false);
        C6170a.m16928t(parcel, 5, this.f18870i, false);
        C6170a.m16928t(parcel, 6, this.f18871j, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
