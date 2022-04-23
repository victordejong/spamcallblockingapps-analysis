package com.bytedance.sdk.openadsdk.dislike;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.dislike.c;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.u;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/b.class */
public class b implements TTAdDislike {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9477a;

    /* renamed from: b  reason: collision with root package name */
    private i f9478b;

    /* renamed from: c  reason: collision with root package name */
    private c f9479c;

    /* renamed from: d  reason: collision with root package name */
    private TTAdDislike.DislikeInteractionCallback f9480d;

    public b(Context context, i iVar) {
        u.a(context, "Dislike 初始化必须使用activity,请在TTAdManager.createAdNative(activity)中传入");
        this.f9477a = context;
        this.f9478b = iVar;
        a();
    }

    private void a() {
        c cVar = new c(this.f9477a, this.f9478b);
        this.f9479c = cVar;
        cVar.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.dislike.b.1
            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void a() {
                q.b("TTAdDislikeImpl", "onDislikeShow: ");
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void a(int i, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && b.this.f9480d != null) {
                        b.this.f9480d.onSelected(i, filterWord.getName());
                    }
                    q.e("TTAdDislikeImpl", "onDislikeSelected: " + i + ", " + String.valueOf(filterWord.getName()));
                } catch (Throwable th) {
                    q.c("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void b() {
                q.e("TTAdDislikeImpl", "onDislikeDismiss: ");
                try {
                    if (b.this.f9480d != null) {
                        b.this.f9480d.onCancel();
                    }
                } catch (Throwable th) {
                    q.c("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void c() {
                q.e("TTAdDislikeImpl", "onDislikeOptionBack: ");
            }
        });
    }

    public void a(i iVar) {
        this.f9479c.a(iVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void setDislikeInteractionCallback(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f9480d = dislikeInteractionCallback;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void showDislikeDialog() {
        Context context = this.f9477a;
        if (((context instanceof Activity) && !((Activity) context).isFinishing()) && !this.f9479c.isShowing()) {
            this.f9479c.show();
        }
    }
}
