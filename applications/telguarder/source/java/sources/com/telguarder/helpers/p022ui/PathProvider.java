package com.telguarder.helpers.p022ui;

import android.graphics.Path;
/* renamed from: com.telguarder.helpers.ui.PathProvider */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/PathProvider.class */
class PathProvider {
    PathProvider() {
    }

    public static Path getClipPath(int i, int i2, int i3, int i4, int i5) {
        Path path = new Path();
        if (i4 == 0) {
            if (i5 == 0) {
                float f = i2 - i3;
                path.moveTo(0.0f, f);
                float f2 = i;
                path.quadTo(i / 2, i3 + i2, f2, f);
                path.lineTo(f2, 0.0f);
                float f3 = i2;
                path.lineTo(f2, f3);
                path.lineTo(0.0f, f3);
                path.close();
            } else {
                path.moveTo(0.0f, 0.0f);
                float f4 = i;
                path.lineTo(f4, 0.0f);
                float f5 = i3;
                path.lineTo(f4, f5);
                path.quadTo(i / 2, -i3, 0.0f, f5);
                path.lineTo(0.0f, 0.0f);
                path.close();
            }
        } else if (i5 == 0) {
            float f6 = i2;
            path.moveTo(0.0f, f6);
            float f7 = i;
            path.quadTo(i / 2, i2 - (i3 * 2), f7, f6);
            path.lineTo(f7, f6);
            path.close();
        } else {
            path.moveTo(0.0f, 0.0f);
            path.lineTo(i, 0.0f);
            path.quadTo(i / 2, i3 * 2, 0.0f, 0.0f);
            path.lineTo(0.0f, 0.0f);
            path.close();
        }
        return path;
    }

    public static Path getOutlinePath(int i, int i2, int i3, int i4, int i5) {
        Path path = new Path();
        if (i4 == 0) {
            if (i5 == 0) {
                path.moveTo(0.0f, 0.0f);
                float f = i2 - i3;
                path.lineTo(0.0f, f);
                float f2 = i;
                path.quadTo(i / 2, i2 + i3, f2, f);
                path.lineTo(f2, 0.0f);
                path.lineTo(0.0f, 0.0f);
                path.close();
            } else {
                float f3 = i2;
                path.moveTo(0.0f, f3);
                float f4 = i3;
                path.lineTo(0.0f, f4);
                float f5 = i;
                path.quadTo(i / 2, -i3, f5, f4);
                path.lineTo(f5, f3);
                path.close();
            }
        } else if (i5 == 0) {
            path.moveTo(0.0f, 0.0f);
            float f6 = i2;
            path.lineTo(0.0f, f6);
            float f7 = i;
            path.quadTo(i / 2, i2 - i3, f7, f6);
            path.lineTo(f7, 0.0f);
            path.lineTo(0.0f, 0.0f);
            path.close();
        } else {
            float f8 = i2;
            path.moveTo(0.0f, f8);
            path.lineTo(0.0f, 0.0f);
            float f9 = i3;
            float f10 = i;
            path.cubicTo(0.0f, 0.0f, i / 2, f9, f10, f9);
            path.lineTo(f10, f8);
            path.lineTo(0.0f, f8);
            path.close();
        }
        return path;
    }
}
