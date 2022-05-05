package com.android.contacts.list;

import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ax.class */
public interface ax {
    void onCreateNewContactAction();

    void onEditContactAction(Uri uri);

    void onEditContactAction(Uri uri, long j);

    void onPickContactAction(Uri uri);

    void onSelectAContact(boolean z);

    void onShortcutIntentCreated(Intent intent);
}
