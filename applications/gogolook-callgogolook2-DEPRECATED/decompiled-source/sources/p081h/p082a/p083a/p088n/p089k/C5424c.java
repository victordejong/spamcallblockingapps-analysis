package p081h.p082a.p083a.p088n.p089k;

import android.graphics.Color;
import androidx.annotation.IntRange;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5386d;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5454n;
import p081h.p082a.p083a.p088n.p090l.C5461c;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.n.k.c */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/c.class */
public class C5424c extends AbstractC5456o<C5461c, C5461c> {

    /* renamed from: h.a.a.n.k.c$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/c$b.class */
    public static final class C5426b {
        /* renamed from: a */
        public static C5424c m25475a(JSONObject jSONObject, C5341e eVar) {
            C5454n.C5455a a = C5454n.m25442a(jSONObject, 1.0f, eVar, new C5427c(jSONObject.optInt("p", jSONObject.optJSONArray("k").length() / 4))).m25445a();
            return new C5424c(a.f13593a, (C5461c) a.f13594b);
        }
    }

    /* renamed from: h.a.a.n.k.c$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/c$c.class */
    public static class C5427c implements AbstractC5452m.AbstractC5453a<C5461c> {

        /* renamed from: a */
        public final int f13569a;

        public C5427c(int i) {
            this.f13569a = i;
        }

        @IntRange(from = 0, m37519to = 255)
        /* renamed from: a */
        public final int m25474a(double d, double[] dArr, double[] dArr2) {
            double d2;
            int i = 1;
            while (true) {
                if (i >= dArr.length) {
                    d2 = dArr2[dArr2.length - 1];
                    break;
                }
                int i2 = i - 1;
                double d3 = dArr[i2];
                double d4 = dArr[i];
                if (dArr[i] >= d) {
                    d2 = C5529e.m25263a(dArr2[i2], dArr2[i], (d - d3) / (d4 - d3));
                    break;
                }
                i++;
            }
            return (int) (d2 * 255.0d);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public C5461c mo25373a(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            int i = this.f13569a;
            float[] fArr = new float[i];
            int[] iArr = new int[i];
            C5461c cVar = new C5461c(fArr, iArr);
            if (jSONArray.length() != this.f13569a * 4) {
                String str = "Unexpected gradient length: " + jSONArray.length() + ". Expected " + (this.f13569a * 4) + ". This may affect the appearance of the gradient. Make sure to save your After Effects file before exporting an animation with gradients.";
            }
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.f13569a * 4; i4++) {
                int i5 = i4 / 4;
                double optDouble = jSONArray.optDouble(i4);
                int i6 = i4 % 4;
                if (i6 == 0) {
                    fArr[i5] = (float) optDouble;
                } else if (i6 == 1) {
                    i2 = (int) (optDouble * 255.0d);
                } else if (i6 == 2) {
                    i3 = (int) (optDouble * 255.0d);
                } else if (i6 == 3) {
                    iArr[i5] = Color.argb(255, i2, i3, (int) (optDouble * 255.0d));
                }
            }
            m25473a(cVar, jSONArray);
            return cVar;
        }

        /* renamed from: a */
        public final void m25473a(C5461c cVar, JSONArray jSONArray) {
            int i = this.f13569a * 4;
            if (jSONArray.length() > i) {
                int length = (jSONArray.length() - i) / 2;
                double[] dArr = new double[length];
                double[] dArr2 = new double[length];
                int i2 = 0;
                while (i < jSONArray.length()) {
                    if (i % 2 == 0) {
                        dArr[i2] = jSONArray.optDouble(i);
                    } else {
                        dArr2[i2] = jSONArray.optDouble(i);
                        i2++;
                    }
                    i++;
                }
                for (int i3 = 0; i3 < cVar.m25430c(); i3++) {
                    int i4 = cVar.m25433a()[i3];
                    cVar.m25433a()[i3] = Color.argb(m25474a(cVar.m25431b()[i3], dArr, dArr2), Color.red(i4), Color.green(i4), Color.blue(i4));
                }
            }
        }
    }

    public C5424c(List<C5358a<C5461c>> list, C5461c cVar) {
        super(list, cVar);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<C5461c, C5461c> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5386d(this.f13595a);
    }
}
