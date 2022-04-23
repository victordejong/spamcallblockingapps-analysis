package com.bytedance.sdk.openadsdk.component.a;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTBannerAd;
import com.bytedance.sdk.openadsdk.component.a.b;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/e.class */
public class e implements TTBannerAd, ah.a {

    /* renamed from: a  reason: collision with root package name */
    private final d f8570a;

    /* renamed from: b  reason: collision with root package name */
    private final a f8571b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f8572c;

    /* renamed from: d  reason: collision with root package name */
    private ah f8573d;
    private int e;
    private i f;
    private TTBannerAd.AdInteractionListener g;
    private b h;
    private final b i;
    private c j;
    private String k = "banner_ad";
    private AdSlot l;

    public e(Context context, a aVar, AdSlot adSlot) {
        this.f8572c = context;
        this.f8571b = aVar;
        this.l = adSlot;
        this.f = aVar.b();
        d dVar = new d(context);
        this.f8570a = dVar;
        this.i = b.a(context);
        a(dVar.b(), aVar);
    }

    private c a(i iVar) {
        if (iVar.D() == 4) {
            return d.a(this.f8572c, iVar, this.k);
        }
        return null;
    }

    private EmptyView a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    private void a() {
        this.i.a(this.l, new b.a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.1
            @Override // com.bytedance.sdk.openadsdk.component.a.b.a
            public void a() {
                e.this.b();
            }

            @Override // com.bytedance.sdk.openadsdk.component.a.b.a
            public void a(a aVar) {
                e.this.a(aVar);
                e.this.f8570a.e();
                e.this.b();
            }
        });
    }

    private void a(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        b(dislikeInteractionCallback);
        this.f8570a.a(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        if (this.f8570a.c() != null && !this.f8570a.f()) {
            a(this.f8570a.c(), aVar);
        }
    }

    private void a(c cVar, a aVar) {
        cVar.a(aVar.a());
        final i b2 = aVar.b();
        this.f = b2;
        this.h = new com.bytedance.sdk.openadsdk.dislike.b(this.f8572c, b2);
        cVar.a(b2);
        this.j = a(b2);
        com.bytedance.sdk.openadsdk.d.e.a(b2);
        EmptyView a2 = a(cVar);
        EmptyView emptyView = a2;
        if (a2 == null) {
            emptyView = new EmptyView(this.f8572c, cVar);
            cVar.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(View view) {
                e.this.b();
                q.b("TTBannerAd", "BANNER SHOW");
                com.bytedance.sdk.openadsdk.d.e.a(e.this.f8572c, b2, e.this.k, (Map<String, Object>) null);
                if (e.this.g != null) {
                    e.this.g.onAdShow(view, b2.D());
                }
                if (b2.Y()) {
                    af.a(b2, view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(boolean z) {
                if (z) {
                    e.this.b();
                    q.b("TTBannerAd", "获得焦点，开始计时");
                    return;
                }
                q.b("TTBannerAd", "失去焦点，停止计时");
                e.this.c();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void b() {
                e.this.c();
            }
        });
        a aVar2 = new a(this.f8572c, b2, this.k, 2);
        aVar2.a(cVar);
        aVar2.b(this.f8570a.d());
        aVar2.a(this.j);
        aVar2.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.3
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i) {
                if (e.this.g != null) {
                    e.this.g.onAdClicked(view, i);
                }
            }
        });
        cVar.setOnClickListener(aVar2);
        cVar.setOnTouchListener(aVar2);
        emptyView.setNeedCheckingShow(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ah ahVar = this.f8573d;
        if (ahVar != null) {
            ahVar.removeCallbacksAndMessages(null);
            this.f8573d.sendEmptyMessageDelayed(1, this.e);
        }
    }

    private void b(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.h == null) {
            this.h = new com.bytedance.sdk.openadsdk.dislike.b(this.f8572c, this.f);
        }
        this.h.setDislikeInteractionCallback(dislikeInteractionCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ah ahVar = this.f8573d;
        if (ahVar != null) {
            ahVar.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 1) {
            a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public View getBannerView() {
        return this.f8570a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public TTAdDislike getDislikeDialog(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null) {
            return null;
        }
        b(dislikeInteractionCallback);
        return this.h;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public int getInteractionType() {
        i iVar = this.f;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setBannerInteractionListener(TTBannerAd.AdInteractionListener adInteractionListener) {
        this.g = adInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setShowDislikeIcon(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null) {
            a(dislikeInteractionCallback);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setSlideIntervalTime(int i) {
        int i2;
        if (i > 0) {
            this.k = "slide_banner_ad";
            a(this.f8570a.b(), this.f8571b);
            this.f8570a.a();
            this.f8570a.a(1000);
            if (i < 30000) {
                i2 = 30000;
            } else {
                i2 = i;
                if (i > 120000) {
                    i2 = 120000;
                }
            }
            this.e = i2;
            this.f8573d = new ah(Looper.getMainLooper(), this);
        }
    }
}
