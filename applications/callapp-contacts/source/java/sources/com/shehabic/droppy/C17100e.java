package com.shehabic.droppy;

import android.content.Context;
import android.view.View;
import com.shehabic.droppy.views.DroppyMenuSeparatorView;
/* renamed from: com.shehabic.droppy.e */
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/e.class */
public final class C17100e extends AbstractC17098c {
    public C17100e() {
        this.f60686b = 2;
        mo5869a(-1);
        this.f60690f = false;
    }

    @Override // com.shehabic.droppy.AbstractC17098c, com.shehabic.droppy.AbstractC17099d
    /* renamed from: a */
    public final View mo5867a(Context context) {
        if (this.f60687c == null) {
            this.f60687c = new DroppyMenuSeparatorView(context);
        }
        return this.f60687c;
    }
}
