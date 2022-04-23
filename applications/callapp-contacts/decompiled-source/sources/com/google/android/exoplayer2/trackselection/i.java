package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f21946a;

    /* renamed from: b  reason: collision with root package name */
    public final RendererConfiguration[] f21947b;

    /* renamed from: c  reason: collision with root package name */
    public final c[] f21948c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f21949d;

    public i(RendererConfiguration[] rendererConfigurationArr, c[] cVarArr, Object obj) {
        this.f21947b = rendererConfigurationArr;
        this.f21948c = (c[]) cVarArr.clone();
        this.f21949d = obj;
        this.f21946a = rendererConfigurationArr.length;
    }

    public final boolean a(int i) {
        return this.f21947b[i] != null;
    }

    public final boolean a(i iVar, int i) {
        return iVar != null && af.a(this.f21947b[i], iVar.f21947b[i]) && af.a(this.f21948c[i], iVar.f21948c[i]);
    }
}
