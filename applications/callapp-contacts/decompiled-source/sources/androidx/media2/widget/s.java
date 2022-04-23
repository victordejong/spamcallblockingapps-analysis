package androidx.media2.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.core.content.b;
import androidx.media2.widget.t;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/s.class */
final class s extends TextureView implements TextureView.SurfaceTextureListener, t {

    /* renamed from: a  reason: collision with root package name */
    t.a f5292a;

    /* renamed from: b  reason: collision with root package name */
    private Surface f5293b;

    /* renamed from: c  reason: collision with root package name */
    private k f5294c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Context context) {
        super(context, null);
        setSurfaceTextureListener(this);
    }

    @Override // androidx.media2.widget.t
    public final int a() {
        return 1;
    }

    @Override // androidx.media2.widget.t
    public final boolean a(k kVar) {
        this.f5294c = kVar;
        if (kVar == null) {
            return false;
        }
        Surface surface = this.f5293b;
        if (!(surface != null && surface.isValid())) {
            return false;
        }
        kVar.a(this.f5293b).a(new Runnable() { // from class: androidx.media2.widget.s.1
            @Override // java.lang.Runnable
            public final void run() {
                if (s.this.f5292a != null) {
                    s.this.f5292a.a((t) s.this);
                }
            }
        }, b.e(getContext()));
        return true;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        k kVar = this.f5294c;
        int i4 = 0;
        int i5 = kVar != null ? kVar.n().f2770a : 0;
        k kVar2 = this.f5294c;
        if (kVar2 != null) {
            i4 = kVar2.n().f2771b;
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
        this.f5293b = new Surface(surfaceTexture);
        t.a aVar = this.f5292a;
        if (aVar != null) {
            aVar.a(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        t.a aVar = this.f5292a;
        if (aVar != null) {
            aVar.a((View) this);
        }
        this.f5293b = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        t.a aVar = this.f5292a;
        if (aVar != null) {
            aVar.b(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
