package androidx.media2.exoplayer.external.audio;

import android.media.AudioAttributes;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f2868a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public final int f2869b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2870c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2871d;
    private AudioAttributes e;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2872a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f2873b = 0;

        /* renamed from: c  reason: collision with root package name */
        public int f2874c = 1;

        public final c a() {
            return new c(this.f2872a, this.f2873b, this.f2874c);
        }
    }

    private c(int i, int i2, int i3) {
        this.f2869b = i;
        this.f2870c = i2;
        this.f2871d = i3;
    }

    public final AudioAttributes a() {
        if (this.e == null) {
            this.e = new AudioAttributes.Builder().setContentType(this.f2869b).setFlags(this.f2870c).setUsage(this.f2871d).build();
        }
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2869b == cVar.f2869b && this.f2870c == cVar.f2870c && this.f2871d == cVar.f2871d;
    }

    public final int hashCode() {
        return ((((this.f2869b + 527) * 31) + this.f2870c) * 31) + this.f2871d;
    }
}
