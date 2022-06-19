package com.google.i18n.phonenumbers.p403b;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* renamed from: com.google.i18n.phonenumbers.b.c */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/c.class */
public final class C16115c implements Externalizable {

    /* renamed from: c */
    static final Map<String, String> f56899c;

    /* renamed from: a */
    int[] f56900a;

    /* renamed from: b */
    List<Set<String>> f56901b;

    /* renamed from: d */
    private int f56902d = 0;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("zh_TW", "zh_Hant");
        hashMap.put("zh_HK", "zh_Hant");
        hashMap.put("zh_MO", "zh_Hant");
        f56899c = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public static void m7835a(String str, StringBuilder sb) {
        if (str.length() > 0) {
            sb.append('_');
            sb.append(str);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        this.f56902d = readInt;
        int[] iArr = this.f56900a;
        if (iArr == null || iArr.length < readInt) {
            this.f56900a = new int[readInt];
        }
        if (this.f56901b == null) {
            this.f56901b = new ArrayList();
        }
        for (int i = 0; i < this.f56902d; i++) {
            this.f56900a[i] = objectInput.readInt();
            int readInt2 = objectInput.readInt();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < readInt2; i2++) {
                hashSet.add(objectInput.readUTF());
            }
            this.f56901b.add(hashSet);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f56902d; i++) {
            sb.append(this.f56900a[i]);
            sb.append('|');
            for (String str : new TreeSet(this.f56901b.get(i))) {
                sb.append(str);
                sb.append(',');
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f56902d);
        for (int i = 0; i < this.f56902d; i++) {
            objectOutput.writeInt(this.f56900a[i]);
            Set<String> set = this.f56901b.get(i);
            objectOutput.writeInt(set.size());
            for (String str : set) {
                objectOutput.writeUTF(str);
            }
        }
    }
}
