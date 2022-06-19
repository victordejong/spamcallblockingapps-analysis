package com.google.i18n.phonenumbers.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedMap;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.class */
public abstract class PhonePrefixMapStorageStrategy {
    protected int numOfEntries = 0;
    protected final TreeSet<Integer> possibleLengths = new TreeSet<>();

    public abstract String getDescription(int i);

    public int getNumOfEntries() {
        return this.numOfEntries;
    }

    public TreeSet<Integer> getPossibleLengths() {
        return this.possibleLengths;
    }

    public abstract int getPrefix(int i);

    public abstract void readExternal(ObjectInput objectInput);

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

    public abstract void writeExternal(ObjectOutput objectOutput);
}
