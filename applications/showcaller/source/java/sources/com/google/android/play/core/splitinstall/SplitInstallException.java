package com.google.android.play.core.splitinstall;

import com.google.android.play.core.splitinstall.p278h.C8561a;
import com.google.android.play.core.tasks.AbstractC8578j;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/SplitInstallException.class */
public class SplitInstallException extends AbstractC8578j {

    /* renamed from: a */
    private final int f38137a;

    public SplitInstallException(int i) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i), C8561a.m3341a(i)));
        if (i != 0) {
            this.f38137a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC8578j
    public int getErrorCode() {
        return this.f38137a;
    }
}
