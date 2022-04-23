package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcelParcel.class */
class VersionedParcelParcel extends VersionedParcel {

    /* renamed from: d */
    private final SparseIntArray f5441d;

    /* renamed from: e */
    private final Parcel f5442e;

    /* renamed from: f */
    private final int f5443f;

    /* renamed from: g */
    private final int f5444g;

    /* renamed from: h */
    private final String f5445h;

    /* renamed from: i */
    private int f5446i;

    /* renamed from: j */
    private int f5447j;

    /* renamed from: k */
    private int f5448k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VersionedParcelParcel(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    private VersionedParcelParcel(Parcel parcel, int i, int i2, String str, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f5441d = new SparseIntArray();
        this.f5446i = -1;
        this.f5447j = 0;
        this.f5448k = -1;
        this.f5442e = parcel;
        this.f5443f = i;
        this.f5444g = i2;
        this.f5447j = i;
        this.f5445h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: A */
    public void mo16554A(byte[] bArr) {
        if (bArr != null) {
            this.f5442e.writeInt(bArr.length);
            this.f5442e.writeByteArray(bArr);
            return;
        }
        this.f5442e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: C */
    protected void mo16553C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f5442e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: E */
    public void mo16552E(int i) {
        this.f5442e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: G */
    public void mo16551G(Parcelable parcelable) {
        this.f5442e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: I */
    public void mo16550I(String str) {
        this.f5442e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo16549a() {
        int i = this.f5446i;
        if (i >= 0) {
            int i2 = this.f5441d.get(i);
            int dataPosition = this.f5442e.dataPosition();
            this.f5442e.setDataPosition(i2);
            this.f5442e.writeInt(dataPosition - i2);
            this.f5442e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    protected VersionedParcel mo16548b() {
        Parcel parcel = this.f5442e;
        int dataPosition = parcel.dataPosition();
        int i = this.f5447j;
        int i2 = i;
        if (i == this.f5443f) {
            i2 = this.f5444g;
        }
        return new VersionedParcelParcel(parcel, dataPosition, i2, this.f5445h + "  ", this.f5438a, this.f5439b, this.f5440c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public boolean mo16546g() {
        return this.f5442e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public byte[] mo16545i() {
        int readInt = this.f5442e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f5442e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: k */
    protected CharSequence mo16544k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f5442e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: m */
    public boolean mo16543m(int i) {
        while (true) {
            boolean z = true;
            if (this.f5447j < this.f5444g) {
                int i2 = this.f5448k;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                this.f5442e.setDataPosition(this.f5447j);
                int readInt = this.f5442e.readInt();
                this.f5448k = this.f5442e.readInt();
                this.f5447j += readInt;
            } else {
                if (this.f5448k != i) {
                    z = false;
                }
                return z;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: o */
    public int mo16542o() {
        return this.f5442e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: q */
    public <T extends Parcelable> T mo16541q() {
        return (T) this.f5442e.readParcelable(VersionedParcelParcel.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: s */
    public String mo16540s() {
        return this.f5442e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: w */
    public void mo16539w(int i) {
        mo16549a();
        this.f5446i = i;
        this.f5441d.put(i, this.f5442e.dataPosition());
        mo16552E(0);
        mo16552E(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: y */
    public void mo16537y(boolean z) {
        this.f5442e.writeInt(z ? 1 : 0);
    }
}
