package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.AbstractC11951d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.AbstractC14230i;
import com.google.android.gms.wearable.AbstractC14354j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.gms.wearable.internal.ap */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ap.class */
public final class C14247ap extends AbstractC11951d implements AbstractC14230i {

    /* renamed from: c */
    private final int f52224c;

    public C14247ap(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.f52224c = i2;
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final Map<String, AbstractC14354j> getAssets() {
        HashMap hashMap = new HashMap(this.f52224c);
        for (int i = 0; i < this.f52224c; i++) {
            C14245an c14245an = new C14245an(this.f39441a, this.f39442b + i);
            if (c14245an.getDataItemKey() != null) {
                hashMap.put(c14245an.getDataItemKey(), c14245an);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final byte[] getData() {
        return m19253c("data");
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final Uri getUri() {
        return Uri.parse(m19254b("path"));
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        byte[] data = getData();
        Map<String, AbstractC14354j> assets = getAssets();
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
            Iterator<Map.Entry<String, AbstractC14354j>> it2 = assets.entrySet().iterator();
            String str = "";
            while (true) {
                String str2 = str;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, AbstractC14354j> next = it2.next();
                String key = next.getKey();
                String id = next.getValue().getId();
                StringBuilder sb5 = new StringBuilder(str2.length() + 2 + String.valueOf(key).length() + String.valueOf(id).length());
                sb5.append(str2);
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
