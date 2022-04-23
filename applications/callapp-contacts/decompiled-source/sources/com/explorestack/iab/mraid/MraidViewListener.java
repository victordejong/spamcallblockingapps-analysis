package com.explorestack.iab.mraid;

import com.explorestack.iab.utils.c;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidViewListener.class */
public interface MraidViewListener {
    void onClose(MraidView mraidView);

    void onError(MraidView mraidView, int i);

    void onExpand(MraidView mraidView);

    void onLoaded(MraidView mraidView);

    void onOpenBrowser(MraidView mraidView, String str, c cVar);

    void onPlayVideo(MraidView mraidView, String str);

    void onShown(MraidView mraidView);
}
