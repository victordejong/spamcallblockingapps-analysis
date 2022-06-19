package com.google.i18n.phonenumbers.prefixmapper;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import java.io.ByteArrayOutputStream;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap.class */
public class PhonePrefixMap implements Externalizable {
    private static final Logger logger = Logger.getLogger(PhonePrefixMap.class.getName());
    private PhonePrefixMapStorageStrategy phonePrefixMapStorage;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();

    private int binarySearch(int i, int i2, long j) {
        int i3 = i2;
        int i4 = i;
        int i5 = 0;
        while (i4 <= i3) {
            i5 = (i4 + i3) >>> 1;
            int i6 = (this.phonePrefixMapStorage.getPrefix(i5) > j ? 1 : (this.phonePrefixMapStorage.getPrefix(i5) == j ? 0 : -1));
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

    private PhonePrefixMapStorageStrategy createDefaultMapStorage() {
        return new DefaultMapStorage();
    }

    private PhonePrefixMapStorageStrategy createFlyweightMapStorage() {
        return new FlyweightMapStorage();
    }

    private static int getSizeOfPhonePrefixMapStorage(PhonePrefixMapStorageStrategy phonePrefixMapStorageStrategy, SortedMap<Integer, String> sortedMap) {
        phonePrefixMapStorageStrategy.readFromSortedMap(sortedMap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        phonePrefixMapStorageStrategy.writeExternal(objectOutputStream);
        objectOutputStream.flush();
        int size = byteArrayOutputStream.size();
        objectOutputStream.close();
        return size;
    }

    PhonePrefixMapStorageStrategy getPhonePrefixMapStorage() {
        return this.phonePrefixMapStorage;
    }

    PhonePrefixMapStorageStrategy getSmallerMapStorage(SortedMap<Integer, String> sortedMap) {
        try {
            PhonePrefixMapStorageStrategy createFlyweightMapStorage = createFlyweightMapStorage();
            int sizeOfPhonePrefixMapStorage = getSizeOfPhonePrefixMapStorage(createFlyweightMapStorage, sortedMap);
            PhonePrefixMapStorageStrategy createDefaultMapStorage = createDefaultMapStorage();
            return sizeOfPhonePrefixMapStorage < getSizeOfPhonePrefixMapStorage(createDefaultMapStorage, sortedMap) ? createFlyweightMapStorage : createDefaultMapStorage;
        } catch (IOException e) {
            logger.severe(e.getMessage());
            return createFlyweightMapStorage();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    public String lookup(long j) {
        int numOfEntries = this.phonePrefixMapStorage.getNumOfEntries();
        if (numOfEntries == 0) {
            return null;
        }
        int i = numOfEntries - 1;
        SortedSet possibleLengths = this.phonePrefixMapStorage.getPossibleLengths();
        long j2 = j;
        while (true) {
            SortedSet sortedSet = possibleLengths;
            if (sortedSet.size() <= 0) {
                return null;
            }
            Integer num = (Integer) sortedSet.last();
            String valueOf = String.valueOf((long) (j2 == 1 ? 1 : 0));
            ?? r7 = j2;
            if (valueOf.length() > num.intValue()) {
                r7 = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            i = binarySearch(0, i, r7);
            if (i < 0) {
                return null;
            }
            if (r7 == this.phonePrefixMapStorage.getPrefix(i)) {
                return this.phonePrefixMapStorage.getDescription(i);
            }
            possibleLengths = sortedSet.headSet(num);
            j2 = r7;
        }
    }

    public String lookup(Phonenumber.PhoneNumber phoneNumber) {
        return lookup(Long.parseLong(phoneNumber.getCountryCode() + this.phoneUtil.getNationalSignificantNumber(phoneNumber)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        if (objectInput.readBoolean()) {
            this.phonePrefixMapStorage = new FlyweightMapStorage();
        } else {
            this.phonePrefixMapStorage = new DefaultMapStorage();
        }
        this.phonePrefixMapStorage.readExternal(objectInput);
    }

    public void readPhonePrefixMap(SortedMap<Integer, String> sortedMap) {
        this.phonePrefixMapStorage = getSmallerMapStorage(sortedMap);
    }

    public String toString() {
        return this.phonePrefixMapStorage.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeBoolean(this.phonePrefixMapStorage instanceof FlyweightMapStorage);
        this.phonePrefixMapStorage.writeExternal(objectOutput);
    }
}
