package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.p014c.C0374a;
import java.lang.reflect.Method;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
class C1084a extends VersionedParcel {

    /* renamed from: d */
    private final SparseIntArray f3400d;

    /* renamed from: e */
    private final Parcel f3401e;

    /* renamed from: f */
    private final int f3402f;

    /* renamed from: g */
    private final int f3403g;

    /* renamed from: h */
    private final String f3404h;

    /* renamed from: i */
    private int f3405i;

    /* renamed from: j */
    private int f3406j;

    /* renamed from: k */
    private int f3407k;

    public C1084a(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0374a(), new C0374a(), new C0374a());
    }

    private C1084a(Parcel parcel, int i, int i2, String str, C0374a<String, Method> c0374a, C0374a<String, Method> c0374a2, C0374a<String, Class> c0374a3) {
        super(c0374a, c0374a2, c0374a3);
        this.f3400d = new SparseIntArray();
        this.f3405i = -1;
        this.f3406j = 0;
        this.f3407k = -1;
        this.f3401e = parcel;
        this.f3402f = i;
        this.f3403g = i2;
        this.f3406j = this.f3402f;
        this.f3404h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo4351a(int i) {
        this.f3401e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo4350a(Parcelable parcelable) {
        this.f3401e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    protected void mo4349a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3401e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo4348a(String str) {
        this.f3401e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo4347a(boolean z) {
        this.f3401e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo4346a(byte[] bArr) {
        if (bArr == null) {
            this.f3401e.writeInt(-1);
            return;
        }
        this.f3401e.writeInt(bArr.length);
        this.f3401e.writeByteArray(bArr);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public void mo4345b() {
        int i = this.f3405i;
        if (i >= 0) {
            int i2 = this.f3400d.get(i);
            int dataPosition = this.f3401e.dataPosition();
            this.f3401e.setDataPosition(i2);
            this.f3401e.writeInt(dataPosition - i2);
            this.f3401e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public boolean mo4344b(int i) {
        while (true) {
            boolean z = true;
            if (this.f3406j >= this.f3403g) {
                if (this.f3407k != i) {
                    z = false;
                }
                return z;
            }
            int i2 = this.f3407k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f3401e.setDataPosition(this.f3406j);
            int readInt = this.f3401e.readInt();
            this.f3407k = this.f3401e.readInt();
            this.f3406j += readInt;
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    protected VersionedParcel mo4343c() {
        Parcel parcel = this.f3401e;
        int dataPosition = parcel.dataPosition();
        int i = this.f3406j;
        int i2 = i;
        if (i == this.f3402f) {
            i2 = this.f3403g;
        }
        return new C1084a(parcel, dataPosition, i2, this.f3404h + "  ", this.f3397a, this.f3398b, this.f3399c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    public void mo4342c(int i) {
        mo4345b();
        this.f3405i = i;
        this.f3400d.put(i, this.f3401e.dataPosition());
        mo4351a(0);
        mo4351a(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: d */
    public int mo4341d() {
        return this.f3401e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: e */
    public String mo4340e() {
        return this.f3401e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public byte[] mo4339f() {
        int readInt = this.f3401e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f3401e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    protected CharSequence mo4338g() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3401e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: h */
    public <T extends Parcelable> T mo4337h() {
        return (T) this.f3401e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public boolean mo4336i() {
        return this.f3401e.readInt() != 0;
    }
}
