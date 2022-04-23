package com.google.android.play.core.splitinstall;

import com.google.android.play.core.splitinstall.model.a;
import com.google.android.play.core.tasks.j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/SplitInstallException.class */
public class SplitInstallException extends j {

    /* renamed from: a  reason: collision with root package name */
    public final int f31454a;

    public SplitInstallException(int i) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i), a.a(i)));
        if (i != 0) {
            this.f31454a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
