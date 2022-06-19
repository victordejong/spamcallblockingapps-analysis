package com.truecaller.voip.p192ui.calldetails;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipCallHistory;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import p193e.p194a.p619d.p628c.p636z.AbstractC11338b;
import p193e.p194a.p619d.p628c.p636z.AbstractC11340d;
import p193e.p194a.p619d.p628c.p636z.AbstractC11356n;
import p193e.p194a.p619d.p628c.p636z.AbstractC11357o;
import p193e.p194a.p619d.p628c.p636z.AbstractC11358p;
import p193e.p194a.p619d.p628c.p636z.C11339c;
import p193e.p194a.p619d.p628c.p636z.C11341e;
import p193e.p194a.p619d.p628c.p636z.C11351l;
import p193e.p194a.p619d.p628c.p636z.C11354m;
import p193e.p194a.p619d.p654s.C11786b;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b8\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010\u001aJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b!\u0010\u001aR\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,R\u001d\u00103\u001a\u00020.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u00069"}, d2 = {"Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity;", "Ln3/b/a/h;", "Le/a/d/c/z/o;", "Le/a/d/c/z/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onPause", "onDestroy", "Landroid/view/MenuItem;", "menuItem", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "", "Le/a/d/c/z/p;", "voipCallHistoryItems", "j", "(Ljava/util/List;)V", "Le/a/d/b0/b$b;", "searchedPeer", "E9", "(Le/a/d/b0/b$b;)V", "f9", "Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;", "callingAction", "u9", "(Le/a/d/b0/b$b;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V", "T2", "Z", "Le/a/d/c/z/n;", "e", "Le/a/d/c/z/n;", "getPresenter", "()Le/a/d/c/z/n;", "setPresenter", "(Le/a/d/c/z/n;)V", "presenter", "Le/a/d/s/b;", "f", "Le/a/d/s/b;", "binding", "Le/a/d/c/z/e;", "g", "Ls1/g;", "pa", "()Le/a/d/c/z/e;", "adapter", "Lcom/truecaller/voip/VoipCallHistory;", "d", "Lcom/truecaller/voip/VoipCallHistory;", "callHistory", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity.class */
public final class VoipGroupCallDetailsActivity extends AbstractC11338b implements AbstractC11357o, AbstractC11340d {

    /* renamed from: d */
    public VoipCallHistory f16455d;
    @Inject

    /* renamed from: e */
    public AbstractC11356n f16456e;

    /* renamed from: f */
    public C11786b f16457f;

    /* renamed from: g */
    public final g f16458g = C25225a.m3978P1(C4847a.f16459b);

    /* renamed from: com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a.class */
    public static final class C4847a extends m implements a<C11341e> {

        /* renamed from: b */
        public static final C4847a f16459b = new C4847a();

        public C4847a() {
            super(0);
        }

        public Object invoke() {
            return new C11341e();
        }
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11340d
    /* renamed from: E9 */
    public void mo24797E9(AbstractC11162b.C11164b c11164b) {
        l.e(c11164b, "searchedPeer");
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n == null) {
            l.l("presenter");
            throw null;
        }
        C11354m c11354m = (C11354m) abstractC11356n;
        Objects.requireNonNull(c11354m);
        l.e(c11164b, "searchedPeer");
        c11354m.f33387h.mo24116b(c11164b.f33007c);
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11340d
    /* renamed from: T2 */
    public void mo24796T2(AbstractC11162b.C11164b c11164b) {
        l.e(c11164b, "searchedPeer");
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n == null) {
            l.l("presenter");
            throw null;
        }
        l.e(c11164b, "searchedPeer");
        ((C11354m) abstractC11356n).f33387h.mo24125D(c11164b.f33007c, c11164b.f33008d);
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11340d
    /* renamed from: Z */
    public void mo24795Z(AbstractC11162b.C11164b c11164b) {
        l.e(c11164b, "searchedPeer");
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n == null) {
            l.l("presenter");
            throw null;
        }
        C11354m c11354m = (C11354m) abstractC11356n;
        Objects.requireNonNull(c11354m);
        l.e(c11164b, "searchedPeer");
        c11354m.f33387h.mo24114d(c11164b);
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11340d
    /* renamed from: f9 */
    public void mo24794f9(AbstractC11162b.C11164b c11164b) {
        l.e(c11164b, "searchedPeer");
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n != null) {
            ((C11354m) abstractC11356n).m24784Jj(c11164b);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11357o
    /* renamed from: j */
    public void mo24782j(List<? extends AbstractC11358p> list) {
        l.e(list, "voipCallHistoryItems");
        C11341e m34291pa = m34291pa();
        Objects.requireNonNull(m34291pa);
        l.e(list, "callHistoryItems");
        C25586h.C25590d m3181a = C25586h.m3181a(new C11339c(m34291pa.f33360a, list), true);
        l.d(m3181a, "DiffUtil.calculateDiff(P…eers = callHistoryItems))");
        m34291pa.f33360a = list;
        m3181a.m3179b(new C25570b(m34291pa));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        VoipGroupCallDetailsActivity.super.onCreate(bundle);
        VoipCallHistory voipCallHistory = null;
        View inflate = getLayoutInflater().inflate(C4781R.layout.activity_voip_call_details, (ViewGroup) null, false);
        int i = C4781R.C4783id.groupCallList;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
        if (recyclerView != null) {
            i = C4781R.C4783id.toolbar;
            Toolbar toolbar = (Toolbar) inflate.findViewById(i);
            if (toolbar != null) {
                C11786b c11786b = new C11786b((ConstraintLayout) inflate, recyclerView, toolbar);
                l.d(c11786b, "ActivityVoipCallDetailsB…g.inflate(layoutInflater)");
                this.f16457f = c11786b;
                if (c11786b == null) {
                    l.l("binding");
                    throw null;
                }
                setContentView(c11786b.f34629a);
                C11786b c11786b2 = this.f16457f;
                if (c11786b2 == null) {
                    l.l("binding");
                    throw null;
                }
                setSupportActionBar(c11786b2.f34631c);
                AbstractC25393a supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.mo3553n(true);
                }
                AbstractC11356n abstractC11356n = this.f16456e;
                if (abstractC11356n == null) {
                    l.l("presenter");
                    throw null;
                }
                ((AbstractC20576b) abstractC11356n).f57683a = this;
                m34291pa().f33361b = this;
                C11786b c11786b3 = this.f16457f;
                if (c11786b3 == null) {
                    l.l("binding");
                    throw null;
                }
                RecyclerView recyclerView2 = c11786b3.f34630b;
                l.d(recyclerView2, "binding.groupCallList");
                recyclerView2.setAdapter(m34291pa());
                Intent intent = getIntent();
                if (intent != null) {
                    voipCallHistory = (VoipCallHistory) intent.getParcelableExtra("callHistoryID");
                }
                this.f16455d = voipCallHistory;
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        VoipGroupCallDetailsActivity.super.onDestroy();
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n != null) {
            ((AbstractC20574a) abstractC11356n).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "menuItem");
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return VoipGroupCallDetailsActivity.super.onOptionsItemSelected(menuItem);
    }

    public void onPause() {
        VoipGroupCallDetailsActivity.super.onPause();
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n != null) {
            ((C11354m) abstractC11356n).f33387h.mo24093y(false);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        VoipGroupCallDetailsActivity.super.onResume();
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n == null) {
            l.l("presenter");
            throw null;
        }
        VoipCallHistory voipCallHistory = this.f16455d;
        C11354m c11354m = (C11354m) abstractC11356n;
        c11354m.f33387h.mo24093y(true);
        if (voipCallHistory == null) {
            return;
        }
        p1 p1Var = c11354m.f33383d;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        c11354m.f33383d = d.w2(c11354m, (f) null, (j0) null, new C11351l(c11354m, voipCallHistory, null), 3, (Object) null);
    }

    /* renamed from: pa */
    public final C11341e m34291pa() {
        return (C11341e) this.f16458g.getValue();
    }

    @Override // p193e.p194a.p619d.p628c.p636z.AbstractC11340d
    /* renamed from: u9 */
    public void mo24793u9(AbstractC11162b.C11164b c11164b, VoipHistoryDetailsMVP$CallingAction voipHistoryDetailsMVP$CallingAction) {
        l.e(c11164b, "searchedPeer");
        l.e(voipHistoryDetailsMVP$CallingAction, "callingAction");
        AbstractC11356n abstractC11356n = this.f16456e;
        if (abstractC11356n == null) {
            l.l("presenter");
            throw null;
        }
        C11354m c11354m = (C11354m) abstractC11356n;
        Objects.requireNonNull(c11354m);
        l.e(c11164b, "searchedPeer");
        l.e(voipHistoryDetailsMVP$CallingAction, "callingAction");
        int ordinal = voipHistoryDetailsMVP$CallingAction.ordinal();
        if (ordinal == 0) {
            l.e(c11164b, "searchedPeer");
            c11354m.f33387h.mo24125D(c11164b.f33007c, c11164b.f33008d);
        } else if (ordinal != 1) {
        } else {
            c11354m.m24784Jj(c11164b);
        }
    }
}
