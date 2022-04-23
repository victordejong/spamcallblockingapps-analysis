package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.decoder.g;
import com.google.android.exoplayer2.util.a;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c.class */
public abstract class c extends g<h, i, SubtitleDecoderException> implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f21777a;

    public c(String str) {
        super(new h[2], new i[2]);
        this.f21777a = str;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SubtitleDecoderException a(h hVar, i iVar, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) a.b(hVar.f20822c);
            iVar.a(hVar.e, a(byteBuffer.array(), byteBuffer.limit(), z), hVar.g);
            iVar.f20826a &= Integer.MAX_VALUE;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.g
    public final /* synthetic */ SubtitleDecoderException a(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    protected abstract e a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException;

    @Override // com.google.android.exoplayer2.text.f
    public final void a(long j) {
    }

    @Override // com.google.android.exoplayer2.decoder.g
    public final /* synthetic */ h g() {
        return new h();
    }

    @Override // com.google.android.exoplayer2.decoder.g
    public final /* synthetic */ i h() {
        return new d(new f.a() { // from class: com.google.android.exoplayer2.text._$$Lambda$c$MjAfje3fZVm34KjRCGu1_GKlZqc
            @Override // com.google.android.exoplayer2.decoder.f.a
            public final void releaseOutputBuffer(f fVar) {
                c.this.a((c) ((i) fVar));
            }
        });
    }
}
