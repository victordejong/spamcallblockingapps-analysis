package org.mistergroup.shouldianswer.utils;

import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import java.util.HashMap;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.z */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/z.class */
public final class C3147z {

    /* renamed from: a */
    public static final C3147z f9295a = new C3147z();

    /* renamed from: b */
    private static TextToSpeech f9296b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.utils.z$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/z$a.class */
    public static final class C3148a implements TextToSpeech.OnInitListener {

        /* renamed from: a */
        final /* synthetic */ String f9297a;

        C3148a(String str) {
            this.f9297a = str;
        }

        @Override // android.speech.tts.TextToSpeech.OnInitListener
        public final void onInit(int i) {
            C3147z c3147z = C3147z.f9295a;
            if (C3147z.f9296b == null || i == -1) {
                C3104j.m152c(C3104j.f9124a, "TTSHelper initialization error", null, 2, null);
                return;
            }
            try {
                C3147z c3147z2 = C3147z.f9295a;
                TextToSpeech textToSpeech = C3147z.f9296b;
                if (textToSpeech == null) {
                    C1694h.m3124a();
                }
                textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: org.mistergroup.shouldianswer.utils.z.a.1
                    @Override // android.speech.tts.UtteranceProgressListener
                    public void onDone(String str) {
                        C1694h.m3117b(str, "s");
                        C3104j.m157a(C3104j.f9124a, "TTSHelper.shutdown", (String) null, 2, (Object) null);
                        C3147z c3147z3 = C3147z.f9295a;
                        TextToSpeech textToSpeech2 = C3147z.f9296b;
                        if (textToSpeech2 == null) {
                            C1694h.m3124a();
                        }
                        textToSpeech2.shutdown();
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public void onError(String str) {
                        C1694h.m3117b(str, "s");
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public void onStart(String str) {
                        C1694h.m3117b(str, "s");
                    }
                });
                C3104j.m157a(C3104j.f9124a, "TTSHelper.speak", (String) null, 2, (Object) null);
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put("utteranceId", "mySpeachId");
                C3147z c3147z3 = C3147z.f9295a;
                TextToSpeech textToSpeech2 = C3147z.f9296b;
                if (textToSpeech2 == null) {
                    C1694h.m3124a();
                }
                textToSpeech2.speak(this.f9297a, 1, hashMap);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    private C3147z() {
    }

    /* renamed from: a */
    public final void m1a(String str) {
        C1694h.m3117b(str, "text");
        try {
            C3104j.m157a(C3104j.f9124a, "TTSHelper.initializing", (String) null, 2, (Object) null);
            f9296b = new TextToSpeech(MyApp.f5480c.m1802a(), new C3148a(str));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
