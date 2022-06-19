package androidx.media2.exoplayer.external.trackselection;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a.class */
public final class DefaultTrackSelector$a {

    /* renamed from: a */
    public final int f1090a;

    /* renamed from: b */
    public final int f1091b;

    /* renamed from: c */
    public final String f1092c;

    public DefaultTrackSelector$a(int i, int i2, String str) {
        this.f1090a = i;
        this.f1091b = i2;
        this.f1092c = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$a.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$a defaultTrackSelector$a = (DefaultTrackSelector$a) obj;
        if (this.f1090a != defaultTrackSelector$a.f1090a || this.f1091b != defaultTrackSelector$a.f1091b || !TextUtils.equals(this.f1092c, defaultTrackSelector$a.f1092c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1090a;
        int i2 = this.f1091b;
        String str = this.f1092c;
        return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
    }
}
