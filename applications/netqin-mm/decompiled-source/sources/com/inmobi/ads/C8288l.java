package com.inmobi.ads;

import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import com.inmobi.ads.AbstractC8305t;
import java.io.File;
import java.io.IOException;
/* renamed from: com.inmobi.ads.l */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/l.class */
public final class C8288l implements AbstractC8305t {

    /* renamed from: a */
    public AnimatedImageDrawable f32263a;

    /* renamed from: b */
    public AbstractC8305t.AbstractC8306a f32264b;

    public C8288l(String str) throws IOException {
        this.f32263a = (AnimatedImageDrawable) ImageDecoder.decodeDrawable(ImageDecoder.createSource(new File(str)));
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5955a() {
        this.f32263a.registerAnimationCallback(new Animatable2.AnimationCallback() { // from class: com.inmobi.ads.l.1
            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public final void onAnimationEnd(Drawable drawable) {
                super.onAnimationEnd(drawable);
                C8288l.this.f32263a.start();
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public final void onAnimationStart(Drawable drawable) {
                super.onAnimationStart(drawable);
            }
        });
        this.f32263a.start();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5954a(Canvas canvas, float f, float f2) {
        canvas.translate(f, f2);
        this.f32263a.draw(canvas);
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5953a(AbstractC8305t.AbstractC8306a aVar) {
        this.f32264b = aVar;
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5952a(boolean z) {
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: b */
    public final int mo5951b() {
        return this.f32263a.getIntrinsicWidth();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: c */
    public final int mo5950c() {
        return this.f32263a.getIntrinsicHeight();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: d */
    public final boolean mo5949d() {
        return this.f32263a.isRunning();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: e */
    public final void mo5948e() {
    }
}
