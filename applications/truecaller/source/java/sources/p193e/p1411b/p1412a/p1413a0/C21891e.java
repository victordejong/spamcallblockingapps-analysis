package p193e.p1411b.p1412a.p1413a0;

import android.graphics.Color;
import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import p193e.p1411b.p1412a.p1414b0.C21904d;
import p193e.p1411b.p1412a.p1420y.p1422k.C21988c;
/* renamed from: e.b.a.a0.e */
/* loaded from: classes-dex2jar.jar:e/b/a/a0/e.class */
public class C21891e implements AbstractC21899m<C21988c> {

    /* renamed from: a */
    public int f60772a;

    public C21891e(int i) {
        this.f60772a = i;
    }

    @Override // p193e.p1411b.p1412a.p1413a0.AbstractC21899m
    /* renamed from: a */
    public C21988c mo8938a(JsonReader jsonReader, float f) throws IOException {
        int i;
        int i2;
        double d;
        ArrayList arrayList = new ArrayList();
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        if (z) {
            jsonReader.endArray();
        }
        if (this.f60772a == -1) {
            this.f60772a = arrayList.size() / 4;
        }
        int i3 = this.f60772a;
        float[] fArr = new float[i3];
        int[] iArr = new int[i3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = this.f60772a * 4;
            if (i6 >= i) {
                break;
            }
            int i7 = i6 / 4;
            double floatValue = ((Float) arrayList.get(i6)).floatValue();
            int i8 = i6 % 4;
            if (i8 == 0) {
                fArr[i7] = (float) floatValue;
            } else if (i8 == 1) {
                i5 = (int) (floatValue * 255.0d);
            } else if (i8 == 2) {
                i4 = (int) (floatValue * 255.0d);
            } else if (i8 == 3) {
                iArr[i7] = Color.argb(255, i5, i4, (int) (floatValue * 255.0d));
            }
            i6++;
        }
        C21988c c21988c = new C21988c(fArr, iArr);
        if (arrayList.size() > i) {
            int size = (arrayList.size() - i) / 2;
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int i9 = 0;
            int i10 = i;
            while (true) {
                i2 = 0;
                if (i10 < arrayList.size()) {
                    if (i10 % 2 == 0) {
                        dArr[i9] = ((Float) arrayList.get(i10)).floatValue();
                    } else {
                        dArr2[i9] = ((Float) arrayList.get(i10)).floatValue();
                        i9++;
                    }
                    i10++;
                }
            }
            while (true) {
                int[] iArr2 = c21988c.f61056b;
                if (i2 >= iArr2.length) {
                    break;
                }
                int i11 = iArr2[i2];
                double d2 = c21988c.f61055a[i2];
                int i12 = 1;
                while (true) {
                    if (i12 >= size) {
                        d = dArr2[size - 1];
                        break;
                    }
                    int i13 = i12 - 1;
                    double d3 = dArr[i13];
                    double d4 = dArr[i12];
                    if (dArr[i12] >= d2) {
                        double d5 = (d2 - d3) / (d4 - d3);
                        double d6 = dArr2[i13];
                        double d7 = dArr2[i12];
                        PointF pointF = C21904d.f60794a;
                        d = ((d7 - d6) * d5) + d6;
                        break;
                    }
                    i12++;
                }
                c21988c.f61056b[i2] = Color.argb((int) (d * 255.0d), Color.red(i11), Color.green(i11), Color.blue(i11));
                i2++;
            }
        }
        return c21988c;
    }
}
