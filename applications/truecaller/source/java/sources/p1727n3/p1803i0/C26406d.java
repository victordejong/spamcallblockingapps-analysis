package p1727n3.p1803i0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i0.d */
/* loaded from: classes-dex2jar.jar:n3/i0/d.class */
public class C26406d extends AbstractC26405c {

    /* renamed from: d */
    public final SparseIntArray f74016d;

    /* renamed from: e */
    public final Parcel f74017e;

    /* renamed from: f */
    public final int f74018f;

    /* renamed from: g */
    public final int f74019g;

    /* renamed from: h */
    public final String f74020h;

    /* renamed from: i */
    public int f74021i;

    /* renamed from: j */
    public int f74022j;

    /* renamed from: k */
    public int f74023k;

    public C26406d(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C26174a(), new C26174a(), new C26174a());
    }

    public C26406d(Parcel parcel, int i, int i2, String str, C26174a<String, Method> c26174a, C26174a<String, Method> c26174a2, C26174a<String, Class> c26174a3) {
        super(c26174a, c26174a2, c26174a3);
        this.f74016d = new SparseIntArray();
        this.f74021i = -1;
        this.f74022j = 0;
        this.f74023k = -1;
        this.f74017e = parcel;
        this.f74018f = i;
        this.f74019g = i2;
        this.f74022j = i;
        this.f74020h = str;
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: B */
    public void mo1922B(int i) {
        mo1911a();
        this.f74021i = i;
        this.f74016d.put(i, this.f74017e.dataPosition());
        this.f74017e.writeInt(0);
        this.f74017e.writeInt(i);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: C */
    public void mo1921C(boolean z) {
        this.f74017e.writeInt(z ? 1 : 0);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: D */
    public void mo1920D(Bundle bundle) {
        this.f74017e.writeBundle(bundle);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: E */
    public void mo1919E(byte[] bArr) {
        if (bArr == null) {
            this.f74017e.writeInt(-1);
            return;
        }
        this.f74017e.writeInt(bArr.length);
        this.f74017e.writeByteArray(bArr);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: F */
    public void mo1918F(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f74017e, 0);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: H */
    public void mo1917H(float f) {
        this.f74017e.writeFloat(f);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: I */
    public void mo1916I(int i) {
        this.f74017e.writeInt(i);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: J */
    public void mo1915J(long j) {
        this.f74017e.writeLong(j);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: K */
    public void mo1914K(Parcelable parcelable) {
        this.f74017e.writeParcelable(parcelable, 0);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: L */
    public void mo1913L(String str) {
        this.f74017e.writeString(str);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: M */
    public void mo1912M(IBinder iBinder) {
        this.f74017e.writeStrongBinder(iBinder);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: a */
    public void mo1911a() {
        int i = this.f74021i;
        if (i >= 0) {
            int i2 = this.f74016d.get(i);
            int dataPosition = this.f74017e.dataPosition();
            this.f74017e.setDataPosition(i2);
            this.f74017e.writeInt(dataPosition - i2);
            this.f74017e.setDataPosition(dataPosition);
        }
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: b */
    public AbstractC26405c mo1910b() {
        Parcel parcel = this.f74017e;
        int dataPosition = parcel.dataPosition();
        int i = this.f74022j;
        int i2 = i;
        if (i == this.f74018f) {
            i2 = this.f74019g;
        }
        return new C26406d(parcel, dataPosition, i2, C22128a.m8618h(new StringBuilder(), this.f74020h, "  "), this.f74013a, this.f74014b, this.f74015c);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: f */
    public boolean mo1909f() {
        return this.f74017e.readInt() != 0;
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: h */
    public Bundle mo1908h() {
        return this.f74017e.readBundle(C26406d.class.getClassLoader());
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: j */
    public byte[] mo1907j() {
        int readInt = this.f74017e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f74017e.readByteArray(bArr);
        return bArr;
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: k */
    public CharSequence mo1906k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f74017e);
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: n */
    public boolean mo1905n(int i) {
        while (true) {
            boolean z = true;
            if (this.f74022j >= this.f74019g) {
                if (this.f74023k != i) {
                    z = false;
                }
                return z;
            }
            int i2 = this.f74023k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f74017e.setDataPosition(this.f74022j);
            int readInt = this.f74017e.readInt();
            this.f74023k = this.f74017e.readInt();
            this.f74022j += readInt;
        }
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: o */
    public float mo1904o() {
        return this.f74017e.readFloat();
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: q */
    public int mo1903q() {
        return this.f74017e.readInt();
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: s */
    public long mo1902s() {
        return this.f74017e.readLong();
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: u */
    public <T extends Parcelable> T mo1901u() {
        return (T) this.f74017e.readParcelable(C26406d.class.getClassLoader());
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: w */
    public String mo1900w() {
        return this.f74017e.readString();
    }

    @Override // p1727n3.p1803i0.AbstractC26405c
    /* renamed from: y */
    public IBinder mo1899y() {
        return this.f74017e.readStrongBinder();
    }
}
