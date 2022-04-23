package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/PrivateCommand.class */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C0315a();

    /* renamed from: a */
    public final long f1800a;

    /* renamed from: b */
    public final long f1801b;

    /* renamed from: c */
    public final byte[] f1802c;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.PrivateCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$a.class */
    public class C0315a implements Parcelable.Creator<PrivateCommand> {
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

    public PrivateCommand(long j, byte[] bArr, long j2) {
        this.f1800a = j2;
        this.f1801b = j;
        this.f1802c = bArr;
    }

    public PrivateCommand(Parcel parcel) {
        this.f1800a = parcel.readLong();
        this.f1801b = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        this.f1802c = bArr;
        parcel.readByteArray(bArr);
    }

    public /* synthetic */ PrivateCommand(Parcel parcel, C0315a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static PrivateCommand m38013a(C1184p pVar, int i, long j) {
        long t = pVar.m34342t();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        pVar.m34366a(bArr, 0, i2);
        return new PrivateCommand(t, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1800a);
        parcel.writeLong(this.f1801b);
        parcel.writeInt(this.f1802c.length);
        parcel.writeByteArray(this.f1802c);
    }
}
