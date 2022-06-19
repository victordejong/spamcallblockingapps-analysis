package com.lidroid.xutils.view;

import android.content.Context;
import android.view.animation.AnimationUtils;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/view/ResLoader.class */
public class ResLoader {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.lidroid.xutils.view.ResLoader$1 */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/view/ResLoader$1.class */
    public static /* synthetic */ class C27371 {
        static final /* synthetic */ int[] $SwitchMap$com$lidroid$xutils$view$ResType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c5 -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:73:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:69:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:71:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:67:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:79:0x00b8). Please submit an issue!!! */
        static {
            int[] iArr = new int[ResType.values().length];
            $SwitchMap$com$lidroid$xutils$view$ResType = iArr;
            try {
                iArr[ResType.Animation.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Boolean.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Color.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.ColorStateList.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Dimension.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.DimensionPixelOffset.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.DimensionPixelSize.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Drawable.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Integer.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.IntArray.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Movie.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.String.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.StringArray.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Text.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.TextArray.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$lidroid$xutils$view$ResType[ResType.Xml.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    public static Object loadRes(ResType resType, Context context, int i) {
        if (context == null || i < 1) {
            return null;
        }
        switch (C27371.$SwitchMap$com$lidroid$xutils$view$ResType[resType.ordinal()]) {
            case 1:
                return AnimationUtils.loadAnimation(context, i);
            case 2:
                return Boolean.valueOf(context.getResources().getBoolean(i));
            case 3:
                return Integer.valueOf(context.getResources().getColor(i));
            case 4:
                return context.getResources().getColorStateList(i);
            case 5:
                return Float.valueOf(context.getResources().getDimension(i));
            case 6:
                return Integer.valueOf(context.getResources().getDimensionPixelOffset(i));
            case 7:
                return Integer.valueOf(context.getResources().getDimensionPixelSize(i));
            case 8:
                return context.getResources().getDrawable(i);
            case 9:
                return Integer.valueOf(context.getResources().getInteger(i));
            case 10:
                return context.getResources().getIntArray(i);
            case 11:
                return context.getResources().getMovie(i);
            case 12:
                return context.getResources().getString(i);
            case 13:
                return context.getResources().getStringArray(i);
            case 14:
                return context.getResources().getText(i);
            case 15:
                return context.getResources().getTextArray(i);
            case 16:
                return context.getResources().getXml(i);
            default:
                return null;
        }
    }
}
