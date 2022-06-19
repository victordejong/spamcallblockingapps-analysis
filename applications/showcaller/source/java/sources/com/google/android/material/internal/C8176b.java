package com.google.android.material.internal;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
/* renamed from: com.google.android.material.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/b.class */
public class C8176b {
    /* renamed from: a */
    public static Activity m4557a(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
