package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabm.class */
public final class zabm {
    private final ApiKey<?> zaa;
    private final Feature zab;

    public /* synthetic */ zabm(ApiKey apiKey, Feature feature, zabg zabgVar) {
        this.zaa = apiKey;
        this.zab = feature;
    }

    public static /* synthetic */ ApiKey zaa(zabm zabmVar) {
        return zabmVar.zaa;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zabm)) {
            return false;
        }
        zabm zabmVar = (zabm) obj;
        return Objects.equal(this.zaa, zabmVar.zaa) && Objects.equal(this.zab, zabmVar.zab);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zaa, this.zab);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("key", this.zaa).add("feature", this.zab).toString();
    }
}
