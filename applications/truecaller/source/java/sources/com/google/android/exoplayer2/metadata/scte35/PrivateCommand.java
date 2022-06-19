package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand.class */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C1988a();

    /* renamed from: a */
    public final long f4954a;

    /* renamed from: b */
    public final long f4955b;

    /* renamed from: c */
    public final byte[] f4956c;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.PrivateCommand$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand$a.class */
    public static final class C1988a implements Parcelable.Creator<PrivateCommand> {
        @Override // android.os.Parcelable.Creator
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    }

    public PrivateCommand(long j, byte[] bArr, long j2) {
        this.f4954a = j2;
        this.f4955b = j;
        this.f4956c = bArr;
    }

    public PrivateCommand(Parcel parcel, C1988a c1988a) {
        this.f4954a = parcel.readLong();
        this.f4955b = parcel.readLong();
        byte[] createByteArray = parcel.createByteArray();
        int i = C24773d0.f69427a;
        this.f4956c = createByteArray;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f4954a);
        parcel.writeLong(this.f4955b);
        parcel.writeByteArray(this.f4956c);
    }
}
