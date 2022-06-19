package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p020b.p036e.C1491b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzt.class */
public class zzt extends zzaz {
    public static final Parcelable.Creator<zzt> CREATOR = new C5878d();

    /* renamed from: d */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f18879d;

    /* renamed from: e */
    private final Set<Integer> f18880e;

    /* renamed from: f */
    private final int f18881f;

    /* renamed from: g */
    private String f18882g;

    /* renamed from: h */
    private int f18883h;

    /* renamed from: i */
    private byte[] f18884i;

    /* renamed from: j */
    private PendingIntent f18885j;

    /* renamed from: k */
    private DeviceMetaData f18886k;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f18879d = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.m16872o0("accountType", 2));
        hashMap.put("status", FastJsonResponse.Field.m16873n0("status", 3));
        hashMap.put("transferBytes", FastJsonResponse.Field.m16876k0("transferBytes", 4));
    }

    public zzt() {
        this.f18880e = new C1491b(3);
        this.f18881f = 1;
    }

    public zzt(Set<Integer> set, int i, String str, int i2, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f18880e = set;
        this.f18881f = i;
        this.f18882g = str;
        this.f18883h = i2;
        this.f18884i = bArr;
        this.f18885j = pendingIntent;
        this.f18886k = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public /* synthetic */ Map mo16861a() {
        return f18879d;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public Object mo16880b(FastJsonResponse.Field field) {
        int m16870q0 = field.m16870q0();
        if (m16870q0 != 1) {
            if (m16870q0 == 2) {
                return this.f18882g;
            }
            if (m16870q0 == 3) {
                return Integer.valueOf(this.f18883h);
            }
            if (m16870q0 == 4) {
                return this.f18884i;
            }
            int m16870q02 = field.m16870q0();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unknown SafeParcelable id=");
            sb.append(m16870q02);
            throw new IllegalStateException(sb.toString());
        }
        return Integer.valueOf(this.f18881f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: d */
    public boolean mo16879d(FastJsonResponse.Field field) {
        return this.f18880e.contains(Integer.valueOf(field.m16870q0()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        Set<Integer> set = this.f18880e;
        if (set.contains(1)) {
            C6170a.m16937k(parcel, 1, this.f18881f);
        }
        if (set.contains(2)) {
            C6170a.m16930r(parcel, 2, this.f18882g, true);
        }
        if (set.contains(3)) {
            C6170a.m16937k(parcel, 3, this.f18883h);
        }
        if (set.contains(4)) {
            C6170a.m16942f(parcel, 4, this.f18884i, true);
        }
        if (set.contains(5)) {
            C6170a.m16931q(parcel, 5, this.f18885j, i, true);
        }
        if (set.contains(6)) {
            C6170a.m16931q(parcel, 6, this.f18886k, i, true);
        }
        C6170a.m16946b(parcel, m16947a);
    }
}
