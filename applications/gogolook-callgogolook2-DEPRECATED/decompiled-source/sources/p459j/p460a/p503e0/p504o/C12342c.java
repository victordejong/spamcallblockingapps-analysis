package p459j.p460a.p503e0.p504o;

import android.content.Context;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p582w0.C14135r2;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u001d2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0010H\u0016¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/ndp/delegate/CommunityViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "addPublicTag", "", "tagsContainer", "Landroid/widget/LinearLayout;", "paint", "Landroid/graphics/Paint;", NovaHomeBadger.TAG, "", "tagTextSizePx", "", "bindCommunityView", TtmlNode.TAG_LAYOUT, "Landroid/view/ViewGroup;", "data", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$CommunityReviewViewData;", "getTextViewMeasureWidth", "", "text", "leftMargin", "onBindViewHolder", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.o.c */
/* loaded from: classes3-dex2jar.jar:j/a/e0/o/c.class */
public final class C12342c implements AbstractC12392b<C14666a> {

    /* renamed from: c */
    public static final C12345c f27847c = new C12345c(null);

    /* renamed from: a */
    public static final AbstractC14974f f27845a = C14975g.m662a(C12343a.f27848a);

    /* renamed from: b */
    public static final AbstractC14974f f27846b = C14975g.m662a(C12344b.f27849a);

    /* renamed from: j.a.e0.o.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/c$a.class */
    public static final class C12343a extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C12343a f27848a = new C12343a();

        public C12343a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            return o.getResources().getDimensionPixelSize(R$dimen.ndp_info_item_margin);
        }
    }

    /* renamed from: j.a.e0.o.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/c$b.class */
    public static final class C12344b extends AbstractC15150l implements AbstractC15107a<Float> {

        /* renamed from: a */
        public static final C12344b f27849a = new C12344b();

        public C12344b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [float, java.lang.Float] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Float invoke() {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            return o.getResources().getDimension(2131165914);
        }
    }

    /* renamed from: j.a.e0.o.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/c$c.class */
    public static final class C12345c {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f27850a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C12345c.class), "infoItemMargin", "getInfoItemMargin()I");
            C15131a0.m412a(sVar);
            C15157s sVar2 = new C15157s(C15131a0.m419a(C12345c.class), "tagTextSizePx", "getTagTextSizePx()F");
            C15131a0.m412a(sVar2);
            f27850a = new AbstractC14906i[]{sVar, sVar2};
        }

        public C12345c() {
        }

        public /* synthetic */ C12345c(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m6322a() {
            AbstractC14974f fVar = C12342c.f27845a;
            AbstractC14906i iVar = f27850a[0];
            return ((Number) fVar.getValue()).intValue();
        }

        /* renamed from: b */
        public final float m6320b() {
            AbstractC14974f fVar = C12342c.f27846b;
            AbstractC14906i iVar = f27850a[1];
            return ((Number) fVar.getValue()).floatValue();
        }
    }

    /* renamed from: j.a.e0.o.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/c$d.class */
    public static final class View$OnClickListenerC12346d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12304d f27851a;

        public View$OnClickListenerC12346d(C12300f.C12304d dVar, String str) {
            this.f27851a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27851a.m6421a().invoke();
        }
    }

    /* renamed from: a */
    public final int m6327a(Paint paint, String str, int i) {
        return ((int) paint.measureText(str, 0, str.length())) + i;
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.ndp_info_type_community_item);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0113 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6326a(android.view.ViewGroup r7, p459j.p460a.p503e0.C12300f.C12304d r8) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.p504o.C12342c.m6326a(android.view.ViewGroup, j.a.e0.f$d):void");
    }

    /* renamed from: a */
    public final void m6325a(LinearLayout linearLayout, Paint paint, String str, float f) {
        LinearLayout linearLayout2;
        Context context = linearLayout.getContext();
        C15149k.m383a((Object) context, "tagsContainer.context");
        if (linearLayout.getChildCount() == 0) {
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(0);
            linearLayout.addView(linearLayout3, -2, -2);
            linearLayout2 = linearLayout3;
        } else if (linearLayout.getChildCount() > 0) {
            paint.setTextSize(f);
            int c = C14135r2.m2390c(context);
            int a = f27847c.m6322a();
            int a2 = C14217x3.m2201a(15.0f);
            View childAt = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
            if (childAt != null) {
                LinearLayout linearLayout4 = (LinearLayout) childAt;
                int childCount = linearLayout4.getChildCount();
                int i = c - (a * 2);
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt2 = linearLayout4.getChildAt(i2);
                    i = i;
                    if (childAt2 instanceof TextView) {
                        i -= m6327a(paint, ((TextView) childAt2).getText().toString(), a2);
                    }
                }
                if (i - m6327a(paint, str, a2) <= 0) {
                    LinearLayout linearLayout5 = new LinearLayout(context);
                    linearLayout5.setOrientation(0);
                    linearLayout.addView(linearLayout5, -2, -2);
                    linearLayout2 = linearLayout5;
                } else {
                    View childAt3 = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
                    if (childAt3 != null) {
                        linearLayout2 = (LinearLayout) childAt3;
                    } else {
                        throw new C14986p("null cannot be cast to non-null type android.widget.LinearLayout");
                    }
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type android.widget.LinearLayout");
            }
        } else {
            View childAt4 = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
            if (childAt4 != null) {
                linearLayout2 = (LinearLayout) childAt4;
            } else {
                throw new C14986p("null cannot be cast to non-null type android.widget.LinearLayout");
            }
        }
        TextView textView = new TextView(context);
        textView.setTextSize(0, f);
        textView.setGravity(17);
        textView.setTextColor(C14167t.m2311e());
        textView.setText(str);
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, C14217x3.m2201a(15.0f), 0);
        linearLayout2.addView(textView, layoutParams);
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
                AbstractC12391a aVar3 = ((C12300f.C12315o) aVar2).m6403a().get(400);
                if (!(aVar3 instanceof C12300f.C12304d)) {
                    aVar3 = null;
                }
                if (aVar3 != null) {
                    m6326a(viewGroup, (C12300f.C12304d) aVar3);
                    viewGroup.setVisibility(0);
                    return;
                }
                viewGroup.setVisibility(8);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup");
        }
    }
}
