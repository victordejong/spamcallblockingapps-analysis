package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadOverlayView */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView.class */
public class ChatHeadOverlayView extends View {

    /* renamed from: a */
    private float f29103a;

    /* renamed from: b */
    private float f29104b;

    /* renamed from: c */
    private Path f29105c;

    /* renamed from: d */
    private Paint f29106d = new Paint();

    /* renamed from: e */
    private ObjectAnimator f29107e;

    /* renamed from: f */
    private PathEffect f29108f;

    public ChatHeadOverlayView(Context context) {
        super(context);
        m26516a(context);
    }

    public ChatHeadOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26516a(context);
    }

    public ChatHeadOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26516a(context);
    }

    /* renamed from: a */
    private void m26516a(Context context) {
        this.f29104b = ChatHeadUtils.m26543a(context, 20);
        this.f29103a = ChatHeadUtils.m26543a(context, 3);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phase", BitmapDescriptorFactory.HUE_RED, -this.f29104b);
        this.f29107e = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.f29107e.setRepeatMode(1);
        this.f29107e.setRepeatCount(-1);
        this.f29107e.setDuration(600L);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f29105c != null) {
            this.f29106d.setPathEffect(this.f29108f);
            canvas.drawPath(this.f29105c, this.f29106d);
        }
    }
}
