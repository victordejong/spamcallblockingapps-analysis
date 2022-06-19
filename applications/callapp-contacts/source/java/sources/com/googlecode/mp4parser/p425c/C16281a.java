package com.googlecode.mp4parser.p425c;

import android.util.Log;
/* renamed from: com.googlecode.mp4parser.c.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/a.class */
public final class C16281a extends AbstractC16287f {

    /* renamed from: a */
    String f57529a;

    public C16281a(String str) {
        this.f57529a = str;
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: a */
    public final void mo7513a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(this.f57529a));
        sb.append(":");
        sb.append(str);
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: b */
    public final void mo7512b(String str) {
        Log.w("isoparser", String.valueOf(this.f57529a) + ":" + str);
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: c */
    public final void mo7511c(String str) {
        Log.e("isoparser", String.valueOf(this.f57529a) + ":" + str);
    }
}
