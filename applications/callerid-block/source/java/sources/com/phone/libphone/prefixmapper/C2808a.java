package com.phone.libphone.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
import java.util.SortedMap;
/* renamed from: com.phone.libphone.prefixmapper.a */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/a.class */
class C2808a extends AbstractC2810c {

    /* renamed from: c */
    private int[] f11659c;

    /* renamed from: d */
    private String[] f11660d;

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: a */
    public String mo1603a(int i) {
        return this.f11660d[i];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: d */
    public int mo1600d(int i) {
        return this.f11659c[i];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: e */
    public void mo1599e(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        this.f11666a = readInt;
        int[] iArr = this.f11659c;
        if (iArr == null || iArr.length < readInt) {
            this.f11659c = new int[readInt];
        }
        String[] strArr = this.f11660d;
        if (strArr == null || strArr.length < readInt) {
            this.f11660d = new String[readInt];
        }
        for (int i = 0; i < this.f11666a; i++) {
            this.f11659c[i] = objectInput.readInt();
            this.f11660d[i] = objectInput.readUTF();
        }
        int readInt2 = objectInput.readInt();
        this.f11667b.clear();
        for (int i2 = 0; i2 < readInt2; i2++) {
            this.f11667b.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: f */
    public void mo1598f(SortedMap<Integer, String> sortedMap) {
        int size = sortedMap.size();
        this.f11666a = size;
        this.f11659c = new int[size];
        this.f11660d = new String[size];
        int i = 0;
        for (Integer num : sortedMap.keySet()) {
            int intValue = num.intValue();
            this.f11659c[i] = intValue;
            this.f11667b.add(Integer.valueOf(((int) Math.log10(intValue)) + 1));
            i++;
        }
        sortedMap.values().toArray(this.f11660d);
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: g */
    public void mo1597g(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.f11666a);
        for (int i = 0; i < this.f11666a; i++) {
            objectOutput.writeInt(this.f11659c[i]);
            objectOutput.writeUTF(this.f11660d[i]);
        }
        objectOutput.writeInt(this.f11667b.size());
        Iterator<Integer> it = this.f11667b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
    }
}
