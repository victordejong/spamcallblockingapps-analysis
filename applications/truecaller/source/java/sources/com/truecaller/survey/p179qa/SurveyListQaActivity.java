package com.truecaller.survey.p179qa;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.surveys.data.entities.Survey;
import com.truecaller.surveys.data.local.SurveyEntity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.v.v;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.AbstractC27034w;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18149c;
import p193e.p194a.p1059m3.C18185s0;
import p193e.p194a.p715e5.p716a.AbstractC13516d;
import p193e.p194a.p918j.p930c.p931d.AbstractC15453b;
import q3.a.i0;
import q3.a.j0;
import q3.b.l.a;
import q3.b.l.c;
import q3.b.l.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b$\u0010%J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0017\u001a\u00060\u0014R\u00020��8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/truecaller/survey/qa/SurveyListQaActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Le/a/m3/c;", "f", "Le/a/m3/c;", "binding", "Lcom/truecaller/survey/qa/SurveyListQaActivity$a;", "g", "Lcom/truecaller/survey/qa/SurveyListQaActivity$a;", "surveyPagerAdapter", "Le/a/j/c/d/b;", "d", "Le/a/j/c/d/b;", "getSurveysDao", "()Le/a/j/c/d/b;", "setSurveysDao", "(Le/a/j/c/d/b;)V", "surveysDao", "Lq3/b/l/a;", "e", "Lq3/b/l/a;", "json", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.survey.qa.SurveyListQaActivity */
/* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity.class */
public final class SurveyListQaActivity extends AbstractC13516d {
    @Inject

    /* renamed from: d */
    public AbstractC15453b f14982d;

    /* renamed from: e */
    public final a f14983e;

    /* renamed from: f */
    public C18149c f14984f;

    /* renamed from: g */
    public C4523a f14985g;

    /* renamed from: com.truecaller.survey.qa.SurveyListQaActivity$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity$a.class */
    public final class C4523a extends RecyclerView.AbstractC0317g<C4524a> {

        /* renamed from: a */
        public final List<SurveyEntity> f14986a;

        /* renamed from: b */
        public final /* synthetic */ SurveyListQaActivity f14987b;

        /* renamed from: com.truecaller.survey.qa.SurveyListQaActivity$a$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity$a$a.class */
        public final class C4524a extends RecyclerView.AbstractC0313c0 {

            /* renamed from: a */
            public final C18185s0 f14988a;

            /* renamed from: b */
            public final /* synthetic */ C4523a f14989b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4524a(C4523a c4523a, C18185s0 c18185s0) {
                super(c18185s0.f51408a);
                l.e(c18185s0, "binding");
                this.f14989b = c4523a;
                this.f14988a = c18185s0;
            }
        }

        public C4523a(SurveyListQaActivity surveyListQaActivity, List<SurveyEntity> list) {
            l.e(list, "surveys");
            this.f14987b = surveyListQaActivity;
            this.f14986a = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f14986a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(C4524a c4524a, int i) {
            C4524a c4524a2 = c4524a;
            l.e(c4524a2, "holder");
            SurveyEntity surveyEntity = this.f14986a.get(i);
            l.e(surveyEntity, "surveyEntity");
            Survey m16056r0 = C17422k.m16056r0(surveyEntity, null);
            a aVar = c4524a2.f14989b.f14987b.f14983e;
            Objects.requireNonNull(Survey.Companion);
            String b = aVar.b(Survey.C4554a.f15086a, m16056r0);
            TextView textView = c4524a2.f14988a.f51409b;
            l.d(textView, "binding.surveyJson");
            textView.setText(b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public C4524a onCreateViewHolder(ViewGroup viewGroup, int i) {
            l.e(viewGroup, "parent");
            NestedScrollView inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.layout_single_survey_page, viewGroup, false);
            TextView textView = (TextView) inflate.findViewById(C2752R.C2754id.surveyJson);
            if (textView != null) {
                C18185s0 c18185s0 = new C18185s0(inflate, textView);
                l.d(c18185s0, "LayoutSingleSurveyPageBi….context), parent, false)");
                return new C4524a(this, c18185s0);
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(C2752R.C2754id.surveyJson)));
        }
    }

    /* renamed from: com.truecaller.survey.qa.SurveyListQaActivity$b */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity$b.class */
    public static final class C4525b extends m implements s1.z.b.l<c, s> {

        /* renamed from: b */
        public static final C4525b f14990b = new C4525b();

        public C4525b() {
            super(1);
        }

        /* renamed from: d */
        public Object m34719d(Object obj) {
            c cVar = (c) obj;
            l.e(cVar, "$receiver");
            cVar.e = true;
            return s.a;
        }
    }

    @e(c = "com.truecaller.survey.qa.SurveyListQaActivity$onCreate$1", f = "SurveyListQaActivity.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: com.truecaller.survey.qa.SurveyListQaActivity$c */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity$c.class */
    public static final class C4526c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f14991e;

        /* renamed from: com.truecaller.survey.qa.SurveyListQaActivity$c$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyListQaActivity$c$a.class */
        public static final class C4527a extends ViewPager2.AbstractC0407e {

            /* renamed from: b */
            public final /* synthetic */ List f14994b;

            public C4527a(List list) {
                C4526c.this = r4;
                this.f14994b = list;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
            /* renamed from: g */
            public void mo1513g(int i) {
                Toolbar toolbar = SurveyListQaActivity.m34721pa(SurveyListQaActivity.this).f51140c;
                l.d(toolbar, "binding.toolbar");
                toolbar.setTitle("Survey " + (i + 1) + '/' + this.f14994b.size() + " ID: " + ((SurveyEntity) this.f14994b.get(i)).getId());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4526c(d dVar) {
            super(2, dVar);
            SurveyListQaActivity.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34718i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4526c(dVar);
        }

        /* renamed from: k */
        public final Object m34717k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4526c(dVar).m34716s(s.a);
        }

        /* renamed from: s */
        public final Object m34716s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f14991e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15453b abstractC15453b = SurveyListQaActivity.this.f14982d;
                if (abstractC15453b == null) {
                    l.l("surveysDao");
                    throw null;
                }
                this.f14991e = 1;
                Object mo18789a = abstractC15453b.mo18789a(this);
                obj = mo18789a;
                if (mo18789a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List list = (List) obj;
            SurveyListQaActivity surveyListQaActivity = SurveyListQaActivity.this;
            surveyListQaActivity.f14985g = new C4523a(surveyListQaActivity, list);
            ViewPager2 viewPager2 = SurveyListQaActivity.m34721pa(SurveyListQaActivity.this).f51139b;
            l.d(viewPager2, "binding.surveyPager");
            C4523a c4523a = SurveyListQaActivity.this.f14985g;
            if (c4523a == null) {
                l.l("surveyPagerAdapter");
                throw null;
            }
            viewPager2.setAdapter(c4523a);
            ViewPager2 viewPager22 = SurveyListQaActivity.m34721pa(SurveyListQaActivity.this).f51139b;
            viewPager22.f1520c.f74596a.add(new C4527a(list));
            return s.a;
        }
    }

    public SurveyListQaActivity() {
        boolean z;
        C4525b c4525b = C4525b.f14990b;
        a.a aVar = a.b;
        l.e(aVar, RemoteMessageConst.FROM);
        l.e(c4525b, "builderAction");
        c cVar = new c(((a) aVar).a);
        c4525b.d(cVar);
        if (!cVar.h || l.a(cVar.i, "type")) {
            if (!cVar.e) {
                if (!l.a(cVar.f, "    ")) {
                    throw new IllegalArgumentException("Indent should not be specified when default printing mode is used".toString());
                }
            } else if (!l.a(cVar.f, "    ")) {
                String str = cVar.f;
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= str.length()) {
                        break;
                    }
                    char charAt = str.charAt(i);
                    if (!(charAt == ' ' || charAt == '\t' || charAt == '\r' || charAt == '\n')) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    StringBuilder m8728C = C22128a.m8728C("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had ");
                    m8728C.append(cVar.f);
                    throw new IllegalArgumentException(m8728C.toString().toString());
                }
            }
            this.f14983e = new g(new q3.b.l.l.c(cVar.a, cVar.b, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, cVar.h, cVar.i, cVar.j, cVar.k));
            return;
        }
        throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified".toString());
    }

    /* renamed from: pa */
    public static final /* synthetic */ C18149c m34721pa(SurveyListQaActivity surveyListQaActivity) {
        C18149c c18149c = surveyListQaActivity.f14984f;
        if (c18149c != null) {
            return c18149c;
        }
        l.l("binding");
        throw null;
    }

    /* renamed from: qa */
    public static final Intent m34720qa(Context context) {
        return C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, SurveyListQaActivity.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SurveyListQaActivity.super.onCreate(bundle);
        LayoutInflater from = LayoutInflater.from(this);
        l.d(from, "LayoutInflater.from(this)");
        View inflate = C17422k.m16050u0(from, true).inflate(C2752R.layout.activity_survey_list, (ViewGroup) null, false);
        int i = 2131362186;
        AppBarLayout findViewById = inflate.findViewById(2131362186);
        if (findViewById != null) {
            i = 2131366150;
            ViewPager2 viewPager2 = (ViewPager2) inflate.findViewById(C2752R.C2754id.surveyPager);
            if (viewPager2 != null) {
                i = 2131366512;
                Toolbar toolbar = (Toolbar) inflate.findViewById(2131366512);
                if (toolbar != null) {
                    C18149c c18149c = new C18149c((ConstraintLayout) inflate, findViewById, viewPager2, toolbar);
                    l.d(c18149c, "ActivitySurveyListBindin…s).toThemeInflater(true))");
                    this.f14984f = c18149c;
                    setContentView(c18149c.f51138a);
                    C18149c c18149c2 = this.f14984f;
                    if (c18149c2 == null) {
                        l.l("binding");
                        throw null;
                    }
                    setSupportActionBar(c18149c2.f51140c);
                    AbstractC25393a supportActionBar = getSupportActionBar();
                    if (supportActionBar != null) {
                        supportActionBar.mo3548s(2131232447);
                    }
                    AbstractC25393a supportActionBar2 = getSupportActionBar();
                    if (supportActionBar2 != null) {
                        supportActionBar2.mo3553n(true);
                    }
                    AbstractC27034w m994b = C27020r.m994b(this);
                    C4526c c4526c = new C4526c(null);
                    l.e(c4526c, "block");
                    s1.a.a.a.v0.f.d.w2(m994b, (f) null, (j0) null, new v(m994b, c4526c, (d) null), 3, (Object) null);
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        SurveyListQaActivity.super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(C2752R.C2756menu.menu_survey_list, menu);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 2131362974) {
            Object systemService = getSystemService("clipboard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            C4523a c4523a = this.f14985g;
            if (c4523a == null) {
                l.l("surveyPagerAdapter");
                throw null;
            }
            C18149c c18149c = this.f14984f;
            if (c18149c == null) {
                l.l("binding");
                throw null;
            }
            ViewPager2 viewPager2 = c18149c.f51139b;
            l.d(viewPager2, "binding.surveyPager");
            Survey m16056r0 = C17422k.m16056r0(c4523a.f14986a.get(viewPager2.getCurrentItem()), null);
            a aVar = this.f14983e;
            Objects.requireNonNull(Survey.Companion);
            clipboardManager.setPrimaryClip(ClipData.newPlainText("survey", aVar.b(Survey.C4554a.f15086a, m16056r0)));
        }
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return true;
    }
}
