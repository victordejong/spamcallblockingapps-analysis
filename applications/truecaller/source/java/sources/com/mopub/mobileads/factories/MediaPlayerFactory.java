package com.mopub.mobileads.factories;

import android.content.Context;
import androidx.media2.player.MediaPlayer;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/media2/player/MediaPlayer;", "internalCreate", "(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;", "<init>", "()V", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory.class */
public class MediaPlayerFactory {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public static MediaPlayerFactory f9001a = new MediaPlayerFactory();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/media2/player/MediaPlayer;", "create", "(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;", "Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "instance", "Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "getInstance", "()Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "setInstance", "(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final MediaPlayer create(Context context) {
            l.f(context, AnalyticsConstants.CONTEXT);
            return getInstance().internalCreate(context);
        }

        public final MediaPlayerFactory getInstance() {
            return MediaPlayerFactory.f9001a;
        }

        public final void setInstance(MediaPlayerFactory mediaPlayerFactory) {
            l.f(mediaPlayerFactory, "<set-?>");
            MediaPlayerFactory.f9001a = mediaPlayerFactory;
        }
    }

    public MediaPlayer internalCreate(Context context) {
        l.f(context, AnalyticsConstants.CONTEXT);
        return new MediaPlayer(context);
    }
}
