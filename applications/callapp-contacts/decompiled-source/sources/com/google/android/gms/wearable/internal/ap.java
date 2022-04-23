package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.i;
import com.google.android.gms.wearable.j;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ap.class */
public final class ap extends d implements i {

    /* renamed from: c  reason: collision with root package name */
    private final int f30088c;

    public ap(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.f30088c = i2;
    }

    @Override // com.google.android.gms.wearable.i
    public final Map<String, j> getAssets() {
        HashMap hashMap = new HashMap(this.f30088c);
        for (int i = 0; i < this.f30088c; i++) {
            an anVar = new an(this.f22802a, this.f22803b + i);
            if (anVar.getDataItemKey() != null) {
                hashMap.put(anVar.getDataItemKey(), anVar);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.wearable.i
    public final byte[] getData() {
        return c("data");
    }

    @Override // com.google.android.gms.wearable.i
    public final Uri getUri() {
        return Uri.parse(b("path"));
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        byte[] data = getData();
        Map<String, j> assets = getAssets();
        StringBuilder sb = new StringBuilder("DataItemRef{ ");
        String valueOf = String.valueOf(getUri());
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 4);
        sb2.append("uri=");
        sb2.append(valueOf);
        sb.append(sb2.toString());
        String valueOf2 = String.valueOf(data == null ? JsonReaderKt.NULL : Integer.valueOf(data.length));
        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 9);
        sb3.append(", dataSz=");
        sb3.append(valueOf2);
        sb.append(sb3.toString());
        int size = assets.size();
        StringBuilder sb4 = new StringBuilder(23);
        sb4.append(", numAssets=");
        sb4.append(size);
        sb.append(sb4.toString());
        if (isLoggable && !assets.isEmpty()) {
            sb.append(", assets=[");
            String str = "";
            for (Map.Entry<String, j> entry : assets.entrySet()) {
                String key = entry.getKey();
                String id = entry.getValue().getId();
                StringBuilder sb5 = new StringBuilder(str.length() + 2 + String.valueOf(key).length() + String.valueOf(id).length());
                sb5.append(str);
                sb5.append(key);
                sb5.append(": ");
                sb5.append(id);
                sb.append(sb5.toString());
                str = ", ";
            }
            sb.append("]");
        }
        sb.append(" }");
        return sb.toString();
    }
}
