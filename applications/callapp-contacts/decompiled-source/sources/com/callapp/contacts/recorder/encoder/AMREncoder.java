package com.callapp.contacts.recorder.encoder;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/AMREncoder.class */
public class AMREncoder implements AudioEncoder {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f15682a;

    /* renamed from: b  reason: collision with root package name */
    private MediaCodec f15683b;

    /* renamed from: c  reason: collision with root package name */
    private long f15684c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f15685d = 0;
    private byte[] e = {35, 33, 65, 77, 82, 10};

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a() {
        this.f15683b.stop();
        this.f15683b.release();
        IoUtils.a(this.f15682a);
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(int i, int i2) {
        try {
            this.f15683b = MediaCodec.createEncoderByType("audio/3gpp");
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/3gpp", i, 1);
            createAudioFormat.setInteger("bitrate", 12200);
            createAudioFormat.setInteger("max-input-size", i2);
            createAudioFormat.setInteger("sample-rate", i);
            this.f15683b.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
            this.f15683b.start();
        } catch (IOException e) {
            CLog.a(AMREncoder.class, e);
        }
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(String str) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        this.f15682a = randomAccessFile;
        randomAccessFile.write(this.e);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0101 -> B:32:0x0052). Please submit an issue!!! */
    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    public final void a(byte[] bArr, int i) {
        try {
            int dequeueInputBuffer = this.f15683b.dequeueInputBuffer(120000L);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer inputBuffer = this.f15683b.getInputBuffer(dequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.f15685d += i;
                this.f15683b.queueInputBuffer(dequeueInputBuffer, 0, i, this.f15684c, 0);
                this.f15684c = ((this.f15685d / 2) * 1000000) / 8000;
            }
        } catch (IllegalStateException e) {
        }
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (true) {
                int dequeueOutputBuffer = this.f15683b.dequeueOutputBuffer(bufferInfo, 120000L);
                if (dequeueOutputBuffer == -1) {
                    return;
                }
                if (dequeueOutputBuffer == -2) {
                    new StringBuilder("Media format is ").append(this.f15683b.getOutputFormat().toString());
                    CLog.a("AMRAudioOutput");
                } else if (dequeueOutputBuffer >= 0) {
                    ByteBuffer outputBuffer = this.f15683b.getOutputBuffer(dequeueOutputBuffer);
                    if (outputBuffer != null) {
                        outputBuffer.position(bufferInfo.offset);
                        outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
                        byte[] bArr2 = new byte[bufferInfo.size];
                        outputBuffer.get(bArr2, 0, bufferInfo.size);
                        try {
                            this.f15682a.write(bArr2, 0, bufferInfo.size);
                        } catch (Exception e2) {
                            CLog.a(RecordService.class, e2);
                        }
                    }
                    this.f15683b.releaseOutputBuffer(dequeueOutputBuffer, false);
                } else {
                    return;
                }
            }
        } catch (IllegalStateException e3) {
        }
    }
}
