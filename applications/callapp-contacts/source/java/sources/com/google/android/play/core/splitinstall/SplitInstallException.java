package com.google.android.play.core.splitinstall;

import com.google.android.play.core.splitinstall.model.C15163a;
import com.google.android.play.core.tasks.AbstractC15186j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/SplitInstallException.class */
public class SplitInstallException extends AbstractC15186j {

    /* renamed from: a */
    public final int f54869a;

    public SplitInstallException(int i) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i), C15163a.m9358a(i)));
        if (i != 0) {
            this.f54869a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
