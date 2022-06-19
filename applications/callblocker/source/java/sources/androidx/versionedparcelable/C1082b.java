package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.p013b.C0373a;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.versionedparcelable.b */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/b.class */
public class C1082b extends VersionedParcel {

    /* renamed from: d */
    private final SparseIntArray f3701d;

    /* renamed from: e */
    private final Parcel f3702e;

    /* renamed from: f */
    private final int f3703f;

    /* renamed from: g */
    private final int f3704g;

    /* renamed from: h */
    private final String f3705h;

    /* renamed from: i */
    private int f3706i;

    /* renamed from: j */
    private int f3707j;

    /* renamed from: k */
    private int f3708k;

    public C1082b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0373a(), new C0373a(), new C0373a());
    }

    private C1082b(Parcel parcel, int i, int i2, String str, C0373a<String, Method> c0373a, C0373a<String, Method> c0373a2, C0373a<String, Class> c0373a3) {
        super(c0373a, c0373a2, c0373a3);
        this.f3701d = new SparseIntArray();
        this.f3706i = -1;
        this.f3707j = 0;
        this.f3708k = -1;
        this.f3702e = parcel;
        this.f3703f = i;
        this.f3704g = i2;
        this.f3707j = this.f3703f;
        this.f3705h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo18129a(int i) {
        this.f3702e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo18128a(Parcelable parcelable) {
        this.f3702e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    protected void mo18127a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3702e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo18126a(String str) {
        this.f3702e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo18125a(boolean z) {
        this.f3702e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo18124a(byte[] bArr) {
        if (bArr == null) {
            this.f3702e.writeInt(-1);
            return;
        }
        this.f3702e.writeInt(bArr.length);
        this.f3702e.writeByteArray(bArr);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public void mo18123b() {
        if (this.f3706i >= 0) {
            int i = this.f3701d.get(this.f3706i);
            int dataPosition = this.f3702e.dataPosition();
            this.f3702e.setDataPosition(i);
            this.f3702e.writeInt(dataPosition - i);
            this.f3702e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public boolean mo18122b(int i) {
        boolean z = true;
        while (true) {
            if (this.f3707j < this.f3704g) {
                if (this.f3708k == i) {
                    break;
                } else if (String.valueOf(this.f3708k).compareTo(String.valueOf(i)) > 0) {
                    z = false;
                    break;
                } else {
                    this.f3702e.setDataPosition(this.f3707j);
                    int readInt = this.f3702e.readInt();
                    this.f3708k = this.f3702e.readInt();
                    this.f3707j = readInt + this.f3707j;
                }
            } else if (this.f3708k != i) {
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    protected VersionedParcel mo18121c() {
        return new C1082b(this.f3702e, this.f3702e.dataPosition(), this.f3707j == this.f3703f ? this.f3704g : this.f3707j, this.f3705h + "  ", this.f3698a, this.f3699b, this.f3700c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    public void mo18120c(int i) {
        mo18123b();
        this.f3706i = i;
        this.f3701d.put(i, this.f3702e.dataPosition());
        mo18129a(0);
        mo18129a(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: d */
    public int mo18119d() {
        return this.f3702e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: e */
    public String mo18118e() {
        return this.f3702e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public byte[] mo18117f() {
        byte[] bArr;
        int readInt = this.f3702e.readInt();
        if (readInt < 0) {
            bArr = null;
        } else {
            bArr = new byte[readInt];
            this.f3702e.readByteArray(bArr);
        }
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    protected CharSequence mo18116g() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3702e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: h */
    public <T extends Parcelable> T mo18115h() {
        return (T) this.f3702e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public boolean mo18114i() {
        return this.f3702e.readInt() != 0;
    }
}
