package com.google.android.exoplayer2.text.webvtt;

import android.text.Layout;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/webvtt/WebvttCue$1.class */
public /* synthetic */ class WebvttCue$1 {
    public static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[Layout.Alignment.values().length];
        $SwitchMap$android$text$Layout$Alignment = iArr;
        try {
            iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
