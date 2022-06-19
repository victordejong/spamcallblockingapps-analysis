package com.truecaller.contextcall.p160ui.hiddencontacts;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.contextcall.C3771R;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1085b.AbstractC18532e;
import p193e.p194a.p1080o.p1081a.p1085b.AbstractC18533f;
import p193e.p194a.p1080o.p1081a.p1085b.AbstractC18538i;
import p193e.p194a.p1080o.p1081a.p1085b.C18528a;
import p193e.p194a.p1080o.p1081a.p1085b.C18529b;
import p193e.p194a.p1080o.p1081a.p1085b.C18539j;
import p193e.p194a.p1080o.p1102o.C18790c;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b'\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001d\u0010&\u001a\u00020!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;", "Ln3/b/a/h;", "Le/a/o/a/b/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "Le/a/o/a/b/j;", "contacts", "g4", "(Ljava/util/List;)V", "Landroid/view/MenuItem;", "menuItem", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "t", "()V", "onDestroy", "Le/a/o/a/b/a;", "f", "Le/a/o/a/b/a;", "contactsAdapter", "Le/a/o/a/b/e;", "d", "Le/a/o/a/b/e;", "getPresenter$context_call_release", "()Le/a/o/a/b/e;", "setPresenter$context_call_release", "(Le/a/o/a/b/e;)V", "presenter", "Le/a/o/o/c;", "e", "Ls1/g;", "pa", "()Le/a/o/o/c;", "binding", "<init>", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contextcall.ui.hiddencontacts.HiddenContactsActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity.class */
public final class HiddenContactsActivity extends AbstractC18538i implements AbstractC18533f {
    @Inject

    /* renamed from: d */
    public AbstractC18532e f11434d;

    /* renamed from: e */
    public final g f11435e = C25225a.m3982O1(h.c, new C3783a(this));

    /* renamed from: f */
    public final C18528a f11436f = new C18528a();

    /* renamed from: com.truecaller.contextcall.ui.hiddencontacts.HiddenContactsActivity$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity$a.class */
    public static final class C3783a extends m implements a<C18790c> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f11437b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3783a(n3.b.a.h hVar) {
            super(0);
            this.f11437b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f11437b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3771R.layout.context_call_activity_hidden_contacts, (ViewGroup) null, false);
            int i = C3771R.C3773id.contactsRecyclerView;
            RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
            if (recyclerView != null) {
                i = C3771R.C3773id.toolbar;
                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                if (toolbar != null) {
                    return new C18790c((LinearLayout) inflate, recyclerView, toolbar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.AbstractC18533f
    /* renamed from: g4 */
    public void mo14808g4(List<C18539j> list) {
        l.e(list, "contacts");
        C18528a c18528a = this.f11436f;
        Objects.requireNonNull(c18528a);
        l.e(list, "contacts");
        C25586h.C25590d m3181a = C25586h.m3181a(new C18529b(c18528a.f52271c, list), true);
        l.d(m3181a, "DiffUtil.calculateDiff(diffCallback)");
        c18528a.f52271c = list;
        m3181a.m3179b(new C25570b(c18528a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        HiddenContactsActivity.super.onCreate(bundle);
        C18790c m35586pa = m35586pa();
        l.d(m35586pa, "binding");
        setContentView(m35586pa.f52786a);
        setSupportActionBar(m35586pa().f52788c);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        RecyclerView recyclerView = m35586pa().f52787b;
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(this.f11436f);
        recyclerView.setItemAnimator(new n3.b0.a.g());
        C18528a c18528a = this.f11436f;
        g2 g2Var = new g2(0, this);
        Objects.requireNonNull(c18528a);
        l.e(g2Var, "<set-?>");
        c18528a.f52269a = g2Var;
        C18528a c18528a2 = this.f11436f;
        g2 g2Var2 = new g2(1, this);
        Objects.requireNonNull(c18528a2);
        l.e(g2Var2, "<set-?>");
        c18528a2.f52270b = g2Var2;
        AbstractC18532e abstractC18532e = this.f11434d;
        if (abstractC18532e != null) {
            abstractC18532e.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onDestroy() {
        AbstractC18532e abstractC18532e = this.f11434d;
        if (abstractC18532e == null) {
            l.l("presenter");
            throw null;
        }
        abstractC18532e.mo9806c();
        HiddenContactsActivity.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "menuItem");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return HiddenContactsActivity.super.onOptionsItemSelected(menuItem);
    }

    /* renamed from: pa */
    public final C18790c m35586pa() {
        return (C18790c) this.f11435e.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1080o.p1081a.p1085b.AbstractC18533f
    /* renamed from: t */
    public void mo14807t() {
        finish();
    }
}
