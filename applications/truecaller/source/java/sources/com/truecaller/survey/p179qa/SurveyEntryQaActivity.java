package com.truecaller.survey.p179qa;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.Survey;
import com.truecaller.surveys.data.entities.SurveyFlow;
import com.truecaller.surveys.data.local.SurveyEntity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.AbstractC27034w;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18146b;
import p193e.p194a.p715e5.p716a.AbstractC13514b;
import p193e.p194a.p918j.p930c.p931d.AbstractC15453b;
import q3.a.i0;
import q3.a.j0;
import q3.b.k.g;
import q3.b.l.a;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR(\u0010\u0013\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u000b\u0010\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR(\u0010 \u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u001c\u0010\f\u0012\u0004\b\u001f\u0010\u0012\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010¨\u0006\""}, d2 = {"Lcom/truecaller/survey/qa/SurveyEntryQaActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "onSupportNavigateUp", "()Z", "Ls1/w/f;", "e", "Ls1/w/f;", "getIoContext", "()Ls1/w/f;", "setIoContext", "(Ls1/w/f;)V", "getIoContext$annotations", "()V", "ioContext", "Le/a/j/c/d/b;", "d", "Le/a/j/c/d/b;", "getSurveysDao", "()Le/a/j/c/d/b;", "setSurveysDao", "(Le/a/j/c/d/b;)V", "surveysDao", "f", "getUiContext", "setUiContext", "getUiContext$annotations", "uiContext", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.survey.qa.SurveyEntryQaActivity */
/* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyEntryQaActivity.class */
public final class SurveyEntryQaActivity extends AbstractC13514b {
    @Inject

    /* renamed from: d */
    public AbstractC15453b f14971d;
    @Inject

    /* renamed from: e */
    public f f14972e;
    @Inject

    /* renamed from: f */
    public f f14973f;

    /* renamed from: com.truecaller.survey.qa.SurveyEntryQaActivity$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyEntryQaActivity$a.class */
    public static final class View$OnClickListenerC4519a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C18146b f14975b;

        @e(c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1", f = "SurveyEntryQaActivity.kt", l = {76}, m = "invokeSuspend")
        /* renamed from: com.truecaller.survey.qa.SurveyEntryQaActivity$a$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyEntryQaActivity$a$a.class */
        public static final class C4520a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f14976e;

            /* renamed from: g */
            public final /* synthetic */ String f14978g;

            @e(c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1$1", f = "SurveyEntryQaActivity.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.truecaller.survey.qa.SurveyEntryQaActivity$a$a$a */
            /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a.class */
            public static final class C4521a extends i implements p<i0, d<? super s>, Object> {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C4521a(d dVar) {
                    super(2, dVar);
                    C4520a.this = r5;
                }

                /* renamed from: i */
                public final d<s> m34727i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C4521a(dVar);
                }

                /* JADX WARN: Type inference failed for: r0v11, types: [android.app.Activity, com.truecaller.survey.qa.SurveyEntryQaActivity] */
                /* renamed from: k */
                public final Object m34726k(Object obj, Object obj2) {
                    s sVar = s.a;
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    C4520a c4520a = C4520a.this;
                    dVar.getContext();
                    C25225a.m3932a3(sVar);
                    Toast.makeText(SurveyEntryQaActivity.this.getApplicationContext(), "Successfully inserted survey", 0).show();
                    return sVar;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [android.app.Activity, com.truecaller.survey.qa.SurveyEntryQaActivity] */
                /* renamed from: s */
                public final Object m34725s(Object obj) {
                    C25225a.m3932a3(obj);
                    Toast.makeText(SurveyEntryQaActivity.this.getApplicationContext(), "Successfully inserted survey", 0).show();
                    return s.a;
                }
            }

            @e(c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1$2", f = "SurveyEntryQaActivity.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.truecaller.survey.qa.SurveyEntryQaActivity$a$a$b */
            /* loaded from: classes13-dex2jar.jar:com/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b.class */
            public static final class C4522b extends i implements p<i0, d<? super s>, Object> {

                /* renamed from: f */
                public final /* synthetic */ Exception f14981f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C4522b(Exception exc, d dVar) {
                    super(2, dVar);
                    C4520a.this = r5;
                    this.f14981f = exc;
                }

                /* renamed from: i */
                public final d<s> m34724i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C4522b(this.f14981f, dVar);
                }

                /* JADX WARN: Type inference failed for: r0v13, types: [android.app.Activity, com.truecaller.survey.qa.SurveyEntryQaActivity] */
                /* renamed from: k */
                public final Object m34723k(Object obj, Object obj2) {
                    s sVar = s.a;
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    C4520a c4520a = C4520a.this;
                    Exception exc = this.f14981f;
                    dVar.getContext();
                    C25225a.m3932a3(sVar);
                    Context applicationContext = SurveyEntryQaActivity.this.getApplicationContext();
                    Toast.makeText(applicationContext, "Failed to parse JSON: " + exc, 0).show();
                    return sVar;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [android.app.Activity, com.truecaller.survey.qa.SurveyEntryQaActivity] */
                /* renamed from: s */
                public final Object m34722s(Object obj) {
                    C25225a.m3932a3(obj);
                    Context applicationContext = SurveyEntryQaActivity.this.getApplicationContext();
                    StringBuilder m8728C = C22128a.m8728C("Failed to parse JSON: ");
                    m8728C.append(this.f14981f);
                    Toast.makeText(applicationContext, m8728C.toString(), 0).show();
                    return s.a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4520a(String str, d dVar) {
                super(2, dVar);
                View$OnClickListenerC4519a.this = r5;
                this.f14978g = str;
            }

            /* renamed from: i */
            public final d<s> m34730i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C4520a(this.f14978g, dVar);
            }

            /* renamed from: k */
            public final Object m34729k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C4520a(this.f14978g, dVar).m34728s(s.a);
            }

            /* JADX WARN: Type inference failed for: r0v20, types: [n3.v.b0, com.truecaller.survey.qa.SurveyEntryQaActivity] */
            /* JADX WARN: Type inference failed for: r0v7, types: [n3.v.b0, com.truecaller.survey.qa.SurveyEntryQaActivity] */
            /* renamed from: s */
            public final Object m34728s(Object obj) {
                AbstractC27034w m994b;
                f fVar;
                a aVar = a.a;
                int i = this.f14976e;
                try {
                    if (i == 0) {
                        C25225a.m3932a3(obj);
                        a.a aVar2 = q3.b.l.a.b;
                        Objects.requireNonNull(Survey.Companion);
                        Survey survey = (Survey) aVar2.a(Survey.C4554a.f15086a, this.f14978g);
                        String id = survey.getId();
                        String b = aVar2.b(SurveyFlow.Companion.m34646a(), survey.getFlow());
                        String b2 = aVar2.b(s1.a.a.a.v0.f.d.m(Question.Companion.m34667a()), survey.getQuestions());
                        s1.a.a.a.v0.f.d.l3(k.a);
                        SurveyEntity surveyEntity = new SurveyEntity(id, b, b2, aVar2.b(s1.a.a.a.v0.f.d.m(g.b), survey.getBottomSheetQuestionsIds()), 0L);
                        AbstractC15453b abstractC15453b = SurveyEntryQaActivity.this.f14971d;
                        if (abstractC15453b == null) {
                            l.l("surveysDao");
                            throw null;
                        }
                        List<SurveyEntity> m3962T1 = C25225a.m3962T1(surveyEntity);
                        this.f14976e = 1;
                        if (abstractC15453b.mo18788b(m3962T1, this) == aVar) {
                            return aVar;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        C25225a.m3932a3(obj);
                    }
                    m994b = C27020r.m994b(SurveyEntryQaActivity.this);
                    fVar = SurveyEntryQaActivity.this.f14973f;
                } catch (Exception e) {
                    AbstractC27034w m994b2 = C27020r.m994b(SurveyEntryQaActivity.this);
                    f fVar2 = SurveyEntryQaActivity.this.f14973f;
                    if (fVar2 == null) {
                        l.l("uiContext");
                        throw null;
                    }
                    s1.a.a.a.v0.f.d.w2(m994b2, fVar2, (j0) null, new C4522b(e, null), 2, (Object) null);
                }
                if (fVar != null) {
                    s1.a.a.a.v0.f.d.w2(m994b, fVar, (j0) null, new C4521a(null), 2, (Object) null);
                    return s.a;
                }
                l.l("uiContext");
                throw null;
            }
        }

        public View$OnClickListenerC4519a(C18146b c18146b) {
            SurveyEntryQaActivity.this = r4;
            this.f14975b = c18146b;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [n3.v.b0, com.truecaller.survey.qa.SurveyEntryQaActivity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EditText editText = this.f14975b.f51117b;
            l.d(editText, "binding.enterSurveyEditText");
            String obj = editText.getText().toString();
            AbstractC27034w m994b = C27020r.m994b(SurveyEntryQaActivity.this);
            f fVar = SurveyEntryQaActivity.this.f14972e;
            if (fVar != null) {
                s1.a.a.a.v0.f.d.w2(m994b, fVar, (j0) null, new C4520a(obj, null), 2, (Object) null);
            } else {
                l.l("ioContext");
                throw null;
            }
        }
    }

    /* renamed from: pa */
    public static final Intent m34731pa(Context context) {
        return C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, SurveyEntryQaActivity.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SurveyEntryQaActivity.super.onCreate(bundle);
        LayoutInflater from = LayoutInflater.from(this);
        l.d(from, "LayoutInflater.from(this)");
        View inflate = C17422k.m16050u0(from, true).inflate(C2752R.layout.activity_survey_entry, (ViewGroup) null, false);
        int i = 2131362186;
        AppBarLayout findViewById = inflate.findViewById(2131362186);
        if (findViewById != null) {
            i = 2131363525;
            EditText editText = (EditText) inflate.findViewById(C2752R.C2754id.enterSurveyEditText);
            if (editText != null) {
                i = 2131364415;
                Button button = (Button) inflate.findViewById(C2752R.C2754id.insertSurveyButton);
                if (button != null) {
                    i = 2131366512;
                    Toolbar toolbar = (Toolbar) inflate.findViewById(2131366512);
                    if (toolbar != null) {
                        C18146b c18146b = new C18146b((ConstraintLayout) inflate, findViewById, editText, button, toolbar);
                        l.d(c18146b, "ActivitySurveyEntryBindi…s).toThemeInflater(true))");
                        setContentView(c18146b.f51116a);
                        setSupportActionBar(c18146b.f51119d);
                        AbstractC25393a supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.mo3548s(2131232447);
                        }
                        AbstractC25393a supportActionBar2 = getSupportActionBar();
                        if (supportActionBar2 != null) {
                            supportActionBar2.mo3553n(true);
                        }
                        AbstractC25393a supportActionBar3 = getSupportActionBar();
                        if (supportActionBar3 != null) {
                            supportActionBar3.mo3542y("Survey Entry");
                        }
                        c18146b.f51118c.setOnClickListener(new View$OnClickListenerC4519a(c18146b));
                        return;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
