package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.WeakHashMap;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\u001e\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0002H\u0016J\u0018\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020(H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010)\u001a\u00020\u0017H\u0016J\u0016\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u00172\u0006\u0010'\u001a\u00020(J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u0002H$R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0084.¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R-\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00158DX\u0085\u0084\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u00062"}, m815d2 = {"Lcom/mopub/nativeads/BaseNativeAdRenderer;", "Lcom/mopub/nativeads/MoPubAdRenderer;", "Lcom/mopub/nativeads/StaticNativeAd;", "viewBinder", "Lcom/gogolook/adsdk/view/ViewBinder;", "adUnit", "", "(Lcom/gogolook/adsdk/view/ViewBinder;Ljava/lang/String;)V", "adCustomActionListener", "Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "getAdUnit", "()Ljava/lang/String;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getViewBinder", "()Lcom/gogolook/adsdk/view/ViewBinder;", "viewHolderMap", "Ljava/util/WeakHashMap;", "Landroid/view/View;", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "viewHolderMap$annotations", "()V", "getViewHolderMap", "()Ljava/util/WeakHashMap;", "viewHolderMap$delegate", "Lkotlin/Lazy;", "createAdView", "parent", "Landroid/view/ViewGroup;", "renderAdView", "", "view", "staticNativeAd", "setCloseButtonVisibility", "closeButtonView", "visibility", "", "viewHolder", "setViewVisibility", "nativeViewHolder", "supports", "", "nativeAd", "Lcom/mopub/nativeads/BaseNativeAd;", "update", "AdCustomActionListener", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAdRenderer.class */
public abstract class BaseNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f9012e;

    /* renamed from: a */
    public final AbstractC14974f f9013a = C14975g.m662a(C3934a.INSTANCE);
    public AdCustomActionListener adCustomActionListener;

    /* renamed from: b */
    public Context f9014b;

    /* renamed from: c */
    public final C6289b f9015c;

    /* renamed from: d */
    public final String f9016d;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m815d2 = {"Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "", "onAdClosed", "", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener.class */
    public interface AdCustomActionListener {
        void onAdClosed();
    }

    /* renamed from: com.mopub.nativeads.BaseNativeAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAdRenderer$a.class */
    public static final class C3934a extends AbstractC15150l implements AbstractC15107a<WeakHashMap<View, C6287a>> {
        public static final C3934a INSTANCE = new C3934a();

        public C3934a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final WeakHashMap<View, C6287a> invoke() {
            return new WeakHashMap<>();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(BaseNativeAdRenderer.class), "viewHolderMap", "getViewHolderMap()Ljava/util/WeakHashMap;");
        C15131a0.m412a(sVar);
        f9012e = new AbstractC14906i[]{sVar};
    }

    public BaseNativeAdRenderer(C6289b bVar, String str) {
        C15149k.m377b(bVar, "viewBinder");
        C15149k.m377b(str, "adUnit");
        this.f9015c = bVar;
        this.f9016d = str;
    }

    /* renamed from: a */
    public final String m30213a() {
        return this.f9016d;
    }

    /* renamed from: a */
    public final void m30212a(View view, int i) {
        int a = C6272d.m23425a(this.f9016d);
        if (i == 0) {
            view.setPadding(a, a, a, a);
        }
        view.setVisibility(i);
    }

    /* renamed from: b */
    public final Context m30211b() {
        Context context = this.f9014b;
        if (context != null) {
            return context;
        }
        C15149k.m373d("context");
        throw null;
    }

    /* renamed from: c */
    public final C6289b m30210c() {
        return this.f9015c;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        C15149k.m377b(context, "context");
        this.f9014b = context;
        View inflate = LayoutInflater.from(context).inflate(this.f9015c.f15575a, viewGroup, false);
        C15149k.m383a((Object) inflate, "LayoutInflater.from(cont….layoutId, parent, false)");
        return inflate;
    }

    /* renamed from: d */
    public final WeakHashMap<View, C6287a> m30209d() {
        AbstractC14974f fVar = this.f9013a;
        AbstractC14906i iVar = f9012e[0];
        return (WeakHashMap) fVar.getValue();
    }

    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        C6287a aVar;
        C15149k.m377b(view, "view");
        C15149k.m377b(staticNativeAd, "staticNativeAd");
        C6287a aVar2 = m30209d().get(view);
        if (aVar2 != null) {
            aVar = aVar2;
        } else {
            C6287a a = C6287a.f15565j.m23402a(view, this.f9015c);
            m30209d().put(view, a);
            aVar = a;
        }
        C15149k.m383a((Object) aVar, "nativeViewHolder");
        setViewVisibility(aVar, 0);
        update(aVar, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar.m23405a(), this.f9015c.f15584j, staticNativeAd.getExtras());
    }

    public void setCloseButtonVisibility(C6287a aVar) {
        C15149k.m377b(aVar, "viewHolder");
        int b = C6272d.m23421b(this.f9016d);
        int i = 0;
        int i2 = 8;
        if (b == C6272d.f15547h) {
            i = 8;
            i2 = 0;
        } else if (b != C6272d.f15548i) {
            int i3 = C6272d.f15549j;
            i = 8;
        }
        ImageView imageView = aVar.f15573h;
        if (imageView != null) {
            m30212a(imageView, i2);
        }
        ImageView imageView2 = aVar.f15574i;
        if (imageView2 != null) {
            m30212a(imageView2, i);
        }
    }

    public final void setViewVisibility(C6287a aVar, int i) {
        C15149k.m377b(aVar, "nativeViewHolder");
        aVar.m23405a().setVisibility(i);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        C15149k.m377b(baseNativeAd, "nativeAd");
        return baseNativeAd instanceof StaticNativeAd;
    }

    public abstract void update(C6287a aVar, StaticNativeAd staticNativeAd);
}
