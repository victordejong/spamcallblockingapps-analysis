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

    /* renamed from: a */
    private final float f28837a;

    /* renamed from: b */
    private final Bitmap[] f28838b;

    /* renamed from: c */
    private CharSequence f28839c;

    /* renamed from: e */
    private TextPaint f28840e;

    /* renamed from: f */
    private TextPaint f28841f;

    /* renamed from: g */
    private Paint f28842g;

    /* renamed from: h */
    private Bitmap f28843h;

    /* renamed from: i */
    private Bitmap f28844i;

    /* renamed from: j */
    private Bitmap f28845j;

    /* renamed from: k */
    private String f28846k;

    /* renamed from: l */
    private float f28847l;

    public RatingTextView(Context context) {
        this(context, null);
    }

    public RatingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatingTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28837a = Activities.m27699a(1.0f);
        this.f28838b = new Bitmap[5];
        this.f28847l = BitmapDescriptorFactory.HUE_RED;
        int color = ThemeUtils.getColor(2131100108);
        TextPaint textPaint = new TextPaint(1);
        this.f28840e = textPaint;
        textPaint.setColor(color);
        this.f28840e.setTextSize(getTextSize());
        this.f28840e.setLinearText(true);
        this.f28846k = Activities.getString(2131886923).toUpperCase();
        TextPaint textPaint2 = new TextPaint(1);
        this.f28841f = textPaint2;
        textPaint2.setColor(ThemeUtils.getColor(2131100108));
        this.f28841f.setTextSize(getTextSize());
        this.f28841f.setLinearText(true);
        Resources resources = getContext().getResources();
        this.f28843h = BitmapFactory.decodeResource(resources, 2131231908);
        this.f28844i = BitmapFactory.decodeResource(resources, 2131231909);
        this.f28845j = BitmapFactory.decodeResource(resources, 2131231907);
        Paint paint = new Paint(1);
        this.f28842g = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f28842g.setColorFilter(new ColorMatrixColorFilter(getColorMatrix(color)));
        m26664a(0.0d);
        setWillNotDraw(false);
    }

    /* renamed from: a */
    private void m26664a(double d) {
        int floor = (int) Math.floor(d);
        int i = 0;
        if (floor > 0) {
            int i2 = 0;
            while (i2 < floor) {
                this.f28838b[i2] = this.f28843h;
                i2++;
            }
            if (floor < d) {
                this.f28838b[i2] = this.f28844i;
            }
            i = floor + 1;
        }
        while (i < 5) {
            this.f28838b[i] = this.f28845j;
            i++;
        }
    }

    private float[] getColorMatrix(int i) {
        return new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (16711680 & i) / Settings.DEFAULT_INITIAL_WINDOW_SIZE, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (65280 & i) / 255, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i & 255, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED};
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (StringUtils.m26045b(this.f28839c)) {
            float height = canvas.getHeight() / 2;
            float descent = (this.f28840e.descent() + this.f28840e.ascent()) / 2.0f;
            float f = this.f28837a;
            CharSequence charSequence = this.f28839c;
            canvas.drawText(charSequence, 0, charSequence.length(), BitmapDescriptorFactory.HUE_RED, (height - descent) + f, this.f28840e);
            int height2 = (canvas.getHeight() - this.f28838b[0].getHeight()) / 2;
            float scaledWidth = this.f28838b[0].getScaledWidth(canvas);
            float f2 = this.f28837a;
            float f3 = scaledWidth + f2;
            float f4 = this.f28847l + (f2 * 4.0f);
            for (int i = 0; i < 5; i++) {
                canvas.drawBitmap(this.f28838b[i], (i * f3) + f4, height2, this.f28842g);
            }
            float height3 = canvas.getHeight() / 2;
            float descent2 = (this.f28841f.descent() + this.f28841f.ascent()) / 2.0f;
            float f5 = this.f28837a;
            float m27699a = f4 + (f3 * 5.0f) + Activities.m27699a(10.0f);
            CharSequence ellipsize = TextUtils.ellipsize(this.f28846k, this.f28841f, m27699a - 10.0f, TextUtils.TruncateAt.END);
            canvas.drawText(ellipsize, 0, ellipsize.length(), m27699a, (height3 - descent2) + f5, this.f28841f);
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        TextPaint textPaint;
        Double d;
        if (StringUtils.m26045b(charSequence)) {
            String str = null;
            try {
                d = Double.valueOf(charSequence.toString());
            } catch (NumberFormatException e) {
                e.getMessage();
                CLog.m27606a("RatingTextView");
                d = null;
            }
            if (d == null || d.doubleValue() <= 0.0d || d.doubleValue() > 5.0d) {
                "Cannot initiate view with rating=".concat(String.valueOf(d));
                CLog.m27606a("RatingTextView");
            } else if (d.doubleValue() >= 3.5d) {
                str = new DecimalFormat("#0.0").format(d);
            }
            this.f28839c = str;
            if (d != null && StringUtils.m26045b((CharSequence) str)) {
                m26664a(d.doubleValue());
            }
        } else {
            this.f28839c = "";
        }
        setVisibility(StringUtils.m26045b(this.f28839c) ? 0 : 8);
        CharSequence charSequence2 = this.f28839c;
        if (charSequence2 != null && (textPaint = this.f28840e) != null) {
            this.f28847l = ViewUtils.m27331a(textPaint, charSequence2.toString());
        }
        super.setText(this.f28839c, bufferType);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.f28840e.setColor(i);
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        super.setTextSize(f);
        this.f28840e.setTextSize(f);
    }
}
