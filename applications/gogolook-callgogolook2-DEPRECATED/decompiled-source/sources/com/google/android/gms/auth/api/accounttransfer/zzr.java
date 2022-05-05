package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import p081h.p203i.p204a.p224e.p226b.p227e.p228d.C6721c;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzr.class */
public class zzr extends zzaz {
    public static final Parcelable.Creator<zzr> CREATOR = new C6721c();

    /* renamed from: g */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f6368g;

    /* renamed from: a */
    public final Set<Integer> f6369a;

    /* renamed from: b */
    public final int f6370b;

    /* renamed from: c */
    public zzt f6371c;

    /* renamed from: d */
    public String f6372d;

    /* renamed from: e */
    public String f6373e;

    /* renamed from: f */
    public String f6374f;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f6368g = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.m31920a("authenticatorInfo", 2, zzt.class));
        f6368g.put("signature", FastJsonResponse.Field.m31916c("signature", 3));
        f6368g.put(ApexHomeBadger.PACKAGENAME, FastJsonResponse.Field.m31916c(ApexHomeBadger.PACKAGENAME, 4));
    }

    public zzr() {
        this.f6369a = new HashSet(3);
        this.f6370b = 1;
    }

    public zzr(Set<Integer> set, int i, zzt zztVar, String str, String str2, String str3) {
        this.f6369a = set;
        this.f6370b = i;
        this.f6371c = zztVar;
        this.f6372d = str;
        this.f6373e = str2;
        this.f6374f = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Object mo31932a(FastJsonResponse.Field field) {
        int c = field.m31917c();
        if (c == 1) {
            return Integer.valueOf(this.f6370b);
        }
        if (c == 2) {
            return this.f6371c;
        }
        if (c == 3) {
            return this.f6372d;
        }
        if (c == 4) {
            return this.f6373e;
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
        return f6368g;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public boolean mo31929b(FastJsonResponse.Field field) {
        return this.f6369a.contains(Integer.valueOf(field.m31917c()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        Set<Integer> set = this.f6369a;
        if (set.contains(1)) {
            C7031b.m21225a(parcel, 1, this.f6370b);
        }
        if (set.contains(2)) {
            C7031b.m21220a(parcel, 2, (Parcelable) this.f6371c, i, true);
        }
        if (set.contains(3)) {
            C7031b.m21215a(parcel, 3, this.f6372d, true);
        }
        if (set.contains(4)) {
            C7031b.m21215a(parcel, 4, this.f6373e, true);
        }
        if (set.contains(5)) {
            C7031b.m21215a(parcel, 5, this.f6374f, true);
        }
        C7031b.m21229a(parcel, a);
    }
}
