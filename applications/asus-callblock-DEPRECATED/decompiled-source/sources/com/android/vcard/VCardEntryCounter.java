package com.android.vcard;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntryCounter.class */
public class VCardEntryCounter implements VCardInterpreter {
    private int mCount;

    public int getCount() {
        return this.mCount;
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryEnded() {
        this.mCount++;
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryStarted() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onPropertyCreated(VCardProperty vCardProperty) {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardEnded() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardStarted() {
    }
}
