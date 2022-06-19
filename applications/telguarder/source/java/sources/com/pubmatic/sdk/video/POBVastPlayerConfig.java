package com.pubmatic.sdk.video;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/POBVastPlayerConfig.class */
public class POBVastPlayerConfig {

    /* renamed from: a */
    private int f868a;

    /* renamed from: b */
    private int f869b;

    /* renamed from: c */
    private int f870c;

    /* renamed from: d */
    private int f871d;

    /* renamed from: e */
    private int f872e;

    /* renamed from: f */
    private int f873f;

    /* renamed from: g */
    private int f874g;

    /* renamed from: h */
    private boolean f875h;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder.class */
    public static class ConfigBuilder {
        public static final int DEFAULT_MEDIA_URI_TIMEOUT = 10000;
        public static final boolean DEFAULT_PLAY_ON_MUTE = true;
        public static final int DEFAULT_SKIP = 1;
        public static final int DEFAULT_SKIP_AFTER = 15;
        public static final int DEFAULT_WRAPPER_URI_TIMEOUT = 5000;

        /* renamed from: a */
        private int f876a;

        /* renamed from: b */
        private int f877b;

        /* renamed from: d */
        private int f879d;

        /* renamed from: h */
        private boolean f883h = true;

        /* renamed from: c */
        private int f878c = 1;

        /* renamed from: e */
        private int f880e = 15;

        /* renamed from: f */
        private int f881f = 5000;

        /* renamed from: g */
        private int f882g = 10000;

        public ConfigBuilder(int i, int i2) {
            this.f876a = i;
            this.f877b = i2;
        }

        /* renamed from: a */
        private static int m713a(boolean z) {
            return z ? 0 : 15;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x00df, code lost:
            if (r0 == 2) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00f9, code lost:
            if (r0 == 6) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00fc, code lost:
            r0.setPlayOnMute(true);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.pubmatic.sdk.video.POBVastPlayerConfig createVastConfig(org.json.JSONObject r7, boolean r8, boolean r9, boolean r10, java.lang.String r11) {
            /*
                Method dump skipped, instructions count: 383
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.pubmatic.sdk.video.POBVastPlayerConfig.ConfigBuilder.createVastConfig(org.json.JSONObject, boolean, boolean, boolean, java.lang.String):com.pubmatic.sdk.video.POBVastPlayerConfig");
        }

        public POBVastPlayerConfig build(boolean z) {
            return new POBVastPlayerConfig(this, z);
        }

        public ConfigBuilder mediaUriTimeout(int i) {
            if (i > this.f882g) {
                this.f882g = i;
            }
            return this;
        }

        public ConfigBuilder setPlayOnMute(boolean z) {
            this.f883h = z;
            return this;
        }

        public ConfigBuilder skip(int i) {
            this.f878c = i;
            return this;
        }

        public ConfigBuilder skipAfter(int i) {
            this.f880e = i;
            return this;
        }

        public ConfigBuilder skipMin(int i) {
            this.f879d = i;
            return this;
        }

        public ConfigBuilder wrapperUriTimeout(int i) {
            if (i > this.f881f) {
                this.f881f = i;
            }
            return this;
        }
    }

    private POBVastPlayerConfig(ConfigBuilder configBuilder, boolean z) {
        this.f868a = configBuilder.f876a;
        this.f869b = configBuilder.f877b;
        if (z) {
            this.f870c = configBuilder.f878c;
        }
        this.f871d = configBuilder.f879d;
        this.f872e = configBuilder.f880e;
        this.f873f = configBuilder.f881f;
        this.f874g = configBuilder.f882g;
        this.f875h = configBuilder.f883h;
    }

    public int getMaxDuration() {
        return this.f869b;
    }

    public int getMediaUriTimeout() {
        return this.f874g;
    }

    public int getMinDuration() {
        return this.f868a;
    }

    public int getSkip() {
        return this.f870c;
    }

    public int getSkipAfter() {
        return this.f872e;
    }

    public int getSkipMin() {
        return this.f871d;
    }

    public int getWrapperUriTimeout() {
        return this.f873f;
    }

    public boolean isPlayOnMute() {
        return this.f875h;
    }
}
