package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedMap;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.class */
public abstract class PhonePrefixMapStorageStrategy {
    public int numOfEntries = 0;
    public final TreeSet<Integer> possibleLengths = new TreeSet<>();

    public abstract String getDescription(int i);

    public int getNumOfEntries() {
        return this.numOfEntries;
    }

    public TreeSet<Integer> getPossibleLengths() {
        return this.possibleLengths;
    }

    public abstract int getPrefix(int i);

    public abstract void readExternal(ObjectInput objectInput) throws IOException;

    public abstract void readFromSortedMap(SortedMap<Integer, String> sortedMap);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int numOfEntries = getNumOfEntries();
        for (int i = 0; i < numOfEntries; i++) {
            sb.append(getPrefix(i));
            sb.append("|");
            sb.append(getDescription(i));
            sb.append("\n");
        }
        return sb.toString();
    }

    public abstract void writeExternal(ObjectOutput objectOutput) throws IOException;
}
