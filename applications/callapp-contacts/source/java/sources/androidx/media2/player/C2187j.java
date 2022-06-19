package androidx.media2.player;

import android.media.PlaybackParams;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
/* renamed from: androidx.media2.player.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/j.class */
public final class C2187j {

    /* renamed from: a */
    PlaybackParams f8610a;

    /* renamed from: b */
    private Integer f8611b;

    /* renamed from: c */
    private Float f8612c;

    /* renamed from: d */
    private Float f8613d;

    /* renamed from: androidx.media2.player.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/j$a.class */
    public static final class C2188a {

        /* renamed from: a */
        private Integer f8614a;

        /* renamed from: b */
        private Float f8615b;

        /* renamed from: c */
        private Float f8616c;

        /* renamed from: d */
        private PlaybackParams f8617d;

        public C2188a() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f8617d = new PlaybackParams();
            }
        }

        public C2188a(PlaybackParams playbackParams) {
            this.f8617d = playbackParams;
        }

        public C2188a(C2187j c2187j) {
            Objects.requireNonNull(c2187j, "playbakcParams shouldn't be null");
            if (Build.VERSION.SDK_INT >= 23) {
                this.f8617d = Build.VERSION.SDK_INT >= 23 ? c2187j.f8610a : null;
                return;
            }
            this.f8614a = c2187j.m41190a();
            this.f8615b = c2187j.m41189b();
            this.f8616c = c2187j.m41188c();
        }

        /* renamed from: a */
        public final C2188a m41187a() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f8617d.setAudioFallbackMode(0);
            } else {
                this.f8614a = 0;
            }
            return this;
        }

        /* renamed from: a */
        public final C2188a m41186a(float f) {
            if (f != BitmapDescriptorFactory.HUE_RED) {
                if (f < BitmapDescriptorFactory.HUE_RED) {
                    throw new IllegalArgumentException("negative speed is not supported");
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f8617d.setSpeed(f);
                } else {
                    this.f8616c = Float.valueOf(f);
                }
                return this;
            }
            throw new IllegalArgumentException("0 speed is not allowed");
        }

        /* renamed from: b */
        public final C2188a m41185b() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f8617d.setPitch(1.0f);
            } else {
                this.f8615b = Float.valueOf(1.0f);
            }
            return this;
        }

        /* renamed from: c */
        public final C2187j m41184c() {
            return Build.VERSION.SDK_INT >= 23 ? new C2187j(this.f8617d) : new C2187j(this.f8614a, this.f8615b, this.f8616c);
        }
    }

    C2187j(PlaybackParams playbackParams) {
        this.f8610a = playbackParams;
    }

    C2187j(Integer num, Float f, Float f2) {
        this.f8611b = num;
        this.f8612c = f;
        this.f8613d = f2;
    }

    /* renamed from: a */
    public final Integer m41190a() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return Integer.valueOf(this.f8610a.getAudioFallbackMode());
            } catch (IllegalStateException e) {
                return null;
            }
        }
        return this.f8611b;
    }

    /* renamed from: b */
    public final Float m41189b() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return Float.valueOf(this.f8610a.getPitch());
            } catch (IllegalStateException e) {
                return null;
            }
        }
        return this.f8612c;
    }

    /* renamed from: c */
    public final Float m41188c() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return Float.valueOf(this.f8610a.getSpeed());
            } catch (IllegalStateException e) {
                return null;
            }
        }
        return this.f8613d;
    }
}
