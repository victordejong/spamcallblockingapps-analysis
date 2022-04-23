package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.a.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/a.class */
final class a extends androidx.core.view.a {

    /* renamed from: b  reason: collision with root package name */
    private final c.a f30972b;

    public a(Context context, int i) {
        this.f30972b = new c.a(16, context.getString(i));
    }

    @Override // androidx.core.view.a
    public final void a(View view, c cVar) {
        super.a(view, cVar);
        cVar.a(this.f30972b);
    }
}
