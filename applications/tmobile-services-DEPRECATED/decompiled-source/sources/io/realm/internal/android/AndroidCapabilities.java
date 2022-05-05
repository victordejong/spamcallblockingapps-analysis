package io.realm.internal.android;

import android.os.Looper;
import io.realm.internal.Capabilities;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/AndroidCapabilities.class */
public class AndroidCapabilities implements Capabilities {

    /* renamed from: a */
    private final Looper f20201a = Looper.myLooper();

    /* renamed from: b */
    private final boolean f20202b = m2591d();

    /* renamed from: c */
    private boolean m2592c() {
        return this.f20201a != null;
    }

    /* renamed from: d */
    private static boolean m2591d() {
        String name = Thread.currentThread().getName();
        return name != null && name.startsWith("IntentService[");
    }

    @Override // io.realm.internal.Capabilities
    /* renamed from: a */
    public boolean mo2594a() {
        return m2592c() && !this.f20202b;
    }

    @Override // io.realm.internal.Capabilities
    /* renamed from: b */
    public void mo2593b(@Nullable String str) {
        String str2 = "";
        if (!m2592c()) {
            if (str != null) {
                str2 = str + " Realm cannot be automatically updated on a thread without a looper.";
            }
            throw new IllegalStateException(str2);
        } else if (this.f20202b) {
            if (str != null) {
                str2 = str + " Realm cannot be automatically updated on an IntentService thread.";
            }
            throw new IllegalStateException(str2);
        }
    }
}
