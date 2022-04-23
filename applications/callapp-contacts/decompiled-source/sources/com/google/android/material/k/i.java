package com.google.android.material.k;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.r;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/i.class */
public final class i {
    private i() {
    }

    public static d a(int i) {
        if (i != 0 && i == 1) {
            return new e();
        }
        return new l();
    }

    public static void a(View view) {
        Drawable background = view.getBackground();
        if (background instanceof h) {
            a(view, (h) background);
        }
    }

    public static void a(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof h) {
            ((h) background).r(f);
        }
    }

    public static void a(View view, h hVar) {
        if (hVar.g()) {
            hVar.q(r.c(view));
        }
    }
}
