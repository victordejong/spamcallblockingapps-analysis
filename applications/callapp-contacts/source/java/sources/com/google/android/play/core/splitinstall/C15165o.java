package com.google.android.play.core.splitinstall;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/o.class */
public final class C15165o {

    /* renamed from: a */
    private final Context f54982a;

    public C15165o(Context context) {
        this.f54982a = context;
    }

    /* renamed from: a */
    public final Set<String> m9349a() {
        HashSet hashSet;
        synchronized (this) {
            try {
                Set<String> stringSet = this.f54982a.getSharedPreferences("playcore_split_install_internal", 0).getStringSet("deferred_uninstall_module_list", new HashSet());
                hashSet = stringSet;
                if (stringSet == null) {
                    hashSet = new HashSet();
                }
            } catch (Exception e) {
                return new HashSet();
            }
        }
        return hashSet;
    }
}
