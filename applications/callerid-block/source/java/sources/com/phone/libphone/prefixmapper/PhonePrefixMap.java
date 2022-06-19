package com.phone.libphone.prefixmapper;

import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.Phonenumber$PhoneNumber;
import java.io.ByteArrayOutputStream;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/PhonePrefixMap.class */
public class PhonePrefixMap implements Externalizable {

    /* renamed from: b */
    private static final Logger f11658b = Logger.getLogger(PhonePrefixMap.class.getName());
    private AbstractC2810c phonePrefixMapStorage;
    private PhoneNumberUtil phoneUtil;

    public PhonePrefixMap() {
        if (this.phoneUtil == null) {
            this.phoneUtil = PhoneNumberUtil.m1676q();
        }
    }

    /* renamed from: a */
    private int m1614a(int i, int i2, long j) {
        int i3 = i2;
        int i4 = i;
        int i5 = 0;
        while (i4 <= i3) {
            i5 = (i4 + i3) >>> 1;
            long mo1600d = this.phonePrefixMapStorage.mo1600d(i5);
            if (mo1600d == j) {
                return i5;
            }
            if (mo1600d > j) {
                i5--;
                i3 = i5;
            } else {
                i4 = i5 + 1;
            }
        }
        return i5;
    }

    /* renamed from: b */
    private AbstractC2810c m1613b() {
        return new C2808a();
    }

    /* renamed from: c */
    private AbstractC2810c m1612c() {
        return new C2809b();
    }

    /* renamed from: d */
    private static int m1611d(AbstractC2810c abstractC2810c, SortedMap<Integer, String> sortedMap) {
        abstractC2810c.mo1598f(sortedMap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        abstractC2810c.mo1597g(objectOutputStream);
        objectOutputStream.flush();
        int size = byteArrayOutputStream.size();
        objectOutputStream.close();
        return size;
    }

    AbstractC2810c getPhonePrefixMapStorage() {
        return this.phonePrefixMapStorage;
    }

    AbstractC2810c getSmallerMapStorage(SortedMap<Integer, String> sortedMap) {
        try {
            AbstractC2810c m1612c = m1612c();
            int m1611d = m1611d(m1612c, sortedMap);
            AbstractC2810c m1613b = m1613b();
            return m1611d < m1611d(m1613b, sortedMap) ? m1612c : m1613b;
        } catch (IOException e) {
            f11658b.severe(e.getMessage());
            return m1612c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.phone.libphone.prefixmapper.PhonePrefixMap] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    String lookup(long j) {
        int m1602b = this.phonePrefixMapStorage.m1602b();
        if (m1602b == 0) {
            return null;
        }
        int i = m1602b - 1;
        SortedSet m1601c = this.phonePrefixMapStorage.m1601c();
        long j2 = j;
        while (true) {
            SortedSet sortedSet = m1601c;
            if (sortedSet.size() <= 0) {
                return null;
            }
            Integer num = (Integer) sortedSet.last();
            String valueOf = String.valueOf((long) (j2 == 1 ? 1 : 0));
            ?? r7 = j2;
            if (valueOf.length() > num.intValue()) {
                r7 = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            i = m1614a(0, i, r7);
            if (i < 0) {
                return null;
            }
            if (r7 == this.phonePrefixMapStorage.mo1600d(i)) {
                return this.phonePrefixMapStorage.mo1603a(i);
            }
            m1601c = sortedSet.headSet(num);
            j2 = r7;
        }
    }

    public String lookup(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return lookup(Long.parseLong(phonenumber$PhoneNumber.getCountryCode() + this.phoneUtil.m1672u(phonenumber$PhoneNumber)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        this.phonePrefixMapStorage = objectInput.readBoolean() ? new C2809b() : new C2808a();
        this.phonePrefixMapStorage.mo1599e(objectInput);
    }

    public void readPhonePrefixMap(SortedMap<Integer, String> sortedMap) {
        this.phonePrefixMapStorage = getSmallerMapStorage(sortedMap);
    }

    public String toString() {
        return this.phonePrefixMapStorage.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeBoolean(this.phonePrefixMapStorage instanceof C2809b);
        this.phonePrefixMapStorage.mo1597g(objectOutput);
    }
}
