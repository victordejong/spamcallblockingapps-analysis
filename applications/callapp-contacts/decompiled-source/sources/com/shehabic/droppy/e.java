package com.shehabic.droppy;

import android.content.Context;
import android.view.View;
import com.shehabic.droppy.views.DroppyMenuSeparatorView;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/e.class */
public final class e extends c {
    public e() {
        this.f34995b = 2;
        a(-1);
        this.f = false;
    }

    @Override // com.shehabic.droppy.c, com.shehabic.droppy.d
    public final View a(Context context) {
        if (this.f34996c == null) {
            this.f34996c = new DroppyMenuSeparatorView(context);
        }
        return this.f34996c;
    }
}
