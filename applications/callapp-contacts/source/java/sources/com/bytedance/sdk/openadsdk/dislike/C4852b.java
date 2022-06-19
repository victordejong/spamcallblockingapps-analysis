package com.bytedance.sdk.openadsdk.dislike;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.DialogC4854c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5483u;
/* renamed from: com.bytedance.sdk.openadsdk.dislike.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/b.class */
public class C4852b implements TTAdDislike {

    /* renamed from: a */
    private final Context f17778a;

    /* renamed from: b */
    private C4557i f17779b;

    /* renamed from: c */
    private DialogC4854c f17780c;

    /* renamed from: d */
    private TTAdDislike.DislikeInteractionCallback f17781d;

    public C4852b(Context context, C4557i c4557i) {
        C5483u.m32084a(context, "Dislike 初始化必须使用activity,请在TTAdManager.createAdNative(activity)中传入");
        this.f17778a = context;
        this.f17779b = c4557i;
        m33738a();
    }

    /* renamed from: a */
    private void m33738a() {
        DialogC4854c dialogC4854c = new DialogC4854c(this.f17778a, this.f17779b);
        this.f17780c = dialogC4854c;
        dialogC4854c.m33731a(new DialogC4854c.AbstractC4860a() { // from class: com.bytedance.sdk.openadsdk.dislike.b.1
            @Override // com.bytedance.sdk.openadsdk.dislike.DialogC4854c.AbstractC4860a
            /* renamed from: a */
            public void mo33724a() {
                C5478q.m32112b("TTAdDislikeImpl", "onDislikeShow: ");
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.DialogC4854c.AbstractC4860a
            /* renamed from: a */
            public void mo33723a(int i, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && C4852b.this.f17781d != null) {
                        C4852b.this.f17781d.onSelected(i, filterWord.getName());
                    }
                    C5478q.m32106e("TTAdDislikeImpl", "onDislikeSelected: " + i + ", " + String.valueOf(filterWord.getName()));
                } catch (Throwable th) {
                    C5478q.m32108c("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.DialogC4854c.AbstractC4860a
            /* renamed from: b */
            public void mo33722b() {
                C5478q.m32106e("TTAdDislikeImpl", "onDislikeDismiss: ");
                try {
                    if (C4852b.this.f17781d == null) {
                        return;
                    }
                    C4852b.this.f17781d.onCancel();
                } catch (Throwable th) {
                    C5478q.m32108c("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.DialogC4854c.AbstractC4860a
            /* renamed from: c */
            public void mo33721c() {
                C5478q.m32106e("TTAdDislikeImpl", "onDislikeOptionBack: ");
            }
        });
    }

    /* renamed from: a */
    public void m33737a(C4557i c4557i) {
        this.f17780c.m33732a(c4557i);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void setDislikeInteractionCallback(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f17781d = dislikeInteractionCallback;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void showDislikeDialog() {
        Context context = this.f17778a;
        if (!((context instanceof Activity) && !((Activity) context).isFinishing()) || this.f17780c.isShowing()) {
            return;
        }
        this.f17780c.show();
    }
}
