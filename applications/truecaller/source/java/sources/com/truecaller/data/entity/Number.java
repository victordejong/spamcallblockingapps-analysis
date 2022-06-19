package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import e.m.f.a.p;
import java.util.Collections;
import java.util.Locale;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
import w3.c.a.a.a.h;
import w3.c.a.a.a.k.a;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Number.class */
public class Number extends RowEntity<ContactDto.Contact.PhoneNumber> implements AbstractC16497e {

    /* renamed from: c */
    public static String f11563c;

    /* renamed from: a */
    public int f11564a;

    /* renamed from: b */
    public static final int[] f11562b = {2, 17, 1, 3, 7};
    public static final Parcelable.Creator<Number> CREATOR = new C3835a();

    /* renamed from: com.truecaller.data.entity.Number$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Number$a.class */
    public class C3835a implements Parcelable.Creator<Number> {
        @Override // android.os.Parcelable.Creator
        public Number createFromParcel(Parcel parcel) {
            return new Number(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Number[] newArray(int i) {
            return new Number[i];
        }
    }

    public Number() {
        super(new ContactDto.Contact.PhoneNumber());
    }

    public Number(Parcel parcel) {
        super(parcel);
        this.f11564a = parcel.readInt();
    }

    public Number(ContactDto.Contact.PhoneNumber phoneNumber) {
        super(phoneNumber);
    }

    public Number(Number number) {
        super(new ContactDto.Contact.PhoneNumber(number.row()));
        this.f11564a = number.f11564a;
    }

    public Number(String str, String str2) {
        this();
        ((ContactDto.Contact.PhoneNumber) this.mRow).rawNumberFormat = str;
        j m35474k = m35474k(str2);
        p pVar = p.c;
        String m13810G = C19231g0.m13810G(str2, f11563c);
        if (m35474k == null || TextUtils.isEmpty(m13810G)) {
            ContactDto.Contact.PhoneNumber phoneNumber = (ContactDto.Contact.PhoneNumber) this.mRow;
            phoneNumber.e164Format = str;
            phoneNumber.countryCode = str2;
            return;
        }
        if (!Collections.unmodifiableSet(m35474k.f).contains(m13810G)) {
            AssertionUtil.reportWeirdnessButNeverCrash("Invalid country iso: " + m13810G);
            ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format = str;
        }
        try {
            if (pVar.a(str, m13810G)) {
                RT rt = this.mRow;
                ((ContactDto.Contact.PhoneNumber) rt).e164Format = str;
                ((ContactDto.Contact.PhoneNumber) rt).nationalFormat = str;
                m35465v(j.d.c);
            } else {
                o R = m35474k.R(str, m13810G);
                if (!pVar.b(R) && m35474k.G(R)) {
                    if (m35474k.H(R, m35474k.z(R))) {
                        m35466t(m35474k.i(R, j.c.a));
                        m35467s(m35474k.i(R, j.c.c));
                    } else {
                        RT rt2 = this.mRow;
                        ((ContactDto.Contact.PhoneNumber) rt2).e164Format = str;
                        ((ContactDto.Contact.PhoneNumber) rt2).nationalFormat = str;
                    }
                    ((ContactDto.Contact.PhoneNumber) this.mRow).dialingCode = String.valueOf(R.b);
                    m35465v(m35474k.w(R));
                }
                RT rt3 = this.mRow;
                ((ContactDto.Contact.PhoneNumber) rt3).e164Format = str;
                ((ContactDto.Contact.PhoneNumber) rt3).nationalFormat = str;
                ((ContactDto.Contact.PhoneNumber) this.mRow).dialingCode = String.valueOf(R.b);
                m35465v(m35474k.w(R));
            }
            CountryListDto.C3679a m28287b = C8588j.m28287b(m35479e());
            if (m28287b == null) {
                setCountryCode(m13810G);
            } else {
                setCountryCode(h.z(m28287b.f10912c, Locale.ENGLISH));
            }
        } catch (e e) {
            ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format = str;
            e.getMessage();
        }
    }

    /* renamed from: a */
    public static Number m35483a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
            Number number = !TextUtils.isEmpty(str) ? new Number(str, null) : new Number(str2, str3);
            number.m35466t((String) h.c(str, number.m35479e()));
            number.m35464w((String) h.c(str2, number.m35473l()));
            number.setCountryCode((String) h.c(str3, number.getCountryCode()));
            return number;
        }
        return null;
    }

    /* renamed from: k */
    public static j m35474k(String str) {
        if (f11563c == null) {
            if (TextUtils.isEmpty(str)) {
                str = AbstractApplicationC8442a.m28551L().m28543T();
            }
            if (h.j(str)) {
                return null;
            }
            f11563c = str.toUpperCase();
        }
        return j.q();
    }

    /* renamed from: b */
    public String m35482b() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).carrier;
    }

    /* renamed from: c */
    public String m35481c() {
        Throwable e;
        if (!TextUtils.isEmpty(m35482b())) {
            return m35482b();
        }
        j m35474k = m35474k(null);
        if (m35474k == null || TextUtils.isEmpty(m35479e())) {
            return null;
        }
        try {
            String b = e.m.f.a.h.a().b(m35474k.R(m35479e(), getCountryCode()), Locale.getDefault());
            if (h.j(b)) {
                return null;
            }
            return b;
        } catch (Exception e2) {
            e = e2;
            AssertionUtil.shouldNeverHappen(e, new String[0]);
            return null;
        } catch (OutOfMemoryError e3) {
            e = e3;
            AssertionUtil.shouldNeverHappen(e, new String[0]);
            return null;
        } catch (e e4) {
            return null;
        }
    }

    /* renamed from: d */
    public String m35480d() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).nationalFormat;
    }

    /* renamed from: e */
    public String m35479e() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format;
    }

    /* renamed from: f */
    public String m35478f() {
        return h.w(((ContactDto.Contact.PhoneNumber) this.mRow).e164Format, "+") ? ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format.substring(1) : ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format;
    }

    /* renamed from: g */
    public String m35477g() {
        String m35473l = m35473l();
        if (m35473l == null || !C8574c0.f26392c.matcher(m35473l).find()) {
            if (f11563c != null && getCountryCode() != null) {
                if (!h.j(m35480d()) && f11563c.contains(getCountryCode())) {
                    return m35480d();
                }
                if (!TextUtils.isEmpty(m35479e()) && !f11563c.contains(getCountryCode())) {
                    String m35479e = m35479e();
                    try {
                        m35479e = C8572b0.m28375d(m35479e, AbstractApplicationC8442a.m28551L().m28543T(), j.c.b);
                    } catch (e e) {
                    }
                    return m35479e;
                }
            }
            String m35479e2 = m35479e();
            String str = m35473l;
            if (m35473l == null) {
                str = m35479e2;
            }
            return str;
        }
        return m35473l;
    }

    public String getCountryCode() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).countryCode;
    }

    @Override // com.truecaller.data.entity.RowEntity
    public int getSource() {
        return this.f11564a;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public String getTcId() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).f11492id;
    }

    /* renamed from: h */
    public String m35476h() {
        if (C8574c0.m28351h(m35473l())) {
            return m35473l();
        }
        if (C8574c0.m28351h(m35479e())) {
            return m35479e();
        }
        if (!C8574c0.m28351h(m35480d())) {
            return null;
        }
        return m35480d();
    }

    /* renamed from: i */
    public j.d m35475i() {
        return C8574c0.m28347l(((ContactDto.Contact.PhoneNumber) this.mRow).numberType, j.d.l);
    }

    /* renamed from: l */
    public String m35473l() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).rawNumberFormat;
    }

    /* renamed from: m */
    public int m35472m() {
        return a.g(((ContactDto.Contact.PhoneNumber) this.mRow).spamScore);
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16497e
    public boolean mergeEquals(AbstractC16497e abstractC16497e) {
        if (this == abstractC16497e) {
            return true;
        }
        if (abstractC16497e instanceof Number) {
            return TextUtils.equals(m35479e(), ((Number) abstractC16497e).m35479e());
        }
        return false;
    }

    /* renamed from: n */
    public String m35471n() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).spamType;
    }

    /* renamed from: o */
    public int m35470o() {
        return a.g(((ContactDto.Contact.PhoneNumber) this.mRow).telType);
    }

    /* renamed from: p */
    public String m35469p() {
        return ((ContactDto.Contact.PhoneNumber) this.mRow).telTypeLabel;
    }

    /* renamed from: r */
    public boolean m35468r() {
        return C8574c0.m28353f(m35473l()) && C8574c0.m28353f(m35479e()) && C8574c0.m28353f(m35480d());
    }

    /* renamed from: s */
    public void m35467s(String str) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).nationalFormat = str;
    }

    public void setCountryCode(String str) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).countryCode = str;
    }

    @Override // com.truecaller.data.entity.RowEntity
    public void setSource(int i) {
        this.f11564a = i;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public void setTcId(String str) {
        super.setTcId(str);
        ((ContactDto.Contact.PhoneNumber) this.mRow).f11492id = str;
    }

    /* renamed from: t */
    public void m35466t(String str) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).e164Format = str;
    }

    /* renamed from: v */
    public void m35465v(j.d dVar) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).numberType = dVar == null ? null : dVar.toString();
    }

    /* renamed from: w */
    public void m35464w(String str) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).rawNumberFormat = str;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f11564a);
    }

    /* renamed from: x */
    public void m35463x(int i) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).spamScore = String.valueOf(i);
    }

    /* renamed from: y */
    public void m35462y(int i) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).telType = String.valueOf(i);
    }

    /* renamed from: z */
    public void m35461z(String str) {
        ((ContactDto.Contact.PhoneNumber) this.mRow).telTypeLabel = str;
    }
}
