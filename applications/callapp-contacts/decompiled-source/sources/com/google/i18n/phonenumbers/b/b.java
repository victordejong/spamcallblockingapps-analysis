package com.google.i18n.phonenumbers.b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/b.class */
final class b extends e {

    /* renamed from: c  reason: collision with root package name */
    private int f32840c;

    /* renamed from: d  reason: collision with root package name */
    private int f32841d;
    private ByteBuffer e;
    private ByteBuffer f;
    private String[] g;

    private static int a(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    private static void a(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    private static void a(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final int a(int i) {
        return a(this.e, this.f32840c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cd, code lost:
        if (r0.capacity() < r5.f32849a) goto L_0x00d0;
     */
    @Override // com.google.i18n.phonenumbers.b.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.io.ObjectInput r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.b.b.a(java.io.ObjectInput):void");
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final void a(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f32840c);
        objectOutput.writeInt(this.f32841d);
        objectOutput.writeInt(this.f32850b.size());
        Iterator<Integer> it2 = this.f32850b.iterator();
        while (it2.hasNext()) {
            objectOutput.writeInt(it2.next().intValue());
        }
        objectOutput.writeInt(this.g.length);
        for (String str : this.g) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.f32849a);
        for (int i = 0; i < this.f32849a; i++) {
            a(objectOutput, this.f32840c, this.e, i);
            a(objectOutput, this.f32841d, this.f, i);
        }
    }

    @Override // com.google.i18n.phonenumbers.b.e
    public final String b(int i) {
        return this.g[a(this.f, this.f32841d, i)];
    }
}
