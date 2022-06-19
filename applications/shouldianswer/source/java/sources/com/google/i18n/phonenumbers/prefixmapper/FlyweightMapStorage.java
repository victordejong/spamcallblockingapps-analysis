package com.google.i18n.phonenumbers.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage.class */
final class FlyweightMapStorage extends PhonePrefixMapStorageStrategy {
    private static final int INT_NUM_BYTES = 4;
    private static final int SHORT_NUM_BYTES = 2;
    private int descIndexSizeInBytes;
    private ByteBuffer descriptionIndexes;
    private String[] descriptionPool;
    private ByteBuffer phoneNumberPrefixes;
    private int prefixSizeInBytes;

    private void createDescriptionPool(SortedSet<String> sortedSet, SortedMap<Integer, String> sortedMap) {
        this.descIndexSizeInBytes = getOptimalNumberOfBytesForValue(sortedSet.size() - 1);
        this.descriptionIndexes = ByteBuffer.allocate(this.numOfEntries * this.descIndexSizeInBytes);
        this.descriptionPool = new String[sortedSet.size()];
        sortedSet.toArray(this.descriptionPool);
        int i = 0;
        for (int i2 = 0; i2 < this.numOfEntries; i2++) {
            storeWordInBuffer(this.descriptionIndexes, this.descIndexSizeInBytes, i, Arrays.binarySearch(this.descriptionPool, sortedMap.get(Integer.valueOf(readWordFromBuffer(this.phoneNumberPrefixes, this.prefixSizeInBytes, i2)))));
            i++;
        }
    }

    private static int getOptimalNumberOfBytesForValue(int i) {
        return i <= 32767 ? 2 : 4;
    }

    private void readEntries(ObjectInput objectInput) {
        this.numOfEntries = objectInput.readInt();
        ByteBuffer byteBuffer = this.phoneNumberPrefixes;
        if (byteBuffer == null || byteBuffer.capacity() < this.numOfEntries) {
            this.phoneNumberPrefixes = ByteBuffer.allocate(this.numOfEntries * this.prefixSizeInBytes);
        }
        ByteBuffer byteBuffer2 = this.descriptionIndexes;
        if (byteBuffer2 == null || byteBuffer2.capacity() < this.numOfEntries) {
            this.descriptionIndexes = ByteBuffer.allocate(this.numOfEntries * this.descIndexSizeInBytes);
        }
        for (int i = 0; i < this.numOfEntries; i++) {
            readExternalWord(objectInput, this.prefixSizeInBytes, this.phoneNumberPrefixes, i);
            readExternalWord(objectInput, this.descIndexSizeInBytes, this.descriptionIndexes, i);
        }
    }

    private static void readExternalWord(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    private static int readWordFromBuffer(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    private static void storeWordInBuffer(ByteBuffer byteBuffer, int i, int i2, int i3) {
        int i4 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i4, (short) i3);
        } else {
            byteBuffer.putInt(i4, i3);
        }
    }

    private static void writeExternalWord(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public String getDescription(int i) {
        return this.descriptionPool[readWordFromBuffer(this.descriptionIndexes, this.descIndexSizeInBytes, i)];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public int getPrefix(int i) {
        return readWordFromBuffer(this.phoneNumberPrefixes, this.prefixSizeInBytes, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
        if (r0.length < r0) goto L10;
     */
    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readExternal(java.io.ObjectInput r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.prefixSizeInBytes = r1
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.descIndexSizeInBytes = r1
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.possibleLengths
            r0.clear()
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L27:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L44
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.possibleLengths
            r1 = r5
            int r1 = r1.readInt()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r8 = r8 + 1
            goto L27
        L44:
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.lang.String[] r0 = r0.descriptionPool
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r7
            r8 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r6
            if (r0 >= r1) goto L6b
        L60:
            r0 = r4
            r1 = r6
            java.lang.String[] r1 = new java.lang.String[r1]
            r0.descriptionPool = r1
            r0 = r7
            r8 = r0
        L6b:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L88
            r0 = r5
            java.lang.String r0 = r0.readUTF()
            r9 = r0
            r0 = r4
            java.lang.String[] r0 = r0.descriptionPool
            r1 = r8
            r2 = r9
            r0[r1] = r2
            int r8 = r8 + 1
            goto L6b
        L88:
            r0 = r4
            r1 = r5
            r0.readEntries(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.prefixmapper.FlyweightMapStorage.readExternal(java.io.ObjectInput):void");
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public void readFromSortedMap(SortedMap<Integer, String> sortedMap) {
        TreeSet treeSet = new TreeSet();
        this.numOfEntries = sortedMap.size();
        this.prefixSizeInBytes = getOptimalNumberOfBytesForValue(sortedMap.lastKey().intValue());
        this.phoneNumberPrefixes = ByteBuffer.allocate(this.numOfEntries * this.prefixSizeInBytes);
        int i = 0;
        for (Map.Entry<Integer, String> entry : sortedMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            storeWordInBuffer(this.phoneNumberPrefixes, this.prefixSizeInBytes, i, intValue);
            this.possibleLengths.add(Integer.valueOf(((int) Math.log10(intValue)) + 1));
            treeSet.add(entry.getValue());
            i++;
        }
        createDescriptionPool(treeSet, sortedMap);
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.prefixSizeInBytes);
        objectOutput.writeInt(this.descIndexSizeInBytes);
        objectOutput.writeInt(this.possibleLengths.size());
        Iterator<Integer> it = this.possibleLengths.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
        objectOutput.writeInt(this.descriptionPool.length);
        for (String str : this.descriptionPool) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.numOfEntries);
        for (int i = 0; i < this.numOfEntries; i++) {
            writeExternalWord(objectOutput, this.prefixSizeInBytes, this.phoneNumberPrefixes, i);
            writeExternalWord(objectOutput, this.descIndexSizeInBytes, this.descriptionIndexes, i);
        }
    }
}
