package com.google.android.exoplayer2.mediacodec;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.C11593a;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.mediacodec.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/d.class */
final class C11182d extends DecoderInputBuffer {

    /* renamed from: g */
    long f36729g;

    /* renamed from: h */
    int f36730h;

    /* renamed from: i */
    private int f36731i = 32;

    public C11182d() {
        super(2);
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.AbstractC10929a
    /* renamed from: a */
    public final void mo20663a() {
        super.mo20663a();
        this.f36730h = 0;
    }

    /* renamed from: a */
    public final boolean m21256a(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        C11593a.m20022a(!decoderInputBuffer.m21922g());
        C11593a.m20022a(!decoderInputBuffer.m21915e());
        C11593a.m20022a(!decoderInputBuffer.m21917c());
        if (!(!m21254i() || (this.f36730h < this.f36731i && decoderInputBuffer.m21920E_() == m21920E_() && ((byteBuffer = decoderInputBuffer.f35336c) == null || this.f35336c == null || this.f35336c.position() + byteBuffer.remaining() <= 3072000)))) {
            return false;
        }
        int i = this.f36730h;
        this.f36730h = i + 1;
        if (i == 0) {
            this.f35338e = decoderInputBuffer.f35338e;
            if (decoderInputBuffer.m21916d()) {
                this.f35344a = 1;
            }
        }
        if (decoderInputBuffer.m21920E_()) {
            this.f35344a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f35336c;
        if (byteBuffer2 != null) {
            m21925c(byteBuffer2.remaining());
            this.f35336c.put(byteBuffer2);
        }
        this.f36729g = decoderInputBuffer.f35338e;
        return true;
    }

    /* renamed from: d */
    public final void m21255d(int i) {
        C11593a.m20022a(i > 0);
        this.f36731i = i;
    }

    /* renamed from: i */
    public final boolean m21254i() {
        return this.f36730h > 0;
    }
}
