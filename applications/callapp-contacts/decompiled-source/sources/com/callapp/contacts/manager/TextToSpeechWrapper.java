package com.callapp.contacts.manager;

import android.speech.tts.TextToSpeech;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/TextToSpeechWrapper.class */
public class TextToSpeechWrapper {

    /* renamed from: a  reason: collision with root package name */
    public TextToSpeech f14940a;

    public final void a() {
        TextToSpeech textToSpeech = this.f14940a;
        this.f14940a = null;
        if (textToSpeech != null) {
            textToSpeech.stop();
            textToSpeech.shutdown();
        }
    }
}
