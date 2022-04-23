package com.google.android.exoplayer2.mediacodec;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.a;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/d.class */
final class d extends DecoderInputBuffer {
    long g;
    int h;
    private int i = 32;

    public d() {
        super(2);
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.a
    public final void a() {
        super.a();
        this.h = 0;
    }

    public final boolean a(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        a.a(!decoderInputBuffer.g());
        a.a(!decoderInputBuffer.e());
        a.a(!decoderInputBuffer.c());
        if (!(!i() || (this.h < this.i && decoderInputBuffer.E_() == E_() && ((byteBuffer = decoderInputBuffer.f20822c) == null || this.f20822c == null || this.f20822c.position() + byteBuffer.remaining() <= 3072000)))) {
            return false;
        }
        int i = this.h;
        this.h = i + 1;
        if (i == 0) {
            this.e = decoderInputBuffer.e;
            if (decoderInputBuffer.d()) {
                this.f20826a = 1;
            }
        }
        if (decoderInputBuffer.E_()) {
            this.f20826a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f20822c;
        if (byteBuffer2 != null) {
            c(byteBuffer2.remaining());
            this.f20822c.put(byteBuffer2);
        }
        this.g = decoderInputBuffer.e;
        return true;
    }

    public final void d(int i) {
        a.a(i > 0);
        this.i = i;
    }

    public final boolean i() {
        return this.h > 0;
    }
}
