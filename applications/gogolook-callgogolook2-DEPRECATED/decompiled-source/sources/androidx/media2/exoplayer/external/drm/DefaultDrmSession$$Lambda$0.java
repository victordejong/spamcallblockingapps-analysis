package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.util.EventDispatcher;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$0.class */
public final /* synthetic */ class DefaultDrmSession$$Lambda$0 implements EventDispatcher.Event {
    public static final EventDispatcher.Event $instance = new DefaultDrmSession$$Lambda$0();

    @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
    public void sendTo(Object obj) {
        ((DefaultDrmSessionEventListener) obj).onDrmSessionReleased();
    }
}
