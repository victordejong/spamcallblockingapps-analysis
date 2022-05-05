package android.support.p001v4.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Shader;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.Log;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.content.res.ComplexColorCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/res/ComplexColorCompat.class */
public final class ComplexColorCompat {
    private static final String LOG_TAG = "ComplexColorCompat";
    private int mColor;
    private final ColorStateList mColorStateList;
    private final Shader mShader;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i) {
        this.mShader = shader;
        this.mColorStateList = colorStateList;
        this.mColor = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
        if (r0.equals("gradient") != false) goto L_0x0073;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5  */
    @android.support.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.support.p001v4.content.res.ComplexColorCompat createFromXml(@android.support.annotation.NonNull android.content.res.Resources r5, @android.support.annotation.ColorRes int r6, @android.support.annotation.Nullable android.content.res.Resources.Theme r7) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            r0 = r5
            r1 = r6
            android.content.res.XmlResourceParser r0 = r0.getXml(r1)
            r8 = r0
            r0 = r8
            android.util.AttributeSet r0 = android.util.Xml.asAttributeSet(r0)
            r9 = r0
        L_0x000c:
            r0 = r8
            int r0 = r0.next()
            r10 = r0
            r0 = 1
            r6 = r0
            r0 = r10
            r1 = 2
            if (r0 == r1) goto L_0x0025
            r0 = r10
            r1 = 1
            if (r0 == r1) goto L_0x0025
            goto L_0x000c
        L_0x0025:
            r0 = r10
            r1 = 2
            if (r0 == r1) goto L_0x0035
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            r1 = r0
            java.lang.String r2 = "No start tag found"
            r1.<init>(r2)
            throw r0
        L_0x0035:
            r0 = r8
            java.lang.String r0 = r0.getName()
            r11 = r0
            r0 = r11
            int r0 = r0.hashCode()
            r10 = r0
            r0 = r10
            r1 = 89650992(0x557f730, float:1.01546526E-35)
            if (r0 == r1) goto L_0x0064
            r0 = r10
            r1 = 1191572447(0x4705f3df, float:34291.87)
            if (r0 == r1) goto L_0x0055
            goto L_0x0071
        L_0x0055:
            r0 = r11
            java.lang.String r1 = "selector"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0071
            r0 = 0
            r6 = r0
            goto L_0x0073
        L_0x0064:
            r0 = r11
            java.lang.String r1 = "gradient"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0071
            goto L_0x0073
        L_0x0071:
            r0 = -1
            r6 = r0
        L_0x0073:
            r0 = r6
            switch(r0) {
                case 0: goto L_0x00c5;
                case 1: goto L_0x00b9;
                default: goto L_0x008c;
            }
        L_0x008c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r8
            java.lang.String r1 = r1.getPositionDescription()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ": unsupported complex color tag "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x00b9:
            r0 = r5
            r1 = r8
            r2 = r9
            r3 = r7
            android.graphics.Shader r0 = android.support.p001v4.content.res.GradientColorInflaterCompat.createFromXmlInner(r0, r1, r2, r3)
            android.support.v4.content.res.ComplexColorCompat r0 = from(r0)
            return r0
        L_0x00c5:
            r0 = r5
            r1 = r8
            r2 = r9
            r3 = r7
            android.content.res.ColorStateList r0 = android.support.p001v4.content.res.ColorStateListInflaterCompat.createFromXmlInner(r0, r1, r2, r3)
            android.support.v4.content.res.ComplexColorCompat r0 = from(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.content.res.ComplexColorCompat.createFromXml(android.content.res.Resources, int, android.content.res.Resources$Theme):android.support.v4.content.res.ComplexColorCompat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComplexColorCompat from(@ColorInt int i) {
        return new ComplexColorCompat(null, null, i);
    }

    static ComplexColorCompat from(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    static ComplexColorCompat from(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    @Nullable
    public static ComplexColorCompat inflate(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        try {
            return createFromXml(resources, i, theme);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    @ColorInt
    public int getColor() {
        return this.mColor;
    }

    @Nullable
    public Shader getShader() {
        return this.mShader;
    }

    public boolean isGradient() {
        return this.mShader != null;
    }

    public boolean isStateful() {
        return this.mShader == null && this.mColorStateList != null && this.mColorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        boolean z;
        int colorForState;
        if (!isStateful() || (colorForState = this.mColorStateList.getColorForState(iArr, this.mColorStateList.getDefaultColor())) == this.mColor) {
            z = false;
        } else {
            z = true;
            this.mColor = colorForState;
        }
        return z;
    }

    public void setColor(@ColorInt int i) {
        this.mColor = i;
    }

    public boolean willDraw() {
        return isGradient() || this.mColor != 0;
    }
}
