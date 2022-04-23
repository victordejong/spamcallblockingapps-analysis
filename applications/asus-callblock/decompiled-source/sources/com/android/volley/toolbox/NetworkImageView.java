package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.p;
import com.android.volley.toolbox.h;
import com.android.volley.u;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private String f2312a;

    /* renamed from: b  reason: collision with root package name */
    private int f2313b;
    private int c;
    private h d;
    private h.c e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.toolbox.NetworkImageView$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/NetworkImageView$1.class */
    public final class AnonymousClass1 implements h.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f2314a;

        AnonymousClass1(boolean z) {
            this.f2314a = z;
        }

        @Override // com.android.volley.toolbox.h.d
        public final void a(final h.c cVar, boolean z) {
            if (z && this.f2314a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1.this.a(cVar, false);
                    }
                });
            } else if (cVar.f2339a != null) {
                NetworkImageView.this.setImageBitmap(cVar.f2339a);
            } else if (NetworkImageView.this.f2313b != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.f2313b);
            }
        }

        @Override // com.android.volley.p.a
        public final void a(u uVar) {
            if (NetworkImageView.this.c != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.c);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a() {
        if (this.f2313b != 0) {
            setImageResource(this.f2313b);
        } else {
            setImageBitmap(null);
        }
    }

    private void a(boolean z) {
        boolean z2;
        h.c cVar;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        boolean z3 = false;
        if (getLayoutParams() != null) {
            z2 = getLayoutParams().width == -2;
            z3 = getLayoutParams().height == -2;
        } else {
            z2 = false;
        }
        boolean z4 = z2 && z3;
        if (width != 0 || height != 0 || z4) {
            if (TextUtils.isEmpty(this.f2312a)) {
                if (this.e != null) {
                    this.e.a();
                    this.e = null;
                }
                a();
                return;
            }
            if (!(this.e == null || this.e.c == null)) {
                if (!this.e.c.equals(this.f2312a)) {
                    this.e.a();
                    a();
                } else {
                    return;
                }
            }
            int i = width;
            if (z2) {
                i = 0;
            }
            int i2 = height;
            if (z3) {
                i2 = 0;
            }
            final h hVar = this.d;
            String str = this.f2312a;
            AnonymousClass1 r0 = new AnonymousClass1(z);
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
            }
            final String sb = new StringBuilder(str.length() + 12).append("#W").append(i).append("#H").append(i2).append("#S").append(scaleType.ordinal()).append(str).toString();
            Bitmap a2 = hVar.f2331b.a();
            if (a2 != null) {
                cVar = new h.c(a2, str, null, null);
                r0.a(cVar, true);
            } else {
                cVar = new h.c(null, str, sb, r0);
                r0.a(cVar, true);
                h.a aVar = hVar.c.get(sb);
                if (aVar != null) {
                    aVar.c.add(cVar);
                } else {
                    i iVar = new i(str, new p.b<Bitmap>() { // from class: com.android.volley.toolbox.h.1
                        @Override // com.android.volley.p.b
                        public final /* synthetic */ void a(Bitmap bitmap) {
                            Bitmap bitmap2 = bitmap;
                            h hVar2 = hVar;
                            String str2 = sb;
                            a remove = hVar2.c.remove(str2);
                            if (remove != null) {
                                remove.f2337a = bitmap2;
                                hVar2.a(str2, remove);
                            }
                        }
                    }, i, i2, scaleType, Bitmap.Config.RGB_565, new p.a() { // from class: com.android.volley.toolbox.h.2
                        @Override // com.android.volley.p.a
                        public final void a(u uVar) {
                            h hVar2 = hVar;
                            String str2 = sb;
                            a remove = hVar2.c.remove(str2);
                            if (remove != null) {
                                remove.f2338b = uVar;
                                hVar2.a(str2, remove);
                            }
                        }
                    });
                    hVar.f2330a.a(iVar);
                    hVar.c.put(sb, new h.a(iVar, cVar));
                }
            }
            this.e = cVar;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.e != null) {
            this.e.a();
            setImageBitmap(null);
            this.e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(true);
    }

    public void setDefaultImageResId(int i) {
        this.f2313b = i;
    }

    public void setErrorImageResId(int i) {
        this.c = i;
    }

    public void setImageUrl(String str, h hVar) {
        this.f2312a = str;
        this.d = hVar;
        a(false);
    }
}
