package androidx.constraintlayout.utils.widget;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$c.class */
class ImageFilterView$c {

    /* renamed from: a */
    float[] f1273a = new float[20];

    /* renamed from: b */
    ColorMatrix f1274b = new ColorMatrix();

    /* renamed from: c */
    ColorMatrix f1275c = new ColorMatrix();

    /* renamed from: d */
    float f1276d = 1.0f;

    /* renamed from: e */
    float f1277e = 1.0f;

    /* renamed from: f */
    float f1278f = 1.0f;

    /* renamed from: g */
    float f1279g = 1.0f;

    ImageFilterView$c() {
    }

    /* renamed from: a */
    private void m13877a(float f) {
        float[] fArr = this.f1273a;
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
    private void m13876b(float f) {
        float f2 = 1.0f - f;
        float f3 = 0.2999f * f2;
        float f4 = 0.587f * f2;
        float f5 = f2 * 0.114f;
        float[] fArr = this.f1273a;
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

    /* renamed from: d */
    private void m13874d(float f) {
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
        float[] fArr = this.f1273a;
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

    /* renamed from: c */
    void m13875c(ImageView imageView) {
        boolean z;
        this.f1274b.reset();
        float f = this.f1277e;
        if (f != 1.0f) {
            m13876b(f);
            this.f1274b.set(this.f1273a);
            z = true;
        } else {
            z = false;
        }
        float f2 = this.f1278f;
        if (f2 != 1.0f) {
            this.f1275c.setScale(f2, f2, f2, 1.0f);
            this.f1274b.postConcat(this.f1275c);
            z = true;
        }
        float f3 = this.f1279g;
        if (f3 != 1.0f) {
            m13874d(f3);
            this.f1275c.set(this.f1273a);
            this.f1274b.postConcat(this.f1275c);
            z = true;
        }
        float f4 = this.f1276d;
        if (f4 != 1.0f) {
            m13877a(f4);
            this.f1275c.set(this.f1273a);
            this.f1274b.postConcat(this.f1275c);
            z = true;
        }
        if (z) {
            imageView.setColorFilter(new ColorMatrixColorFilter(this.f1274b));
        } else {
            imageView.clearColorFilter();
        }
    }
}
