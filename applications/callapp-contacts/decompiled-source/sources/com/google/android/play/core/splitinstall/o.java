package com.google.android.play.core.splitinstall;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31541a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context) {
        this.f31541a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<String> a() {
        Set<String> set;
        synchronized (this) {
            try {
                Set<String> stringSet = this.f31541a.getSharedPreferences("playcore_split_install_internal", 0).getStringSet("deferred_uninstall_module_list", new HashSet());
                set = stringSet;
                if (stringSet == null) {
                    set = new HashSet<>();
                }
            } catch (Exception e) {
                return new HashSet();
            }
        }
        return set;
    }
}
