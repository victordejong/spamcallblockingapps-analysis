package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/CanvasSubtitleOutput.class */
final class CanvasSubtitleOutput extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<f> f21962a;

    /* renamed from: b  reason: collision with root package name */
    private List<b> f21963b;

    /* renamed from: c  reason: collision with root package name */
    private int f21964c;

    /* renamed from: d  reason: collision with root package name */
    private float f21965d;
    private a e;
    private float f;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    public CanvasSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f21962a = new ArrayList();
        this.f21963b = Collections.emptyList();
        this.f21964c = 0;
        this.f21965d = 0.0533f;
        this.e = a.f21697a;
        this.f = 0.08f;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public final void a(List<b> list, a aVar, float f, int i, float f2) {
        this.f21963b = list;
        this.e = aVar;
        this.f21965d = f;
        this.f21964c = i;
        this.f = f2;
        while (this.f21962a.size() < list.size()) {
            this.f21962a.add(new f(getContext()));
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x083c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0847  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchDraw(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 2650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.CanvasSubtitleOutput.dispatchDraw(android.graphics.Canvas):void");
    }
}
