package androidx.core.content.res;

import android.graphics.Shader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* renamed from: androidx.core.content.res.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/d.class */
public final class C0801d {

    /* renamed from: androidx.core.content.res.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/d$a.class */
    public static final class C0802a {

        /* renamed from: a */
        final int[] f3500a;

        /* renamed from: b */
        final float[] f3501b;

        public C0802a(int i, int i2) {
            this.f3500a = new int[]{i, i2};
            this.f3501b = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
        }

        public C0802a(int i, int i2, int i3) {
            this.f3500a = new int[]{i, i2, i3};
            this.f3501b = new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};
        }

        C0802a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f3500a = new int[size];
            this.f3501b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f3500a[i] = list.get(i).intValue();
                this.f3501b[i] = list2.get(i).floatValue();
            }
        }
    }

    private C0801d() {
    }

    /* renamed from: a */
    public static Shader.TileMode m44471a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ec, code lost:
        if (r0.size() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00fa, code lost:
        return new androidx.core.content.res.C0801d.C0802a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fb, code lost:
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.content.res.C0801d.C0802a m44470a(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.C0801d.m44470a(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.d$a");
    }
}
