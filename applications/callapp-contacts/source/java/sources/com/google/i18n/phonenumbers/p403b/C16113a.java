package com.google.i18n.phonenumbers.p403b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
/* renamed from: com.google.i18n.phonenumbers.b.a */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/a.class */
final class C16113a extends AbstractC16117e {

    /* renamed from: c */
    private int[] f56892c;

    /* renamed from: d */
    private String[] f56893d;

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    public final int mo7831a(int i) {
        return this.f56892c[i];
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    public final void mo7830a(ObjectInput objectInput) throws IOException {
        this.f56906a = objectInput.readInt();
        int[] iArr = this.f56892c;
        if (iArr == null || iArr.length < this.f56906a) {
            this.f56892c = new int[this.f56906a];
        }
        String[] strArr = this.f56893d;
        if (strArr == null || strArr.length < this.f56906a) {
            this.f56893d = new String[this.f56906a];
        }
        for (int i = 0; i < this.f56906a; i++) {
            this.f56892c[i] = objectInput.readInt();
            this.f56893d[i] = objectInput.readUTF();
        }
        int readInt = objectInput.readInt();
        this.f56907b.clear();
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f56907b.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    public final void mo7829a(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f56906a);
        for (int i = 0; i < this.f56906a; i++) {
            objectOutput.writeInt(this.f56892c[i]);
            objectOutput.writeUTF(this.f56893d[i]);
        }
        objectOutput.writeInt(this.f56907b.size());
        Iterator<Integer> it2 = this.f56907b.iterator();
        while (it2.hasNext()) {
            objectOutput.writeInt(it2.next().intValue());
        }
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: b */
    public final String mo7827b(int i) {
        return this.f56893d[i];
    }
}
