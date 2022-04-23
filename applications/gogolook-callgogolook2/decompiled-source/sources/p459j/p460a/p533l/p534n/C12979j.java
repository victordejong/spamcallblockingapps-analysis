package p459j.p460a.p533l.p534n;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.p534n.C12990l;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13912b0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14096o0;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� /2\u00020\u00012\u00020\u0002:\u0001/B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\"\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J&\u0010 \u001a\u0004\u0018\u00010\u001d2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010(\u001a\u00020\u0014H\u0016J\b\u0010)\u001a\u00020\u0014H\u0016J\u001a\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u001d2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0018\u0010,\u001a\u00020\u00142\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016J\b\u0010.\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/SmsBlockLogFragment;", "Landroidx/fragment/app/Fragment;", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$View;", "()V", "smsBlockLogPresenter", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogPresenter;", "smsBlockLogsRecyclerViewAdapter", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter;", "getSmsBlockLogsRecyclerViewAdapter", "()Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter;", "smsBlockLogsRecyclerViewAdapter$delegate", "Lkotlin/Lazy;", "subscription", "Lrx/Subscription;", "getSmsBlockLogData", "", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$SmsBlockLog;", "getViewContext", "Landroid/content/Context;", "init", "", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "Landroid/view/View;", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onOptionsItemSelected", "onStart", "onStop", "onViewCreated", "view", "setSmsBlockLogData", "result", "showContextMenu", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.j */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/j.class */
public final class C12979j extends Fragment implements AbstractC12978i {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f29358e;

    /* renamed from: f */
    public static final C12980a f29359f = new C12980a(null);

    /* renamed from: a */
    public C12984k f29360a = new C12984k(this);

    /* renamed from: b */
    public final AbstractC14974f f29361b = C14975g.m662a(C12983d.f29366a);

    /* renamed from: c */
    public Subscription f29362c;

    /* renamed from: d */
    public HashMap f29363d;

    /* renamed from: j.a.l.n.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/j$a.class */
    public static final class C12980a {
        public C12980a() {
        }

        public /* synthetic */ C12980a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C12979j m4878a() {
            return new C12979j();
        }
    }

    /* renamed from: j.a.l.n.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/j$b.class */
    public static final class C12981b implements C12990l.AbstractC12992b {
        public C12981b() {
        }

        @Override // p459j.p460a.p533l.p534n.C12990l.AbstractC12992b
        /* renamed from: a */
        public void mo4855a(C12977h hVar) {
            Context context;
            if (hVar != null && (context = C12979j.this.getContext()) != null) {
                if (TextUtils.isEmpty(hVar.m4893b())) {
                    C14687h.m861a(context, C14206w4.m2225a((int) R$string.no_identify_privatenumber), 1).m858c();
                    return;
                }
                C15149k.m383a((Object) context, "it");
                String b = hVar.m4893b();
                if (b != null) {
                    C12810o.m5267a(context, 7, b, (String) null, false, -1);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
        }

        @Override // p459j.p460a.p533l.p534n.C12990l.AbstractC12992b
        /* renamed from: b */
        public void mo4854b(C12977h hVar) {
            if (hVar != null) {
                C12979j.this.f29360a.m4876a(hVar);
            }
        }
    }

    /* renamed from: j.a.l.n.j$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/j$c.class */
    public static final class C12982c<T> implements Action1<Object> {
        public C12982c() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if ((obj instanceof C13875a0) || (obj instanceof C14096o0)) {
                C12979j.this.f29360a.m4869g();
            }
        }
    }

    /* renamed from: j.a.l.n.j$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/j$d.class */
    public static final class C12983d extends AbstractC15150l implements AbstractC15107a<C12990l> {

        /* renamed from: a */
        public static final C12983d f29366a = new C12983d();

        public C12983d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12990l invoke() {
            return new C12990l(null);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12979j.class), "smsBlockLogsRecyclerViewAdapter", "getSmsBlockLogsRecyclerViewAdapter()Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter;");
        C15131a0.m412a(sVar);
        f29358e = new AbstractC14906i[]{sVar};
    }

    /* renamed from: J */
    public void m4887J() {
        HashMap hashMap = this.f29363d;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final C12990l m4886K() {
        AbstractC14974f fVar = this.f29361b;
        AbstractC14906i iVar = f29358e[0];
        return (C12990l) fVar.getValue();
    }

    /* renamed from: L */
    public final void m4885L() {
        m4886K().m4862a(new C12981b());
        RecyclerView recyclerView = (RecyclerView) m4881b(R$id.rvSmsBlockLogList);
        C15149k.m383a((Object) recyclerView, "rvSmsBlockLogList");
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView2 = (RecyclerView) m4881b(R$id.rvSmsBlockLogList);
        C15149k.m383a((Object) recyclerView2, "rvSmsBlockLogList");
        recyclerView2.setAdapter(m4886K());
        registerForContextMenu((RecyclerView) m4881b(R$id.rvSmsBlockLogList));
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12978i
    /* renamed from: a */
    public Context mo4884a() {
        return getContext();
    }

    /* renamed from: b */
    public View m4881b(int i) {
        if (this.f29363d == null) {
            this.f29363d = new HashMap();
        }
        View view = (View) this.f29363d.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f29363d.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12978i
    /* renamed from: b */
    public void mo4882b() {
        ((RecyclerView) m4881b(R$id.rvSmsBlockLogList)).showContextMenu();
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12978i
    /* renamed from: e */
    public void mo4880e(List<C12977h> list) {
        int i = 0;
        boolean z = list != null && (list.isEmpty() ^ true);
        RecyclerView recyclerView = (RecyclerView) m4881b(R$id.rvSmsBlockLogList);
        C15149k.m383a((Object) recyclerView, "rvSmsBlockLogList");
        recyclerView.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = (LinearLayout) m4881b(R$id.sms_block_history_empty);
        C15149k.m383a((Object) linearLayout, "sms_block_history_empty");
        if (z) {
            i = 8;
        }
        linearLayout.setVisibility(i);
        m4886K().m4860a(list);
        C14037j3.m2731a().mo2704a(new C13912b0(1, z));
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(19)
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        if (m4886K().getItemCount() == 0) {
            return false;
        }
        switch (menuItem.getItemId()) {
            case R$id.menu_block /* 2131362820 */:
                this.f29360a.m4873c();
                return true;
            case R$id.menu_call /* 2131362830 */:
                this.f29360a.m4872d();
                return true;
            case R$id.menu_delete /* 2131362843 */:
                this.f29360a.m4871e();
                return true;
            case R$id.menu_message /* 2131362858 */:
                this.f29360a.m4870f();
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        MenuInflater menuInflater;
        C15149k.m377b(contextMenu, SupportMenuInflater.XML_MENU);
        C15149k.m377b(view, "v");
        C12977h b = this.f29360a.m4874b();
        if (b != null) {
            super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            FragmentActivity activity = getActivity();
            if (!(activity == null || (menuInflater = activity.getMenuInflater()) == null)) {
                menuInflater.inflate(R$menu.context_menu, contextMenu);
            }
            MenuItem findItem = contextMenu.findItem(R$id.menu_block);
            MenuItem findItem2 = contextMenu.findItem(R$id.menu_save);
            MenuItem findItem3 = contextMenu.findItem(R$id.menu_tele_report);
            MenuItem findItem4 = contextMenu.findItem(R$id.menu_add_to_wish);
            C15149k.m383a((Object) findItem, "blockItem");
            findItem.setTitle(C14206w4.m2225a((int) R$string.title_unblock));
            if (C14217x3.m2160b(b.m4893b()) || TextUtils.equals(C14206w4.m2225a((int) R$string.unknown_number), b.m4893b())) {
                MenuItem findItem5 = contextMenu.findItem(R$id.menu_call);
                C15149k.m383a((Object) findItem5, "menu.findItem(R.id.menu_call)");
                findItem5.setVisible(false);
                MenuItem findItem6 = contextMenu.findItem(R$id.menu_message);
                C15149k.m383a((Object) findItem6, "menu.findItem(R.id.menu_message)");
                findItem6.setVisible(false);
            } else if (!C14108o4.m2477i(b.m4893b())) {
                MenuItem findItem7 = contextMenu.findItem(R$id.menu_message);
                C15149k.m383a((Object) findItem7, "menu.findItem(R.id.menu_message)");
                findItem7.setVisible(false);
            }
            C15149k.m383a((Object) findItem2, "saveItem");
            findItem2.setVisible(false);
            C15149k.m383a((Object) findItem3, "itemReportTele");
            findItem3.setVisible(false);
            C15149k.m383a((Object) findItem4, "itemAddWish");
            findItem4.setVisible(false);
            new DialogC14669c.C14674d(getActivity(), contextMenu).m891a();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        return layoutInflater.inflate(R$layout.sms_blocklog_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m4887J();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        if (2131362846 != menuItem.getItemId()) {
            return false;
        }
        this.f29360a.m4877a();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f29360a.m4869g();
        this.f29362c = C14037j3.m2731a().mo2703a((Action1) new C12982c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Subscription subscription = this.f29362c;
        if (subscription != null) {
            subscription.unsubscribe();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        m4885L();
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12978i
    /* renamed from: w */
    public List<C12977h> mo4879w() {
        C12990l K = m4886K();
        return K != null ? K.m4856e() : null;
    }
}
