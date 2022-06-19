package com.google.android.play.core.install;

import com.google.android.play.core.install.p277b.C8465a;
import com.google.android.play.core.tasks.AbstractC8578j;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/install/InstallException.class */
public class InstallException extends AbstractC8578j {

    /* renamed from: a */
    private final int f38015a;

    public InstallException(int i) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i), C8465a.m3568a(i)));
        if (i != 0) {
            this.f38015a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC8578j
    public int getErrorCode() {
        return this.f38015a;
    }
}
