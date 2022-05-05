package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p226b.p227e.p228d.C6719a;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzl.class */
public final class zzl extends zzaz {
    public static final Parcelable.Creator<zzl> CREATOR = new C6719a();

    /* renamed from: f */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f6355f;

    /* renamed from: a */
    public final Set<Integer> f6356a;

    /* renamed from: b */
    public final int f6357b;

    /* renamed from: c */
    public ArrayList<zzr> f6358c;

    /* renamed from: d */
    public int f6359d;

    /* renamed from: e */
    public zzo f6360e;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f6355f = hashMap;
        hashMap.put("authenticatorData", FastJsonResponse.Field.m31918b("authenticatorData", 2, zzr.class));
        f6355f.put(NotificationCompat.CATEGORY_PROGRESS, FastJsonResponse.Field.m31920a(NotificationCompat.CATEGORY_PROGRESS, 4, zzo.class));
    }

    public zzl() {
        this.f6356a = new HashSet(1);
        this.f6357b = 1;
    }

    public zzl(Set<Integer> set, int i, ArrayList<zzr> arrayList, int i2, zzo zzoVar) {
        this.f6356a = set;
        this.f6357b = i;
        this.f6358c = arrayList;
        this.f6359d = i2;
        this.f6360e = zzoVar;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public final Object mo31932a(FastJsonResponse.Field field) {
        int c = field.m31917c();
        if (c == 1) {
            return Integer.valueOf(this.f6357b);
        }
        if (c == 2) {
            return this.f6358c;
        }
        if (c == 4) {
            return this.f6360e;
        }
        int c2 = field.m31917c();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(c2);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public final /* synthetic */ Map mo31913a() {
        return f6355f;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public final boolean mo31929b(FastJsonResponse.Field field) {
        return this.f6356a.contains(Integer.valueOf(field.m31917c()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        Set<Integer> set = this.f6356a;
        if (set.contains(1)) {
            C7031b.m21225a(parcel, 1, this.f6357b);
        }
        if (set.contains(2)) {
            C7031b.m21201c(parcel, 2, this.f6358c, true);
        }
        if (set.contains(3)) {
            C7031b.m21225a(parcel, 3, this.f6359d);
        }
        if (set.contains(4)) {
            C7031b.m21220a(parcel, 4, (Parcelable) this.f6360e, i, true);
        }
        C7031b.m21229a(parcel, a);
    }
}
