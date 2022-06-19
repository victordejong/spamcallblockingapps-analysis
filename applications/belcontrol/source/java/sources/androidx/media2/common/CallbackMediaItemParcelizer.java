package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItemParcelizer.class */
public final class CallbackMediaItemParcelizer {
    public static CallbackMediaItem read(d40 d40Var) {
        CallbackMediaItem callbackMediaItem = new CallbackMediaItem();
        ((MediaItem) callbackMediaItem).b = d40Var.m2881I(((MediaItem) callbackMediaItem).b, 1);
        ((MediaItem) callbackMediaItem).c = d40Var.m2825y(((MediaItem) callbackMediaItem).c, 2);
        ((MediaItem) callbackMediaItem).d = d40Var.m2825y(((MediaItem) callbackMediaItem).d, 3);
        callbackMediaItem.d();
        return callbackMediaItem;
    }

    public static void write(CallbackMediaItem callbackMediaItem, d40 d40Var) {
        d40Var.m2879K(false, false);
        callbackMediaItem.e(d40Var.m2851g());
        d40Var.m2838m0(((MediaItem) callbackMediaItem).b, 1);
        d40Var.m2860b0(((MediaItem) callbackMediaItem).c, 2);
        d40Var.m2860b0(((MediaItem) callbackMediaItem).d, 3);
    }
}
