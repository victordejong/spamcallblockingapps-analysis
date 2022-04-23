package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.j;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/an.class */
public final class an extends d implements j {
    public an(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // com.google.android.gms.wearable.j
    public final String getDataItemKey() {
        return b("asset_key");
    }

    @Override // com.google.android.gms.wearable.j
    public final String getId() {
        return b("asset_id");
    }
}
