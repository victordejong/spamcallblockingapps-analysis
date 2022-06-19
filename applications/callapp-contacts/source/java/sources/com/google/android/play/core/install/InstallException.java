package com.google.android.play.core.install;

import com.google.android.play.core.install.model.C15008a;
import com.google.android.play.core.tasks.AbstractC15186j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/install/InstallException.class */
public class InstallException extends AbstractC15186j {

    /* renamed from: a */
    private final int f54734a;

    public InstallException(int i) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i), C15008a.m9624a(i)));
        if (i != 0) {
            this.f54734a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
