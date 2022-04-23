package com.shehabic.droppy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/b.class */
public final class b extends c {
    public b(int i) {
        this.f = false;
        this.f34995b = 1;
        this.f34997d = i;
    }

    public b(View view) {
        this.f = false;
        this.f34995b = 1;
        this.f34996c = view;
    }

    @Override // com.shehabic.droppy.c, com.shehabic.droppy.d
    public final View a(Context context) {
        if (this.f34996c == null) {
            this.f34996c = LayoutInflater.from(context).inflate(this.f34997d, (ViewGroup) null);
        }
        return this.f34996c;
    }
}
