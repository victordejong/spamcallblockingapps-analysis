package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.install.b;
import com.google.android.play.core.tasks.d;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/c.class */
public interface c {
    d<a> a();

    void a(b bVar);

    boolean a(a aVar, Activity activity) throws IntentSender.SendIntentException;

    d<Void> b();
}
