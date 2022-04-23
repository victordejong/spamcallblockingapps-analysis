package com.bytedance.sdk.openadsdk.component.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.TTInteractionAd;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/c/b.class */
class b implements TTInteractionAd {
    private static boolean i;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8600a;

    /* renamed from: b  reason: collision with root package name */
    private final i f8601b;

    /* renamed from: c  reason: collision with root package name */
    private Dialog f8602c;

    /* renamed from: d  reason: collision with root package name */
    private TTInteractionAd.AdInteractionListener f8603d;
    private c e;
    private j f;
    private ImageView g;
    private ImageView h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, i iVar) {
        this.f8600a = context;
        this.f8601b = iVar;
    }

    private void a() {
        if (this.f8602c == null) {
            l lVar = new l(this.f8600a);
            this.f8602c = lVar;
            lVar.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.component.c.b.1
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    if (b.this.f8602c.isShowing()) {
                        e.a(b.this.f8600a, b.this.f8601b, "interaction", (Map<String, Object>) null);
                        if (b.this.f8603d != null) {
                            b.this.f8603d.onAdShow();
                        }
                        if (b.this.f8601b.Y()) {
                            af.a(b.this.f8601b, b.this.h);
                        }
                    }
                }
            });
            this.f8602c.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.component.c.b.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                }
            });
            ((l) this.f8602c).a(false, new l.a() { // from class: com.bytedance.sdk.openadsdk.component.c.b.3
                @Override // com.bytedance.sdk.openadsdk.core.l.a
                public void a(View view) {
                    b.this.d();
                    e.a(b.this.f8600a, b.this.f8601b, "interaction");
                    if (b.this.f8603d != null) {
                        b.this.f8603d.onAdDismiss();
                    }
                    q.b("TTInteractionAdImpl", "dislike事件发出");
                }

                @Override // com.bytedance.sdk.openadsdk.core.l.a
                public void a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout) {
                    b.this.h = imageView;
                    b.this.g = imageView2;
                    b.this.b();
                    b.this.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        a aVar = new a(this.f8600a, this.f8601b, "interaction", 3);
        aVar.a(this.h);
        aVar.b(this.g);
        aVar.a(this.e);
        aVar.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.component.c.b.4
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i2) {
                if (b.this.f8603d != null) {
                    b.this.f8603d.onAdClicked();
                }
                if (i2 == 2 || i2 == 3 || i2 == 5) {
                    b.this.d();
                    if (b.this.f8603d != null) {
                        b.this.f8603d.onAdDismiss();
                    }
                }
            }
        });
        this.h.setOnClickListener(aVar);
        this.h.setOnTouchListener(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int b2 = this.f8601b.H().get(0).b();
        com.bytedance.sdk.openadsdk.j.e.c().h().a(this.f8601b.H().get(0).a(), new d.e() { // from class: com.bytedance.sdk.openadsdk.component.c.b.5
            @Override // com.bytedance.sdk.adnet.b.d.e
            public void a() {
            }

            @Override // com.bytedance.sdk.adnet.b.d.e
            public void a(d.c cVar, boolean z) {
                if (cVar != null && cVar.a() != null) {
                    b.this.h.setImageBitmap(cVar.a());
                    if (b.this.f != null) {
                        b.this.f.a();
                    }
                } else if (b.this.f != null) {
                    b.this.f.b();
                }
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void a(m<Bitmap> mVar) {
            }

            @Override // com.bytedance.sdk.adnet.b.d.e
            public boolean a(byte[] bArr) {
                return false;
            }

            @Override // com.bytedance.sdk.adnet.b.d.e
            public void b() {
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void b(m<Bitmap> mVar) {
                if (b.this.f != null) {
                    b.this.f.b();
                }
            }
        }, b2, b2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        i = false;
        this.f8602c.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) {
        this.f = jVar;
        e.a(this.f8601b);
        if (getInteractionType() == 4) {
            this.e = com.a.a.a.a.a.d.a(this.f8600a, this.f8601b, "interaction");
        }
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public int getInteractionType() {
        i iVar = this.f8601b;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f8601b;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public void setAdInteractionListener(TTInteractionAd.AdInteractionListener adInteractionListener) {
        this.f8603d = adInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public void showInteractionAd(Activity activity) {
        if (!activity.isFinishing()) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("can't not running in child thread >>> TTInteractionAd.showInteractionAd");
            } else if (!i) {
                i = true;
                this.f8602c.show();
            }
        }
    }
}
