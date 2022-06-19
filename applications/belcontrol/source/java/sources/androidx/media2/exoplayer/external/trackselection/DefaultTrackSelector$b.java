package androidx.media2.exoplayer.external.trackselection;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b.class */
public final class DefaultTrackSelector$b {

    /* renamed from: a */
    public final int f1165a;

    /* renamed from: b */
    public final int f1166b;

    /* renamed from: c */
    public final String f1167c;

    public DefaultTrackSelector$b(int i, int i2, String str) {
        this.f1165a = i;
        this.f1166b = i2;
        this.f1167c = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$b.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$b defaultTrackSelector$b = (DefaultTrackSelector$b) obj;
        if (this.f1165a != defaultTrackSelector$b.f1165a || this.f1166b != defaultTrackSelector$b.f1166b || !TextUtils.equals(this.f1167c, defaultTrackSelector$b.f1167c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1165a;
        int i2 = this.f1166b;
        String str = this.f1167c;
        return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
    }
}
