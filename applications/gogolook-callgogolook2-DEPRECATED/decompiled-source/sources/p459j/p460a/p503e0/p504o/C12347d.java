package p459j.p460a.p503e0.p504o;

import android.text.util.Linkify;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.util.Arrays;
import kotlin.Metadata;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/ndp/delegate/NumberViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.o.d */
/* loaded from: classes3-dex2jar.jar:j/a/e0/o/d.class */
public final class C12347d implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.e0.o.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/d$a.class */
    public static final class C12348a {
        public C12348a() {
        }

        public /* synthetic */ C12348a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.e0.o.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/d$b.class */
    public static final class View$OnClickListenerC12349b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12306f f27852a;

        public View$OnClickListenerC12349b(C12300f.C12306f fVar) {
            this.f27852a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27852a.m6417a().invoke();
        }
    }

    /* renamed from: j.a.e0.o.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/d$c.class */
    public static final class View$OnClickListenerC12350c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12310j f27853a;

        public View$OnClickListenerC12350c(C12300f.C12310j jVar) {
            this.f27853a = jVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27853a.m6412b().invoke();
        }
    }

    static {
        new C12348a(null);
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.ndp_info_type_number_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2 instanceof C12300f.C12315o) {
            C12300f fVar = C12300f.f27753a;
            View a = aVar.m906a(R$id.layout_disclaimer);
            C12300f.C12315o oVar = (C12300f.C12315o) aVar2;
            AbstractC12391a aVar3 = oVar.m6403a().get(1);
            if (!(aVar3 instanceof C12300f.C12306f)) {
                aVar3 = null;
            }
            if (aVar3 != null) {
                a.setOnClickListener(new View$OnClickListenerC12349b((C12300f.C12306f) aVar3));
                a.setVisibility(0);
            } else {
                a.setVisibility(8);
            }
            C12300f fVar2 = C12300f.f27753a;
            View a2 = aVar.m906a(R$id.layout_number);
            AbstractC12391a aVar4 = oVar.m6403a().get(0);
            if (!(aVar4 instanceof C12300f.C12310j)) {
                aVar4 = null;
            }
            if (aVar4 != null) {
                C12300f.C12310j jVar = (C12300f.C12310j) aVar4;
                ViewGroup viewGroup = (ViewGroup) a2;
                TextView textView = (TextView) viewGroup.findViewById(R$id.tv_number);
                if (textView != null) {
                    textView.setText(jVar.m6411c());
                }
                View findViewById = viewGroup.findViewById(R$id.iv_search);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new View$OnClickListenerC12350c(jVar));
                }
                TextView textView2 = (TextView) viewGroup.findViewById(R$id.tv_whitelist_status);
                if (textView2 != null) {
                    textView2.setVisibility(jVar.m6410d() ? 0 : 8);
                }
                TextView textView3 = (TextView) viewGroup.findViewById(R$id.tv_block_status);
                if (textView3 != null) {
                    textView3.setVisibility(0);
                    int a3 = jVar.m6413a();
                    if (a3 == 1) {
                        textView3.setText(R$string.ndp_block_status_block_call_only);
                    } else if (a3 == 2) {
                        textView3.setText(R$string.ndp_block_status_block_SMS_only);
                    } else if (a3 != 3) {
                        textView3.setVisibility(8);
                    } else {
                        textView3.setText(R$string.ndp_block_status_block_all);
                    }
                }
                a2.setVisibility(0);
            } else {
                a2.setVisibility(8);
            }
            C12300f fVar3 = C12300f.f27753a;
            View a4 = aVar.m906a(R$id.layout_intro);
            AbstractC12391a aVar5 = oVar.m6403a().get(2);
            if (!(aVar5 instanceof C12300f.C12307g)) {
                aVar5 = null;
            }
            if (aVar5 != null) {
                ((TextView) a4).setText(((C12300f.C12307g) aVar5).m6416a());
                a4.setVisibility(0);
            } else {
                a4.setVisibility(8);
            }
            C12300f fVar4 = C12300f.f27753a;
            View a5 = aVar.m906a(R$id.layout_rating);
            AbstractC12391a aVar6 = oVar.m6403a().get(3);
            if (!(aVar6 instanceof C12300f.C12313m)) {
                aVar6 = null;
            }
            if (aVar6 != null) {
                C12300f.C12313m mVar = (C12300f.C12313m) aVar6;
                ViewGroup viewGroup2 = (ViewGroup) a5;
                float a6 = mVar.m6405a();
                float f = 0;
                float f2 = 5.0f;
                if (a6 <= f) {
                    f2 = 0.0f;
                } else if (mVar.m6405a() < 5.0f) {
                    f2 = mVar.m6405a();
                }
                View findViewById2 = viewGroup2.findViewById(R$id.tv_rating);
                C15149k.m383a((Object) findViewById2, "ratingLayout.findViewByI…TextView>(R.id.tv_rating)");
                TextView textView4 = (TextView) findViewById2;
                C15136c0 c0Var = C15136c0.f33133a;
                Object[] objArr = {Float.valueOf(f2)};
                String format = String.format("%.1f", Arrays.copyOf(objArr, objArr.length));
                C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
                textView4.setText(format);
                View findViewById3 = viewGroup2.findViewById(R$id.iv_rating_0);
                C15149k.m383a((Object) findViewById3, "ratingLayout.findViewById(R.id.iv_rating_0)");
                ImageView imageView = (ImageView) findViewById3;
                View findViewById4 = viewGroup2.findViewById(R$id.iv_rating_1);
                C15149k.m383a((Object) findViewById4, "ratingLayout.findViewById(R.id.iv_rating_1)");
                ImageView imageView2 = (ImageView) findViewById4;
                View findViewById5 = viewGroup2.findViewById(R$id.iv_rating_2);
                C15149k.m383a((Object) findViewById5, "ratingLayout.findViewById(R.id.iv_rating_2)");
                ImageView imageView3 = (ImageView) findViewById5;
                View findViewById6 = viewGroup2.findViewById(R$id.iv_rating_3);
                C15149k.m383a((Object) findViewById6, "ratingLayout.findViewById(R.id.iv_rating_3)");
                ImageView imageView4 = (ImageView) findViewById6;
                View findViewById7 = viewGroup2.findViewById(R$id.iv_rating_4);
                C15149k.m383a((Object) findViewById7, "ratingLayout.findViewById(R.id.iv_rating_4)");
                int i = 0;
                for (Object obj : C15021m.m557c(imageView, imageView2, imageView3, imageView4, (ImageView) findViewById7)) {
                    if (i >= 0) {
                        ImageView imageView5 = (ImageView) obj;
                        float f3 = f2 - i;
                        imageView5.setImageResource(f3 >= ((float) 1) ? R$drawable.ic_rating_filled : f3 > f ? R$drawable.ic_rating_half_filled : R$drawable.ic_rating_unfilled);
                        i++;
                    } else {
                        C15021m.m558c();
                        throw null;
                    }
                }
                a5.setVisibility(0);
            } else {
                a5.setVisibility(8);
            }
            C12300f fVar5 = C12300f.f27753a;
            View a7 = aVar.m906a(R$id.layout_keyword);
            AbstractC12391a aVar7 = oVar.m6403a().get(4);
            if (!(aVar7 instanceof C12300f.C12308h)) {
                aVar7 = null;
            }
            if (aVar7 != null) {
                ((TextView) a7).setText(((C12300f.C12308h) aVar7).m6415a());
                a7.setVisibility(0);
            } else {
                a7.setVisibility(8);
            }
            C12300f fVar6 = C12300f.f27753a;
            View a8 = aVar.m906a(R$id.layout_contact);
            AbstractC12391a aVar8 = oVar.m6403a().get(5);
            if (!(aVar8 instanceof C12300f.C12305e)) {
                aVar8 = null;
            }
            if (aVar8 != null) {
                TextView textView5 = (TextView) a8;
                textView5.setText(((C12300f.C12305e) aVar8).m6418a());
                Linkify.addLinks(textView5, 11);
                a8.setVisibility(0);
                return;
            }
            a8.setVisibility(8);
        }
    }
}
