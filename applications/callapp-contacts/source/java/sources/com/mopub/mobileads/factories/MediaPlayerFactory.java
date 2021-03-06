package com.mopub.mobileads.factories;

import android.content.Context;
import androidx.media2.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018�� \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, m4298d2 = {"Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "", "()V", "internalCreate", "Landroidx/media2/player/MediaPlayer;", "context", "Landroid/content/Context;", "Companion", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory.class */
public class MediaPlayerFactory {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    private static MediaPlayerFactory f59697a = new MediaPlayerFactory();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, m4298d2 = {"Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;", "", "()V", "instance", "Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "getInstance", "()Lcom/mopub/mobileads/factories/MediaPlayerFactory;", "setInstance", "(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V", "create", "Landroidx/media2/player/MediaPlayer;", "context", "Landroid/content/Context;", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MediaPlayerFactory$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaPlayer create(Context context) {
            C18524p.m3841c(context, "context");
            return getInstance().internalCreate(context);
        }

        public final MediaPlayerFactory getInstance() {
            return MediaPlayerFactory.f59697a;
        }

        public final void setInstance(MediaPlayerFactory mediaPlayerFactory) {
            C18524p.m3841c(mediaPlayerFactory, "<set-?>");
            MediaPlayerFactory.f59697a = mediaPlayerFactory;
        }
    }

    public MediaPlayer internalCreate(Context context) {
        C18524p.m3841c(context, "context");
        return new MediaPlayer(context);
    }
}
