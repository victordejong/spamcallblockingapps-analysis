package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.trackselection.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/i.class */
public final class C11446i {

    /* renamed from: a */
    public final int f37833a;

    /* renamed from: b */
    public final RendererConfiguration[] f37834b;

    /* renamed from: c */
    public final AbstractC11436c[] f37835c;

    /* renamed from: d */
    public final Object f37836d;

    public C11446i(RendererConfiguration[] rendererConfigurationArr, AbstractC11436c[] abstractC11436cArr, Object obj) {
        this.f37834b = rendererConfigurationArr;
        this.f37835c = (AbstractC11436c[]) abstractC11436cArr.clone();
        this.f37836d = obj;
        this.f37833a = rendererConfigurationArr.length;
    }

    /* renamed from: a */
    public final boolean m20551a(int i) {
        return this.f37834b[i] != null;
    }

    /* renamed from: a */
    public final boolean m20550a(C11446i c11446i, int i) {
        return c11446i != null && C11599af.m19973a(this.f37834b[i], c11446i.f37834b[i]) && C11599af.m19973a(this.f37835c[i], c11446i.f37835c[i]);
    }
}
