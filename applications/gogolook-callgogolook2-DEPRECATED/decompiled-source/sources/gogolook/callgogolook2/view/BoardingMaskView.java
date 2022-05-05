package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$dimen;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/BoardingMaskView.class */
public class BoardingMaskView extends RelativeLayout {

    /* renamed from: a */
    public Paint f13013a;

    /* renamed from: b */
    public Paint f13014b;

    /* renamed from: c */
    public boolean f13015c;

    /* renamed from: d */
    public float f13016d;

    /* renamed from: e */
    public int f13017e;

    /* renamed from: f */
    public int f13018f;

    public BoardingMaskView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BoardingMaskView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13015c = false;
        setWillNotDraw(false);
        this.f13017e = C14217x3.m2124m();
        this.f13018f = C14217x3.m2126l();
        this.f13016d = context.getResources().getDimensionPixelSize(R$dimen.shader_start_y);
        float f = this.f13016d;
        LinearGradient linearGradient = new LinearGradient(0.0f, -f, 0.0f, f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        this.f13013a = new Paint();
        this.f13013a.setShader(linearGradient);
        this.f13014b = new Paint();
        this.f13014b.setColor(-1);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f13015c) {
            float f = this.f13016d;
            canvas.drawRect(0.0f, -f, this.f13017e, f, this.f13013a);
            canvas.drawRect(0.0f, this.f13016d, this.f13017e, this.f13018f, this.f13014b);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f13015c;
    }
}
