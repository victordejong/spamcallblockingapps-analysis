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
        int i3 = 0;
        int i4 = i2;
        int i5 = i;
        while (i5 <= i4) {
            i3 = (i5 + i4) >>> 1;
            long d = this.phonePrefixMapStorage.mo1600d(i3);
            if (d == j) {
                return i3;
            }
            if (d > j) {
                i3--;
                i4 = i3;
            } else {
                i5 = i3 + 1;
            }
        }
        return i3;
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
    private static int m1611d(AbstractC2810c cVar, SortedMap<Integer, String> sortedMap) {
        cVar.mo1598f(sortedMap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        cVar.mo1597g(objectOutputStream);
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
            AbstractC2810c c = m1612c();
            int d = m1611d(c, sortedMap);
            AbstractC2810c b = m1613b();
            return d < m1611d(b, sortedMap) ? c : b;
        } catch (IOException e) {
            f11658b.severe(e.getMessage());
            return m1612c();
        }
    }

    String lookup(long j) {
        int b = this.phonePrefixMapStorage.m1602b();
        if (b == 0) {
            return null;
        }
        int i = b - 1;
        SortedSet c = this.phonePrefixMapStorage.m1601c();
        while (c.size() > 0) {
            Integer num = (Integer) c.last();
            String valueOf = String.valueOf(j);
            if (valueOf.length() > num.intValue()) {
                j = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            i = m1614a(0, i, j);
            if (i < 0) {
                return null;
            }
            if (j == this.phonePrefixMapStorage.mo1600d(i)) {
                return this.phonePrefixMapStorage.mo1603a(i);
            }
            c = c.headSet(num);
        }
        return null;
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
