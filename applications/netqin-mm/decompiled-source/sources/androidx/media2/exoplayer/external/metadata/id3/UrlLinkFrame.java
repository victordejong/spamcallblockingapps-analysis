package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame.class */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new C0314a();

    /* renamed from: b */
    public final String f1798b;

    /* renamed from: c */
    public final String f1799c;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.UrlLinkFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame$a.class */
    public class C0314a implements Parcelable.Creator<UrlLinkFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UrlLinkFrame(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            r0 = r5
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34479a(r0)
            r0 = r3
            r1 = r5
            java.lang.String r1 = (java.lang.String) r1
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f1798b = r1
            r0 = r4
            java.lang.String r0 = r0.readString()
            r4 = r0
            r0 = r4
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34479a(r0)
            r0 = r3
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
            r0.f1799c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.UrlLinkFrame.<init>(android.os.Parcel):void");
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f1798b = str2;
        this.f1799c = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        if (!this.f1785a.equals(urlLinkFrame.f1785a) || !C1167d0.m34478a((Object) this.f1798b, (Object) urlLinkFrame.f1798b) || !C1167d0.m34478a((Object) this.f1799c, (Object) urlLinkFrame.f1799c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f1785a.hashCode();
        String str = this.f1798b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f1799c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1799c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": url=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1785a);
        parcel.writeString(this.f1798b);
        parcel.writeString(this.f1799c);
    }
}
