package androidx.media2.player;

import android.media.TimedMetaData;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private long f4478a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4479b;

    public m(long j, byte[] bArr) {
        this.f4478a = j;
        this.f4479b = bArr;
    }

    public m(TimedMetaData timedMetaData) {
        this.f4478a = timedMetaData.getTimestamp();
        this.f4479b = timedMetaData.getMetaData();
    }
}
