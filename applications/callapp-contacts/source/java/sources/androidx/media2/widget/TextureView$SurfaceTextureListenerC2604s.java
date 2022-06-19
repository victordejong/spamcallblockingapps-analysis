package androidx.media2.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.core.content.C0790b;
import androidx.media2.widget.AbstractC2606t;
import okhttp3.internal.http2.Http2Connection;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/s.class */
public final class TextureView$SurfaceTextureListenerC2604s extends TextureView implements TextureView.SurfaceTextureListener, AbstractC2606t {

    /* renamed from: a */
    AbstractC2606t.AbstractC2607a f9851a;

    /* renamed from: b */
    private Surface f9852b;

    /* renamed from: c */
    private C2572k f9853c;

    public TextureView$SurfaceTextureListenerC2604s(Context context) {
        super(context, null);
        setSurfaceTextureListener(this);
    }

    @Override // androidx.media2.widget.AbstractC2606t
    /* renamed from: a */
    public final int mo40568a() {
        return 1;
    }

    @Override // androidx.media2.widget.AbstractC2606t
    /* renamed from: a */
    public final boolean mo40567a(C2572k c2572k) {
        this.f9853c = c2572k;
        if (c2572k != null) {
            Surface surface = this.f9852b;
            if (!(surface != null && surface.isValid())) {
                return false;
            }
            c2572k.m40653a(this.f9852b).mo8638a(new Runnable() { // from class: androidx.media2.widget.s.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (TextureView$SurfaceTextureListenerC2604s.this.f9851a != null) {
                        TextureView$SurfaceTextureListenerC2604s.this.f9851a.mo40564a((AbstractC2606t) TextureView$SurfaceTextureListenerC2604s.this);
                    }
                }
            }, C0790b.m44490e(getContext()));
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        C2572k c2572k = this.f9853c;
        int i4 = 0;
        int i5 = c2572k != null ? c2572k.m40639n().f5066a : 0;
        C2572k c2572k2 = this.f9853c;
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

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f9852b = new Surface(surfaceTexture);
        AbstractC2606t.AbstractC2607a abstractC2607a = this.f9851a;
        if (abstractC2607a != null) {
            abstractC2607a.mo40565a(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        AbstractC2606t.AbstractC2607a abstractC2607a = this.f9851a;
        if (abstractC2607a != null) {
            abstractC2607a.mo40566a((View) this);
        }
        this.f9852b = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        AbstractC2606t.AbstractC2607a abstractC2607a = this.f9851a;
        if (abstractC2607a != null) {
            abstractC2607a.mo40563b(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
