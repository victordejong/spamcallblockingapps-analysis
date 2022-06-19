package com.bytedance.sdk.openadsdk.core.p155f;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.C4258R;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.C4596m;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4556h;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5483u;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.f.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/f/a.class */
public class C4567a implements TTNativeAd {

    /* renamed from: a */
    private int f16637a;

    /* renamed from: g */
    public final C4596m f16638g;

    /* renamed from: h */
    protected final C4557i f16639h;

    /* renamed from: i */
    protected final Context f16640i;

    /* renamed from: j */
    protected TTAdDislike f16641j;

    /* renamed from: k */
    protected int f16642k;

    /* renamed from: l */
    protected String f16643l;

    public C4567a(Context context, C4557i c4557i, int i) {
        C5483u.m32083a(c4557i, "materialMeta can't been null");
        this.f16639h = c4557i;
        this.f16640i = context;
        this.f16642k = i;
        this.f16638g = new C4596m(context, this, c4557i, m35034a(i));
    }

    /* renamed from: a */
    private String m35034a(int i) {
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

    /* renamed from: a */
    private List<View> m35031a(List<View> list, List<View> list2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.content.Context] */
    /* renamed from: a */
    private void m35033a(Activity activity) {
        Context context = this.f16640i;
        Activity activity2 = activity;
        if (context instanceof Activity) {
            activity2 = activity;
            if (!((Activity) context).isFinishing()) {
                activity2 = this.f16640i;
            }
        }
        this.f16641j = new C4852b(activity2, this.f16639h);
    }

    /* renamed from: a */
    private void m35030a(boolean z) {
        C4931b m33526c = C4931b.m33530b().m33533a(this.f16642k).m33526c(String.valueOf(C5438af.m32278d(this.f16639h.m35228S())));
        if (z) {
            C4927a.m33549a().m33538c(m33526c);
        } else {
            C4927a.m33549a().m33537d(m33526c);
        }
    }

    /* renamed from: a */
    private boolean m35035a() {
        C4557i c4557i = this.f16639h;
        if (c4557i == null || c4557i.m35243D() == 5) {
            return false;
        }
        if (this.f16637a == 0) {
            this.f16637a = C5438af.m32278d(this.f16639h.m35228S());
        }
        return C4600n.m34805h().m34898d(this.f16637a) == 1;
    }

    /* renamed from: a */
    public void mo35032a(String str) {
        this.f16643l = str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Bitmap getAdLogo() {
        return BitmapFactory.decodeResource(this.f16640i.getResources(), C5486x.m32067d(C4600n.m34815a(), "tt_ad_logo_small"));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdLogoView() {
        if (this.f16640i == null) {
            C5478q.m32106e("TTNativeAdImpl", "getAdLogoView mContext == null");
            return null;
        }
        ImageView imageView = new ImageView(this.f16640i);
        imageView.setImageResource(C4258R.C4259drawable.tt_ad_logo_small);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.f.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4567a.this.showPrivacyActivity();
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
        if (this.f16639h.m35230Q() != null) {
            return this.f16639h.m35230Q().m35328e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppScore() {
        if (this.f16639h.m35230Q() != null) {
            return this.f16639h.m35230Q().m35329d();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppSize() {
        if (this.f16639h.m35230Q() != null) {
            return this.f16639h.m35230Q().m35327f();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getButtonText() {
        return this.f16639h.m35232O();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getDescription() {
        return !TextUtils.isEmpty(this.f16639h.m35234M()) ? this.f16639h.m35234M() : this.f16639h.m35233N();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        if (this.f16641j == null) {
            m35033a(activity);
        }
        return this.f16641j;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(final TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.setMaterialMeta(this.f16639h);
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
        C4557i c4557i = this.f16639h;
        if (c4557i == null) {
            return null;
        }
        return c4557i.m35226U();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getIcon() {
        if (this.f16639h.m35242E() == null) {
            return null;
        }
        return C4556h.m35252a(this.f16639h.m35242E());
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public List<TTImage> getImageList() {
        ArrayList arrayList = new ArrayList();
        if (this.f16639h.m35239H() != null && !this.f16639h.m35239H().isEmpty()) {
            for (C4556h c4556h : this.f16639h.m35239H()) {
                arrayList.add(C4556h.m35252a(c4556h));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getImageMode() {
        C4557i c4557i = this.f16639h;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35227T();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getInteractionType() {
        C4557i c4557i = this.f16639h;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16639h;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getSource() {
        return this.f16639h.m35244C();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getTitle() {
        return (this.f16639h.m35230Q() == null || TextUtils.isEmpty(this.f16639h.m35230Q().m35335b())) ? !TextUtils.isEmpty(getSource()) ? getSource() : this.f16639h.m35234M() : this.f16639h.m35230Q().m35335b();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getVideoCoverImage() {
        C4557i c4557i = this.f16639h;
        if (c4557i == null || c4557i.m35245B() == null) {
            return null;
        }
        return new TTImage(this.f16639h.m35245B().m35058b(), this.f16639h.m35245B().m35055c(), this.f16639h.m35245B().m35044g());
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        C5483u.m32083a(viewGroup, "container can't been null");
        C5483u.m32083a(view, "clickView can't been null");
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        registerViewForInteraction(viewGroup, arrayList, null, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        C5483u.m32083a(viewGroup, "container can't been null");
        C5483u.m32083a(list, "clickView can't been null");
        C5483u.m32080a(list.size() > 0, "clickViews size must been more than 1");
        registerViewForInteraction(viewGroup, null, list, list2, view, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, TTNativeAd.AdInteractionListener adInteractionListener) {
        C5483u.m32083a(viewGroup, "container can't been null");
        C5483u.m32083a(list, "clickView can't been null");
        C5483u.m32080a(list.size() > 0, "clickViews size must been more than 1");
        registerViewForInteraction(viewGroup, list, list2, null, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        C5483u.m32083a(viewGroup, "container can't been null");
        C5483u.m32083a(list2, "clickView can't been null");
        C5483u.m32080a(list2.size() > 0, "clickViews size must been more than 1");
        m35030a(list3 != null && list3.size() > 0);
        List<View> list4 = list3;
        if (m35035a()) {
            list4 = m35031a(list2, list3);
        }
        this.f16638g.m34823a(viewGroup, list, list2, list4, view, adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void showPrivacyActivity() {
        Context context = this.f16640i;
        if (context != null) {
            TTWebsiteActivity.m35763a(context, this.f16639h, this.f16643l);
        }
    }
}
