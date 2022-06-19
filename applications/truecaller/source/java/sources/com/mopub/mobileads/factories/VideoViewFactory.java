package com.mopub.mobileads.factories;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import n3.y.e.f0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/mopub/mobileads/factories/VideoViewFactory;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ln3/y/e/f0;", "internalCreate", "(Landroid/content/Context;)Ln3/y/e/f0;", "<init>", "()V", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/VideoViewFactory.class */
public class VideoViewFactory {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public static VideoViewFactory f9005a = new VideoViewFactory();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ln3/y/e/f0;", "create", "(Landroid/content/Context;)Ln3/y/e/f0;", "Lcom/mopub/mobileads/factories/VideoViewFactory;", "instance", "Lcom/mopub/mobileads/factories/VideoViewFactory;", "getInstance", "()Lcom/mopub/mobileads/factories/VideoViewFactory;", "setInstance", "(Lcom/mopub/mobileads/factories/VideoViewFactory;)V", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/VideoViewFactory$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final f0 create(Context context) {
            l.f(context, AnalyticsConstants.CONTEXT);
            return getInstance().internalCreate(context);
        }

        public final VideoViewFactory getInstance() {
            return VideoViewFactory.f9005a;
        }

        public final void setInstance(VideoViewFactory videoViewFactory) {
            l.f(videoViewFactory, "<set-?>");
            VideoViewFactory.f9005a = videoViewFactory;
        }
    }

    public f0 internalCreate(Context context) {
        l.f(context, AnalyticsConstants.CONTEXT);
        return new f0(context);
    }
}
