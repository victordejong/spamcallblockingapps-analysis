package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/AudiobookBuilder.class */
public class AudiobookBuilder extends IndexableBuilder<AudiobookBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AudiobookBuilder() {
        super("Audiobook");
    }

    public AudiobookBuilder setAuthor(@NonNull PersonBuilder... personBuilderArr) {
        return put("author", personBuilderArr);
    }

    public AudiobookBuilder setReadBy(@NonNull PersonBuilder... personBuilderArr) {
        return put("readBy", personBuilderArr);
    }
}
