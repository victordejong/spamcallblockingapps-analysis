package androidx.core.content.res;

import android.graphics.Shader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/d.class */
public final class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int[] f1844a;

        /* renamed from: b  reason: collision with root package name */
        final float[] f1845b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, int i2) {
            this.f1844a = new int[]{i, i2};
            this.f1845b = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, int i2, int i3) {
            this.f1844a = new int[]{i, i2, i3};
            this.f1845b = new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};
        }

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1844a = new int[size];
            this.f1845b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1844a[i] = list.get(i).intValue();
                this.f1845b[i] = list2.get(i).floatValue();
            }
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader.TileMode a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ec, code lost:
        if (r0.size() <= 0) goto L_0x00fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00fa, code lost:
        return new androidx.core.content.res.d.a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fb, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.content.res.d.a a(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.d.a(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.d$a");
    }
}
