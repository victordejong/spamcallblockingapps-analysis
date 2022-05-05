package com.android.vcard;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardInterpreter.class */
public interface VCardInterpreter {
    void onEntryEnded();

    void onEntryStarted();

    void onPropertyCreated(VCardProperty vCardProperty);

    void onVCardEnded();

    void onVCardStarted();
}
