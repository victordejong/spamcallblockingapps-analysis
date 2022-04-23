package com.google.i18n.phonenumbers.b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/a.class */
final class a extends e {

    /* renamed from: c  reason: collision with root package name */
    private int[] f32838c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f32839d;

    @Override // com.google.i18n.phonenumbers.b.e
    public final int a(int i) {
        return this.f32838c[i];
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final void a(ObjectInput objectInput) throws IOException {
        this.f32849a = objectInput.readInt();
        int[] iArr = this.f32838c;
        if (iArr == null || iArr.length < this.f32849a) {
            this.f32838c = new int[this.f32849a];
        }
        String[] strArr = this.f32839d;
        if (strArr == null || strArr.length < this.f32849a) {
            this.f32839d = new String[this.f32849a];
        }
        for (int i = 0; i < this.f32849a; i++) {
            this.f32838c[i] = objectInput.readInt();
            this.f32839d[i] = objectInput.readUTF();
        }
        int readInt = objectInput.readInt();
        this.f32850b.clear();
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f32850b.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final void a(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f32849a);
        for (int i = 0; i < this.f32849a; i++) {
            objectOutput.writeInt(this.f32838c[i]);
            objectOutput.writeUTF(this.f32839d[i]);
        }
        objectOutput.writeInt(this.f32850b.size());
        Iterator<Integer> it2 = this.f32850b.iterator();
        while (it2.hasNext()) {
            objectOutput.writeInt(it2.next().intValue());
        }
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final String b(int i) {
        return this.f32839d[i];
    }
}
