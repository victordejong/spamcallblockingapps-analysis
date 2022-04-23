package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand.class */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C7157a();

    /* renamed from: a */
    public final long f22198a;

    /* renamed from: b */
    public final long f22199b;

    /* renamed from: c */
    public final byte[] f22200c;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.PrivateCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand$a.class */
    public static final class C7157a implements Parcelable.Creator<PrivateCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    }

    public PrivateCommand(Parcel parcel) {
        this.f22198a = parcel.readLong();
        this.f22199b = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        this.f22200c = bArr;
        parcel.readByteArray(bArr);
    }

    public /* synthetic */ PrivateCommand(Parcel parcel, C7157a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f22198a);
        parcel.writeLong(this.f22199b);
        parcel.writeInt(this.f22200c.length);
        parcel.writeByteArray(this.f22200c);
    }
}
