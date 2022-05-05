package gogolook.callgogolook2.messaging.p078ui;

import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.AbstractC11631n;
import p459j.p460a.p474c0.p475c.p478y.C11637r;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.C12128y;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12216t0;
/* renamed from: gogolook.callgogolook2.messaging.ui.VCardDetailFragment */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VCardDetailFragment.class */
public class VCardDetailFragment extends Fragment implements AbstractC11631n.AbstractC11632a {

    /* renamed from: a */
    public final C11589c<C11637r> f11523a = AbstractC11590d.m9040a(this);

    /* renamed from: b */
    public ExpandableListView f11524b;

    /* renamed from: c */
    public C12128y f11525c;

    /* renamed from: d */
    public Uri f11526d;

    /* renamed from: e */
    public Uri f11527e;

    /* renamed from: gogolook.callgogolook2.messaging.ui.VCardDetailFragment$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VCardDetailFragment$a.class */
    public class View$OnLayoutChangeListenerC4698a implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC4698a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            VCardDetailFragment.this.f11524b.setIndicatorBounds(VCardDetailFragment.this.f11524b.getWidth() - VCardDetailFragment.this.getResources().getDimensionPixelSize(R$dimen.vcard_detail_group_indicator_width), VCardDetailFragment.this.f11524b.getWidth());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VCardDetailFragment$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VCardDetailFragment$b.class */
    public class C4699b implements ExpandableListView.OnChildClickListener {
        public C4699b() {
        }

        @Override // android.widget.ExpandableListView.OnChildClickListener
        public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
            Intent a;
            if (!(view instanceof PersonItemView) || (a = ((PersonItemView) view).m27339a()) == null) {
                return false;
            }
            try {
                VCardDetailFragment.this.startActivity(a);
                return true;
            } catch (ActivityNotFoundException e) {
                return false;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VCardDetailFragment$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VCardDetailFragment$c.class */
    public class AsyncTaskC4700c extends AbstractAsyncTaskC12189n0<Void, Void, Uri> {

        /* renamed from: e */
        public final /* synthetic */ Uri f11530e;

        public AsyncTaskC4700c(Uri uri) {
            this.f11530e = uri;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Uri mo6854a(Void... voidArr) {
            return VCardDetailFragment.this.f11527e != null ? VCardDetailFragment.this.f11527e : C12216t0.m6751l(this.f11530e);
        }

        /* renamed from: a */
        public void onPostExecute(Uri uri) {
            if (uri != null) {
                VCardDetailFragment.this.f11527e = uri;
                if (VCardDetailFragment.this.getActivity() != null) {
                    MediaScratchFileProvider.m27785a(uri, ((C11637r) VCardDetailFragment.this.f11523a.mo9033b()).mo7639j());
                    AbstractC12126w.m7095a().mo7066b(VCardDetailFragment.this.getActivity(), uri);
                }
            }
        }
    }

    /* renamed from: a */
    public void m27324a(Uri uri) {
        C12151d.m6999b(!this.f11523a.mo9031c());
        this.f11526d = uri;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n.AbstractC11632a
    /* renamed from: a */
    public void mo8757a(AbstractC11631n nVar) {
        C12151d.m6999b(nVar instanceof C11637r);
        this.f11523a.m9043d();
        C11637r rVar = (C11637r) nVar;
        C12151d.m6999b(rVar.m8732p());
        this.f11525c = new C12128y(getActivity(), rVar.m8734n().m8717n());
        this.f11524b.setAdapter(this.f11525c);
        if (this.f11525c.getGroupCount() == 1) {
            this.f11524b.expandGroup(0);
        }
        getActivity().invalidateOptionsMenu();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n.AbstractC11632a
    /* renamed from: a */
    public void mo8756a(AbstractC11631n nVar, Exception exc) {
        this.f11523a.m9043d();
        C12212s0.m6796a((int) R$string.failed_loading_vcard);
        getActivity().finish();
    }

    /* renamed from: a */
    public final boolean m27325a() {
        return false;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R$menu.vcard_detail_fragment_menu, menu);
        menu.findItem(R$id.action_add_contact).setVisible(m27325a());
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C12151d.m7000b(this.f11526d);
        View inflate = layoutInflater.inflate(R$layout.vcard_detail_fragment, viewGroup, false);
        this.f11524b = (ExpandableListView) inflate.findViewById(R$id.list);
        this.f11524b.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC4698a());
        this.f11524b.setOnChildClickListener(new C4699b());
        this.f11523a.mo9038b((C11589c<C11637r>) AbstractC11528g.m9259k().mo9256a(getActivity(), this.f11526d));
        this.f11523a.mo9033b().m8760a(this);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.f11523a.mo9031c()) {
            this.f11523a.m9042e();
        }
        this.f11524b.setAdapter((ExpandableListAdapter) null);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131361834) {
            return super.onOptionsItemSelected(menuItem);
        }
        this.f11523a.m9043d();
        new AsyncTaskC4700c(this.f11523a.mo9033b().m8733o()).m6852b(new Void[0]);
        return true;
    }
}
