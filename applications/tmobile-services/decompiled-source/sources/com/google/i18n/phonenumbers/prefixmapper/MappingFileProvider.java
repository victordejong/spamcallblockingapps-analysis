package com.google.i18n.phonenumbers.prefixmapper;

import java.io.Externalizable;
import java.io.IOException;
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
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/MappingFileProvider.class */
public class MappingFileProvider implements Externalizable {

    /* renamed from: i */
    private static final Map<String, String> f12399i;

    /* renamed from: f */
    private int f12400f = 0;

    /* renamed from: g */
    private int[] f12401g;

    /* renamed from: h */
    private List<Set<String>> f12402h;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("zh_TW", "zh_Hant");
        hashMap.put("zh_HK", "zh_Hant");
        hashMap.put("zh_MO", "zh_Hant");
        f12399i = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private void m7861a(String str, StringBuilder sb) {
        if (str.length() > 0) {
            sb.append('_');
            sb.append(str);
        }
    }

    /* renamed from: b */
    private StringBuilder m7860b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        m7861a(str2, sb);
        m7861a(str3, sb);
        return sb;
    }

    /* renamed from: c */
    private String m7859c(Set<String> set, String str, String str2, String str3) {
        String sb = m7860b(str, str2, str3).toString();
        String str4 = f12399i.get(sb);
        if (str4 != null && set.contains(str4)) {
            return str4;
        }
        if (set.contains(sb)) {
            return sb;
        }
        if (m7857e(str2, str3)) {
            return set.contains(str) ? str : "";
        }
        if (str2.length() <= 0 || str3.length() <= 0) {
            return "";
        }
        String str5 = str + '_' + str2;
        if (set.contains(str5)) {
            return str5;
        }
        String str6 = str + '_' + str3;
        return set.contains(str6) ? str6 : set.contains(str) ? str : "";
    }

    /* renamed from: e */
    private boolean m7857e(String str, String str2) {
        return (str.length() == 0 && str2.length() > 0) || (str2.length() == 0 && str.length() > 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m7858d(int i, String str, String str2, String str3) {
        int binarySearch;
        if (str.length() == 0 || (binarySearch = Arrays.binarySearch(this.f12401g, i)) < 0) {
            return "";
        }
        Set<String> set = this.f12402h.get(binarySearch);
        if (set.size() <= 0) {
            return "";
        }
        String c = m7859c(set, str, str2, str3);
        if (c.length() <= 0) {
            return "";
        }
        return i + '_' + c;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        this.f12400f = readInt;
        int[] iArr = this.f12401g;
        if (iArr == null || iArr.length < readInt) {
            this.f12401g = new int[this.f12400f];
        }
        if (this.f12402h == null) {
            this.f12402h = new ArrayList();
        }
        for (int i = 0; i < this.f12400f; i++) {
            this.f12401g[i] = objectInput.readInt();
            int readInt2 = objectInput.readInt();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < readInt2; i2++) {
                hashSet.add(objectInput.readUTF());
            }
            this.f12402h.add(hashSet);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f12400f; i++) {
            sb.append(this.f12401g[i]);
            sb.append('|');
            for (String str : new TreeSet(this.f12402h.get(i))) {
                sb.append(str);
                sb.append(',');
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f12400f);
        for (int i = 0; i < this.f12400f; i++) {
            objectOutput.writeInt(this.f12401g[i]);
            Set<String> set = this.f12402h.get(i);
            objectOutput.writeInt(set.size());
            for (String str : set) {
                objectOutput.writeUTF(str);
            }
        }
    }
}
