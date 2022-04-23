package com.google.android.play.core.install;

import com.google.android.play.core.install.model.a;
import com.google.android.play.core.tasks.j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/install/InstallException.class */
public class InstallException extends j {

    /* renamed from: a  reason: collision with root package name */
    private final int f31333a;

    public InstallException(int i) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i), a.a(i)));
        if (i != 0) {
            this.f31333a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
