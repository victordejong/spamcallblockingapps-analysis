package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
@TargetApi(19)
/* renamed from: com.google.android.gms.internal.ads.pc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pc.class */
final class C6844pc extends C6807oc {

    /* renamed from: j */
    private final AudioTimestamp f27926j = new AudioTimestamp();

    /* renamed from: k */
    private long f27927k;

    /* renamed from: l */
    private long f27928l;

    /* renamed from: m */
    private long f27929m;

    public C6844pc() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.C6807oc
    /* renamed from: a */
    public final void mo12315a(AudioTrack audioTrack, boolean z) {
        super.mo12315a(audioTrack, z);
        this.f27927k = 0L;
        this.f27928l = 0L;
        this.f27929m = 0L;
    }

    @Override // com.google.android.gms.internal.ads.C6807oc
    /* renamed from: f */
    public final boolean mo12314f() {
        boolean timestamp = this.f27490a.getTimestamp(this.f27926j);
        if (timestamp) {
            long j = this.f27926j.framePosition;
            if (this.f27928l > j) {
                this.f27927k++;
            }
            this.f27928l = j;
            this.f27929m = j + (this.f27927k << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.C6807oc
    /* renamed from: g */
    public final long mo12313g() {
        return this.f27926j.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.C6807oc
    /* renamed from: h */
    public final long mo12312h() {
        return this.f27929m;
    }
}
