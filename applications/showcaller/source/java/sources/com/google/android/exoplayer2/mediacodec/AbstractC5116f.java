package com.google.android.exoplayer2.mediacodec;

import java.util.List;
/* renamed from: com.google.android.exoplayer2.mediacodec.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f.class */
public interface AbstractC5116f {

    /* renamed from: a */
    public static final AbstractC5116f f16084a = new C5117a();

    /* renamed from: com.google.android.exoplayer2.mediacodec.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f$a.class */
    static final class C5117a implements AbstractC5116f {
        C5117a() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.AbstractC5116f
        /* renamed from: a */
        public C5115e mo20402a() {
            return MediaCodecUtil.m20445o();
        }

        @Override // com.google.android.exoplayer2.mediacodec.AbstractC5116f
        /* renamed from: b */
        public List<C5115e> mo20401b(String str, boolean z, boolean z2) {
            return MediaCodecUtil.m20450j(str, z, z2);
        }
    }

    /* renamed from: a */
    C5115e mo20402a();

    /* renamed from: b */
    List<C5115e> mo20401b(String str, boolean z, boolean z2);
}
