package com.telguarder.helpers.p022ui;

import android.graphics.LinearGradient;
import android.graphics.Shader;
/* renamed from: com.telguarder.helpers.ui.GradientProvider */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/GradientProvider.class */
class GradientProvider {
    GradientProvider() {
    }

    public static Shader getShader(int i, int i2, int i3, int i4, int i5) {
        return i3 != 0 ? i3 != 1 ? i3 != 2 ? i3 != 3 ? new LinearGradient(0.0f, 0.0f, i5, 0.0f, i, i2, Shader.TileMode.CLAMP) : new LinearGradient(i4, 0.0f, 0.0f, 0.0f, i, i2, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, i4, 0.0f, i, i2, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, i5, 0.0f, 0.0f, i, i2, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, 0.0f, i5, i, i2, Shader.TileMode.CLAMP);
    }
}
