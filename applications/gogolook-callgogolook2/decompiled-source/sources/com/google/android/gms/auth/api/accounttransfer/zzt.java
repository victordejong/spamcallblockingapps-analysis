package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p226b.p227e.p228d.C6722d;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzt.class */
public class zzt extends zzaz {
    public static final Parcelable.Creator<zzt> CREATOR = new C6722d();

    /* renamed from: h */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f6375h;

    /* renamed from: a */
    public final Set<Integer> f6376a;

    /* renamed from: b */
    public final int f6377b;

    /* renamed from: c */
    public String f6378c;

    /* renamed from: d */
    public int f6379d;

    /* renamed from: e */
    public byte[] f6380e;

    /* renamed from: f */
    public PendingIntent f6381f;

    /* renamed from: g */
    public DeviceMetaData f6382g;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f6375h = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.m31916c("accountType", 2));
        f6375h.put("status", FastJsonResponse.Field.m31919b("status", 3));
        f6375h.put("transferBytes", FastJsonResponse.Field.m31921a("transferBytes", 4));
    }

    public zzt() {
        this.f6376a = new ArraySet(3);
        this.f6377b = 1;
    }

    public zzt(Set<Integer> set, int i, String str, int i2, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f6376a = set;
        this.f6377b = i;
        this.f6378c = str;
        this.f6379d = i2;
        this.f6380e = bArr;
        this.f6381f = pendingIntent;
        this.f6382g = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Object mo31932a(FastJsonResponse.Field field) {
        int c = field.m31917c();
        if (c == 1) {
            return Integer.valueOf(this.f6377b);
        }
        if (c == 2) {
            return this.f6378c;
        }
        if (c == 3) {
            return Integer.valueOf(this.f6379d);
        }
        if (c == 4) {
            return this.f6380e;
        }
        int c2 = field.m31917c();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(c2);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public /* synthetic */ Map mo31913a() {
        return f6375h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public boolean mo31929b(FastJsonResponse.Field field) {
        return this.f6376a.contains(Integer.valueOf(field.m31917c()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        Set<Integer> set = this.f6376a;
        if (set.contains(1)) {
            C7031b.m21225a(parcel, 1, this.f6377b);
        }
        if (set.contains(2)) {
            C7031b.m21215a(parcel, 2, this.f6378c, true);
        }
        if (set.contains(3)) {
            C7031b.m21225a(parcel, 3, this.f6379d);
        }
        if (set.contains(4)) {
            C7031b.m21211a(parcel, 4, this.f6380e, true);
        }
        if (set.contains(5)) {
            C7031b.m21220a(parcel, 5, (Parcelable) this.f6381f, i, true);
        }
        if (set.contains(6)) {
            C7031b.m21220a(parcel, 6, (Parcelable) this.f6382g, i, true);
        }
        C7031b.m21229a(parcel, a);
    }
}
