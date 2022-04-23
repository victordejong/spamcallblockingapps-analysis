package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.tasks.d;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a.class */
public interface a {
    d<c> a(int i);

    d<Integer> a(b bVar);

    Set<String> a();

    boolean a(c cVar, Activity activity, int i) throws IntentSender.SendIntentException;
}
