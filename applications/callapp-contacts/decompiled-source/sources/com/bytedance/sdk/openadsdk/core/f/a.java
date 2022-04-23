package com.bytedance.sdk.openadsdk.core.f;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.R;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.e.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.m;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.u;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/f/a.class */
public class a implements TTNativeAd {

    /* renamed from: a  reason: collision with root package name */
    private int f8932a;
    public final m g;
    protected final i h;
    protected final Context i;
    protected TTAdDislike j;
    protected int k;
    protected String l;

    public a(Context context, i iVar, int i) {
        u.a(iVar, "materialMeta can't been null");
        this.h = iVar;
        this.i = context;
        this.k = i;
        this.g = new m(context, this, iVar, a(i));
    }

    private String a(int i) {
        String str;
        if (i == 1) {
            str = "banner_ad";
        } else if (i != 2) {
            str = "embeded_ad";
            if (i != 5) {
                str = i != 9 ? "embeded_ad" : "draw_ad";
            }
        } else {
            str = "interaction";
        }
        return str;
    }

    private List<View> a(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                linkedList.add(list.get(i));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                linkedList.add(list2.get(i2));
            }
        }
        return linkedList;
    }

    private void a(Activity activity) {
        Context context = this.i;
        Context context2 = activity;
        if (context instanceof Activity) {
            context2 = activity;
            if (!((Activity) context).isFinishing()) {
                context2 = this.i;
            }
        }
        this.j = new b(context2, this.h);
    }

    private void a(boolean z) {
        com.bytedance.sdk.openadsdk.i.a.b c2 = com.bytedance.sdk.openadsdk.i.a.b.b().a(this.k).c(String.valueOf(af.d(this.h.S())));
        if (z) {
            com.bytedance.sdk.openadsdk.i.a.a().c(c2);
        } else {
            com.bytedance.sdk.openadsdk.i.a.a().d(c2);
        }
    }

    private boolean a() {
        i iVar = this.h;
        if (iVar == null || iVar.D() == 5) {
            return false;
        }
        if (this.f8932a == 0) {
            this.f8932a = af.d(this.h.S());
        }
        return n.h().d(this.f8932a) == 1;
    }

    public void a(String str) {
        this.l = str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Bitmap getAdLogo() {
        return BitmapFactory.decodeResource(this.i.getResources(), x.d(n.a(), "tt_ad_logo_small"));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdLogoView() {
        if (this.i == null) {
            q.e("TTNativeAdImpl", "getAdLogoView mContext == null");
            return null;
        }
        ImageView imageView = new ImageView(this.i);
        imageView.setImageResource(R.drawable.tt_ad_logo_small);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.f.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.showPrivacyActivity();
            }
        });
        return imageView;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppCommentNum() {
        if (this.h.Q() != null) {
            return this.h.Q().e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppScore() {
        if (this.h.Q() != null) {
            return this.h.Q().d();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppSize() {
        if (this.h.Q() != null) {
            return this.h.Q().f();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getButtonText() {
        return this.h.O();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getDescription() {
        return !TextUtils.isEmpty(this.h.M()) ? this.h.M() : this.h.N();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        if (this.j == null) {
            a(activity);
        }
        return this.j;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(final TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.setMaterialMeta(this.h);
            return new TTAdDislike() { // from class: com.bytedance.sdk.openadsdk.core.f.a.1
                @Override // com.bytedance.sdk.openadsdk.TTAdDislike
                public void setDislikeInteractionCallback(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdDislike
                public void showDislikeDialog() {
                    if ((tTDislikeDialogAbstract.getContext() instanceof Activity) && !((Activity) tTDislikeDialogAbstract.getContext()).isFinishing()) {
                        tTDislikeDialogAbstract.show();
                    }
                }
            };
        }
        throw new IllegalArgumentException("dialog is null, please check");
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public List<FilterWord> getFilterWords() {
        i iVar = this.h;
        if (iVar == null) {
            return null;
        }
        return iVar.U();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getIcon() {
        if (this.h.E() == null) {
            return null;
        }
        return h.a(this.h.E());
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public List<TTImage> getImageList() {
        ArrayList arrayList = new ArrayList();
        if (this.h.H() != null && !this.h.H().isEmpty()) {
            for (h hVar : this.h.H()) {
                arrayList.add(h.a(hVar));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getImageMode() {
        i iVar = this.h;
        if (iVar == null) {
            return -1;
        }
        return iVar.T();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getInteractionType() {
        i iVar = this.h;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.h;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getSource() {
        return this.h.C();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getTitle() {
        return (this.h.Q() == null || TextUtils.isEmpty(this.h.Q().b())) ? !TextUtils.isEmpty(getSource()) ? getSource() : this.h.M() : this.h.Q().b();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getVideoCoverImage() {
        i iVar = this.h;
        if (iVar == null || iVar.B() == null) {
            return null;
        }
        return new TTImage(this.h.B().b(), this.h.B().c(), this.h.B().g());
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        u.a(viewGroup, "container can't been null");
        u.a(view, "clickView can't been null");
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        registerViewForInteraction(viewGroup, arrayList, null, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        u.a(viewGroup, "container can't been null");
        u.a(list, "clickView can't been null");
        u.a(list.size() > 0, "clickViews size must been more than 1");
        registerViewForInteraction(viewGroup, null, list, list2, view, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, TTNativeAd.AdInteractionListener adInteractionListener) {
        u.a(viewGroup, "container can't been null");
        u.a(list, "clickView can't been null");
        u.a(list.size() > 0, "clickViews size must been more than 1");
        registerViewForInteraction(viewGroup, list, list2, null, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        u.a(viewGroup, "container can't been null");
        u.a(list2, "clickView can't been null");
        boolean z = true;
        u.a(list2.size() > 0, "clickViews size must been more than 1");
        if (list3 == null || list3.size() <= 0) {
            z = false;
        }
        a(z);
        List<View> list4 = list3;
        if (a()) {
            list4 = a(list2, list3);
        }
        this.g.a(viewGroup, list, list2, list4, view, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void showPrivacyActivity() {
        Context context = this.i;
        if (context != null) {
            TTWebsiteActivity.a(context, this.h, this.l);
        }
    }
}
