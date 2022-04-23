package com.googlecode.mp4parser.c;

import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    String f33166a;

    public a(String str) {
        this.f33166a = str;
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(this.f33166a));
        sb.append(":");
        sb.append(str);
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void b(String str) {
        Log.w("isoparser", String.valueOf(this.f33166a) + ":" + str);
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void c(String str) {
        Log.e("isoparser", String.valueOf(this.f33166a) + ":" + str);
    }
}
