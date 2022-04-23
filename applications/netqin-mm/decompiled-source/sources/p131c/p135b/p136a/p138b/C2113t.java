package p131c.p135b.p136a.p138b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.impl.adview.AbstractC6929h;
import com.mopub.mobileads.resource.DrawableConstants;
/* renamed from: c.b.a.b.t */
/* loaded from: classes-dex2jar.jar:c/b/a/b/t.class */
public final class C2113t extends AbstractC6929h {

    /* renamed from: b */
    public static final Paint f8120b = new Paint(1);

    /* renamed from: c */
    public static final Paint f8121c = new Paint(1);

    /* renamed from: d */
    public static final Paint f8122d = new Paint(1);

    public C2113t(Context context) {
        super(context);
        f8120b.setColor(-1);
        f8121c.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        f8122d.setColor(-1);
        f8122d.setStyle(Paint.Style.STROKE);
    }

    public float getCenter() {
        return getSize() / 2.0f;
    }

    public float getCrossOffset() {
        return this.f21281a * 10.0f;
    }

    public float getInnerCircleOffset() {
        return this.f21281a * 2.0f;
    }

    public float getInnerCircleRadius() {
        return getCenter() - getInnerCircleOffset();
    }

    public float getStrokeWidth() {
        return this.f21281a * 3.0f;
    }

    @Override // com.applovin.impl.adview.AbstractC6929h
    public AbstractC6929h.EnumC6930a getStyle() {
        return AbstractC6929h.EnumC6930a.WHITE_ON_BLACK;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f8120b);
        canvas.drawCircle(center, center, getInnerCircleRadius(), f8121c);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        f8122d.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, f8122d);
        canvas.drawLine(crossOffset, size, size, crossOffset, f8122d);
    }
}
