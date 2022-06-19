package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.class */
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new zbg();
    @SafeParcelable.Field

    /* renamed from: a */
    public final PendingIntent f5464a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5465b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f5466c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final List<String> f5467d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f5468e;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public PendingIntent f5469a;

        /* renamed from: b */
        public String f5470b;

        /* renamed from: c */
        public String f5471c;

        /* renamed from: d */
        public List<String> f5472d = new ArrayList();

        /* renamed from: e */
        public String f5473e;
    }

    @SafeParcelable.Constructor
    public SaveAccountLinkingTokenRequest(@SafeParcelable.Param(id = 1) PendingIntent pendingIntent, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) List<String> list, @SafeParcelable.Param(id = 5) String str3) {
        this.f5464a = pendingIntent;
        this.f5465b = str;
        this.f5466c = str2;
        this.f5467d = list;
        this.f5468e = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        return this.f5467d.size() == saveAccountLinkingTokenRequest.f5467d.size() && this.f5467d.containsAll(saveAccountLinkingTokenRequest.f5467d) && Objects.m38910a(this.f5464a, saveAccountLinkingTokenRequest.f5464a) && Objects.m38910a(this.f5465b, saveAccountLinkingTokenRequest.f5465b) && Objects.m38910a(this.f5466c, saveAccountLinkingTokenRequest.f5466c) && Objects.m38910a(this.f5468e, saveAccountLinkingTokenRequest.f5468e);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5464a, this.f5465b, this.f5466c, this.f5467d, this.f5468e});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5464a, i, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5465b, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f5466c, false);
        SafeParcelWriter.m38844s(parcel, 4, this.f5467d, false);
        SafeParcelWriter.m38846q(parcel, 5, this.f5468e, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
