package gogolook.callgogolook2.p075cs;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.Fragment;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallCompatActivity;
import kotlin.Metadata;
import p459j.p460a.p546o.C13227a;
import p459j.p460a.p546o.C13243b;
import p459j.p460a.p546o.C13253d;
import p459j.p460a.p546o.p547f.C13284b;
import p459j.p460a.p546o.p547f.C13286c;
import p459j.p460a.p546o.p547f.C13291d;
import p459j.p460a.p546o.p548g.AbstractC13296e;
import p459j.p460a.p582w0.C14028i2;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018�� $2\u00020\u00012\u00020\u0002:\u0001$B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\b\u0010\u001f\u001a\u00020\u001aH\u0014J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u00020\u001aH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006%"}, m815d2 = {"Lgogolook/callgogolook2/cs/CustomerServiceActivity;", "Lgogolook/callgogolook2/app/WhoscallCompatActivity;", "Lgogolook/callgogolook2/cs/presenter/IFaqContentModel;", "()V", "faqContent", "Lgogolook/callgogolook2/cs/model/FaqContent;", "progressDialog", "Lgogolook/callgogolook2/view/MProgressDialog;", "getProgressDialog", "()Lgogolook/callgogolook2/view/MProgressDialog;", "progressDialog$delegate", "Lkotlin/Lazy;", "getActionBarTitle", "", "getArticle", "Lgogolook/callgogolook2/cs/model/Article;", "categoryIdx", "", "articleIdx", "getArticlesLength", "getCategoriesLength", "getCategory", "Lgogolook/callgogolook2/cs/model/Category;", "idx", "getFaqContent", "loadContents", "", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "setActionBarTitle", "title", "", "showContents", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.cs.CustomerServiceActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/cs/CustomerServiceActivity.class */
public final class CustomerServiceActivity extends WhoscallCompatActivity implements AbstractC13296e {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f10721d;

    /* renamed from: b */
    public C13291d f10722b;

    /* renamed from: c */
    public final AbstractC14974f f10723c = C14975g.m662a(new C4450d());

    /* renamed from: gogolook.callgogolook2.cs.CustomerServiceActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/cs/CustomerServiceActivity$a.class */
    public static final class C4447a {
        public C4447a() {
        }

        public /* synthetic */ C4447a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.cs.CustomerServiceActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/cs/CustomerServiceActivity$b.class */
    public static final class C4448b implements C13286c.AbstractC13287a {
        public C4448b() {
        }

        @Override // p459j.p460a.p546o.p547f.C13286c.AbstractC13287a
        public void onError(Throwable th) {
            C15149k.m377b(th, "t");
            C14080m2.m2613a("CustomerServiceActivity", th, true);
            C14217x3.m2194a(CustomerServiceActivity.this.m28622K());
            CustomerServiceActivity customerServiceActivity = CustomerServiceActivity.this;
            C14687h.m861a(customerServiceActivity, customerServiceActivity.getString(R$string.error_code_client, new Object[]{th.getMessage()}), 0).m858c();
            CustomerServiceActivity.this.finish();
        }

        @Override // p459j.p460a.p546o.p547f.C13286c.AbstractC13287a
        public void onLoadComplete(C13291d dVar) {
            C15149k.m377b(dVar, "faqContent");
            CustomerServiceActivity.this.f10722b = dVar;
            C14217x3.m2194a(CustomerServiceActivity.this.m28622K());
            CustomerServiceActivity.this.m28620M();
        }
    }

    /* renamed from: gogolook.callgogolook2.cs.CustomerServiceActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/cs/CustomerServiceActivity$c.class */
    public static final class DialogInterface$OnClickListenerC4449c implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Fragment f10726b;

        public DialogInterface$OnClickListenerC4449c(Fragment fragment) {
            this.f10726b = fragment;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ((C13253d) this.f10726b).m4343c(0);
            CustomerServiceActivity.super.onBackPressed();
        }
    }

    /* renamed from: gogolook.callgogolook2.cs.CustomerServiceActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/cs/CustomerServiceActivity$d.class */
    public static final class C4450d extends AbstractC15150l implements AbstractC15107a<DialogC14628h> {
        public C4450d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final DialogC14628h invoke() {
            return new DialogC14628h(CustomerServiceActivity.this, (int) R$string.loading);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(CustomerServiceActivity.class), "progressDialog", "getProgressDialog()Lgogolook/callgogolook2/view/MProgressDialog;");
        C15131a0.m412a(sVar);
        f10721d = new AbstractC14906i[]{sVar};
        new C4447a(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r4 != null) goto L_0x0018;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence m28623J() {
        /*
            r3 = this;
            r0 = r3
            androidx.appcompat.app.ActionBar r0 = r0.getSupportActionBar()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r4
            java.lang.CharSequence r0 = r0.getTitle()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            goto L_0x0018
        L_0x0015:
            java.lang.String r0 = ""
            r4 = r0
        L_0x0018:
            r0 = r4
            java.lang.String r1 = "supportActionBar?.title ?: \"\""
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p075cs.CustomerServiceActivity.m28623J():java.lang.CharSequence");
    }

    /* renamed from: K */
    public final DialogC14628h m28622K() {
        AbstractC14974f fVar = this.f10723c;
        AbstractC14906i iVar = f10721d[0];
        return (DialogC14628h) fVar.getValue();
    }

    /* renamed from: L */
    public final void m28621L() {
        m28622K().show();
        C13286c.fetchFaqContents(this, new C4448b());
    }

    /* renamed from: M */
    public final void m28620M() {
        int i;
        int intExtra = getIntent().getIntExtra("step", 1);
        Fragment bVar = intExtra != 2 ? intExtra != 3 ? new C13243b() : new C13253d() : new C13227a();
        String str = intExtra != 2 ? intExtra != 3 ? "CategoryFragment" : "ReportFragment" : "ArticleFragment";
        int i2 = -1;
        if (getIntent().hasExtra("category_id")) {
            int intExtra2 = getIntent().getIntExtra("category_id", 0);
            C13291d dVar = this.f10722b;
            int categoriesLength = dVar != null ? dVar.categoriesLength() : 0;
            int i3 = 0;
            while (true) {
                i = -1;
                if (i3 >= categoriesLength) {
                    break;
                }
                C13291d dVar2 = this.f10722b;
                C13284b categories = dVar2 != null ? dVar2.categories(i3) : null;
                if (categories != null && categories.articlesLength() > 0) {
                    String gfIssueNo = categories.articles(0).gfIssueNo();
                    C15149k.m383a((Object) gfIssueNo, "category.articles(0).gfIssueNo()");
                    if (Integer.parseInt(gfIssueNo) / 100 == intExtra2) {
                        i = i3;
                        break;
                    }
                }
                i3++;
            }
            i2 = i;
            if (i >= 0) {
                C13291d dVar3 = this.f10722b;
                i2 = i;
                if (dVar3 != null) {
                    C13284b categories2 = dVar3.categories(i);
                    i2 = i;
                    if (categories2 != null) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("category_id", intExtra2);
                        bundle.putInt("category_index", i);
                        String nameRes = categories2.nameRes();
                        C15149k.m383a((Object) nameRes, "it.nameRes()");
                        bundle.putString("category_name", C14060l2.m2708a(this, nameRes, ""));
                        bundle.putString("more_info", getIntent().getStringExtra("more_info"));
                        bVar.setArguments(bundle);
                        i2 = i;
                    }
                }
            }
        }
        String str2 = str;
        Fragment fragment = bVar;
        if (intExtra != 1) {
            str2 = str;
            fragment = bVar;
            if (i2 < 0) {
                fragment = new C13243b();
                str2 = "CategoryFragment";
            }
        }
        getSupportFragmentManager().beginTransaction().setCustomAnimations(R$anim.slide_in_right, R$anim.slide_out_left, R$anim.slide_in_left, R$anim.slide_out_right).add(R$id.fragment_container, fragment, str2).commit();
    }

    /* renamed from: c */
    public final void m28615c(String str) {
        C15149k.m377b(str, "title");
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r5 != null) goto L_0x001e;
     */
    @Override // p459j.p460a.p546o.p548g.AbstractC13296e
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p459j.p460a.p546o.p547f.C13284b mo4315d(int r4) {
        /*
            r3 = this;
            r0 = r3
            j.a.o.f.d r0 = r0.f10722b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0016
            r0 = r5
            r1 = r4
            j.a.o.f.b r0 = r0.categories(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0016
            goto L_0x001e
        L_0x0016:
            j.a.o.f.b r0 = new j.a.o.f.b
            r1 = r0
            r1.<init>()
            r5 = r0
        L_0x001e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p075cs.CustomerServiceActivity.mo4315d(int):j.a.o.f.b");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag("ReportFragment");
        if (findFragmentByTag instanceof C13253d) {
            C13253d dVar = (C13253d) findFragmentByTag;
            if (dVar.isVisible()) {
                if (dVar.m4351U()) {
                    DialogC14618f fVar = new DialogC14618f(this);
                    fVar.setTitle(R$string.drawer_help_user_report_back_title);
                    fVar.m995c(R$string.drawer_help_user_report_back_content);
                    fVar.m999b(R$string.drawer_help_user_report_back_confirm_button, new DialogInterface$OnClickListenerC4449c(findFragmentByTag));
                    fVar.m993d(R$string.drawer_help_user_report_back_cancel_button);
                    fVar.show();
                    return;
                }
                dVar.m4343c(0);
                super.onBackPressed();
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_fragment_container);
        findViewById(R$id.fragment_container).setBackgroundColor(-1);
        m28621L();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C14028i2.m2753a(this, "cs_tmp");
    }

    @Override // p459j.p460a.p546o.p548g.AbstractC13296e
    /* renamed from: v */
    public C13291d mo4314v() {
        C13291d dVar = this.f10722b;
        if (dVar == null) {
            dVar = new C13291d();
        }
        return dVar;
    }
}
