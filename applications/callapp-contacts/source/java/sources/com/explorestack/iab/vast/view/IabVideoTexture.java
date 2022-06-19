package com.explorestack.iab.vast.view;

import android.content.Context;
import android.view.TextureView;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/IabVideoTexture.class */
public class IabVideoTexture extends TextureView {

    /* renamed from: a */
    private int f32872a;

    /* renamed from: b */
    private int f32873b;

    public IabVideoTexture(Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a2, code lost:
        if (r5 > r6) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00db, code lost:
        if (r0 > r0) goto L29;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.view.IabVideoTexture.onMeasure(int, int):void");
    }

    public void setVideoSize(int i, int i2) {
        this.f32872a = i;
        this.f32873b = i2;
        requestLayout();
    }
}
