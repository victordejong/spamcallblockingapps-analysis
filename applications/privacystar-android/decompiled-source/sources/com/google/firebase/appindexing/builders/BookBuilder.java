package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/BookBuilder.class */
public class BookBuilder extends IndexableBuilder<BookBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BookBuilder() {
        super("Book");
    }

    public BookBuilder setAuthor(@NonNull PersonBuilder... personBuilderArr) {
        return put("author", personBuilderArr);
    }
}
