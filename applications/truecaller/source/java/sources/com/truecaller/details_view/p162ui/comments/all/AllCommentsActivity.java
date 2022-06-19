package com.truecaller.details_view.p162ui.comments.all;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contactfeedback.presentation.addcomment.AddCommentActivity;
import com.truecaller.contactfeedback.repo.SortType;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.comments.single.SingleCommentView;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20698a;
import p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b;
import p193e.p194a.p1275v.p1276a.p1280c.p1282c.C20700c;
import p193e.p194a.p1275v.p1304k.C20894a;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import p193e.p194a.p372b0.p373a.p377b0.C8250a;
import p193e.p194a.p372b0.p373a.p385r.C8328a;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u00015B\u0007¢\u0006\u0004\bD\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\nJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\nJ\u000f\u0010\u0015\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0017¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u001d\u0010'\u001a\u00020\u00062\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\"0\u0019H\u0016¢\u0006\u0004\b'\u0010\u001dJ7\u0010/\u001a\u00020\u00062\f\u0010)\u001a\b\u0012\u0002\b\u0003\u0018\u00010(2\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u001d\u00101\u001a\u00020\u00062\f\u0010)\u001a\b\u0012\u0002\b\u0003\u0018\u00010(H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\nR\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:R\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;", "Ln3/b/a/h;", "Le/a/v/a/c/c/b;", "Landroid/widget/AdapterView$OnItemSelectedListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "a0", "()V", "b0", "e4", "b1", "I1", "a1", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "M0", "(Lcom/truecaller/data/entity/Contact;)V", "w0", "onDestroy", "", "onSupportNavigateUp", "()Z", "", "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;", "comments", "a9", "(Ljava/util/List;)V", "", "count", "E1", "(I)V", "", "spamContactName", "x4", "(Ljava/lang/String;)V", "sortingTypes", "D8", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", ViewAction.VIEW, "position", "", "id", "onItemSelected", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V", "onNothingSelected", "(Landroid/widget/AdapterView;)V", "i0", "Le/a/v/k/a;", C22021b.f61237c, "Le/a/v/k/a;", "binding", "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;", AbstractC2405c.f7629a, "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;", "adapter", "Le/a/v/a/c/c/a;", "a", "Le/a/v/a/c/c/a;", "getPresenter", "()Le/a/v/a/c/c/a;", "setPresenter", "(Le/a/v/a/c/c/a;)V", "presenter", "<init>", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity.class */
public final class AllCommentsActivity extends h implements AbstractC20699b, AdapterView.OnItemSelectedListener {
    @Inject

    /* renamed from: a */
    public AbstractC20698a f11734a;

    /* renamed from: b */
    public C20894a f11735b;

    /* renamed from: c */
    public C3869b f11736c;

    /* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity$b.class */
    public static final class C3869b extends RecyclerView.AbstractC0317g<C3871b> {

        /* renamed from: d */
        public static final /* synthetic */ l[] f11737d = {C22128a.m8629e0(C3869b.class, "comments", "getComments()Ljava/util/List;", 0)};

        /* renamed from: a */
        public final c f11738a;

        /* renamed from: b */
        public final s1.z.b.l<CommentViewModel, s> f11739b;

        /* renamed from: c */
        public final s1.z.b.l<CommentViewModel, s> f11740c;

        /* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity$b$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$a.class */
        public static final class C3870a extends b<List<? extends CommentViewModel>> {

            /* renamed from: b */
            public final /* synthetic */ C3869b f11741b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3870a(Object obj, Object obj2, C3869b c3869b) {
                super(obj2);
                this.f11741b = c3869b;
            }

            /* renamed from: b */
            public void m35435b(l<?> lVar, List<? extends CommentViewModel> list, List<? extends CommentViewModel> list2) {
                s1.z.c.l.e(lVar, "property");
                C25586h.m3181a(new C8328a(list, list2, C3872c.f11745b), true).m3178c(this.f11741b);
            }
        }

        /* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity$b$b */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b.class */
        public static final class C3871b extends RecyclerView.AbstractC0313c0 {

            /* renamed from: a */
            public final SingleCommentView f11742a;

            /* renamed from: b */
            public final s1.z.b.l<CommentViewModel, s> f11743b;

            /* renamed from: c */
            public final s1.z.b.l<CommentViewModel, s> f11744c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C3871b(SingleCommentView singleCommentView, s1.z.b.l<? super CommentViewModel, s> lVar, s1.z.b.l<? super CommentViewModel, s> lVar2) {
                super(singleCommentView);
                s1.z.c.l.e(singleCommentView, "commentView");
                s1.z.c.l.e(lVar, "upVoteClick");
                s1.z.c.l.e(lVar2, "downVoteClick");
                this.f11742a = singleCommentView;
                this.f11743b = lVar;
                this.f11744c = lVar2;
            }
        }

        /* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity$b$c */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c.class */
        public static final class C3872c extends m implements p<CommentViewModel, CommentViewModel, Boolean> {

            /* renamed from: b */
            public static final C3872c f11745b = new C3872c();

            public C3872c() {
                super(2);
            }

            /* renamed from: k */
            public Object m35434k(Object obj, Object obj2) {
                CommentViewModel commentViewModel = (CommentViewModel) obj;
                CommentViewModel commentViewModel2 = (CommentViewModel) obj2;
                s1.z.c.l.e(commentViewModel, "oldItem");
                s1.z.c.l.e(commentViewModel2, "newItem");
                return Boolean.valueOf(s1.z.c.l.a(commentViewModel.f11756a, commentViewModel2.f11756a));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C3869b(s1.z.b.l<? super CommentViewModel, s> lVar, s1.z.b.l<? super CommentViewModel, s> lVar2) {
            s1.z.c.l.e(lVar, "upVoteClick");
            s1.z.c.l.e(lVar2, "downVoteClick");
            this.f11739b = lVar;
            this.f11740c = lVar2;
            s1.u.s sVar = s1.u.s.a;
            this.f11738a = new C3870a(sVar, sVar, this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return ((List) this.f11738a.A1(this, f11737d[0])).size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(C3871b c3871b, int i) {
            C3871b c3871b2 = c3871b;
            s1.z.c.l.e(c3871b2, "holder");
            CommentViewModel commentViewModel = (CommentViewModel) ((List) this.f11738a.A1(this, f11737d[0])).get(i);
            s1.z.c.l.e(commentViewModel, "commentViewModel");
            c3871b2.f11742a.m35433f1(commentViewModel, c3871b2.f11743b, c3871b2.f11744c);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public C3871b onCreateViewHolder(ViewGroup viewGroup, int i) {
            View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C3857R.layout.layout_comment_recycler_view_item, viewGroup, false);
            Objects.requireNonNull(inflate, "rootView");
            SingleCommentView singleCommentView = (SingleCommentView) inflate;
            s1.z.c.l.d(singleCommentView, "LayoutCommentRecyclerVie…ext), parent, false).root");
            return new C3871b(singleCommentView, this.f11739b, this.f11740c);
        }
    }

    /* renamed from: com.truecaller.details_view.ui.comments.all.AllCommentsActivity$c */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/all/AllCommentsActivity$c.class */
    public static final class View$OnClickListenerC3873c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Contact f11747b;

        public View$OnClickListenerC3873c(Contact contact) {
            AllCommentsActivity.this = r4;
            this.f11747b = contact;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.details_view.ui.comments.all.AllCommentsActivity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AddCommentActivity.m35610pa(AllCommentsActivity.this, this.f11747b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: D8 */
    public void mo10831D8(List<String> list) {
        s1.z.c.l.e(list, "sortingTypes");
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AppCompatSpinner appCompatSpinner = c20894a.f58727h;
        s1.z.c.l.d(appCompatSpinner, "binding.spSorting");
        ArrayAdapter arrayAdapter = new ArrayAdapter((Context) this, C3857R.layout.item_spinner_sorting, (List) list);
        arrayAdapter.setDropDownViewResource(C3857R.layout.item_spinner_sorting_list);
        appCompatSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        C20894a c20894a2 = this.f11735b;
        if (c20894a2 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AppCompatSpinner appCompatSpinner2 = c20894a2.f58727h;
        s1.z.c.l.d(appCompatSpinner2, "binding.spSorting");
        appCompatSpinner2.setSelected(false);
        C20894a c20894a3 = this.f11735b;
        if (c20894a3 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        c20894a3.f58727h.setSelection(0, true);
        C20894a c20894a4 = this.f11735b;
        if (c20894a4 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AppCompatSpinner appCompatSpinner3 = c20894a4.f58727h;
        s1.z.c.l.d(appCompatSpinner3, "binding.spSorting");
        appCompatSpinner3.setOnItemSelectedListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: E1 */
    public void mo10830E1(int i) {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c20894a.f58725f;
        s1.z.c.l.d(textView, "binding.numberOfComments");
        textView.setText(getString(C3857R.string.details_view_comments_count, new Object[]{Integer.valueOf(i)}));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: I1 */
    public void mo10829I1() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AppCompatSpinner appCompatSpinner = c20894a.f58727h;
        s1.z.c.l.d(appCompatSpinner, "binding.spSorting");
        C19286f.m13684T(appCompatSpinner);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: M0 */
    public void mo10828M0(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c20894a.f58721b;
        s1.z.c.l.d(textView, "binding.addCommentButton");
        C19286f.m13684T(textView);
        C20894a c20894a2 = this.f11735b;
        if (c20894a2 != null) {
            c20894a2.f58721b.setOnClickListener(new View$OnClickListenerC3873c(contact));
        } else {
            s1.z.c.l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: a0 */
    public void mo10827a0() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        ProgressBar progressBar = c20894a.f58726g;
        s1.z.c.l.d(progressBar, "binding.pbLoading");
        C19286f.m13684T(progressBar);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: a1 */
    public void mo10826a1() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        AppCompatSpinner appCompatSpinner = c20894a.f58727h;
        s1.z.c.l.d(appCompatSpinner, "binding.spSorting");
        C19286f.m13689O(appCompatSpinner);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: a9 */
    public void mo10825a9(List<CommentViewModel> list) {
        s1.z.c.l.e(list, "comments");
        C3869b c3869b = this.f11736c;
        if (c3869b == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        Objects.requireNonNull(c3869b);
        s1.z.c.l.e(list, "<set-?>");
        c3869b.f11738a.a(c3869b, C3869b.f11737d[0], list);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: b0 */
    public void mo10824b0() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        ProgressBar progressBar = c20894a.f58726g;
        s1.z.c.l.d(progressBar, "binding.pbLoading");
        C19286f.m13689O(progressBar);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: b1 */
    public void mo10823b1() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        Group group = c20894a.f58724e;
        s1.z.c.l.d(group, "binding.grContent");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: e4 */
    public void mo10822e4() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        Group group = c20894a.f58724e;
        s1.z.c.l.d(group, "binding.grContent");
        C19286f.m13684T(group);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: i0 */
    public void mo10821i0() {
        C19291g.m13589S1(this, C3857R.string.ErrorConnectionGeneral, null, 0, 6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        Window window = getWindow();
        s1.z.c.l.d(window, "window");
        C17422k.m16071k(window);
        Window window2 = getWindow();
        s1.z.c.l.d(window2, "window");
        window2.setStatusBarColor(C17422k.m16105M(this, C3857R.attr.tcx_backgroundPrimary));
        AllCommentsActivity.super.onCreate(bundle);
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider");
        ((AbstractC20914b) applicationContext).mo10529v().mo10548b(this);
        LayoutInflater from = LayoutInflater.from(this);
        s1.z.c.l.d(from, "LayoutInflater.from(this)");
        View inflate = C17422k.m16050u0(from, true).inflate(C3857R.layout.activity_all_comments, (ViewGroup) null, false);
        int i = C3857R.C3859id.addCommentButton;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            i = C3857R.C3859id.addCommentContainer;
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
            if (frameLayout != null) {
                i = C3857R.C3859id.appbar;
                AppBarLayout findViewById = inflate.findViewById(i);
                if (findViewById != null) {
                    i = C3857R.C3859id.clOptions;
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i);
                    if (constraintLayout != null) {
                        i = C3857R.C3859id.commentsRecyclerView;
                        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
                        if (recyclerView != null) {
                            i = C3857R.C3859id.grContent;
                            Group group = (Group) inflate.findViewById(i);
                            if (group != null) {
                                i = C3857R.C3859id.numberOfComments;
                                TextView textView2 = (TextView) inflate.findViewById(i);
                                if (textView2 != null) {
                                    i = C3857R.C3859id.pbLoading;
                                    ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                                    if (progressBar != null) {
                                        i = C3857R.C3859id.spSorting;
                                        AppCompatSpinner appCompatSpinner = (AppCompatSpinner) inflate.findViewById(i);
                                        if (appCompatSpinner != null) {
                                            i = C3857R.C3859id.spamContactName;
                                            TextView textView3 = (TextView) inflate.findViewById(i);
                                            if (textView3 != null) {
                                                i = C3857R.C3859id.toolbar;
                                                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                                                if (toolbar != null) {
                                                    C20894a c20894a = new C20894a((ConstraintLayout) inflate, textView, frameLayout, findViewById, constraintLayout, recyclerView, group, textView2, progressBar, appCompatSpinner, textView3, toolbar);
                                                    s1.z.c.l.d(c20894a, "ActivityAllCommentsBindi…s).toThemeInflater(true))");
                                                    this.f11735b = c20894a;
                                                    setContentView(c20894a.f58720a);
                                                    C20894a c20894a2 = this.f11735b;
                                                    if (c20894a2 == null) {
                                                        s1.z.c.l.l("binding");
                                                        throw null;
                                                    }
                                                    setSupportActionBar(c20894a2.f58729j);
                                                    AbstractC25393a supportActionBar = getSupportActionBar();
                                                    if (supportActionBar != null) {
                                                        supportActionBar.mo3548s(C3857R.C3858drawable.ic_tcx_arrow_back_24dp);
                                                    }
                                                    AbstractC25393a supportActionBar2 = getSupportActionBar();
                                                    if (supportActionBar2 != null) {
                                                        supportActionBar2.mo3553n(true);
                                                    }
                                                    AbstractC25393a supportActionBar3 = getSupportActionBar();
                                                    if (supportActionBar3 != null) {
                                                        supportActionBar3.mo3551p(false);
                                                    }
                                                    this.f11736c = new C3869b(new a(0, this), new a(1, this));
                                                    C20894a c20894a3 = this.f11735b;
                                                    if (c20894a3 == null) {
                                                        s1.z.c.l.l("binding");
                                                        throw null;
                                                    }
                                                    RecyclerView recyclerView2 = c20894a3.f58723d;
                                                    s1.z.c.l.d(recyclerView2, "binding.commentsRecyclerView");
                                                    recyclerView2.setLayoutManager(new LinearLayoutManager(this));
                                                    C20894a c20894a4 = this.f11735b;
                                                    if (c20894a4 == null) {
                                                        s1.z.c.l.l("binding");
                                                        throw null;
                                                    }
                                                    RecyclerView recyclerView3 = c20894a4.f58723d;
                                                    s1.z.c.l.d(recyclerView3, "binding.commentsRecyclerView");
                                                    C3869b c3869b = this.f11736c;
                                                    if (c3869b == null) {
                                                        s1.z.c.l.l("adapter");
                                                        throw null;
                                                    }
                                                    recyclerView3.setAdapter(c3869b);
                                                    C20894a c20894a5 = this.f11735b;
                                                    if (c20894a5 == null) {
                                                        s1.z.c.l.l("binding");
                                                        throw null;
                                                    }
                                                    c20894a5.f58723d.addItemDecoration(new C8250a(C19291g.m13645A(this, 16)));
                                                    Parcelable parcelableExtra = getIntent().getParcelableExtra("spammer");
                                                    if (parcelableExtra == null) {
                                                        throw new IllegalArgumentException("Required value was null.".toString());
                                                    }
                                                    Contact contact = (Contact) parcelableExtra;
                                                    AbstractC20698a abstractC20698a = this.f11734a;
                                                    if (abstractC20698a == null) {
                                                        s1.z.c.l.l("presenter");
                                                        throw null;
                                                    }
                                                    ((AbstractC20576b) abstractC20698a).f57683a = this;
                                                    C20700c c20700c = (C20700c) abstractC20698a;
                                                    s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
                                                    String m35491w = contact.m35491w();
                                                    if (m35491w == null) {
                                                        m35491w = contact.m35496t();
                                                    }
                                                    if (m35491w == null) {
                                                        m35491w = c20700c.f58291h.mo13768b(C3857R.string.details_view_unknown_contact, new Object[0]);
                                                    }
                                                    s1.z.c.l.d(m35491w, "contact.displayName ?: c…ils_view_unknown_contact)");
                                                    C20592g c20592g = c20700c.f58294k;
                                                    C20592g.C20593a c20593a = c20592g.f57867Y2;
                                                    l<?>[] lVarArr = C20592g.f57695p6;
                                                    if (c20593a.m10941a(c20592g, lVarArr[206]).isEnabled()) {
                                                        String mo13768b = c20700c.f58291h.mo13768b(C3857R.string.details_view_comments_sort_by_score_title, new Object[0]);
                                                        s1.z.c.l.d(mo13768b, "themedResourceProvider.g…ents_sort_by_score_title)");
                                                        String mo13768b2 = c20700c.f58291h.mo13768b(C3857R.string.details_view_comments_sort_by_time_title, new Object[0]);
                                                        s1.z.c.l.d(mo13768b2, "themedResourceProvider.g…ments_sort_by_time_title)");
                                                        List<String> T = i.T(new String[]{mo13768b, mo13768b2});
                                                        List<? extends SortType> T2 = i.T(new SortType[]{SortType.BY_SCORE, SortType.BY_TIME});
                                                        C20592g c20592g2 = c20700c.f58294k;
                                                        if (c20592g2.f57860X2.m10941a(c20592g2, lVarArr[205]).isEnabled()) {
                                                            c20700c.f58287d = T;
                                                            c20700c.f58288e = T2;
                                                        } else {
                                                            c20700c.f58287d = i.x0(T);
                                                            c20700c.f58288e = i.x0(T2);
                                                        }
                                                        AbstractC20699b abstractC20699b = (AbstractC20699b) c20700c.f57683a;
                                                        if (abstractC20699b != null) {
                                                            abstractC20699b.mo10829I1();
                                                        }
                                                    } else {
                                                        AbstractC20699b abstractC20699b2 = (AbstractC20699b) c20700c.f57683a;
                                                        if (abstractC20699b2 != null) {
                                                            abstractC20699b2.mo10826a1();
                                                        }
                                                    }
                                                    C20592g c20592g3 = c20700c.f58294k;
                                                    if (c20592g3.f57893b6.m10941a(c20592g3, lVarArr[371]).isEnabled()) {
                                                        AbstractC20699b abstractC20699b3 = (AbstractC20699b) c20700c.f57683a;
                                                        if (abstractC20699b3 != null) {
                                                            abstractC20699b3.mo10828M0(contact);
                                                        }
                                                    } else {
                                                        AbstractC20699b abstractC20699b4 = (AbstractC20699b) c20700c.f57683a;
                                                        if (abstractC20699b4 != null) {
                                                            abstractC20699b4.mo10820w0();
                                                        }
                                                    }
                                                    AbstractC20699b abstractC20699b5 = (AbstractC20699b) c20700c.f57683a;
                                                    if (abstractC20699b5 != null) {
                                                        abstractC20699b5.mo10819x4(m35491w);
                                                    }
                                                    AbstractC20699b abstractC20699b6 = (AbstractC20699b) c20700c.f57683a;
                                                    if (abstractC20699b6 != null) {
                                                        abstractC20699b6.mo10831D8(c20700c.f58287d);
                                                    }
                                                    c20700c.m10818Ij(SortType.DEFAULT, contact);
                                                    return;
                                                }
                                            }
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

    public void onDestroy() {
        AbstractC20698a abstractC20698a = this.f11734a;
        if (abstractC20698a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C20700c) abstractC20698a).mo9806c();
        AllCommentsActivity.super.onDestroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r5 != null) goto L11;
     */
    @Override // android.widget.AdapterView.OnItemSelectedListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onItemSelected(android.widget.AdapterView<?> r5, android.view.View r6, int r7, long r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.details_view.p162ui.comments.all.AllCommentsActivity.onItemSelected(android.widget.AdapterView, android.view.View, int, long):void");
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: w0 */
    public void mo10820w0() {
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c20894a.f58721b;
        s1.z.c.l.d(textView, "binding.addCommentButton");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1282c.AbstractC20699b
    /* renamed from: x4 */
    public void mo10819x4(String str) {
        s1.z.c.l.e(str, "spamContactName");
        C20894a c20894a = this.f11735b;
        if (c20894a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c20894a.f58728i;
        s1.z.c.l.d(textView, "binding.spamContactName");
        textView.setText(str);
    }
}
