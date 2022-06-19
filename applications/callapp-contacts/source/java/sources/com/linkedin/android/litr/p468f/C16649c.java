package com.linkedin.android.litr.p468f;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* renamed from: com.linkedin.android.litr.f.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/f/c.class */
public final class C16649c implements AbstractC16647a {
    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: a */
    public /* synthetic */ int mo6826a(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("sample-rate");
        return integer;
    }

    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: a */
    public final void mo6825a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        byteBuffer2.put(byteBuffer);
    }

    @Override // com.linkedin.android.litr.p468f.AbstractC16647a
    /* renamed from: b */
    public /* synthetic */ int mo6824b(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("channel-count");
        return integer;
    }
}
