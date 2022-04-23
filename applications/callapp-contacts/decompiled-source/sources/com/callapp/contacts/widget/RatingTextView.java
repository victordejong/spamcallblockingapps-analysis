package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.DecimalFormat;
import okhttp3.internal.http2.Settings;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RatingTextView.class */
public class RatingTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private final float f16565a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap[] f16566b;

    /* renamed from: c  reason: collision with root package name */
    private CharSequence f16567c;
    private TextPaint e;
    private TextPaint f;
    private Paint g;
    private Bitmap h;
    private Bitmap i;
    private Bitmap j;
    private String k;
    private float l;

    public RatingTextView(Context context) {
        this(context, null);
    }

    public RatingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatingTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16565a = Activities.a(1.0f);
        this.f16566b = new Bitmap[5];
        this.l = BitmapDescriptorFactory.HUE_RED;
        int color = ThemeUtils.getColor(2131100108);
        TextPaint textPaint = new TextPaint(1);
        this.e = textPaint;
        textPaint.setColor(color);
        this.e.setTextSize(getTextSize());
        this.e.setLinearText(true);
        this.k = Activities.getString(2131886923).toUpperCase();
        TextPaint textPaint2 = new TextPaint(1);
        this.f = textPaint2;
        textPaint2.setColor(ThemeUtils.getColor(2131100108));
        this.f.setTextSize(getTextSize());
        this.f.setLinearText(true);
        Resources resources = getContext().getResources();
        this.h = BitmapFactory.decodeResource(resources, 2131231908);
        this.i = BitmapFactory.decodeResource(resources, 2131231909);
        this.j = BitmapFactory.decodeResource(resources, 2131231907);
        Paint paint = new Paint(1);
        this.g = paint;
        paint.setStyle(Paint.Style.FILL);
        this.g.setColorFilter(new ColorMatrixColorFilter(getColorMatrix(color)));
        a(0.0d);
        setWillNotDraw(false);
    }

    private void a(double d2) {
        int floor = (int) Math.floor(d2);
        int i = 0;
        int i2 = 0;
        if (floor > 0) {
            while (i2 < floor) {
                this.f16566b[i2] = this.h;
                i2++;
            }
            if (floor < d2) {
                this.f16566b[i2] = this.i;
            }
            i = floor + 1;
        }
        while (i < 5) {
            this.f16566b[i] = this.j;
            i++;
        }
    }

    private float[] getColorMatrix(int i) {
        return new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (16711680 & i) / Settings.DEFAULT_INITIAL_WINDOW_SIZE, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (65280 & i) / 255, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i & 255, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED};
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (StringUtils.b(this.f16567c)) {
            float height = canvas.getHeight() / 2;
            float descent = (this.e.descent() + this.e.ascent()) / 2.0f;
            float f = this.f16565a;
            CharSequence charSequence = this.f16567c;
            canvas.drawText(charSequence, 0, charSequence.length(), BitmapDescriptorFactory.HUE_RED, (height - descent) + f, this.e);
            int height2 = (canvas.getHeight() - this.f16566b[0].getHeight()) / 2;
            float scaledWidth = this.f16566b[0].getScaledWidth(canvas);
            float f2 = this.f16565a;
            float f3 = scaledWidth + f2;
            float f4 = this.l + (f2 * 4.0f);
            for (int i = 0; i < 5; i++) {
                canvas.drawBitmap(this.f16566b[i], (i * f3) + f4, height2, this.g);
            }
            float height3 = canvas.getHeight() / 2;
            float descent2 = (this.f.descent() + this.f.ascent()) / 2.0f;
            float f5 = this.f16565a;
            float a2 = f4 + (f3 * 5.0f) + Activities.a(10.0f);
            CharSequence ellipsize = TextUtils.ellipsize(this.k, this.f, a2 - 10.0f, TextUtils.TruncateAt.END);
            canvas.drawText(ellipsize, 0, ellipsize.length(), a2, (height3 - descent2) + f5, this.f);
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        TextPaint textPaint;
        Double d2;
        if (StringUtils.b(charSequence)) {
            String str = null;
            try {
                d2 = Double.valueOf(charSequence.toString());
            } catch (NumberFormatException e) {
                e.getMessage();
                CLog.a("RatingTextView");
                d2 = null;
            }
            if (d2 == null || d2.doubleValue() <= 0.0d || d2.doubleValue() > 5.0d) {
                "Cannot initiate view with rating=".concat(String.valueOf(d2));
                CLog.a("RatingTextView");
            } else if (d2.doubleValue() >= 3.5d) {
                str = new DecimalFormat("#0.0").format(d2);
            }
            this.f16567c = str;
            if (d2 != null && StringUtils.b((CharSequence) str)) {
                a(d2.doubleValue());
            }
        } else {
            this.f16567c = "";
        }
        setVisibility(StringUtils.b(this.f16567c) ? 0 : 8);
        CharSequence charSequence2 = this.f16567c;
        if (!(charSequence2 == null || (textPaint = this.e) == null)) {
            this.l = ViewUtils.a(textPaint, charSequence2.toString());
        }
        super.setText(this.f16567c, bufferType);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.e.setColor(i);
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        super.setTextSize(f);
        this.e.setTextSize(f);
    }
}
