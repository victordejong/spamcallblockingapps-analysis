package com.callapp.contacts.widget.floatingwidget.ui;

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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView.class */
public class ChatHeadOverlayView extends View {

    /* renamed from: a  reason: collision with root package name */
    private float f16719a;

    /* renamed from: b  reason: collision with root package name */
    private float f16720b;

    /* renamed from: c  reason: collision with root package name */
    private Path f16721c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f16722d = new Paint();
    private ObjectAnimator e;
    private PathEffect f;

    public ChatHeadOverlayView(Context context) {
        super(context);
        a(context);
    }

    public ChatHeadOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public ChatHeadOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.f16720b = ChatHeadUtils.a(context, 20);
        this.f16719a = ChatHeadUtils.a(context, 3);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "phase", BitmapDescriptorFactory.HUE_RED, -this.f16720b);
        this.e = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.e.setRepeatMode(1);
        this.e.setRepeatCount(-1);
        this.e.setDuration(600L);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f16721c != null) {
            this.f16722d.setPathEffect(this.f);
            canvas.drawPath(this.f16721c, this.f16722d);
        }
    }
}
