package com.google.i18n.phonenumbers.b;

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
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/c.class */
public final class c implements Externalizable {

    /* renamed from: c  reason: collision with root package name */
    static final Map<String, String> f32842c;

    /* renamed from: a  reason: collision with root package name */
    int[] f32843a;

    /* renamed from: b  reason: collision with root package name */
    List<Set<String>> f32844b;

    /* renamed from: d  reason: collision with root package name */
    private int f32845d = 0;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("zh_TW", "zh_Hant");
        hashMap.put("zh_HK", "zh_Hant");
        hashMap.put("zh_MO", "zh_Hant");
        f32842c = Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, StringBuilder sb) {
        if (str.length() > 0) {
            sb.append('_');
            sb.append(str);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        this.f32845d = readInt;
        int[] iArr = this.f32843a;
        if (iArr == null || iArr.length < readInt) {
            this.f32843a = new int[readInt];
        }
        if (this.f32844b == null) {
            this.f32844b = new ArrayList();
        }
        for (int i = 0; i < this.f32845d; i++) {
            this.f32843a[i] = objectInput.readInt();
            int readInt2 = objectInput.readInt();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < readInt2; i2++) {
                hashSet.add(objectInput.readUTF());
            }
            this.f32844b.add(hashSet);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f32845d; i++) {
            sb.append(this.f32843a[i]);
            sb.append('|');
            for (String str : new TreeSet(this.f32844b.get(i))) {
                sb.append(str);
                sb.append(',');
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f32845d);
        for (int i = 0; i < this.f32845d; i++) {
            objectOutput.writeInt(this.f32843a[i]);
            Set<String> set = this.f32844b.get(i);
            objectOutput.writeInt(set.size());
            for (String str : set) {
                objectOutput.writeUTF(str);
            }
        }
    }
}
