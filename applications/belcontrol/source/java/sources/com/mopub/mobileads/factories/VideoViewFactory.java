package com.mopub.mobileads.factories;

import android.content.Context;
import androidx.media2.widget.VideoView;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/VideoViewFactory.class */
public class VideoViewFactory {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public static VideoViewFactory f5003a = new VideoViewFactory();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/VideoViewFactory$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final VideoView create(Context context) {
            qk1.m744c(context, "context");
            return getInstance().internalCreate(context);
        }

        public final VideoViewFactory getInstance() {
            return VideoViewFactory.f5003a;
        }

        public final void setInstance(VideoViewFactory videoViewFactory) {
            qk1.m744c(videoViewFactory, "<set-?>");
            VideoViewFactory.f5003a = videoViewFactory;
        }
    }

    public VideoView internalCreate(Context context) {
        qk1.m744c(context, "context");
        return new VideoView(context);
    }
}
