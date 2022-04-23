package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
import com.google.android.gms.wearable.d;
import com.google.android.gms.wearable.e;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzay.class */
public final class zzay extends AbstractSafeParcelable implements Channel, ChannelClient.Channel {
    public static final Parcelable.Creator<zzay> CREATOR = new y();
    private final String zzce;
    private final String zzcl;
    private final String zzo;

    public zzay(String str, String str2, String str3) {
        this.zzce = (String) o.a(str);
        this.zzo = (String) o.a(str2);
        this.zzcl = (String) o.a(str3);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> addListener(g gVar, f.a aVar) {
        return p.a(gVar, new v(this.zzce, new IntentFilter[]{cp.a("com.google.android.gms.wearable.CHANNEL_EVENT")}), aVar);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> close(g gVar) {
        return gVar.a(new o(this, gVar));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> close(g gVar, int i) {
        return gVar.a(new q(this, gVar, i));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzay)) {
            return false;
        }
        zzay zzayVar = (zzay) obj;
        return this.zzce.equals(zzayVar.zzce) && m.a(zzayVar.zzo, this.zzo) && m.a(zzayVar.zzcl, this.zzcl);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<d> getInputStream(g gVar) {
        return gVar.a(new r(this, gVar));
    }

    @Override // com.google.android.gms.wearable.Channel, com.google.android.gms.wearable.ChannelClient.Channel
    public final String getNodeId() {
        return this.zzo;
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<e> getOutputStream(g gVar) {
        return gVar.a(new s(this, gVar));
    }

    @Override // com.google.android.gms.wearable.Channel, com.google.android.gms.wearable.ChannelClient.Channel
    public final String getPath() {
        return this.zzcl;
    }

    public final int hashCode() {
        return this.zzce.hashCode();
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> receiveFile(g gVar, Uri uri, boolean z) {
        o.a(gVar, "client is null");
        o.a(uri, "uri is null");
        return gVar.a(new t(this, gVar, uri, z));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> removeListener(g gVar, f.a aVar) {
        o.a(gVar, "client is null");
        o.a(aVar, "listener is null");
        return gVar.a(new j(gVar, aVar, this.zzce));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> sendFile(g gVar, Uri uri) {
        return sendFile(gVar, uri, 0L, -1L);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final j<Status> sendFile(g gVar, Uri uri, long j, long j2) {
        o.a(gVar, "client is null");
        o.a(this.zzce, (Object) "token is null");
        o.a(uri, "uri is null");
        o.a(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
        o.a(j2 >= 0 || j2 == -1, "invalid length: %s", Long.valueOf(j2));
        return gVar.a(new u(this, gVar, uri, j, j2));
    }

    public final String toString() {
        int i = 0;
        for (char c2 : this.zzce.toCharArray()) {
            i += c2;
        }
        String trim = this.zzce.trim();
        int length = trim.length();
        String str = trim;
        if (length > 25) {
            String substring = trim.substring(0, 10);
            String substring2 = trim.substring(length - 10, length);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 16 + String.valueOf(substring2).length());
            sb.append(substring);
            sb.append("...");
            sb.append(substring2);
            sb.append("::");
            sb.append(i);
            str = sb.toString();
        }
        String str2 = this.zzo;
        String str3 = this.zzcl;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 31 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb2.append("Channel{token=");
        sb2.append(str);
        sb2.append(", nodeId=");
        sb2.append(str2);
        sb2.append(", path=");
        sb2.append(str3);
        sb2.append("}");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzce, false);
        a.a(parcel, 3, getNodeId(), false);
        a.a(parcel, 4, getPath(), false);
        a.b(parcel, a2);
    }

    public final String zzc() {
        return this.zzce;
    }
}
