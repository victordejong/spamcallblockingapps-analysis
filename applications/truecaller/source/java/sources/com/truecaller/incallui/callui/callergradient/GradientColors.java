package com.truecaller.incallui.callui.callergradient;

import com.truecaller.incallui.C4013R;
import kotlin.Metadata;
import s1.z.c.f;
/* JADX WARN: Init of enum FULL_SCREEN_PROFILE_PICTURE_INCOMING can be incorrect */
/* JADX WARN: Init of enum FULL_SCREEN_PROFILE_PICTURE_ONGOING can be incorrect */
/* JADX WARN: Init of enum GOLD can be incorrect */
/* JADX WARN: Init of enum IDENTIFIED can be incorrect */
/* JADX WARN: Init of enum PRIORITY can be incorrect */
/* JADX WARN: Init of enum SPAM can be incorrect */
/* JADX WARN: Init of enum VERIFIED_BUSINESS can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u001d\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/truecaller/incallui/callui/callergradient/GradientColors;", "", "", "position", "[F", "getPosition", "()[F", "", "colorsResource", "[I", "getColorsResource", "()[I", "<init>", "(Ljava/lang/String;I[I[F)V", "FULL_SCREEN_PROFILE_PICTURE_INCOMING", "FULL_SCREEN_PROFILE_PICTURE_ONGOING", "GOLD", "SPAM", "PRIORITY", "VERIFIED_BUSINESS", "IDENTIFIED", "CRED_PRIVILEGE", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/callergradient/GradientColors.class */
public enum GradientColors {
    FULL_SCREEN_PROFILE_PICTURE_INCOMING(new int[]{r0, r0, r0}, new float[]{0.0f, 0.49f, 1.0f}),
    FULL_SCREEN_PROFILE_PICTURE_ONGOING(new int[]{r0, C4013R.color.incallui_caller_default_gradient_step2, r0}, new float[]{0.0f, 0.49f, 1.0f}),
    GOLD(new int[]{r0, r0, r0, r0}, new float[]{0.0f, 0.18f, 0.35f, 1.0f}),
    SPAM(new int[]{C4013R.color.incallui_spam_color, r0}, new float[]{0.0f, 1.0f}),
    PRIORITY(new int[]{C4013R.color.incallui_priority_color, r0}, new float[]{0.0f, 1.0f}),
    VERIFIED_BUSINESS(new int[]{C4013R.color.tcx_verifiedBusinessGreen, r0}, new float[]{0.0f, 1.0f}),
    IDENTIFIED(new int[]{C4013R.color.incallui_identified_color, r0}, new float[]{0.0f, 1.0f}),
    CRED_PRIVILEGE(new int[]{C4013R.color.credInCallUiGradient1, C4013R.color.credInCallUiGradient2}, new float[]{0.0f, 1.0f});
    
    private final int[] colorsResource;
    private final float[] position;

    static {
        int i = C4013R.color.incallui_caller_default_gradient_step1;
        int i2 = C4013R.color.incallui_caller_gradient_step2;
        int i3 = C4013R.color.incallui_caller_default_gradient_step3;
        int i4 = C4013R.color.incallui_caller_gradient_gold_step1;
        int i5 = C4013R.color.incallui_caller_gradient_gold_step2;
        int i6 = C4013R.color.incallui_caller_gradient_gold_step3;
        int i7 = C4013R.color.incallui_caller_default_gradient_transparent;
    }

    GradientColors(int[] iArr, float[] fArr) {
        this.colorsResource = iArr;
        this.position = fArr;
    }

    /* synthetic */ GradientColors(int[] iArr, float[] fArr, int i, f fVar) {
        this(iArr, (i & 2) != 0 ? null : fArr);
    }

    public final int[] getColorsResource() {
        return this.colorsResource;
    }

    public final float[] getPosition() {
        return this.position;
    }
}
