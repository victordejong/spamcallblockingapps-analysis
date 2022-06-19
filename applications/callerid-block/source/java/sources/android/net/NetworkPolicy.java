package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import e.a.a.a.a;
/* loaded from: classes-dex2jar.jar:android/net/NetworkPolicy.class */
public class NetworkPolicy implements Parcelable, Comparable<NetworkPolicy> {
    public static final Parcelable.Creator<NetworkPolicy> CREATOR = new C0004a();

    /* renamed from: b */
    public final NetworkTemplate f8b;

    /* renamed from: c */
    public int f9c;

    /* renamed from: d */
    public String f10d;

    /* renamed from: e */
    public long f11e;

    /* renamed from: f */
    public long f12f;

    /* renamed from: g */
    public long f13g;

    /* renamed from: h */
    public long f14h;

    /* renamed from: i */
    public boolean f15i;

    /* renamed from: j */
    public boolean f16j;

    /* renamed from: android.net.NetworkPolicy$a */
    /* loaded from: classes-dex2jar.jar:android/net/NetworkPolicy$a.class */
    static final class C0004a implements Parcelable.Creator<NetworkPolicy> {
        C0004a() {
        }

        /* renamed from: a */
        public NetworkPolicy createFromParcel(Parcel parcel) {
            return new NetworkPolicy(parcel);
        }

        /* renamed from: b */
        public NetworkPolicy[] newArray(int i) {
            return new NetworkPolicy[i];
        }
    }

    public NetworkPolicy(Parcel parcel) {
        this.f8b = (NetworkTemplate) parcel.readParcelable(null);
        this.f9c = parcel.readInt();
        this.f10d = parcel.readString();
        this.f11e = parcel.readLong();
        this.f12f = parcel.readLong();
        this.f13g = parcel.readLong();
        this.f14h = parcel.readLong();
        this.f15i = parcel.readInt() != 0;
        this.f16j = parcel.readInt() != 0;
    }

    /* renamed from: a */
    public int compareTo(NetworkPolicy networkPolicy) {
        if (networkPolicy != null) {
            long j = networkPolicy.f12f;
            if (j == -1) {
                return -1;
            }
            long j2 = this.f12f;
            return (j2 == -1 || j < j2) ? 1 : 0;
        }
        return -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof NetworkPolicy) {
            NetworkPolicy networkPolicy = (NetworkPolicy) obj;
            z = false;
            if (this.f9c == networkPolicy.f9c) {
                z = false;
                if (this.f11e == networkPolicy.f11e) {
                    z = false;
                    if (this.f12f == networkPolicy.f12f) {
                        z = false;
                        if (this.f13g == networkPolicy.f13g) {
                            z = false;
                            if (this.f14h == networkPolicy.f14h) {
                                z = false;
                                if (this.f15i == networkPolicy.f15i) {
                                    z = false;
                                    if (this.f16j == networkPolicy.f16j) {
                                        z = false;
                                        if (a.a(this.f10d, networkPolicy.f10d)) {
                                            z = false;
                                            if (a.a(this.f8b, networkPolicy.f8b)) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return a.b(new Object[]{this.f8b, Integer.valueOf(this.f9c), this.f10d, Long.valueOf(this.f11e), Long.valueOf(this.f12f), Long.valueOf(this.f13g), Long.valueOf(this.f14h), Boolean.valueOf(this.f15i), Boolean.valueOf(this.f16j)});
    }

    public String toString() {
        return "NetworkPolicy[" + this.f8b + "]: cycleDay=" + this.f9c + ", cycleTimezone=" + this.f10d + ", warningBytes=" + this.f11e + ", limitBytes=" + this.f12f + ", lastWarningSnooze=" + this.f13g + ", lastLimitSnooze=" + this.f14h + ", metered=" + this.f15i + ", inferred=" + this.f16j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f8b, i);
        parcel.writeInt(this.f9c);
        parcel.writeString(this.f10d);
        parcel.writeLong(this.f11e);
        parcel.writeLong(this.f12f);
        parcel.writeLong(this.f13g);
        parcel.writeLong(this.f14h);
        parcel.writeInt(this.f15i ? 1 : 0);
        parcel.writeInt(this.f16j ? 1 : 0);
    }
}
