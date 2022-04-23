package com.google.android.gms.common.server.response;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastSafeParcelableJsonResponse.class */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @VisibleForTesting
    /* renamed from: c */
    public boolean mo14381c(String str) {
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        Iterator<FastJsonResponse.Field<?, ?>> it = mo14382a().values().iterator();
        if (!it.hasNext()) {
            return true;
        }
        m14393b(it.next());
        throw null;
    }

    public int hashCode() {
        Iterator<FastJsonResponse.Field<?, ?>> it = mo14382a().values().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        m14393b(it.next());
        throw null;
    }
}
