package com.crashlytics.android.answers.shim;

import android.util.Log;
import com.crashlytics.android.answers.Answers;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/shim/AnswersKitEventLogger.class */
class AnswersKitEventLogger implements KitEventLogger {
    private static final String TAG = "AnswersKitEventLogger";
    private final Answers answers;

    private AnswersKitEventLogger(Answers answers) {
        this.answers = answers;
    }

    public static AnswersKitEventLogger create() throws NoClassDefFoundError, IllegalStateException {
        return create(Answers.getInstance());
    }

    static AnswersKitEventLogger create(Answers answers) throws IllegalStateException {
        if (answers != null) {
            return new AnswersKitEventLogger(answers);
        }
        throw new IllegalStateException("Answers must be initialized before logging kit events");
    }

    @Override // com.crashlytics.android.answers.shim.KitEventLogger
    public void logKitEvent(KitEvent kitEvent) {
        try {
            this.answers.logCustom(kitEvent.toCustomEvent());
        } catch (Throwable th) {
            Log.w(TAG, "Unexpected error sending Answers event", th);
        }
    }
}
