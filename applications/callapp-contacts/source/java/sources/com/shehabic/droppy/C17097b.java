package com.shehabic.droppy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.shehabic.droppy.b */
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/b.class */
public final class C17097b extends AbstractC17098c {
    public C17097b(int i) {
        this.f60690f = false;
        this.f60686b = 1;
        this.f60688d = i;
    }

    public C17097b(View view) {
        this.f60690f = false;
        this.f60686b = 1;
        this.f60687c = view;
    }

    @Override // com.shehabic.droppy.AbstractC17098c, com.shehabic.droppy.AbstractC17099d
    /* renamed from: a */
    public final View mo5867a(Context context) {
        if (this.f60687c == null) {
            this.f60687c = LayoutInflater.from(context).inflate(this.f60688d, (ViewGroup) null);
        }
        return this.f60687c;
    }
}
