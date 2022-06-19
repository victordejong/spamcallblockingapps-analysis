package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.gms.internal.ads.a7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a7.class */
public final class SurfaceHolder$CallbackC6282a7 implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, up3, ii1, AbstractC7099w8, AbstractC6987t7, AbstractC6945s2, AbstractC6797o2, AbstractC6431e7, AbstractC6541h6, AbstractC6501g3 {

    /* renamed from: d */
    final /* synthetic */ C6393d7 f19845d;

    public /* synthetic */ SurfaceHolder$CallbackC6282a7(C6393d7 c6393d7, C6356c7 c6356c7) {
        this.f19845d = c6393d7;
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: A */
    public final void mo10268A(int i, long j) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10268A(i, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: A0 */
    public final void mo11249A0(zzahc zzahcVar) {
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: B */
    public final void mo10267B(C6780nm c6780nm) {
        rz0 rz0Var;
        this.f19845d.f21532w = c6780nm;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10267B(c6780nm);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: B0 */
    public final void mo11248B0(C6504g6 c6504g6) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: C0 */
    public final void mo11246C0(int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: D0 */
    public final void mo11244D0(boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: E0 */
    public final void mo11242E0(C6392d6 c6392d6) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: F0 */
    public final void mo11240F0(dv3 dv3Var, ew3 ew3Var) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: G0 */
    public final void mo11238G0(int i) {
        C6393d7.m15923E(this.f19845d);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: a */
    public final void mo11225a(String str) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11225a(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6501g3
    /* renamed from: b */
    public final void mo14990b(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: c */
    public final void mo10266c(long j, int i) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10266c(j, i);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: e */
    public final void mo11224e(C6780nm c6780nm) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11224e(c6780nm);
        this.f19845d.f21525p = null;
        this.f19845d.f21533x = null;
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: f */
    public final void mo10265f(Exception exc) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10265f(exc);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: h */
    public final void mo11223h(int i, long j, long j2) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11223h(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: i */
    public final void mo11222i(C6780nm c6780nm) {
        rz0 rz0Var;
        this.f19845d.f21533x = c6780nm;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11222i(c6780nm);
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: k */
    public final void mo10264k(Object obj, long j) {
        rz0 rz0Var;
        Object obj2;
        CopyOnWriteArraySet copyOnWriteArraySet;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10264k(obj, j);
        obj2 = this.f19845d.f21527r;
        if (obj2 == obj) {
            copyOnWriteArraySet = this.f19845d.f21517h;
            Iterator it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                ((AbstractC6616j6) it.next()).mo11219p();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: l */
    public final void mo10263l(String str, long j, long j2) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10263l(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: m */
    public final void mo11221m(boolean z) {
        boolean z2;
        z2 = this.f19845d.f21505B;
        if (z2 == z) {
            return;
        }
        this.f19845d.f21505B = z;
        C6393d7.m15925C(this.f19845d);
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: n */
    public final void mo10262n(z04 z04Var) {
        rz0 rz0Var;
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.f19845d.f21510G = z04Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10262n(z04Var);
        copyOnWriteArraySet = this.f19845d.f21517h;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((AbstractC6616j6) it.next()).mo10262n(z04Var);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C6393d7.m15885x(this.f19845d, surfaceTexture);
        this.f19845d.m15919N(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f19845d.m15920I(null);
        this.f19845d.m15919N(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f19845d.m15919N(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: q */
    public final void mo10261q(C6780nm c6780nm) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10261q(c6780nm);
        this.f19845d.f21524o = null;
        this.f19845d.f21532w = null;
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: q0 */
    public final void mo10260q0(String str) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10260q0(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6501g3
    /* renamed from: r0 */
    public final void mo14989r0(boolean z) {
        C6393d7.m15923E(this.f19845d);
    }

    @Override // com.google.android.gms.internal.ads.up3
    /* renamed from: s */
    public final void mo10259s(C7021u4 c7021u4, C6781nn c6781nn) {
        rz0 rz0Var;
        this.f19845d.f21524o = c7021u4;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo10259s(c7021u4, c6781nn);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: s0 */
    public final void mo11218s0(boolean z) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f19845d.m15919N(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f19845d.m15919N(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: t0 */
    public final void mo11216t0() {
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: u */
    public final void mo11215u(C7021u4 c7021u4, C6781nn c6781nn) {
        rz0 rz0Var;
        this.f19845d.f21525p = c7021u4;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11215u(c7021u4, c6781nn);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: u0 */
    public final void mo11214u0(AbstractC6839p7 abstractC6839p7, int i) {
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: v */
    public final void mo11213v(String str, long j, long j2) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11213v(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: v0 */
    public final void mo11212v0(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: w */
    public final void mo11211w(Exception exc) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11211w(exc);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: w0 */
    public final void mo11210w0(C6615j5 c6615j5, int i) {
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: x */
    public final void mo11209x(long j) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11209x(j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: x0 */
    public final void mo11208x0(boolean z, int i) {
        C6393d7.m15923E(this.f19845d);
    }

    @Override // com.google.android.gms.internal.ads.ii1
    /* renamed from: y */
    public final void mo11207y(Exception exc) {
        rz0 rz0Var;
        rz0Var = this.f19845d.f21518i;
        rz0Var.mo11207y(exc);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: y0 */
    public final void mo11206y0(C6763n5 c6763n5) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6541h6
    /* renamed from: z0 */
    public final void mo11204z0(C6727m6 c6727m6, C6727m6 c6727m62, int i) {
    }
}
