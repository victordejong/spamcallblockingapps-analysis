package androidx.constraintlayout.utils.widget;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$c.class */
public class ImageFilterView$c {

    /* renamed from: a */
    public float[] f663a = new float[20];

    /* renamed from: b */
    public ColorMatrix f664b = new ColorMatrix();

    /* renamed from: c */
    public ColorMatrix f665c = new ColorMatrix();

    /* renamed from: d */
    public float f666d = 1.0f;

    /* renamed from: e */
    public float f667e = 1.0f;

    /* renamed from: f */
    public float f668f = 1.0f;

    /* renamed from: g */
    public float f669g = 1.0f;

    /* renamed from: a */
    public final void m6868a(float f) {
        float[] fArr = this.f663a;
        fArr[0] = f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* renamed from: b */
    public final void m6867b(float f) {
        float f2 = 1.0f - f;
        float f3 = 0.2999f * f2;
        float f4 = 0.587f * f2;
        float f5 = f2 * 0.114f;
        float[] fArr = this.f663a;
        fArr[0] = f3 + f;
        fArr[1] = f4;
        fArr[2] = f5;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = f3;
        fArr[6] = f4 + f;
        fArr[7] = f5;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = f3;
        fArr[11] = f4;
        fArr[12] = f5 + f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* renamed from: c */
    public void m6866c(ImageView imageView) {
        boolean z;
        this.f664b.reset();
        float f = this.f667e;
        if (f != 1.0f) {
            m6867b(f);
            this.f664b.set(this.f663a);
            z = true;
        } else {
            z = false;
        }
        float f2 = this.f668f;
        if (f2 != 1.0f) {
            this.f665c.setScale(f2, f2, f2, 1.0f);
            this.f664b.postConcat(this.f665c);
            z = true;
        }
        float f3 = this.f669g;
        if (f3 != 1.0f) {
            m6865d(f3);
            this.f665c.set(this.f663a);
            this.f664b.postConcat(this.f665c);
            z = true;
        }
        float f4 = this.f666d;
        if (f4 != 1.0f) {
            m6868a(f4);
            this.f665c.set(this.f663a);
            this.f664b.postConcat(this.f665c);
            z = true;
        }
        if (z) {
            imageView.setColorFilter(new ColorMatrixColorFilter(this.f664b));
        } else {
            imageView.clearColorFilter();
        }
    }

    /* renamed from: d */
    public final void m6865d(float f) {
        float f2;
        float f3;
        float f4 = f;
        if (f <= 0.0f) {
            f4 = 0.01f;
        }
        float f5 = (5000.0f / f4) / 100.0f;
        if (f5 > 66.0f) {
            double d = f5 - 60.0f;
            f2 = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
            f3 = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
        } else {
            f3 = (((float) Math.log(f5)) * 99.4708f) - 161.11957f;
            f2 = 255.0f;
        }
        float log = f5 < 66.0f ? f5 > 19.0f ? (((float) Math.log(f5 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
        float min = Math.min(255.0f, Math.max(f2, 0.0f));
        float min2 = Math.min(255.0f, Math.max(f3, 0.0f));
        float min3 = Math.min(255.0f, Math.max(log, 0.0f));
        float log2 = (float) Math.log(50.0f);
        float log3 = (float) Math.log(40.0f);
        float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
        float min5 = Math.min(255.0f, Math.max((log2 * 99.4708f) - 161.11957f, 0.0f));
        float f6 = min / min4;
        float f7 = min2 / min5;
        float min6 = min3 / Math.min(255.0f, Math.max((log3 * 138.51773f) - 305.0448f, 0.0f));
        float[] fArr = this.f663a;
        fArr[0] = f6;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = f7;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = min6;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }
}
