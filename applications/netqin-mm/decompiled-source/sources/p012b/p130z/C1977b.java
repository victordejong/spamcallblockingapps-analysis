package p012b.p130z;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.versionedparcelable.VersionedParcel;
import java.lang.reflect.Method;
import p012b.p035f.C0780a;
/* renamed from: b.z.b */
/* loaded from: classes-dex2jar.jar:b/z/b.class */
public class C1977b extends VersionedParcel {

    /* renamed from: d */
    public final SparseIntArray f7787d;

    /* renamed from: e */
    public final Parcel f7788e;

    /* renamed from: f */
    public final int f7789f;

    /* renamed from: g */
    public final int f7790g;

    /* renamed from: h */
    public final String f7791h;

    /* renamed from: i */
    public int f7792i;

    /* renamed from: j */
    public int f7793j;

    /* renamed from: k */
    public int f7794k;

    public C1977b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0780a(), new C0780a(), new C0780a());
    }

    public C1977b(Parcel parcel, int i, int i2, String str, C0780a<String, Method> aVar, C0780a<String, Method> aVar2, C0780a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f7787d = new SparseIntArray();
        this.f7792i = -1;
        this.f7793j = 0;
        this.f7794k = -1;
        this.f7788e = parcel;
        this.f7789f = i;
        this.f7790g = i2;
        this.f7793j = i;
        this.f7791h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31387a() {
        int i = this.f7792i;
        if (i >= 0) {
            int i2 = this.f7787d.get(i);
            int dataPosition = this.f7788e.dataPosition();
            this.f7788e.setDataPosition(i2);
            this.f7788e.writeInt(dataPosition - i2);
            this.f7788e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31386a(float f) {
        this.f7788e.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31384a(long j) {
        this.f7788e.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31383a(Bundle bundle) {
        this.f7788e.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31382a(IBinder iBinder) {
        this.f7788e.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31381a(Parcelable parcelable) {
        this.f7788e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31380a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f7788e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31379a(boolean z) {
        this.f7788e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo31378a(byte[] bArr) {
        if (bArr != null) {
            this.f7788e.writeInt(bArr.length);
            this.f7788e.writeByteArray(bArr);
            return;
        }
        this.f7788e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public boolean mo31385a(int i) {
        while (true) {
            boolean z = true;
            if (this.f7793j < this.f7790g) {
                int i2 = this.f7794k;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                this.f7788e.setDataPosition(this.f7793j);
                int readInt = this.f7788e.readInt();
                this.f7794k = this.f7788e.readInt();
                this.f7793j += readInt;
            } else {
                if (this.f7794k != i) {
                    z = false;
                }
                return z;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public VersionedParcel mo31377b() {
        Parcel parcel = this.f7788e;
        int dataPosition = parcel.dataPosition();
        int i = this.f7793j;
        int i2 = i;
        if (i == this.f7789f) {
            i2 = this.f7790g;
        }
        return new C1977b(parcel, dataPosition, i2, this.f7791h + "  ", this.f2801a, this.f2802b, this.f2803c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public void mo31376b(int i) {
        mo31387a();
        this.f7792i = i;
        this.f7787d.put(i, this.f7788e.dataPosition());
        mo31374c(0);
        mo31374c(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public void mo31375b(String str) {
        this.f7788e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: c */
    public void mo31374c(int i) {
        this.f7788e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: d */
    public boolean mo31373d() {
        return this.f7788e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: e */
    public Bundle mo31372e() {
        return this.f7788e.readBundle(C1977b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public byte[] mo31371f() {
        int readInt = this.f7788e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f7788e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public CharSequence mo31370g() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f7788e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: h */
    public float mo31369h() {
        return this.f7788e.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public int mo31368i() {
        return this.f7788e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: j */
    public long mo31367j() {
        return this.f7788e.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: k */
    public <T extends Parcelable> T mo31366k() {
        return (T) this.f7788e.readParcelable(C1977b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: m */
    public String mo31365m() {
        return this.f7788e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: n */
    public IBinder mo31364n() {
        return this.f7788e.readStrongBinder();
    }
}
