package cn.jzvd;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
/* loaded from: classes-dex2jar.jar:cn/jzvd/JZTextureView.class */
public class JZTextureView extends TextureView {

    /* renamed from: d */
    public int f7272d;

    /* renamed from: e */
    public int f7273e;

    public JZTextureView(Context context) {
        super(context);
        this.f7272d = 0;
        this.f7273e = 0;
        this.f7272d = 0;
        this.f7273e = 0;
    }

    public JZTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7272d = 0;
        this.f7273e = 0;
        this.f7272d = 0;
        this.f7273e = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00bf, code lost:
        if (r0 == 270) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02c3, code lost:
        if (r0 == 270) goto L83;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jzvd.JZTextureView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setRotation(float f) {
        if (f != getRotation()) {
            super.setRotation(f);
            requestLayout();
        }
    }

    public void setVideoSize(int i, int i2) {
        if (this.f7272d == i && this.f7273e == i2) {
            return;
        }
        this.f7272d = i;
        this.f7273e = i2;
        requestLayout();
    }
}
