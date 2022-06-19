package com.google.android.gms.common.server.response;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastSafeParcelableJsonResponse.class */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNullable
    /* renamed from: c */
    public Object mo16860c(@RecentlyNonNull String str) {
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: e */
    public boolean mo16859e(@RecentlyNonNull String str) {
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        for (FastJsonResponse.Field<?, ?> field : mo16861a().values()) {
            if (mo16879d(field)) {
                if (!fastJsonResponse.mo16879d(field) || !C6147m.m17044a(mo16880b(field), fastJsonResponse.mo16880b(field))) {
                    return false;
                }
            } else if (fastJsonResponse.mo16879d(field)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (FastJsonResponse.Field<?, ?> field : mo16861a().values()) {
            if (mo16879d(field)) {
                i = (i * 31) + C6155o.m17018j(mo16880b(field)).hashCode();
            }
        }
        return i;
    }
}
