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

    /* renamed from: a */
    private RandomAccessFile f27431a;

    /* renamed from: b */
    private MediaCodec f27432b;

    /* renamed from: c */
    private long f27433c = 0;

    /* renamed from: d */
    private int f27434d = 0;

    /* renamed from: e */
    private byte[] f27435e = {35, 33, 65, 77, 82, 10};

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27834a() {
        this.f27432b.stop();
        this.f27432b.release();
        IoUtils.m27514a(this.f27431a);
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27833a(int i, int i2) {
        try {
            this.f27432b = MediaCodec.createEncoderByType("audio/3gpp");
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/3gpp", i, 1);
            createAudioFormat.setInteger("bitrate", 12200);
            createAudioFormat.setInteger("max-input-size", i2);
            createAudioFormat.setInteger("sample-rate", i);
            this.f27432b.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
            this.f27432b.start();
        } catch (IOException e) {
            CLog.m27609a(AMREncoder.class, e);
        }
    }

    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27832a(String str) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        this.f27431a = randomAccessFile;
        randomAccessFile.write(this.f27435e);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0101 -> B:32:0x0052). Please submit an issue!!! */
    @Override // com.callapp.contacts.recorder.encoder.AudioEncoder
    /* renamed from: a */
    public final void mo27831a(byte[] bArr, int i) {
        try {
            int dequeueInputBuffer = this.f27432b.dequeueInputBuffer(120000L);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer inputBuffer = this.f27432b.getInputBuffer(dequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.f27434d += i;
                this.f27432b.queueInputBuffer(dequeueInputBuffer, 0, i, this.f27433c, 0);
                this.f27433c = ((this.f27434d / 2) * 1000000) / 8000;
            }
        } catch (IllegalStateException e) {
        }
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (true) {
                int dequeueOutputBuffer = this.f27432b.dequeueOutputBuffer(bufferInfo, 120000L);
                if (dequeueOutputBuffer == -1) {
                    return;
                }
                if (dequeueOutputBuffer == -2) {
                    new StringBuilder("Media format is ").append(this.f27432b.getOutputFormat().toString());
                    CLog.m27606a("AMRAudioOutput");
                } else if (dequeueOutputBuffer < 0) {
                    return;
                } else {
                    ByteBuffer outputBuffer = this.f27432b.getOutputBuffer(dequeueOutputBuffer);
                    if (outputBuffer != null) {
                        outputBuffer.position(bufferInfo.offset);
                        outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
                        byte[] bArr2 = new byte[bufferInfo.size];
                        outputBuffer.get(bArr2, 0, bufferInfo.size);
                        try {
                            this.f27431a.write(bArr2, 0, bufferInfo.size);
                        } catch (Exception e2) {
                            CLog.m27609a(RecordService.class, e2);
                        }
                    }
                    this.f27432b.releaseOutputBuffer(dequeueOutputBuffer, false);
                }
            }
        } catch (IllegalStateException e3) {
        }
    }
}
