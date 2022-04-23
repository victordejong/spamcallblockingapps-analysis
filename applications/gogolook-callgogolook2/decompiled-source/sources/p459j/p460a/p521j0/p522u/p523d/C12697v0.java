package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p135e.C5955c;
/* renamed from: j.a.j0.u.d.v0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/v0.class */
public class C12697v0 implements AbstractC5810g<Bitmap> {

    /* renamed from: a */
    public AbstractC5856c f28646a;

    public C12697v0(Context context) {
        this(C5776l.m24484a(context).m24468e());
    }

    public C12697v0(AbstractC5856c cVar) {
        this.f28646a = cVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public AbstractC5848l<Bitmap> mo832a(AbstractC5848l<Bitmap> lVar, int i, int i2) {
        Bitmap bitmap = lVar.get();
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        int width = (bitmap.getWidth() - min) / 2;
        int height = (bitmap.getHeight() - min) / 2;
        Bitmap a = this.f28646a.mo24221a(min, min, Bitmap.Config.ARGB_8888);
        Bitmap bitmap2 = a;
        if (a == null) {
            bitmap2 = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        if (!(width == 0 && height == 0)) {
            Matrix matrix = new Matrix();
            matrix.setTranslate(-width, -height);
            bitmapShader.setLocalMatrix(matrix);
        }
        paint.setShader(bitmapShader);
        paint.setAntiAlias(true);
        float f = min / 2.0f;
        canvas.drawCircle(f, f, f, paint);
        return C5955c.m24121a(bitmap2, this.f28646a);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        return "CustomCropCircleTransformation()";
    }
}
