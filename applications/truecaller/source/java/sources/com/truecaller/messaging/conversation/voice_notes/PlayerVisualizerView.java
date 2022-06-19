package com.truecaller.messaging.conversation.voice_notes;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.media.audiofx.Visualizer;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashSet;
import java.util.Set;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5738o;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView.class */
public class PlayerVisualizerView extends View {

    /* renamed from: c */
    public Visualizer f13117c;

    /* renamed from: g */
    public Bitmap f13121g;

    /* renamed from: h */
    public Canvas f13122h;

    /* renamed from: b */
    public Rect f13116b = new Rect();

    /* renamed from: e */
    public Paint f13119e = new Paint();

    /* renamed from: f */
    public Paint f13120f = new Paint();

    /* renamed from: a */
    public byte[] f13115a = null;

    /* renamed from: d */
    public Set<AbstractC5738o> f13118d = new HashSet();

    /* renamed from: i */
    public Matrix f13123i = new Matrix();

    public PlayerVisualizerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13119e.setColor(Color.argb(88, 255, 255, 255));
        this.f13120f.setColor(Color.argb(238, 255, 255, 255));
        this.f13120f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f13116b.set(0, 0, getWidth(), getHeight());
        if (this.f13121g == null) {
            this.f13121g = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        }
        if (this.f13122h == null) {
            this.f13122h = new Canvas(this.f13121g);
        }
        if (this.f13115a != null) {
            for (AbstractC5738o abstractC5738o : this.f13118d) {
                Canvas canvas2 = this.f13122h;
                byte[] bArr = this.f13115a;
                Rect rect = this.f13116b;
                float[] fArr = abstractC5738o.f19206a;
                if (fArr == null || fArr.length < bArr.length * 4) {
                    abstractC5738o.f19206a = new float[bArr.length * 4];
                }
                abstractC5738o.mo32750a(canvas2, bArr, rect);
            }
        }
        this.f13122h.drawPaint(this.f13120f);
        canvas.drawBitmap(this.f13121g, this.f13123i, null);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        Visualizer visualizer = this.f13117c;
        if (visualizer != null) {
            visualizer.setEnabled(z);
        }
    }
}
