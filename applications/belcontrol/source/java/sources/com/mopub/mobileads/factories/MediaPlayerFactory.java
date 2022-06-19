package com.mopub.mobileads.factories;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory.class */
public class MediaPlayerFactory {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public static MediaPlayerFactory f4999a = new MediaPlayerFactory();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final ev create(Context context) {
            qk1.m744c(context, "context");
            return getInstance().internalCreate(context);
        }

        public final MediaPlayerFactory getInstance() {
            return MediaPlayerFactory.f4999a;
        }

        public final void setInstance(MediaPlayerFactory mediaPlayerFactory) {
            qk1.m744c(mediaPlayerFactory, "<set-?>");
            MediaPlayerFactory.f4999a = mediaPlayerFactory;
        }
    }

    public ev internalCreate(Context context) {
        qk1.m744c(context, "context");
        return new ev(context);
    }
}
