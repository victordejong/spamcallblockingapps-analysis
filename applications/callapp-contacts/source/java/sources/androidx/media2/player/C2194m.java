package androidx.media2.player;

import android.media.TimedMetaData;
/* renamed from: androidx.media2.player.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/m.class */
public final class C2194m {

    /* renamed from: a */
    private long f8641a;

    /* renamed from: b */
    private byte[] f8642b;

    public C2194m(long j, byte[] bArr) {
        this.f8641a = j;
        this.f8642b = bArr;
    }

    public C2194m(TimedMetaData timedMetaData) {
        this.f8641a = timedMetaData.getTimestamp();
        this.f8642b = timedMetaData.getMetaData();
    }
}
