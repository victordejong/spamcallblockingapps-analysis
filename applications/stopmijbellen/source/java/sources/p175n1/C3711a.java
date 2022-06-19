package p175n1;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.versionedparcelable.VersionedParcel;
import java.lang.reflect.Method;
import p226s.C4251a;
/* renamed from: n1.a */
/* loaded from: classes-dex2jar.jar:n1/a.class */
public class C3711a extends VersionedParcel {

    /* renamed from: d */
    public final SparseIntArray f12091d;

    /* renamed from: e */
    public final Parcel f12092e;

    /* renamed from: f */
    public final int f12093f;

    /* renamed from: g */
    public final int f12094g;

    /* renamed from: h */
    public final String f12095h;

    /* renamed from: i */
    public int f12096i;

    /* renamed from: j */
    public int f12097j;

    /* renamed from: k */
    public int f12098k;

    public C3711a(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C4251a(), new C4251a(), new C4251a());
    }

    public C3711a(Parcel parcel, int i, int i2, String str, C4251a<String, Method> c4251a, C4251a<String, Method> c4251a2, C4251a<String, Class> c4251a3) {
        super(c4251a, c4251a2, c4251a3);
        this.f12091d = new SparseIntArray();
        this.f12096i = -1;
        this.f12097j = 0;
        this.f12098k = -1;
        this.f12092e = parcel;
        this.f12093f = i;
        this.f12094g = i2;
        this.f12097j = i;
        this.f12095h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo1863a() {
        int i = this.f12096i;
        if (i >= 0) {
            int i2 = this.f12091d.get(i);
            int dataPosition = this.f12092e.dataPosition();
            this.f12092e.setDataPosition(i2);
            this.f12092e.writeInt(dataPosition - i2);
            this.f12092e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    public VersionedParcel mo1862b() {
        Parcel parcel = this.f12092e;
        int dataPosition = parcel.dataPosition();
        int i = this.f12097j;
        int i2 = i;
        if (i == this.f12093f) {
            i2 = this.f12094g;
        }
        return new C3711a(parcel, dataPosition, i2, C0082b.m8754h(new StringBuilder(), this.f12095h, "  "), this.f2611a, this.f2612b, this.f2613c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public boolean mo1861f() {
        return this.f12092e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public byte[] mo1860g() {
        int readInt = this.f12092e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f12092e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: h */
    public CharSequence mo1859h() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f12092e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public boolean mo1858i(int i) {
        while (true) {
            boolean z = true;
            if (this.f12097j >= this.f12094g) {
                if (this.f12098k != i) {
                    z = false;
                }
                return z;
            }
            int i2 = this.f12098k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f12092e.setDataPosition(this.f12097j);
            int readInt = this.f12092e.readInt();
            this.f12098k = this.f12092e.readInt();
            this.f12097j += readInt;
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: j */
    public int mo1857j() {
        return this.f12092e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: l */
    public <T extends Parcelable> T mo1856l() {
        return (T) this.f12092e.readParcelable(C3711a.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: n */
    public String mo1855n() {
        return this.f12092e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: p */
    public void mo1854p(int i) {
        mo1863a();
        this.f12096i = i;
        this.f12091d.put(i, this.f12092e.dataPosition());
        this.f12092e.writeInt(0);
        this.f12092e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: q */
    public void mo1853q(boolean z) {
        this.f12092e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: r */
    public void mo1852r(byte[] bArr) {
        if (bArr == null) {
            this.f12092e.writeInt(-1);
            return;
        }
        this.f12092e.writeInt(bArr.length);
        this.f12092e.writeByteArray(bArr);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: s */
    public void mo1851s(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f12092e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: t */
    public void mo1850t(int i) {
        this.f12092e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: u */
    public void mo1849u(Parcelable parcelable) {
        this.f12092e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: v */
    public void mo1848v(String str) {
        this.f12092e.writeString(str);
    }
}
