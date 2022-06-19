package p193e.p194a.p294b.p295a.p329i.p330b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import p1727n3.p1857q.p1858a.C26901a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.newBusiness.util.compressor.CompressManager$compress$2", f = "CompressManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b.a.i.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/i/b/b.class */
public final class C7838b extends i implements p<i0, d<? super File>, Object> {

    /* renamed from: e */
    public final /* synthetic */ File f24384e;

    /* renamed from: f */
    public final /* synthetic */ C7837a f24385f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7838b(File file, C7837a c7837a, d dVar) {
        super(2, dVar);
        this.f24384e = file;
        this.f24385f = c7837a;
    }

    /* renamed from: i */
    public final d<s> m29261i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7838b(this.f24384e, this.f24385f, dVar);
    }

    /* renamed from: k */
    public final Object m29260k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7838b(this.f24384e, this.f24385f, dVar).m29259s(s.a);
    }

    /* renamed from: s */
    public final Object m29259s(Object obj) {
        File file;
        C25225a.m3932a3(obj);
        File file2 = this.f24384e;
        C7837a c7837a = this.f24385f;
        int i = c7837a.f24381b;
        int i2 = c7837a.f24380a;
        l.e(file2, "imageFile");
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i3 = 1;
        int i4 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
        l.e(options, "options");
        int i5 = options.outHeight;
        int i6 = options.outWidth;
        int intValue = Integer.valueOf(i5).intValue();
        int intValue2 = Integer.valueOf(i6).intValue();
        if (intValue > i2 || intValue2 > i) {
            int i7 = intValue / 2;
            int i8 = intValue2 / 2;
            while (true) {
                i3 = i4;
                if (i7 / i4 < i2) {
                    break;
                }
                i3 = i4;
                if (i8 / i4 < i) {
                    break;
                }
                i4 *= 2;
            }
        }
        options.inSampleSize = i3;
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
        l.d(decodeFile, "BitmapFactory.Options().…absolutePath, this)\n    }");
        File file3 = this.f24384e;
        l.e(file3, "imageFile");
        l.e(decodeFile, "bitmap");
        C26901a c26901a = new C26901a(file3.getAbsolutePath());
        Matrix matrix = new Matrix();
        int m1217e = c26901a.m1217e("Orientation", 0);
        matrix.postRotate(m1217e != 3 ? m1217e != 6 ? m1217e != 8 ? 0.0f : 270.0f : 90.0f : 180.0f);
        Bitmap createBitmap = Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true);
        l.d(createBitmap, "Bitmap.createBitmap(bitm…map.height, matrix, true)");
        File file4 = this.f24384e;
        C7837a c7837a2 = this.f24385f;
        Bitmap.CompressFormat compressFormat = c7837a2.f24383d;
        int i9 = c7837a2.f24382c;
        l.e(file4, "imageFile");
        l.e(createBitmap, "bitmap");
        l.e(compressFormat, "format");
        if (compressFormat == Bitmap.CompressFormat.JPEG) {
            file = file4;
        } else {
            StringBuilder sb = new StringBuilder();
            String absolutePath = file4.getAbsolutePath();
            l.d(absolutePath, "imageFile.absolutePath");
            sb.append(v.f0(absolutePath, StringConstant.DOT, absolutePath));
            sb.append(".jpg");
            file = new File(sb.toString());
        }
        file4.delete();
        C12864a2.m22546l(createBitmap, file, compressFormat, i9);
        return file;
    }
}
