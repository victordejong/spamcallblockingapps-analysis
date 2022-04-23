package androidx.media2.player;

import android.media.PlaybackParams;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    PlaybackParams f4458a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f4459b;

    /* renamed from: c  reason: collision with root package name */
    private Float f4460c;

    /* renamed from: d  reason: collision with root package name */
    private Float f4461d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Integer f4462a;

        /* renamed from: b  reason: collision with root package name */
        private Float f4463b;

        /* renamed from: c  reason: collision with root package name */
        private Float f4464c;

        /* renamed from: d  reason: collision with root package name */
        private PlaybackParams f4465d;

        public a() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f4465d = new PlaybackParams();
            }
        }

        public a(PlaybackParams playbackParams) {
            this.f4465d = playbackParams;
        }

        public a(j jVar) {
            Objects.requireNonNull(jVar, "playbakcParams shouldn't be null");
            if (Build.VERSION.SDK_INT >= 23) {
                this.f4465d = Build.VERSION.SDK_INT >= 23 ? jVar.f4458a : null;
                return;
            }
            this.f4462a = jVar.a();
            this.f4463b = jVar.b();
            this.f4464c = jVar.c();
        }

        public final a a() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f4465d.setAudioFallbackMode(0);
            } else {
                this.f4462a = 0;
            }
            return this;
        }

        public final a a(float f) {
            if (f == BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("0 speed is not allowed");
            } else if (f >= BitmapDescriptorFactory.HUE_RED) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f4465d.setSpeed(f);
                } else {
                    this.f4464c = Float.valueOf(f);
                }
                return this;
            } else {
                throw new IllegalArgumentException("negative speed is not supported");
            }
        }

        public final a b() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f4465d.setPitch(1.0f);
            } else {
                this.f4463b = Float.valueOf(1.0f);
            }
            return this;
        }

        public final j c() {
            return Build.VERSION.SDK_INT >= 23 ? new j(this.f4465d) : new j(this.f4462a, this.f4463b, this.f4464c);
        }
    }

    j(PlaybackParams playbackParams) {
        this.f4458a = playbackParams;
    }

    j(Integer num, Float f, Float f2) {
        this.f4459b = num;
        this.f4460c = f;
        this.f4461d = f2;
    }

    public final Integer a() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f4459b;
        }
        try {
            return Integer.valueOf(this.f4458a.getAudioFallbackMode());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    public final Float b() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f4460c;
        }
        try {
            return Float.valueOf(this.f4458a.getPitch());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    public final Float c() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f4461d;
        }
        try {
            return Float.valueOf(this.f4458a.getSpeed());
        } catch (IllegalStateException e) {
            return null;
        }
    }
}
