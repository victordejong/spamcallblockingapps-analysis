package com.truecaller.videocallerid.p187ui.manageincomingvideo;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.manageincomingvideo.managepreferences.ManagePreferencesView;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p948a.p954e.AbstractC15659c;
import p193e.p194a.p947k.p948a.p954e.AbstractC15660d;
import p193e.p194a.p947k.p948a.p954e.AbstractC15661e;
import p193e.p194a.p947k.p948a.p954e.C15657a;
import p193e.p194a.p947k.p948a.p954e.C15662f;
import p193e.p194a.p947k.p948a.p954e.C15664g;
import p193e.p194a.p947k.p948a.p954e.C15665h;
import p193e.p194a.p947k.p948a.p954e.C15666i;
import p193e.p194a.p947k.p948a.p954e.p956l.C15678a;
import p193e.p194a.p947k.p948a.p954e.p956l.C15682b;
import p193e.p194a.p947k.p972m.C16127a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b/\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\nR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity;", "Ln3/b/a/h;", "Le/a/k/a/e/e;", "Le/a/k/a/e/l/a$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "Landroid/view/MenuItem;", "menuItem", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "", "Le/a/k/a/e/a;", "hiddenContactItems", "j", "(Ljava/util/List;)V", "hiddenContactItem", "N7", "(Le/a/k/a/e/a;)V", "p9", "visible", "n4", "(Z)V", "onDestroy", "Le/a/k/a/e/d;", "d", "Le/a/k/a/e/d;", "getPresenter", "()Le/a/k/a/e/d;", "setPresenter", "(Le/a/k/a/e/d;)V", "presenter", "Le/a/k/a/e/l/b;", "f", "Ls1/g;", "pa", "()Le/a/k/a/e/l/b;", "adapter", "Le/a/k/m/a;", "e", "Le/a/k/m/a;", "binding", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity.class */
public final class ManageIncomingVideoSettingsActivity extends AbstractC15659c implements AbstractC15661e, C15678a.AbstractC15679a {
    @Inject

    /* renamed from: d */
    public AbstractC15660d f16017d;

    /* renamed from: e */
    public C16127a f16018e;

    /* renamed from: f */
    public final g f16019f = C25225a.m3978P1(C4731a.f16020b);

    /* renamed from: com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingsActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/manageincomingvideo/ManageIncomingVideoSettingsActivity$a.class */
    public static final class C4731a extends m implements a<C15682b> {

        /* renamed from: b */
        public static final C4731a f16020b = new C4731a();

        public C4731a() {
            super(0);
        }

        public Object invoke() {
            return new C15682b();
        }
    }

    @Override // p193e.p194a.p947k.p948a.p954e.p956l.C15678a.AbstractC15679a
    /* renamed from: N7 */
    public void mo18523N7(C15657a c15657a) {
        l.e(c15657a, "hiddenContactItem");
        AbstractC15660d abstractC15660d = this.f16017d;
        if (abstractC15660d == null) {
            l.l("presenter");
            throw null;
        }
        C15666i c15666i = (C15666i) abstractC15660d;
        Objects.requireNonNull(c15666i);
        l.e(c15657a, "hiddenContactItem");
        d.w2(c15666i, (f) null, (j0) null, new C15665h(c15666i, c15657a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p948a.p954e.AbstractC15661e
    /* renamed from: j */
    public void mo18542j(List<C15657a> list) {
        l.e(list, "hiddenContactItems");
        C15682b m34460pa = m34460pa();
        Objects.requireNonNull(m34460pa);
        l.e(list, "hiddenContactItems");
        m34460pa.f44252a = list;
        m34460pa.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p947k.p948a.p954e.AbstractC15661e
    /* renamed from: n4 */
    public void mo18541n4(boolean z) {
        C16127a c16127a = this.f16018e;
        if (c16127a == null) {
            l.l("binding");
            throw null;
        }
        Group group = c16127a.f45444d;
        l.d(group, "binding.hiddenGroup");
        C19286f.m13683U(group, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        ManageIncomingVideoSettingsActivity.super.onCreate(bundle);
        NestedScrollView inflate = getLayoutInflater().inflate(C4718R.layout.activity_manage_incoming_video_settings, (ViewGroup) null, false);
        int i = C4718R.C4720id.hiddenContactList;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
        if (recyclerView != null) {
            i = C4718R.C4720id.hiddenContactListCaption;
            TextView textView = (TextView) inflate.findViewById(i);
            if (textView != null) {
                i = C4718R.C4720id.hiddenGroup;
                Group group = (Group) inflate.findViewById(i);
                if (group != null) {
                    i = C4718R.C4720id.manageReceiveSetting;
                    ManagePreferencesView managePreferencesView = (ManagePreferencesView) inflate.findViewById(i);
                    if (managePreferencesView != null) {
                        i = C4718R.C4720id.toolbar;
                        Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                        if (toolbar != null) {
                            C16127a c16127a = new C16127a(inflate, recyclerView, textView, group, managePreferencesView, toolbar);
                            l.d(c16127a, "ActivityManageIncomingVi…g.inflate(layoutInflater)");
                            this.f16018e = c16127a;
                            if (c16127a == null) {
                                l.l("binding");
                                throw null;
                            }
                            setContentView(c16127a.f45441a);
                            C16127a c16127a2 = this.f16018e;
                            if (c16127a2 == null) {
                                l.l("binding");
                                throw null;
                            }
                            setSupportActionBar(c16127a2.f45445e);
                            AbstractC25393a supportActionBar = getSupportActionBar();
                            if (supportActionBar != null) {
                                supportActionBar.mo3553n(true);
                            }
                            AbstractC15660d abstractC15660d = this.f16017d;
                            if (abstractC15660d == null) {
                                l.l("presenter");
                                throw null;
                            }
                            ((C15666i) abstractC15660d).mo9029Y0(this);
                            C16127a c16127a3 = this.f16018e;
                            if (c16127a3 == null) {
                                l.l("binding");
                                throw null;
                            }
                            RecyclerView recyclerView2 = c16127a3.f45442b;
                            l.d(recyclerView2, "binding.hiddenContactList");
                            recyclerView2.setAdapter(m34460pa());
                            C16127a c16127a4 = this.f16018e;
                            if (c16127a4 == null) {
                                l.l("binding");
                                throw null;
                            }
                            TextView textView2 = c16127a4.f45443c;
                            l.d(textView2, "binding.hiddenContactListCaption");
                            int i2 = C4718R.string.vid_hidden_contact_list_caption;
                            int i3 = C4718R.string.video_caller_id;
                            textView2.setText(getString(i2, new Object[]{getString(i3), getString(i3)}));
                            m34460pa().f44253b = this;
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        AbstractC15660d abstractC15660d = this.f16017d;
        if (abstractC15660d == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC15660d).mo9806c();
        ManageIncomingVideoSettingsActivity.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "menuItem");
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return ManageIncomingVideoSettingsActivity.super.onOptionsItemSelected(menuItem);
    }

    public void onResume() {
        ManageIncomingVideoSettingsActivity.super.onResume();
        AbstractC15660d abstractC15660d = this.f16017d;
        if (abstractC15660d == null) {
            l.l("presenter");
            throw null;
        }
        C15666i c15666i = (C15666i) abstractC15660d;
        if (!c15666i.f44227e.mo17924b()) {
            return;
        }
        d.w2(c15666i, (f) null, (j0) null, new C15662f(c15666i, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p948a.p954e.p956l.C15678a.AbstractC15679a
    /* renamed from: p9 */
    public void mo18522p9(C15657a c15657a) {
        l.e(c15657a, "hiddenContactItem");
        AbstractC15660d abstractC15660d = this.f16017d;
        if (abstractC15660d == null) {
            l.l("presenter");
            throw null;
        }
        C15666i c15666i = (C15666i) abstractC15660d;
        Objects.requireNonNull(c15666i);
        l.e(c15657a, "hiddenContactItem");
        d.w2(c15666i, (f) null, (j0) null, new C15664g(c15666i, c15657a, null), 3, (Object) null);
    }

    /* renamed from: pa */
    public final C15682b m34460pa() {
        return (C15682b) this.f16019f.getValue();
    }
}
