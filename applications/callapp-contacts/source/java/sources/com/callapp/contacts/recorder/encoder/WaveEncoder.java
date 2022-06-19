package com.callapp.contacts.recorder.encoder;

import com.callapp.contacts.util.IoUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/WaveEncoder.class */
public class WaveEncoder implements AudioEncoder {

    /* renamed from: a */
    private RandomAccessFile f27450a;

    /* renamed from: b */
    private FileChannel f27451b;

    /* renamed from: c */
    private ByteBuffer f27452c;

    /* renamed from: d */
    private int f27453d;

    /* renamed from: e */
    private short f27454e;

    /* renamed from: f */
    private int f27455f;

    /* renamed from: g */
    private short f27456g;

    /* renamed from: h */
    private int f27457h;

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27834a() throws IOException {
        this.f27450a.seek(4L);
        this.f27450a.writeInt(Integer.reverseBytes(this.f27453d + 36));
        this.f27450a.seek(40L);
        this.f27450a.writeInt(Integer.reverseBytes(this.f27453d));
        IoUtils.m27514a(this.f27450a);
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27833a(int i, int i2) {
        this.f27454e = (short) 16;
        this.f27456g = (short) 1;
        this.f27455f = i;
        this.f27457h = i2;
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27832a(String str) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        this.f27450a = randomAccessFile;
        this.f27451b = randomAccessFile.getChannel();
        this.f27450a.setLength(0L);
        this.f27450a.writeBytes("RIFF");
        this.f27450a.writeInt(0);
        this.f27450a.writeBytes("WAVE");
        this.f27450a.writeBytes("fmt ");
        this.f27450a.writeInt(Integer.reverseBytes(16));
        this.f27450a.writeShort(Short.reverseBytes((short) 1));
        this.f27450a.writeShort(Short.reverseBytes(this.f27456g));
        this.f27450a.writeInt(Integer.reverseBytes(this.f27455f));
        this.f27450a.writeInt(Integer.reverseBytes(((this.f27455f * this.f27454e) * this.f27456g) / 8));
        this.f27450a.writeShort(Short.reverseBytes((short) ((this.f27456g * this.f27454e) / 8)));
        this.f27450a.writeShort(Short.reverseBytes(this.f27454e));
        this.f27450a.writeBytes("data");
        this.f27450a.writeInt(0);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.f27457h);
        this.f27452c = allocateDirect;
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        this.f27452c.rewind();
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27831a(byte[] bArr, int i) throws IOException {
        this.f27452c.clear();
        this.f27452c.put(bArr, 0, i);
        this.f27452c.rewind();
        this.f27451b.write(this.f27452c);
        this.f27453d += this.f27452c.capacity();
    }
}
