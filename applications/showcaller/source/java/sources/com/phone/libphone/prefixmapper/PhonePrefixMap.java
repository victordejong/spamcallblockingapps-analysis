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

    /* renamed from: d */
    private static final Logger f40265d = Logger.getLogger(PhonePrefixMap.class.getName());
    private AbstractC9415c phonePrefixMapStorage;
    private PhoneNumberUtil phoneUtil;

    public PhonePrefixMap() {
        if (this.phoneUtil == null) {
            this.phoneUtil = PhoneNumberUtil.m693q();
        }
    }

    /* renamed from: a */
    private int m628a(int i, int i2, long j) {
        int i3 = i2;
        int i4 = i;
        int i5 = 0;
        while (i4 <= i3) {
            i5 = (i4 + i3) >>> 1;
            int i6 = (this.phonePrefixMapStorage.mo614d(i5) > j ? 1 : (this.phonePrefixMapStorage.mo614d(i5) == j ? 0 : -1));
            if (i6 == 0) {
                return i5;
            }
            if (i6 > 0) {
                i5--;
                i3 = i5;
            } else {
                i4 = i5 + 1;
            }
        }
        return i5;
    }

    /* renamed from: b */
    private AbstractC9415c m627b() {
        return new C9413a();
    }

    /* renamed from: c */
    private AbstractC9415c m626c() {
        return new C9414b();
    }

    /* renamed from: d */
    private static int m625d(AbstractC9415c abstractC9415c, SortedMap<Integer, String> sortedMap) {
        abstractC9415c.mo612f(sortedMap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        abstractC9415c.mo611g(objectOutputStream);
        objectOutputStream.flush();
        int size = byteArrayOutputStream.size();
        objectOutputStream.close();
        return size;
    }

    AbstractC9415c getPhonePrefixMapStorage() {
        return this.phonePrefixMapStorage;
    }

    AbstractC9415c getSmallerMapStorage(SortedMap<Integer, String> sortedMap) {
        try {
            AbstractC9415c m626c = m626c();
            int m625d = m625d(m626c, sortedMap);
            AbstractC9415c m627b = m627b();
            return m625d < m625d(m627b, sortedMap) ? m626c : m627b;
        } catch (IOException e) {
            f40265d.severe(e.getMessage());
            return m626c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.phone.libphone.prefixmapper.PhonePrefixMap] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    String lookup(long j) {
        int m616b = this.phonePrefixMapStorage.m616b();
        if (m616b == 0) {
            return null;
        }
        int i = m616b - 1;
        SortedSet m615c = this.phonePrefixMapStorage.m615c();
        long j2 = j;
        while (true) {
            SortedSet sortedSet = m615c;
            if (sortedSet.size() <= 0) {
                return null;
            }
            Integer num = (Integer) sortedSet.last();
            String valueOf = String.valueOf((long) (j2 == 1 ? 1 : 0));
            ?? r7 = j2;
            if (valueOf.length() > num.intValue()) {
                r7 = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            i = m628a(0, i, r7);
            if (i < 0) {
                return null;
            }
            if (r7 == this.phonePrefixMapStorage.mo614d(i)) {
                return this.phonePrefixMapStorage.mo617a(i);
            }
            m615c = sortedSet.headSet(num);
            j2 = r7;
        }
    }

    public String lookup(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return lookup(Long.parseLong(phonenumber$PhoneNumber.getCountryCode() + this.phoneUtil.m689u(phonenumber$PhoneNumber)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        if (objectInput.readBoolean()) {
            this.phonePrefixMapStorage = new C9414b();
        } else {
            this.phonePrefixMapStorage = new C9413a();
        }
        this.phonePrefixMapStorage.mo613e(objectInput);
    }

    public void readPhonePrefixMap(SortedMap<Integer, String> sortedMap) {
        this.phonePrefixMapStorage = getSmallerMapStorage(sortedMap);
    }

    public String toString() {
        return this.phonePrefixMapStorage.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeBoolean(this.phonePrefixMapStorage instanceof C9414b);
        this.phonePrefixMapStorage.mo611g(objectOutput);
    }
}
