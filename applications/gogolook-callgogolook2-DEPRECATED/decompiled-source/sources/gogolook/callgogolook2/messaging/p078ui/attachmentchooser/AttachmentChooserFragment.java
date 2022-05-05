package gogolook.callgogolook2.messaging.p078ui.attachmentchooser;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.app.ActionBar;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridView;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
/* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentChooserFragment */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentChooserFragment.class */
public class AttachmentChooserFragment extends Fragment implements C11617j.AbstractC11622e, AttachmentGridView.AbstractC4716b {

    /* renamed from: a */
    public AttachmentGridView f11566a;

    /* renamed from: b */
    public C4709b f11567b;

    /* renamed from: c */
    public AbstractC4708a f11568c;

    /* renamed from: d */
    public C11589c<C11617j> f11569d = AbstractC11590d.m9040a(this);

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentChooserFragment$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentChooserFragment$a.class */
    public interface AbstractC4708a {
        /* renamed from: q */
        void mo27291q();
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentChooserFragment$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentChooserFragment$b.class */
    public class C4709b extends ArrayAdapter<MessagePartData> {
        public C4709b(Context context) {
            super(context, (int) R$layout.attachment_grid_item_view, new ArrayList());
        }

        /* renamed from: a */
        public void m27290a(List<MessagePartData> list) {
            clear();
            addAll(list);
            notifyDataSetChanged();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            MessagePartData item = getItem(i);
            AttachmentGridItemView attachmentGridItemView = (view == null || !(view instanceof AttachmentGridItemView)) ? (AttachmentGridItemView) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R$layout.attachment_grid_item_view, viewGroup, false) : (AttachmentGridItemView) view;
            attachmentGridItemView.m27288a(item, AttachmentChooserFragment.this.f11566a);
            return attachmentGridItemView;
        }
    }

    /* renamed from: a */
    public void m27295a() {
        if (this.f11569d.mo9031c()) {
            this.f11569d.mo9033b().m8820a(this.f11566a.m27284a());
            this.f11569d.mo9033b().m8813b(this.f11569d);
            this.f11568c.mo27291q();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridView.AbstractC4716b
    /* renamed from: a */
    public void mo27277a(int i) {
        ActionBar supportActionBar;
        if ((getActivity() instanceof BugleActionBarActivity) && (supportActionBar = ((BugleActionBarActivity) getActivity()).getSupportActionBar()) != null) {
            supportActionBar.setTitle(getResources().getString(R$string.attachment_chooser_selection, Integer.valueOf(i)));
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridView.AbstractC4716b
    /* renamed from: a */
    public void mo27276a(Rect rect, Uri uri) {
        AbstractC12126w.m7095a().mo7093a(getActivity(), uri, rect, MessagingContentProvider.m27770d(this.f11569d.mo9033b().m8798m()), true);
    }

    /* renamed from: a */
    public void m27294a(AbstractC4708a aVar) {
        this.f11568c = aVar;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7860a(C11617j jVar) {
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7859a(C11617j jVar, int i) {
        this.f11569d.mo9034a((C11589c<C11617j>) jVar);
        int i2 = C11617j.f26070s;
        if ((i & i2) == i2) {
            this.f11567b.m27290a(jVar.m8792s());
        }
    }

    /* renamed from: a */
    public void m27292a(String str) {
        this.f11569d.mo9038b((C11589c<C11617j>) AbstractC11528g.m9259k().mo9249a(str));
        this.f11569d.mo9033b().m8826a(this);
        this.f11569d.mo9033b().m8827a(this.f11569d, null, false);
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R$menu.attachment_chooser_menu, menu);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R$layout.attachment_chooser_fragment, viewGroup, false);
        this.f11566a = (AttachmentGridView) inflate.findViewById(R$id.grid);
        this.f11567b = new C4709b(getActivity());
        this.f11566a.setAdapter((ListAdapter) this.f11567b);
        this.f11566a.m27281a(this);
        setHasOptionsMenu(true);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f11569d.m9042e();
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131361848) {
            return super.onOptionsItemSelected(menuItem);
        }
        m27295a();
        return true;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: q */
    public void mo7796q() {
    }
}
