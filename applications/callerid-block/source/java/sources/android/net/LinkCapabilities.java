package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:android/net/LinkCapabilities.class */
public class LinkCapabilities implements Parcelable {
    public static final Parcelable.Creator<LinkCapabilities> CREATOR = new C0002a();

    /* renamed from: b */
    private HashMap<Integer, String> f2b = new HashMap<>();

    /* renamed from: android.net.LinkCapabilities$a */
    /* loaded from: classes-dex2jar.jar:android/net/LinkCapabilities$a.class */
    static final class C0002a implements Parcelable.Creator<LinkCapabilities> {
        C0002a() {
        }

        /* renamed from: a */
        public LinkCapabilities createFromParcel(Parcel parcel) {
            LinkCapabilities linkCapabilities = new LinkCapabilities();
            for (int readInt = parcel.readInt(); readInt != 0; readInt--) {
                linkCapabilities.f2b.put(Integer.valueOf(parcel.readInt()), parcel.readString());
            }
            return linkCapabilities;
        }

        /* renamed from: b */
        public LinkCapabilities[] newArray(int i) {
            return new LinkCapabilities[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        Iterator<Map.Entry<Integer, String>> it = this.f2b.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<Integer, String> next = it.next();
            sb.append(next.getKey());
            sb.append(":\"");
            sb.append(next.getValue());
            sb.append("\"");
            return this.f2b.toString();
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2b.size());
        for (Map.Entry<Integer, String> entry : this.f2b.entrySet()) {
            parcel.writeInt(entry.getKey().intValue());
            parcel.writeString(entry.getValue());
        }
    }
}
