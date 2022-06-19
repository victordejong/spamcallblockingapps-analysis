package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;
import p020b.p036e.C1489a;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
class C1178a extends VersionedParcel {

    /* renamed from: d */
    private final SparseIntArray f5006d;

    /* renamed from: e */
    private final Parcel f5007e;

    /* renamed from: f */
    private final int f5008f;

    /* renamed from: g */
    private final int f5009g;

    /* renamed from: h */
    private final String f5010h;

    /* renamed from: i */
    private int f5011i;

    /* renamed from: j */
    private int f5012j;

    /* renamed from: k */
    private int f5013k;

    public C1178a(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C1489a(), new C1489a(), new C1489a());
    }

    private C1178a(Parcel parcel, int i, int i2, String str, C1489a<String, Method> c1489a, C1489a<String, Method> c1489a2, C1489a<String, Class> c1489a3) {
        super(c1489a, c1489a2, c1489a3);
        this.f5006d = new SparseIntArray();
        this.f5011i = -1;
        this.f5012j = 0;
        this.f5013k = -1;
        this.f5007e = parcel;
        this.f5008f = i;
        this.f5009g = i2;
        this.f5012j = i;
        this.f5010h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: A */
    public void mo30787A(byte[] bArr) {
        if (bArr == null) {
            this.f5007e.writeInt(-1);
            return;
        }
        this.f5007e.writeInt(bArr.length);
        this.f5007e.writeByteArray(bArr);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: C */
    protected void mo30786C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f5007e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: E */
    public void mo30785E(int i) {
        this.f5007e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: G */
    public void mo30784G(Parcelable parcelable) {
        this.f5007e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: I */
    public void mo30783I(String str) {
        this.f5007e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo30782a() {
        int i = this.f5011i;
        if (i >= 0) {
            int i2 = this.f5006d.get(i);
            int dataPosition = this.f5007e.dataPosition();
            this.f5007e.setDataPosition(i2);
            this.f5007e.writeInt(dataPosition - i2);
            this.f5007e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    protected VersionedParcel mo30781b() {
        Parcel parcel = this.f5007e;
        int dataPosition = parcel.dataPosition();
        int i = this.f5012j;
        int i2 = i;
        if (i == this.f5008f) {
            i2 = this.f5009g;
        }
        return new C1178a(parcel, dataPosition, i2, this.f5010h + "  ", this.f5003a, this.f5004b, this.f5005c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public boolean mo30780g() {
        return this.f5007e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public byte[] mo30779i() {
        int readInt = this.f5007e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f5007e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: k */
    protected CharSequence mo30778k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f5007e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: m */
    public boolean mo30777m(int i) {
        while (true) {
            boolean z = true;
            if (this.f5012j >= this.f5009g) {
                if (this.f5013k != i) {
                    z = false;
                }
                return z;
            }
            int i2 = this.f5013k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f5007e.setDataPosition(this.f5012j);
            int readInt = this.f5007e.readInt();
            this.f5013k = this.f5007e.readInt();
            this.f5012j += readInt;
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: o */
    public int mo30776o() {
        return this.f5007e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: q */
    public <T extends Parcelable> T mo30775q() {
        return (T) this.f5007e.readParcelable(C1178a.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: s */
    public String mo30774s() {
        return this.f5007e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: w */
    public void mo30773w(int i) {
        mo30782a();
        this.f5011i = i;
        this.f5006d.put(i, this.f5007e.dataPosition());
        mo30785E(0);
        mo30785E(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: y */
    public void mo30772y(boolean z) {
        this.f5007e.writeInt(z ? 1 : 0);
    }
}
