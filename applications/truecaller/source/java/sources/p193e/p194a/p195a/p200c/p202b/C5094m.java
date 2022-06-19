package p193e.p194a.p195a.p200c.p202b;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.p183ui.view.TintedImageView;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p224d.p225a.AbstractC5883e;
import p193e.p194a.p195a.p224d.p225a.C5886h;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import s1.g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.b.m */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/m.class */
public final class C5094m extends e implements AbstractC5099o {

    /* renamed from: a */
    public final g f17460a = C19286f.m13659t(this, C2752R.C2754id.rvMembers);

    /* renamed from: b */
    public final g f17461b = C19286f.m13659t(this, C2752R.C2754id.btnClose);

    /* renamed from: c */
    public final g f17462c = C19286f.m13659t(this, C2752R.C2754id.txtSearch);
    @Inject

    /* renamed from: d */
    public AbstractC5098n f17463d;
    @Inject

    /* renamed from: e */
    public AbstractC5883e f17464e;

    /* renamed from: f */
    public C5886h f17465f;

    /* renamed from: g */
    public final Conversation f17466g;

    /* renamed from: h */
    public final int f17467h;

    /* renamed from: i */
    public final l<Participant, s> f17468i;

    /* renamed from: e.a.a.c.b.m$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/m$a.class */
    public static final class C5095a implements AbstractC13209t.AbstractC13210a {
        public C5095a() {
            C5094m.this = r4;
        }

        @Override // p193e.p194a.p682e.p699c2.AbstractC13209t.AbstractC13210a
        /* renamed from: a */
        public final void mo10041a(int i, long j) {
            C5094m.this.m33836OA().mo33829we(i);
        }
    }

    /* renamed from: e.a.a.c.b.m$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/m$b.class */
    public static final class View$OnClickListenerC5096b implements View.OnClickListener {
        public View$OnClickListenerC5096b() {
            C5094m.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5094m.this.m33836OA().mo33830m();
        }
    }

    /* renamed from: e.a.a.c.b.m$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/m$c.class */
    public static final class C5097c extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5097c() {
            super(1);
            C5094m.this = r4;
        }

        /* renamed from: d */
        public Object m33835d(Object obj) {
            C5094m.this.m33836OA().mo33831U8(String.valueOf((Editable) obj));
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C5094m(Conversation conversation, int i, l<? super Participant, s> lVar) {
        s1.z.c.l.e(conversation, "conversation");
        s1.z.c.l.e(lVar, "listener");
        this.f17466g = conversation;
        this.f17467h = i;
        this.f17468i = lVar;
    }

    /* renamed from: OA */
    public final AbstractC5098n m33836OA() {
        AbstractC5098n abstractC5098n = this.f17463d;
        if (abstractC5098n != null) {
            return abstractC5098n;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5099o
    /* renamed from: gh */
    public void mo33834gh(List<? extends Participant> list) {
        s1.z.c.l.e(list, "participants");
        AbstractC5883e abstractC5883e = this.f17464e;
        if (abstractC5883e == null) {
            s1.z.c.l.l("groupMembersPresenter");
            throw null;
        }
        Object[] array = list.toArray(new Participant[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        abstractC5883e.f19656a = (Participant[]) array;
        C5886h c5886h = this.f17465f;
        if (c5886h != null) {
            c5886h.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("groupMembersAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5099o
    /* renamed from: l5 */
    public void mo33833l5(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        this.f17468i.d(participant);
    }

    public void onCreate(Bundle bundle) {
        C5094m.super.onCreate(bundle);
        setStyle(2, 2131952156);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C5083f c5083f = new C5083f(requireContext, this.f17466g, this.f17467h);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c5083f, C5083f.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5078c c5078c = new C5078c(c5083f, mo10154s, null);
        this.f17463d = (AbstractC5098n) c5078c.f17401H.get();
        this.f17464e = (AbstractC5883e) c5078c.f17403J.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_search_group_members, viewGroup, false);
    }

    public void onDestroyView() {
        C5094m.super.onDestroyView();
        AbstractC5098n abstractC5098n = this.f17463d;
        if (abstractC5098n != null) {
            abstractC5098n.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5094m.super.onViewCreated(view, bundle);
        d dialog = getDialog();
        Objects.requireNonNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetBehavior e = dialog.e();
        s1.z.c.l.d(e, "(dialog as BottomSheetDialog).behavior");
        e.M(3);
        AbstractC5098n abstractC5098n = this.f17463d;
        if (abstractC5098n == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5098n.mo9029Y0(this);
        AbstractC5883e abstractC5883e = this.f17464e;
        if (abstractC5883e == null) {
            s1.z.c.l.l("groupMembersPresenter");
            throw null;
        }
        C5886h c5886h = new C5886h(abstractC5883e);
        this.f17465f = c5886h;
        c5886h.f38359a = new C5095a();
        RecyclerView recyclerView = (RecyclerView) this.f17460a.getValue();
        s1.z.c.l.d(recyclerView, "rvMembers");
        C5886h c5886h2 = this.f17465f;
        if (c5886h2 == null) {
            s1.z.c.l.l("groupMembersAdapter");
            throw null;
        }
        recyclerView.setAdapter(c5886h2);
        ((TintedImageView) this.f17461b.getValue()).setOnClickListener(new View$OnClickListenerC5096b());
        ((EditText) this.f17462c.getValue()).requestFocus();
        EditText editText = (EditText) this.f17462c.getValue();
        s1.z.c.l.d(editText, "txtSearch");
        C19291g.m13542j(editText, new C5097c());
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5099o
    /* renamed from: s */
    public void mo33832s() {
        dismiss();
    }
}
