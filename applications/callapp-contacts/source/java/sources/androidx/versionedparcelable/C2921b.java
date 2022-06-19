package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.p023b.C0428a;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.versionedparcelable.b */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/b.class */
public final class C2921b extends VersionedParcel {

    /* renamed from: d */
    private final SparseIntArray f10953d;

    /* renamed from: e */
    private final Parcel f10954e;

    /* renamed from: f */
    private final int f10955f;

    /* renamed from: g */
    private final int f10956g;

    /* renamed from: h */
    private final String f10957h;

    /* renamed from: i */
    private int f10958i;

    /* renamed from: j */
    private int f10959j;

    /* renamed from: k */
    private int f10960k;

    public C2921b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0428a(), new C0428a(), new C0428a());
    }

    private C2921b(Parcel parcel, int i, int i2, String str, C0428a<String, Method> c0428a, C0428a<String, Method> c0428a2, C0428a<String, Class> c0428a3) {
        super(c0428a, c0428a2, c0428a3);
        this.f10953d = new SparseIntArray();
        this.f10958i = -1;
        this.f10959j = 0;
        this.f10960k = -1;
        this.f10954e = parcel;
        this.f10955f = i;
        this.f10956g = i2;
        this.f10959j = i;
        this.f10957h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39626a() {
        int i = this.f10958i;
        if (i >= 0) {
            int i2 = this.f10953d.get(i);
            int dataPosition = this.f10954e.dataPosition();
            this.f10954e.setDataPosition(i2);
            this.f10954e.writeInt(dataPosition - i2);
            this.f10954e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39625a(float f) {
        this.f10954e.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39624a(int i) {
        this.f10954e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39623a(long j) {
        this.f10954e.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39622a(Bundle bundle) {
        this.f10954e.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39621a(IBinder iBinder) {
        this.f10954e.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39620a(Parcelable parcelable) {
        this.f10954e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    protected final void mo39619a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f10954e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39618a(String str) {
        this.f10954e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39617a(boolean z) {
        this.f10954e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public final void mo39616a(byte[] bArr) {
        if (bArr == null) {
            this.f10954e.writeInt(-1);
            return;
        }
        this.f10954e.writeInt(bArr.length);
        this.f10954e.writeByteArray(bArr);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    protected final VersionedParcel mo39615b() {
        Parcel parcel = this.f10954e;
        int dataPosition = parcel.dataPosition();
        int i = this.f10959j;
        int i2 = i;
        if (i == this.f10955f) {
            i2 = this.f10956g;
        }
        return new C2921b(parcel, dataPosition, i2, this.f10957h + "  ", this.f10949a, this.f10950b, this.f10951c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public final boolean mo39614b(int i) {
        while (this.f10959j < this.f10956g) {
            int i2 = this.f10960k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f10954e.setDataPosition(this.f10959j);
            int readInt = this.f10954e.readInt();
            this.f10960k = this.f10954e.readInt();
            this.f10959j += readInt;
        }
        return this.f10960k == i;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    public final int mo39613c() {
        return this.f10954e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    public final void mo39612c(int i) {
        mo39626a();
        this.f10958i = i;
        this.f10953d.put(i, this.f10954e.dataPosition());
        mo39624a(0);
        mo39624a(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: d */
    public final long mo39611d() {
        return this.f10954e.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: e */
    public final float mo39610e() {
        return this.f10954e.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public final String mo39609f() {
        return this.f10954e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public final IBinder mo39608g() {
        return this.f10954e.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: h */
    public final byte[] mo39607h() {
        int readInt = this.f10954e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f10954e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    protected final CharSequence mo39606i() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f10954e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: j */
    public final <T extends Parcelable> T mo39605j() {
        return (T) this.f10954e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: k */
    public final Bundle mo39604k() {
        return this.f10954e.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: l */
    public final boolean mo39603l() {
        return this.f10954e.readInt() != 0;
    }
}
