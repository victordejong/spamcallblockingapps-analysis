package com.google.firebase.perf.session;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.PerfSession;
import com.google.protobuf.GeneratedMessageLite;
import e.m.d.z.n.a;
import e.m.d.z.o.f;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/session/PerfSession.class */
public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new C2183a();

    /* renamed from: a */
    public final String f7073a;

    /* renamed from: b */
    public final Timer f7074b;

    /* renamed from: c */
    public boolean f7075c;

    /* renamed from: com.google.firebase.perf.session.PerfSession$a */
    /* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/session/PerfSession$a.class */
    public class C2183a implements Parcelable.Creator<PerfSession> {
        @Override // android.os.Parcelable.Creator
        public PerfSession createFromParcel(Parcel parcel) {
            return new PerfSession(parcel, (C2183a) null);
        }

        @Override // android.os.Parcelable.Creator
        public PerfSession[] newArray(int i) {
            return new PerfSession[i];
        }
    }

    public PerfSession(Parcel parcel, C2183a c2183a) {
        boolean z = false;
        this.f7075c = false;
        this.f7073a = parcel.readString();
        this.f7075c = parcel.readByte() != 0 ? true : z;
        this.f7074b = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }

    public PerfSession(String str, a aVar) {
        this.f7075c = false;
        this.f7073a = str;
        this.f7074b = new Timer();
    }

    /* renamed from: b */
    public static com.google.firebase.perf.v1.PerfSession[] m38301b(List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        com.google.firebase.perf.v1.PerfSession[] perfSessionArr = new com.google.firebase.perf.v1.PerfSession[list.size()];
        com.google.firebase.perf.v1.PerfSession m38302a = list.get(0).m38302a();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            com.google.firebase.perf.v1.PerfSession m38302a2 = list.get(i).m38302a();
            if (z || !list.get(i).f7075c) {
                perfSessionArr[i] = m38302a2;
            } else {
                perfSessionArr[0] = m38302a2;
                perfSessionArr[i] = m38302a;
                z = true;
            }
        }
        if (!z) {
            perfSessionArr[0] = m38302a;
        }
        return perfSessionArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e8, code lost:
        if (r0.p(r16) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x017a, code lost:
        if (r0 < r16) goto L43;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.perf.session.PerfSession m38300c() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.session.PerfSession.m38300c():com.google.firebase.perf.session.PerfSession");
    }

    /* renamed from: a */
    public com.google.firebase.perf.v1.PerfSession m38302a() {
        PerfSession.b newBuilder = com.google.firebase.perf.v1.PerfSession.newBuilder();
        String str = this.f7073a;
        newBuilder.copyOnWrite();
        com.google.firebase.perf.v1.PerfSession.access$100(((GeneratedMessageLite.Builder) newBuilder).instance, str);
        if (this.f7075c) {
            f fVar = f.c;
            newBuilder.copyOnWrite();
            com.google.firebase.perf.v1.PerfSession.access$500(((GeneratedMessageLite.Builder) newBuilder).instance, fVar);
        }
        return newBuilder.build();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f7073a);
        parcel.writeByte(this.f7075c ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f7074b, 0);
    }
}
