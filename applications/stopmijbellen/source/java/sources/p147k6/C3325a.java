package p147k6;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p015b0.C0713a;
import p180n6.C3729e;
import p191o6.C3924k;
import p191o6.EnumC3927l;
/* renamed from: k6.a */
/* loaded from: classes-dex2jar.jar:k6/a.class */
public class C3325a implements Parcelable {
    public static final Parcelable.Creator<C3325a> CREATOR = new C3326a();

    /* renamed from: a */
    public final String f11281a;

    /* renamed from: b */
    public final C3729e f11282b;

    /* renamed from: c */
    public boolean f11283c;

    /* renamed from: k6.a$a */
    /* loaded from: classes-dex2jar.jar:k6/a$a.class */
    public class C3326a implements Parcelable.Creator<C3325a> {
        @Override // android.os.Parcelable.Creator
        public C3325a createFromParcel(Parcel parcel) {
            return new C3325a(parcel, (C3326a) null);
        }

        @Override // android.os.Parcelable.Creator
        public C3325a[] newArray(int i) {
            return new C3325a[i];
        }
    }

    public C3325a(Parcel parcel, C3326a c3326a) {
        boolean z = false;
        this.f11283c = false;
        this.f11281a = parcel.readString();
        this.f11283c = parcel.readByte() != 0 ? true : z;
        this.f11282b = (C3729e) parcel.readParcelable(C3729e.class.getClassLoader());
    }

    public C3325a(String str, C0713a c0713a) {
        this.f11283c = false;
        this.f11281a = str;
        this.f11282b = new C3729e();
    }

    /* renamed from: b */
    public static C3924k[] m2375b(List<C3325a> list) {
        if (list.isEmpty()) {
            return null;
        }
        C3924k[] c3924kArr = new C3924k[list.size()];
        C3924k m2376a = list.get(0).m2376a();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            C3924k m2376a2 = list.get(i).m2376a();
            if (z || !list.get(i).f11283c) {
                c3924kArr[i] = m2376a2;
            } else {
                c3924kArr[0] = m2376a2;
                c3924kArr[i] = m2376a;
                z = true;
            }
        }
        if (!z) {
            c3924kArr[0] = m2376a;
        }
        return c3924kArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e8, code lost:
        if (r0.m3401p(r16) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x017a, code lost:
        if (r0 < r16) goto L43;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p147k6.C3325a m2374c() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p147k6.C3325a.m2374c():k6.a");
    }

    /* renamed from: a */
    public C3924k m2376a() {
        C3924k.C3926b m1626D = C3924k.m1626D();
        String str = this.f11281a;
        m1626D.m4282n();
        C3924k.m1624z((C3924k) m1626D.f7078b, str);
        if (this.f11283c) {
            EnumC3927l enumC3927l = EnumC3927l.GAUGES_AND_SYSTEM_EVENTS;
            m1626D.m4282n();
            C3924k.m1629A((C3924k) m1626D.f7078b, enumC3927l);
        }
        return m1626D.m4284l();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11281a);
        parcel.writeByte(this.f11283c ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f11282b, 0);
    }
}
