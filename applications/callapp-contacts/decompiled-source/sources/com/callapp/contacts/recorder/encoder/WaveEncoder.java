package com.callapp.contacts.recorder.encoder;

import com.callapp.contacts.util.IoUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/WaveEncoder.class */
public class WaveEncoder implements AudioEncoder {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f15690a;

    /* renamed from: b  reason: collision with root package name */
    private FileChannel f15691b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer f15692c;

    /* renamed from: d  reason: collision with root package name */
    private int f15693d;
    private short e;
    private int f;
    private short g;
    private int h;

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a() throws IOException {
        this.f15690a.seek(4L);
        this.f15690a.writeInt(Integer.reverseBytes(this.f15693d + 36));
        this.f15690a.seek(40L);
        this.f15690a.writeInt(Integer.reverseBytes(this.f15693d));
        IoUtils.a(this.f15690a);
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(int i, int i2) {
        this.e = (short) 16;
        this.g = (short) 1;
        this.f = i;
        this.h = i2;
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(String str) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        this.f15690a = randomAccessFile;
        this.f15691b = randomAccessFile.getChannel();
        this.f15690a.setLength(0L);
        this.f15690a.writeBytes("RIFF");
        this.f15690a.writeInt(0);
        this.f15690a.writeBytes("WAVE");
        this.f15690a.writeBytes("fmt ");
        this.f15690a.writeInt(Integer.reverseBytes(16));
        this.f15690a.writeShort(Short.reverseBytes((short) 1));
        this.f15690a.writeShort(Short.reverseBytes(this.g));
        this.f15690a.writeInt(Integer.reverseBytes(this.f));
        this.f15690a.writeInt(Integer.reverseBytes(((this.f * this.e) * this.g) / 8));
        this.f15690a.writeShort(Short.reverseBytes((short) ((this.g * this.e) / 8)));
        this.f15690a.writeShort(Short.reverseBytes(this.e));
        this.f15690a.writeBytes("data");
        this.f15690a.writeInt(0);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.h);
        this.f15692c = allocateDirect;
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        this.f15692c.rewind();
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(byte[] bArr, int i) throws IOException {
        this.f15692c.clear();
        this.f15692c.put(bArr, 0, i);
        this.f15692c.rewind();
        this.f15691b.write(this.f15692c);
        this.f15693d += this.f15692c.capacity();
    }
}
