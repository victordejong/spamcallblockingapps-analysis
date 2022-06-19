package com.truecaller.bizmon.newBusiness.onboarding.p149ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7694a0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7696b0;
import p193e.p194a.p294b.p295a.p312c.p313a.p315c0.C7702e;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8062f;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p802e0.p803u.C14504a;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b.\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0018\u001a\u00020\u00052\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;", "Ln3/b/a/h;", "Le/a/b/a/c/a/b0;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "onPause", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "onSupportNavigateUp", "()Z", "Le/a/b0/p/c;", RemoteMessageConst.Notification.TAG, "t3", "(Le/a/b0/p/c;)V", "", "childTags", "J2", "(Ljava/util/List;)V", "Landroidx/appcompat/widget/SearchView;", C22021b.f61237c, "Landroidx/appcompat/widget/SearchView;", "searchView", "Le/a/b/m/f;", "d", "Le/a/b/m/f;", "binding", "Le/a/b/a/c/a/a0;", "a", "Le/a/b/a/c/a/a0;", "getPresenter", "()Le/a/b/a/c/a/a0;", "setPresenter", "(Le/a/b/a/c/a/a0;)V", "presenter", "Le/a/b/a/c/a/c0/e;", AbstractC2405c.f7629a, "Le/a/b/a/c/a/c0/e;", "adapter", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.SubCategoryActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity.class */
public final class SubCategoryActivity extends h implements AbstractC7696b0 {
    @Inject

    /* renamed from: a */
    public AbstractC7694a0 f10340a;

    /* renamed from: b */
    public SearchView f10341b;

    /* renamed from: c */
    public C7702e f10342c;

    /* renamed from: d */
    public C8062f f10343d;

    /* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.SubCategoryActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity$a.class */
    public static final /* synthetic */ class C3506a extends j implements l<Long, s> {
        public C3506a(SubCategoryActivity subCategoryActivity) {
            super(1, subCategoryActivity, SubCategoryActivity.class, "onSelectSubCategory", "onSelectSubCategory(J)V", 0);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.truecaller.bizmon.newBusiness.onboarding.ui.SubCategoryActivity, java.lang.Object, android.app.Activity] */
        /* renamed from: d */
        public Object m35857d(Object obj) {
            long longValue = ((Number) obj).longValue();
            ?? r0 = (SubCategoryActivity) ((b) this).b;
            Objects.requireNonNull(r0);
            Intent intent = new Intent();
            intent.putExtra("selected_tag_id", longValue);
            r0.setResult(-1, intent);
            r0.finish();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.SubCategoryActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity$b.class */
    public static final class C3507b extends m implements l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3507b() {
            super(1);
            SubCategoryActivity.this = r4;
        }

        /* renamed from: d */
        public Object m35856d(Object obj) {
            String str = (String) obj;
            SubCategoryActivity subCategoryActivity = SubCategoryActivity.this;
            C7702e c7702e = subCategoryActivity.f10342c;
            if (c7702e == null) {
                s1.z.c.l.l("adapter");
                throw null;
            }
            AbstractC7694a0 abstractC7694a0 = subCategoryActivity.f10340a;
            if (abstractC7694a0 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            List<C8551c> mo29388ae = abstractC7694a0.mo29388ae(str);
            s1.z.c.l.e(mo29388ae, "filteredCategories");
            C25586h.C25590d m3181a = C25586h.m3181a(new C14504a(c7702e.f24100a, mo29388ae), true);
            s1.z.c.l.d(m3181a, "DiffUtil.calculateDiff(C…ies, filteredCategories))");
            c7702e.f24100a = mo29388ae;
            m3181a.m3179b(new C25570b(c7702e));
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7696b0
    /* renamed from: J2 */
    public void mo29438J2(List<C8551c> list) {
        s1.z.c.l.e(list, "childTags");
        this.f10342c = new C7702e(list, new C3506a(this));
        C8062f c8062f = this.f10343d;
        if (c8062f == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        RecyclerView recyclerView = c8062f.f24858c;
        s1.z.c.l.d(recyclerView, "categoryList");
        C7702e c7702e = this.f10342c;
        if (c7702e == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c7702e);
        RecyclerView recyclerView2 = c8062f.f24858c;
        s1.z.c.l.d(recyclerView2, "categoryList");
        recyclerView2.setLayoutManager(new LinearLayoutManager(this, 1, false));
        SearchView searchView = this.f10341b;
        if (searchView == null) {
            return;
        }
        C17422k.m16101Q(searchView, new C3507b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SubCategoryActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C3478R.layout.activity_sub_category, (ViewGroup) null, false);
        int i = C3478R.C3480id.categoryGridLayout;
        ScrollView scrollView = (ScrollView) inflate.findViewById(i);
        if (scrollView != null) {
            i = C3478R.C3480id.categoryIcon;
            ImageView imageView = (ImageView) inflate.findViewById(i);
            if (imageView != null) {
                i = C3478R.C3480id.categoryList;
                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
                if (recyclerView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    i = C3478R.C3480id.divider;
                    View findViewById = inflate.findViewById(i);
                    if (findViewById != null) {
                        i = C3478R.C3480id.lblCategory;
                        TextView textView = (TextView) inflate.findViewById(i);
                        if (textView != null) {
                            i = C3478R.C3480id.onboarding_toolbar;
                            Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                            if (toolbar != null) {
                                i = C3478R.C3480id.placeHolder;
                                View findViewById2 = inflate.findViewById(i);
                                if (findViewById2 != null) {
                                    i = C3478R.C3480id.selectedCatLayout;
                                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(i);
                                    if (relativeLayout != null) {
                                        C8062f c8062f = new C8062f(constraintLayout, scrollView, imageView, recyclerView, constraintLayout, findViewById, textView, toolbar, findViewById2, relativeLayout);
                                        s1.z.c.l.d(c8062f, "ActivitySubCategoryBindi…ayoutInflater.from(this))");
                                        this.f10343d = c8062f;
                                        if (c8062f == null) {
                                            s1.z.c.l.l("binding");
                                            throw null;
                                        }
                                        setContentView(c8062f.f24856a);
                                        this.f10340a = (AbstractC7694a0) ((C7805e) C18334g0.m15219l(this)).f24285Z.get();
                                        C8062f c8062f2 = this.f10343d;
                                        if (c8062f2 == null) {
                                            s1.z.c.l.l("binding");
                                            throw null;
                                        }
                                        Toolbar toolbar2 = c8062f2.f24861f;
                                        s1.z.c.l.d(toolbar2, "onboardingToolbar");
                                        toolbar2.setTitle("");
                                        setSupportActionBar(c8062f2.f24861f);
                                        AbstractC25393a supportActionBar = getSupportActionBar();
                                        if (supportActionBar != null) {
                                            supportActionBar.mo3553n(true);
                                        }
                                        AbstractC25393a supportActionBar2 = getSupportActionBar();
                                        if (supportActionBar2 != null) {
                                            supportActionBar2.mo3552o(true);
                                        }
                                        AbstractC7694a0 abstractC7694a0 = this.f10340a;
                                        if (abstractC7694a0 == null) {
                                            s1.z.c.l.l("presenter");
                                            throw null;
                                        }
                                        abstractC7694a0.mo9029Y0(this);
                                        Intent intent = getIntent();
                                        s1.z.c.l.d(intent, "intent");
                                        Bundle extras = intent.getExtras();
                                        Long valueOf = extras != null ? Long.valueOf(extras.getLong("selected_tag_id")) : null;
                                        if (valueOf == null) {
                                            return;
                                        }
                                        long longValue = valueOf.longValue();
                                        AbstractC7694a0 abstractC7694a02 = this.f10340a;
                                        if (abstractC7694a02 == null) {
                                            s1.z.c.l.l("presenter");
                                            throw null;
                                        }
                                        abstractC7694a02.mo29387mj(longValue);
                                        AbstractC7694a0 abstractC7694a03 = this.f10340a;
                                        if (abstractC7694a03 != null) {
                                            abstractC7694a03.mo29389Qh(longValue);
                                            return;
                                        } else {
                                            s1.z.c.l.l("presenter");
                                            throw null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C3478R.C3482menu.menu_biz, menu);
        SearchView searchView = null;
        MenuItem findItem = menu != null ? menu.findItem(C3478R.C3480id.action_search) : null;
        if (findItem != null) {
            searchView = findItem.getActionView();
        }
        Objects.requireNonNull(searchView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
        this.f10341b = searchView;
        return SubCategoryActivity.super.onCreateOptionsMenu(menu);
    }

    public void onDestroy() {
        SubCategoryActivity.super.onDestroy();
        AbstractC7694a0 abstractC7694a0 = this.f10340a;
        if (abstractC7694a0 != null) {
            abstractC7694a0.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onPause() {
        SubCategoryActivity.super.onPause();
        SearchView searchView = this.f10341b;
        if (searchView != null) {
            C19286f.m13679Y(searchView, false, 0L, 2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onSupportNavigateUp() {
        finish();
        return false;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7696b0
    /* renamed from: t3 */
    public void mo29437t3(C8551c c8551c) {
        s1.z.c.l.e(c8551c, RemoteMessageConst.Notification.TAG);
        C8062f c8062f = this.f10343d;
        if (c8062f == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        ImageView imageView = c8062f.f24857b;
        s1.z.c.l.d(imageView, "categoryIcon");
        C18334g0.m15230f0(c8551c, imageView);
        TextView textView = c8062f.f24860e;
        s1.z.c.l.d(textView, "lblCategory");
        textView.setText(c8551c.f26351b);
    }
}
