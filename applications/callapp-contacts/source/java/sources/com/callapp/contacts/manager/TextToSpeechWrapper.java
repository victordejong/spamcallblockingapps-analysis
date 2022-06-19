package com.callapp.contacts.manager;

import android.speech.tts.TextToSpeech;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/TextToSpeechWrapper.class */
public class TextToSpeechWrapper {

    /* renamed from: a */
    public TextToSpeech f25847a;

    /* renamed from: a */
    public final void m28470a() {
        TextToSpeech textToSpeech = this.f25847a;
        this.f25847a = null;
        if (textToSpeech != null) {
            textToSpeech.stop();
            textToSpeech.shutdown();
        }
    }
}
