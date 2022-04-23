package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.b.a;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/b.class */
final class b extends VersionedParcel {

    /* renamed from: d  reason: collision with root package name */
    private final SparseIntArray f5867d;
    private final Parcel e;
    private final int f;
    private final int g;
    private final String h;
    private int i;
    private int j;
    private int k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new a(), new a(), new a());
    }

    private b(Parcel parcel, int i, int i2, String str, a<String, Method> aVar, a<String, Method> aVar2, a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f5867d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.f5867d.get(i);
            int dataPosition = this.e.dataPosition();
            this.e.setDataPosition(i2);
            this.e.writeInt(dataPosition - i2);
            this.e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(float f) {
        this.e.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(int i) {
        this.e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(long j) {
        this.e.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(Bundle bundle) {
        this.e.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(IBinder iBinder) {
        this.e.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected final void a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(String str) {
        this.e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a(byte[] bArr) {
        if (bArr != null) {
            this.e.writeInt(bArr.length);
            this.e.writeByteArray(bArr);
            return;
        }
        this.e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected final VersionedParcel b() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        int i2 = i;
        if (i == this.f) {
            i2 = this.g;
        }
        return new b(parcel, dataPosition, i2, this.h + "  ", this.f5863a, this.f5864b, this.f5865c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean b(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int readInt = this.e.readInt();
            this.k = this.e.readInt();
            this.j += readInt;
        }
        return this.k == i;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final int c() {
        return this.e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void c(int i) {
        a();
        this.i = i;
        this.f5867d.put(i, this.e.dataPosition());
        a(0);
        a(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final long d() {
        return this.e.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final float e() {
        return this.e.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final String f() {
        return this.e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final IBinder g() {
        return this.e.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final byte[] h() {
        int readInt = this.e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected final CharSequence i() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final <T extends Parcelable> T j() {
        return (T) this.e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final Bundle k() {
        return this.e.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean l() {
        return this.e.readInt() != 0;
    }
}
