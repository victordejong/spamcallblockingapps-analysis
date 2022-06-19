package com.phone.libphone.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
import java.util.SortedMap;
/* renamed from: com.phone.libphone.prefixmapper.a */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/a.class */
class C9413a extends AbstractC9415c {

    /* renamed from: c */
    private int[] f40266c;

    /* renamed from: d */
    private String[] f40267d;

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: a */
    public String mo617a(int i) {
        return this.f40267d[i];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: d */
    public int mo614d(int i) {
        return this.f40266c[i];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: e */
    public void mo613e(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        this.f40273a = readInt;
        int[] iArr = this.f40266c;
        if (iArr == null || iArr.length < readInt) {
            this.f40266c = new int[readInt];
        }
        String[] strArr = this.f40267d;
        if (strArr == null || strArr.length < readInt) {
            this.f40267d = new String[readInt];
        }
        for (int i = 0; i < this.f40273a; i++) {
            this.f40266c[i] = objectInput.readInt();
            this.f40267d[i] = objectInput.readUTF();
        }
        int readInt2 = objectInput.readInt();
        this.f40274b.clear();
        for (int i2 = 0; i2 < readInt2; i2++) {
            this.f40274b.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: f */
    public void mo612f(SortedMap<Integer, String> sortedMap) {
        int size = sortedMap.size();
        this.f40273a = size;
        this.f40266c = new int[size];
        this.f40267d = new String[size];
        int i = 0;
        for (Integer num : sortedMap.keySet()) {
            int intValue = num.intValue();
            this.f40266c[i] = intValue;
            this.f40274b.add(Integer.valueOf(((int) Math.log10(intValue)) + 1));
            i++;
        }
        sortedMap.values().toArray(this.f40267d);
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: g */
    public void mo611g(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.f40273a);
        for (int i = 0; i < this.f40273a; i++) {
            objectOutput.writeInt(this.f40266c[i]);
            objectOutput.writeUTF(this.f40267d[i]);
        }
        objectOutput.writeInt(this.f40274b.size());
        Iterator<Integer> it = this.f40274b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
    }
}
