package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand.class */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C5150a();

    /* renamed from: d */
    public final long f16175d;

    /* renamed from: e */
    public final long f16176e;

    /* renamed from: f */
    public final byte[] f16177f;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.PrivateCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand$a.class */
    static final class C5150a implements Parcelable.Creator<PrivateCommand> {
        C5150a() {
        }

        /* renamed from: a */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        /* renamed from: b */
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    }

    private PrivateCommand(long j, byte[] bArr, long j2) {
        this.f16175d = j2;
        this.f16176e = j;
        this.f16177f = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.f16175d = parcel.readLong();
        this.f16176e = parcel.readLong();
        this.f16177f = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    /* synthetic */ PrivateCommand(Parcel parcel, C5150a c5150a) {
        this(parcel);
    }

    /* renamed from: a */
    public static PrivateCommand m20314a(C5536v c5536v, int i, long j) {
        long m18691B = c5536v.m18691B();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        c5536v.m18671h(bArr, 0, i2);
        return new PrivateCommand(m18691B, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f16175d);
        parcel.writeLong(this.f16176e);
        parcel.writeByteArray(this.f16177f);
    }
}
