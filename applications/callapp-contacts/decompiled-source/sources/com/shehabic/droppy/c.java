package com.shehabic.droppy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/c.class */
public abstract class c implements d {

    /* renamed from: c  reason: collision with root package name */
    protected View f34996c;

    /* renamed from: a  reason: collision with root package name */
    protected int f34994a = -1;

    /* renamed from: b  reason: collision with root package name */
    protected int f34995b = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f34997d = -1;
    protected int e = -1;
    protected boolean f = true;

    @Override // com.shehabic.droppy.d
    public final int a() {
        return this.e;
    }

    @Override // com.shehabic.droppy.d
    public View a(Context context) {
        if (this.f34996c == null) {
            this.f34996c = LayoutInflater.from(context).inflate(this.f34997d, (ViewGroup) null);
        }
        this.f34996c.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return this.f34996c;
    }

    @Override // com.shehabic.droppy.d
    public final d a(int i) {
        this.e = i;
        return this;
    }

    @Override // com.shehabic.droppy.d
    public final boolean b() {
        return this.f;
    }
}
