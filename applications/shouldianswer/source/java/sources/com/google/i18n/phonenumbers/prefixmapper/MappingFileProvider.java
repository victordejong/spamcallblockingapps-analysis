package com.google.i18n.phonenumbers.prefixmapper;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/MappingFileProvider.class */
public class MappingFileProvider implements Externalizable {
    private static final Map<String, String> LOCALE_NORMALIZATION_MAP;
    private List<Set<String>> availableLanguages;
    private int[] countryCallingCodes;
    private int numOfEntries = 0;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("zh_TW", "zh_Hant");
        hashMap.put("zh_HK", "zh_Hant");
        hashMap.put("zh_MO", "zh_Hant");
        LOCALE_NORMALIZATION_MAP = Collections.unmodifiableMap(hashMap);
    }

    private void appendSubsequentLocalePart(String str, StringBuilder sb) {
        if (str.length() > 0) {
            sb.append('_');
            sb.append(str);
        }
    }

    private StringBuilder constructFullLocale(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        appendSubsequentLocalePart(str2, sb);
        appendSubsequentLocalePart(str3, sb);
        return sb;
    }

    private String findBestMatchingLanguageCode(Set<String> set, String str, String str2, String str3) {
        String sb = constructFullLocale(str, str2, str3).toString();
        String str4 = LOCALE_NORMALIZATION_MAP.get(sb);
        if (str4 == null || !set.contains(str4)) {
            if (set.contains(sb)) {
                return sb;
            }
            if (onlyOneOfScriptOrRegionIsEmpty(str2, str3)) {
                return set.contains(str) ? str : "";
            } else if (str2.length() <= 0 || str3.length() <= 0) {
                return "";
            } else {
                String str5 = str + '_' + str2;
                if (set.contains(str5)) {
                    return str5;
                }
                String str6 = str + '_' + str3;
                return set.contains(str6) ? str6 : set.contains(str) ? str : "";
            }
        }
        return str4;
    }

    private boolean onlyOneOfScriptOrRegionIsEmpty(String str, String str2) {
        return (str.length() == 0 && str2.length() > 0) || (str2.length() == 0 && str.length() > 0);
    }

    public String getFileName(int i, String str, String str2, String str3) {
        int binarySearch;
        if (str.length() != 0 && (binarySearch = Arrays.binarySearch(this.countryCallingCodes, i)) >= 0) {
            Set<String> set = this.availableLanguages.get(binarySearch);
            if (set.size() <= 0) {
                return "";
            }
            String findBestMatchingLanguageCode = findBestMatchingLanguageCode(set, str, str2, str3);
            if (findBestMatchingLanguageCode.length() <= 0) {
                return "";
            }
            return i + '_' + findBestMatchingLanguageCode;
        }
        return "";
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        this.numOfEntries = objectInput.readInt();
        int[] iArr = this.countryCallingCodes;
        if (iArr == null || iArr.length < this.numOfEntries) {
            this.countryCallingCodes = new int[this.numOfEntries];
        }
        if (this.availableLanguages == null) {
            this.availableLanguages = new ArrayList();
        }
        for (int i = 0; i < this.numOfEntries; i++) {
            this.countryCallingCodes[i] = objectInput.readInt();
            int readInt = objectInput.readInt();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < readInt; i2++) {
                hashSet.add(objectInput.readUTF());
            }
            this.availableLanguages.add(hashSet);
        }
    }

    public void readFileConfigs(SortedMap<Integer, Set<String>> sortedMap) {
        this.numOfEntries = sortedMap.size();
        int i = this.numOfEntries;
        this.countryCallingCodes = new int[i];
        this.availableLanguages = new ArrayList(i);
        int i2 = 0;
        for (Integer num : sortedMap.keySet()) {
            int intValue = num.intValue();
            this.countryCallingCodes[i2] = intValue;
            this.availableLanguages.add(new HashSet(sortedMap.get(Integer.valueOf(intValue))));
            i2++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.numOfEntries; i++) {
            sb.append(this.countryCallingCodes[i]);
            sb.append('|');
            for (String str : new TreeSet(this.availableLanguages.get(i))) {
                sb.append(str);
                sb.append(',');
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.numOfEntries);
        for (int i = 0; i < this.numOfEntries; i++) {
            objectOutput.writeInt(this.countryCallingCodes[i]);
            Set<String> set = this.availableLanguages.get(i);
            objectOutput.writeInt(set.size());
            for (String str : set) {
                objectOutput.writeUTF(str);
            }
        }
    }
}
