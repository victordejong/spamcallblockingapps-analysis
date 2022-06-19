package androidx.media2.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import androidx.core.content.C0790b;
import androidx.media2.widget.AbstractC2606t;
import okhttp3.internal.http2.Http2Connection;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/r.class */
public final class SurfaceHolder$CallbackC2602r extends SurfaceView implements SurfaceHolder.Callback, AbstractC2606t {

    /* renamed from: c */
    private C2572k f9849c;

    /* renamed from: b */
    private Surface f9848b = null;

    /* renamed from: a */
    AbstractC2606t.AbstractC2607a f9847a = null;

    public SurfaceHolder$CallbackC2602r(Context context) {
        super(context, null);
        getHolder().addCallback(this);
    }

    @Override // androidx.media2.widget.AbstractC2606t
    /* renamed from: a */
    public final int mo40568a() {
        return 0;
    }

    @Override // androidx.media2.widget.AbstractC2606t
    /* renamed from: a */
    public final boolean mo40567a(C2572k c2572k) {
        this.f9849c = c2572k;
        if (c2572k != null) {
            Surface surface = this.f9848b;
            if (!(surface != null && surface.isValid())) {
                return false;
            }
            c2572k.m40653a(this.f9848b).mo8638a(new Runnable() { // from class: androidx.media2.widget.r.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (SurfaceHolder$CallbackC2602r.this.f9847a != null) {
                        SurfaceHolder$CallbackC2602r.this.f9847a.mo40564a((AbstractC2606t) SurfaceHolder$CallbackC2602r.this);
                    }
                }
            }, C0790b.m44490e(getContext()));
            return true;
        }
        return false;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        C2572k c2572k = this.f9849c;
        int i4 = 0;
        int i5 = c2572k != null ? c2572k.m40639n().f5066a : 0;
        C2572k c2572k2 = this.f9849c;
        if (c2572k2 != null) {
            i4 = c2572k2.m40639n().f5067b;
        }
        if (i5 == 0 || i4 == 0) {
            setMeasuredDimension(getDefaultSize(i5, i), getDefaultSize(i4, i2));
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            int i6 = i5 * size2;
            int i7 = size * i4;
            if (i6 < i7) {
                i3 = i6 / i4;
            } else {
                i3 = size;
                if (i6 > i7) {
                    size2 = i7 / i5;
                    i3 = size;
                }
            }
        } else if (mode == 1073741824) {
            int i8 = (i4 * size) / i5;
            if (mode2 != Integer.MIN_VALUE || i8 <= size2) {
                size2 = i8;
                i3 = size;
            } else {
                size2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
                i3 = size;
            }
        } else if (mode2 == 1073741824) {
            i3 = (i5 * size2) / i4;
            if (mode == Integer.MIN_VALUE && i3 > size) {
                i3 = size | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
        } else {
            if (mode2 != Integer.MIN_VALUE || i4 <= size2) {
                i3 = i5;
                size2 = i4;
            } else {
                i3 = (size2 * i5) / i4;
            }
            if (mode == Integer.MIN_VALUE && i3 > size) {
                size2 = (i4 * size) / i5;
                i3 = size;
            }
        }
        setMeasuredDimension(i3, size2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        AbstractC2606t.AbstractC2607a abstractC2607a = this.f9847a;
        if (abstractC2607a != null) {
            abstractC2607a.mo40563b(this, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f9848b = surfaceHolder.getSurface();
        if (this.f9847a != null) {
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            this.f9847a.mo40565a(this, surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f9848b = null;
        AbstractC2606t.AbstractC2607a abstractC2607a = this.f9847a;
        if (abstractC2607a != null) {
            abstractC2607a.mo40566a((View) this);
        }
    }
}
