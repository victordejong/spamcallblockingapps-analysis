package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/playlog/internal/LogEvent.class */
public class LogEvent extends AbstractSafeParcelable {
    public static final a CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f4246a;

    /* renamed from: b  reason: collision with root package name */
    public final long f4247b;
    public final long c;
    public final String d;
    public final byte[] e;
    public final Bundle f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LogEvent(int i, long j, long j2, String str, byte[] bArr, Bundle bundle) {
        this.f4246a = i;
        this.f4247b = j;
        this.c = j2;
        this.d = str;
        this.e = bArr;
        this.f = bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("tag=").append(this.d).append(",");
        sb.append("eventTime=").append(this.f4247b).append(",");
        sb.append("eventUptime=").append(this.c).append(",");
        if (this.f != null && !this.f.isEmpty()) {
            sb.append("keyValues=");
            for (String str : this.f.keySet()) {
                sb.append("(").append(str).append(",");
                sb.append(this.f.getString(str)).append(")");
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel);
    }
}
