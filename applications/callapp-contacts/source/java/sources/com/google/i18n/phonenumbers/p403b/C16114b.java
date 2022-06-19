package com.google.i18n.phonenumbers.p403b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: com.google.i18n.phonenumbers.b.b */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/b.class */
final class C16114b extends AbstractC16117e {

    /* renamed from: c */
    private int f56894c;

    /* renamed from: d */
    private int f56895d;

    /* renamed from: e */
    private ByteBuffer f56896e;

    /* renamed from: f */
    private ByteBuffer f56897f;

    /* renamed from: g */
    private String[] f56898g;

    /* renamed from: a */
    private static int m7836a(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    /* renamed from: a */
    private static void m7838a(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    /* renamed from: a */
    private static void m7837a(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    public final int mo7831a(int i) {
        return m7836a(this.f56896e, this.f56894c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cd, code lost:
        if (r0.capacity() < r5.f56906a) goto L24;
     */
    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7830a(java.io.ObjectInput r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.p403b.C16114b.mo7830a(java.io.ObjectInput):void");
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: a */
    public final void mo7829a(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f56894c);
        objectOutput.writeInt(this.f56895d);
        objectOutput.writeInt(this.f56907b.size());
        Iterator<Integer> it2 = this.f56907b.iterator();
        while (it2.hasNext()) {
            objectOutput.writeInt(it2.next().intValue());
        }
        objectOutput.writeInt(this.f56898g.length);
        for (String str : this.f56898g) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.f56906a);
        for (int i = 0; i < this.f56906a; i++) {
            m7837a(objectOutput, this.f56894c, this.f56896e, i);
            m7837a(objectOutput, this.f56895d, this.f56897f, i);
        }
    }

    @Override // com.google.i18n.phonenumbers.p403b.AbstractC16117e
    /* renamed from: b */
    public final String mo7827b(int i) {
        return this.f56898g[m7836a(this.f56897f, this.f56895d, i)];
    }
}
