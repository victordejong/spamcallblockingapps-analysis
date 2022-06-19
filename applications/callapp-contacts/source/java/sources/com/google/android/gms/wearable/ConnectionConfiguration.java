package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ConnectionConfiguration.class */
public class ConnectionConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ConnectionConfiguration> CREATOR = new C14370u();
    private final String name;
    private final int type;
    private final String zzi;
    private final int zzj;
    private final boolean zzk;
    private volatile boolean zzl;
    private volatile String zzm;
    private boolean zzn;
    private String zzo;

    public ConnectionConfiguration(String str, String str2, int i, int i2, boolean z, boolean z2, String str3, boolean z3, String str4) {
        this.name = str;
        this.zzi = str2;
        this.type = i;
        this.zzj = i2;
        this.zzk = z;
        this.zzl = z2;
        this.zzm = str3;
        this.zzn = z3;
        this.zzo = str4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ConnectionConfiguration)) {
            return false;
        }
        ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) obj;
        return C12041m.m19168a(this.name, connectionConfiguration.name) && C12041m.m19168a(this.zzi, connectionConfiguration.zzi) && C12041m.m19168a(Integer.valueOf(this.type), Integer.valueOf(connectionConfiguration.type)) && C12041m.m19168a(Integer.valueOf(this.zzj), Integer.valueOf(connectionConfiguration.zzj)) && C12041m.m19168a(Boolean.valueOf(this.zzk), Boolean.valueOf(connectionConfiguration.zzk)) && C12041m.m19168a(Boolean.valueOf(this.zzn), Boolean.valueOf(connectionConfiguration.zzn));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.zzi, Integer.valueOf(this.type), Integer.valueOf(this.zzj), Boolean.valueOf(this.zzk), Boolean.valueOf(this.zzn)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConnectionConfiguration[ ");
        String valueOf = String.valueOf(this.name);
        sb.append(valueOf.length() != 0 ? "mName=".concat(valueOf) : new String("mName="));
        String valueOf2 = String.valueOf(this.zzi);
        sb.append(valueOf2.length() != 0 ? ", mAddress=".concat(valueOf2) : new String(", mAddress="));
        int i = this.type;
        StringBuilder sb2 = new StringBuilder(19);
        sb2.append(", mType=");
        sb2.append(i);
        sb.append(sb2.toString());
        int i2 = this.zzj;
        StringBuilder sb3 = new StringBuilder(19);
        sb3.append(", mRole=");
        sb3.append(i2);
        sb.append(sb3.toString());
        boolean z = this.zzk;
        StringBuilder sb4 = new StringBuilder(16);
        sb4.append(", mEnabled=");
        sb4.append(z);
        sb.append(sb4.toString());
        boolean z2 = this.zzl;
        StringBuilder sb5 = new StringBuilder(20);
        sb5.append(", mIsConnected=");
        sb5.append(z2);
        sb.append(sb5.toString());
        String valueOf3 = String.valueOf(this.zzm);
        sb.append(valueOf3.length() != 0 ? ", mPeerNodeId=".concat(valueOf3) : new String(", mPeerNodeId="));
        boolean z3 = this.zzn;
        StringBuilder sb6 = new StringBuilder(21);
        sb6.append(", mBtlePriority=");
        sb6.append(z3);
        sb.append(sb6.toString());
        String valueOf4 = String.valueOf(this.zzo);
        sb.append(valueOf4.length() != 0 ? ", mNodeId=".concat(valueOf4) : new String(", mNodeId="));
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.name, false);
        C12050a.m19104a(parcel, 3, this.zzi, false);
        C12050a.m19112a(parcel, 4, this.type);
        C12050a.m19112a(parcel, 5, this.zzj);
        C12050a.m19101a(parcel, 6, this.zzk);
        C12050a.m19101a(parcel, 7, this.zzl);
        C12050a.m19104a(parcel, 8, this.zzm, false);
        C12050a.m19101a(parcel, 9, this.zzn);
        C12050a.m19104a(parcel, 10, this.zzo, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
