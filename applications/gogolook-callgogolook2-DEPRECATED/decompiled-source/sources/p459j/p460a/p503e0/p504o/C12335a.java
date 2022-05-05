package p459j.p460a.p503e0.p504o;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/ndp/delegate/AdViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.o.a */
/* loaded from: classes3-dex2jar.jar:j/a/e0/o/a.class */
public final class C12335a implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.e0.o.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/a$a.class */
    public static final class C12336a implements AbstractC6207d.AbstractC6208a {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12301a f27837a;

        public C12336a(C12300f.C12301a aVar, Context context, ViewGroup viewGroup, C14666a aVar2) {
            this.f27837a = aVar;
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            this.f27837a.m6434b(true);
            this.f27837a.m6435b().mo5002a();
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            this.f27837a.m6435b().onAdImpression();
        }
    }

    /* renamed from: j.a.e0.o.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/a$b.class */
    public static final class C12337b implements BaseNativeAdRenderer.AdCustomActionListener {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12301a f27838a;

        public C12337b(C12300f.C12301a aVar, Context context, ViewGroup viewGroup, C14666a aVar2) {
            this.f27838a = aVar;
        }

        @Override // com.mopub.nativeads.BaseNativeAdRenderer.AdCustomActionListener
        public void onAdClosed() {
            this.f27838a.m6432c(true);
            this.f27838a.m6437a().onAdClosed();
        }
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.ndp_info_type_ad_container);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2 instanceof C12300f.C12315o) {
            C12300f fVar = C12300f.f27753a;
            View view = aVar.itemView;
            if (view != null) {
                ViewGroup viewGroup = (ViewGroup) view;
                AbstractC12391a aVar3 = ((C12300f.C12315o) aVar2).m6403a().get(100);
                if (!(aVar3 instanceof C12300f.C12301a)) {
                    aVar3 = null;
                }
                if (aVar3 != null) {
                    C12300f.C12301a aVar4 = (C12300f.C12301a) aVar3;
                    if (!aVar4.m6431d()) {
                        Context a = aVar.m907a();
                        if (C14217x3.m2193a(a)) {
                            AbstractC6207d c = aVar4.m6433c();
                            c.mo23569a((AbstractC6207d.AbstractC6208a) new C12336a(aVar4, a, viewGroup, aVar));
                            c.mo23570a((BaseNativeAdRenderer.AdCustomActionListener) new C12337b(aVar4, a, viewGroup, aVar));
                            c.mo23572a(a, viewGroup);
                            aVar4.m6436a(true);
                            viewGroup.setVisibility(0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                viewGroup.setVisibility(8);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup");
        }
    }
}
