package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.AbstractC2392b;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import org.json.JSONArray;
/* renamed from: com.google.android.gms.internal.ads.rr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rr.class */
public final class C3472rr extends AbstractC2663a {
    public static final Parcelable.Creator<C3472rr> CREATOR = new C3471rq();

    /* renamed from: a */
    public final String f17313a;

    /* renamed from: b */
    public final int f17314b;

    public C3472rr(AbstractC2392b abstractC2392b) {
        this(abstractC2392b.mo7263a(), abstractC2392b.mo7262b());
    }

    public C3472rr(String str, int i) {
        this.f17313a = str;
        this.f17314b = i;
    }

    /* renamed from: a */
    public static C3472rr m7219a(JSONArray jSONArray) {
        return (jSONArray == null || jSONArray.length() == 0) ? null : new C3472rr(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (!(obj instanceof C3472rr)) {
                z = false;
            } else {
                C3472rr c3472rr = (C3472rr) obj;
                z = false;
                if (C2657q.m13992a(this.f17313a, c3472rr.f17313a)) {
                    z = false;
                    if (C2657q.m13992a(Integer.valueOf(this.f17314b), Integer.valueOf(c3472rr.f17314b))) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return C2657q.m13991a(this.f17313a, Integer.valueOf(this.f17314b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f17313a, false);
        C2664b.m13941a(parcel, 3, this.f17314b);
        C2664b.m13943a(parcel, m13944a);
    }
}
