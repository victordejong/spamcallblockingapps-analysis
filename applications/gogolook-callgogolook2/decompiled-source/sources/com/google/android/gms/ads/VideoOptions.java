package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zznf;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoOptions.class */
public final class VideoOptions {
    public final boolean zzvl;
    public final boolean zzvm;
    public final boolean zzvn;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoOptions$Builder.class */
    public static final class Builder {
        public boolean zzvl = true;
        public boolean zzvm = false;
        public boolean zzvn = false;

        public final VideoOptions build() {
            return new VideoOptions(this);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.zzvn = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.zzvm = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.zzvl = z;
            return this;
        }
    }

    public VideoOptions(Builder builder) {
        this.zzvl = builder.zzvl;
        this.zzvm = builder.zzvm;
        this.zzvn = builder.zzvn;
    }

    public VideoOptions(zznf zznfVar) {
        this.zzvl = zznfVar.f6785a;
        this.zzvm = zznfVar.f6786b;
        this.zzvn = zznfVar.f6787c;
    }

    public final boolean getClickToExpandRequested() {
        return this.zzvn;
    }

    public final boolean getCustomControlsRequested() {
        return this.zzvm;
    }

    public final boolean getStartMuted() {
        return this.zzvl;
    }
}
