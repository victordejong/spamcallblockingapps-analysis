package com.truecaller.bizmon.newBusiness.profile.p150ui.tag;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p295a.p296a.p297a.p299c.C7495a;
import p193e.p194a.p294b.p295a.p296a.p297a.p299c.C7505c;
import p193e.p194a.p294b.p355m.C8053c;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u001d\u0010\u000eJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0012\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;", "Ln3/b/a/h;", "Le/a/b/a/a/a/c/c$e;", "Le/a/b/a/a/a/c/a$f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/b0/p/c;", "availableTag", "U", "(Le/a/b0/p/c;)V", "W3", "()V", "", "", "selectedTags", "P", "(Ljava/util/List;)V", "", "onSupportNavigateUp", "()Z", "Le/a/b/m/c;", "a", "Ls1/g;", "pa", "()Le/a/b/m/c;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.profile.ui.tag.TagPickActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity.class */
public final class TagPickActivity extends h implements C7505c.AbstractC7510e, C7495a.AbstractC7501f {

    /* renamed from: a */
    public final g f10348a = C25225a.m3982O1(s1.h.c, new C3510a(this));

    /* renamed from: com.truecaller.bizmon.newBusiness.profile.ui.tag.TagPickActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity$a.class */
    public static final class C3510a extends m implements a<C8053c> {

        /* renamed from: b */
        public final /* synthetic */ h f10349b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3510a(h hVar) {
            super(0);
            this.f10349b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f10349b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3478R.layout.activity_biz_tag_picker, (ViewGroup) null, false);
            int i = C3478R.C3480id.contentLayout;
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
            if (frameLayout != null) {
                i = C3478R.C3480id.tagToolbar;
                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                if (toolbar != null) {
                    return new C8053c((ConstraintLayout) inflate, frameLayout, toolbar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p296a.p297a.p299c.AbstractC7518h
    /* renamed from: P */
    public void mo29540P(List<Long> list) {
        l.e(list, "selectedTags");
        Intent intent = new Intent();
        intent.putExtra("tagSelectionResultKey", i.U0(list));
        setResult(-1, intent);
        finish();
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.p299c.C7505c.AbstractC7510e
    /* renamed from: U */
    public void mo29544U(C8551c c8551c) {
        l.e(c8551c, "availableTag");
        long j = c8551c.f26350a;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C26907a c26907a = new C26907a(supportFragmentManager);
        l.d(c26907a, "beginTransaction()");
        int i = C3478R.C3480id.contentLayout;
        Objects.requireNonNull(C7495a.f23775i);
        C7495a c7495a = new C7495a();
        Bundle bundle = new Bundle();
        bundle.putLong("keyParentId", j);
        c7495a.setArguments(bundle);
        c7495a.f23781f = this;
        c26907a.m1120m(i, c7495a, null);
        c26907a.m1128e(null);
        c26907a.mo1127f();
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.p299c.C7495a.AbstractC7501f
    /* renamed from: W3 */
    public void mo29548W3() {
        getSupportFragmentManager().m42921c0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        TagPickActivity.super.onCreate(bundle);
        C18334g0.m15200u0(this);
        C8053c m35852pa = m35852pa();
        l.d(m35852pa, "binding");
        setContentView(m35852pa.f24823a);
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.d(supportFragmentManager, "supportFragmentManager");
            C26907a c26907a = new C26907a(supportFragmentManager);
            l.d(c26907a, "beginTransaction()");
            int i = C3478R.C3480id.contentLayout;
            Objects.requireNonNull(C7505c.f23793j);
            C7505c c7505c = new C7505c();
            c7505c.f23799f = this;
            c7505c.f23800g = this;
            c26907a.m1131b(i, c7505c);
            c26907a.mo1127f();
        }
        Toolbar toolbar = m35852pa().f24825c;
        l.d(toolbar, "tagToolbar");
        toolbar.setTitle("");
        setSupportActionBar(m35852pa().f24825c);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3548s(C3478R.C3479drawable.biz_toolbar_close);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onSupportNavigateUp() {
        finish();
        return false;
    }

    /* renamed from: pa */
    public final C8053c m35852pa() {
        return (C8053c) this.f10348a.getValue();
    }
}
