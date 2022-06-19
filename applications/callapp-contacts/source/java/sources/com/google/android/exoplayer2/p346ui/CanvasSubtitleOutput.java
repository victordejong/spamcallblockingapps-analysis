package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.p346ui.SubtitleView;
import com.google.android.exoplayer2.text.C11343a;
import com.google.android.exoplayer2.text.C11356b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.ui.CanvasSubtitleOutput */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/CanvasSubtitleOutput.class */
public final class CanvasSubtitleOutput extends View implements SubtitleView.AbstractC11470a {

    /* renamed from: a */
    private final List<C11507f> f37861a;

    /* renamed from: b */
    private List<C11356b> f37862b;

    /* renamed from: c */
    private int f37863c;

    /* renamed from: d */
    private float f37864d;

    /* renamed from: e */
    private C11343a f37865e;

    /* renamed from: f */
    private float f37866f;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    public CanvasSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37861a = new ArrayList();
        this.f37862b = Collections.emptyList();
        this.f37863c = 0;
        this.f37864d = 0.0533f;
        this.f37865e = C11343a.f37307a;
        this.f37866f = 0.08f;
    }

    @Override // com.google.android.exoplayer2.p346ui.SubtitleView.AbstractC11470a
    /* renamed from: a */
    public final void mo20276a(List<C11356b> list, C11343a c11343a, float f, int i, float f2) {
        this.f37862b = list;
        this.f37865e = c11343a;
        this.f37864d = f;
        this.f37863c = i;
        this.f37866f = f2;
        while (this.f37861a.size() < list.size()) {
            this.f37861a.add(new C11507f(getContext()));
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.CanvasSubtitleOutput.dispatchDraw(android.graphics.Canvas):void");
    }
}
