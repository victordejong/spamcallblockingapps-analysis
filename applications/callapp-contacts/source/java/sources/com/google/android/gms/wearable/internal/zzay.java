package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14224d;
import com.google.android.gms.wearable.AbstractC14225e;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzay.class */
public final class zzay extends AbstractSafeParcelable implements Channel, ChannelClient.Channel {
    public static final Parcelable.Creator<zzay> CREATOR = new C14352y();
    private final String zzce;
    private final String zzcl;
    private final String zzo;

    public zzay(String str, String str2, String str3) {
        this.zzce = (String) C12045o.m19162a(str);
        this.zzo = (String) C12045o.m19162a(str2);
        this.zzcl = (String) C12045o.m19162a(str3);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> addListener(AbstractC11826g abstractC11826g, AbstractC14226f.AbstractC14227a abstractC14227a) {
        return C14343p.m11355a(abstractC11826g, new C14349v(this.zzce, new IntentFilter[]{C14301cp.m11399a("com.google.android.gms.wearable.CHANNEL_EVENT")}), abstractC14227a);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> close(AbstractC11826g abstractC11826g) {
        return abstractC11826g.mo19405a(new C14342o(this, abstractC11826g));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> close(AbstractC11826g abstractC11826g, int i) {
        return abstractC11826g.mo19405a(new C14344q(this, abstractC11826g, i));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzay)) {
            return false;
        }
        zzay zzayVar = (zzay) obj;
        return this.zzce.equals(zzayVar.zzce) && C12041m.m19168a(zzayVar.zzo, this.zzo) && C12041m.m19168a(zzayVar.zzcl, this.zzcl);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<AbstractC14224d> getInputStream(AbstractC11826g abstractC11826g) {
        return abstractC11826g.mo19405a(new C14345r(this, abstractC11826g));
    }

    @Override // com.google.android.gms.wearable.Channel, com.google.android.gms.wearable.ChannelClient.Channel
    public final String getNodeId() {
        return this.zzo;
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<AbstractC14225e> getOutputStream(AbstractC11826g abstractC11826g) {
        return abstractC11826g.mo19405a(new C14346s(this, abstractC11826g));
    }

    @Override // com.google.android.gms.wearable.Channel, com.google.android.gms.wearable.ChannelClient.Channel
    public final String getPath() {
        return this.zzcl;
    }

    public final int hashCode() {
        return this.zzce.hashCode();
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> receiveFile(AbstractC11826g abstractC11826g, Uri uri, boolean z) {
        C12045o.m19161a(abstractC11826g, "client is null");
        C12045o.m19161a(uri, "uri is null");
        return abstractC11826g.mo19405a(new C14347t(this, abstractC11826g, uri, z));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> removeListener(AbstractC11826g abstractC11826g, AbstractC14226f.AbstractC14227a abstractC14227a) {
        C12045o.m19161a(abstractC11826g, "client is null");
        C12045o.m19161a(abstractC14227a, "listener is null");
        return abstractC11826g.mo19405a(new C14337j(abstractC11826g, abstractC14227a, this.zzce));
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> sendFile(AbstractC11826g abstractC11826g, Uri uri) {
        return sendFile(abstractC11826g, uri, 0L, -1L);
    }

    @Override // com.google.android.gms.wearable.Channel
    public final AbstractC11921j<Status> sendFile(AbstractC11826g abstractC11826g, Uri uri, long j, long j2) {
        C12045o.m19161a(abstractC11826g, "client is null");
        C12045o.m19161a(this.zzce, (Object) "token is null");
        C12045o.m19161a(uri, "uri is null");
        C12045o.m19156a(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
        C12045o.m19156a(j2 >= 0 || j2 == -1, "invalid length: %s", Long.valueOf(j2));
        return abstractC11826g.mo19405a(new C14348u(this, abstractC11826g, uri, j, j2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v54, types: [int] */
    public final String toString() {
        char c = 0;
        for (char c2 : this.zzce.toCharArray()) {
            c += c2;
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
            sb.append((int) c);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzce, false);
        C12050a.m19104a(parcel, 3, getNodeId(), false);
        C12050a.m19104a(parcel, 4, getPath(), false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final String zzc() {
        return this.zzce;
    }
}
