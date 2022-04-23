package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/StickerPackBuilder.class */
public final class StickerPackBuilder extends IndexableBuilder<StickerPackBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public StickerPackBuilder() {
        super("StickerPack");
    }

    public final StickerPackBuilder setHasSticker(@NonNull StickerBuilder... stickerBuilderArr) {
        return put("hasSticker", stickerBuilderArr);
    }
}
