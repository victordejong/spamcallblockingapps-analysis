package com.google.i18n.phonenumbers.prefixmapper;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.LinkedList;
import java.util.List;
import java.util.SortedMap;
import java.util.StringTokenizer;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap.class */
public class PrefixTimeZonesMap implements Externalizable {
    public static final String RAW_STRING_TIMEZONES_SEPARATOR = "&";
    public final PhonePrefixMap phonePrefixMap = new PhonePrefixMap();

    private List<String> lookupTimeZonesForNumber(long j) {
        String lookup = this.phonePrefixMap.lookup(j);
        return lookup == null ? new LinkedList() : tokenizeRawOutputString(lookup);
    }

    private List<String> tokenizeRawOutputString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, RAW_STRING_TIMEZONES_SEPARATOR);
        LinkedList linkedList = new LinkedList();
        while (stringTokenizer.hasMoreTokens()) {
            linkedList.add(stringTokenizer.nextToken());
        }
        return linkedList;
    }

    public List<String> lookupCountryLevelTimeZonesForNumber(Phonenumber.PhoneNumber phoneNumber) {
        return lookupTimeZonesForNumber(phoneNumber.getCountryCode());
    }

    public List<String> lookupTimeZonesForNumber(Phonenumber.PhoneNumber phoneNumber) {
        return lookupTimeZonesForNumber(Long.parseLong(phoneNumber.getCountryCode() + PhoneNumberUtil.getInstance().getNationalSignificantNumber(phoneNumber)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        this.phonePrefixMap.readExternal(objectInput);
    }

    public void readPrefixTimeZonesMap(SortedMap<Integer, String> sortedMap) {
        this.phonePrefixMap.readPhonePrefixMap(sortedMap);
    }

    public String toString() {
        return this.phonePrefixMap.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        this.phonePrefixMap.writeExternal(objectOutput);
    }
}
