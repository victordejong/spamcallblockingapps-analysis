package com.shehabic.droppy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.shehabic.droppy.c */
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/c.class */
public abstract class AbstractC17098c implements AbstractC17099d {

    /* renamed from: c */
    protected View f60687c;

    /* renamed from: a */
    protected int f60685a = -1;

    /* renamed from: b */
    protected int f60686b = 0;

    /* renamed from: d */
    protected int f60688d = -1;

    /* renamed from: e */
    protected int f60689e = -1;

    /* renamed from: f */
    protected boolean f60690f = true;

    @Override // com.shehabic.droppy.AbstractC17099d
    /* renamed from: a */
    public final int mo5870a() {
        return this.f60689e;
    }

    @Override // com.shehabic.droppy.AbstractC17099d
    /* renamed from: a */
    public View mo5867a(Context context) {
        if (this.f60687c == null) {
            this.f60687c = LayoutInflater.from(context).inflate(this.f60688d, (ViewGroup) null);
        }
        this.f60687c.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return this.f60687c;
    }

    @Override // com.shehabic.droppy.AbstractC17099d
    /* renamed from: a */
    public final AbstractC17099d mo5869a(int i) {
        this.f60689e = i;
        return this;
    }

    @Override // com.shehabic.droppy.AbstractC17099d
    /* renamed from: b */
    public final boolean mo5868b() {
        return this.f60690f;
    }
}
