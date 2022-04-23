package p459j.p460a.p533l.p534n;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
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
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.p534n.C12967f;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13912b0;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� .2\u00020\u00012\u00020\u0002:\u0001.B\u0005¢\u0006\u0002\u0010\u0003J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0006\u0010\f\u001a\u00020\rJ\"\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0017J\"\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010'\u001a\u00020\rH\u0016J\b\u0010(\u001a\u00020\rH\u0016J\u0018\u0010)\u001a\u00020\r2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+H\u0016J\b\u0010-\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/BlockLogFragment;", "Landroidx/fragment/app/Fragment;", "Lgogolook/callgogolook2/block/blocklog/BlockLogContract$View;", "()V", "blockLogPresenter", "Lgogolook/callgogolook2/block/blocklog/BlockLogPresenter;", "blockLogsPageRecyclerViewAdapter", "Lgogolook/callgogolook2/block/blocklog/BlockLogsPageRecyclerViewAdapter;", "subscription", "Lrx/Subscription;", "getViewContext", "Landroid/content/Context;", "initView", "", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "Landroid/view/View;", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onOptionsItemSelected", "onStart", "onStop", "setBlockLogData", "result", "", "Lgogolook/callgogolook2/realm/obj/block/BlockLogRealmObject;", "showContextMenu", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.c */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/c.class */
public final class C12952c extends Fragment implements AbstractC12951b {

    /* renamed from: e */
    public static final C12953a f29305e = new C12953a(null);

    /* renamed from: a */
    public C12956d f29306a = new C12956d(this);

    /* renamed from: b */
    public C12967f f29307b;

    /* renamed from: c */
    public Subscription f29308c;

    /* renamed from: d */
    public HashMap f29309d;

    /* renamed from: j.a.l.n.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/c$a.class */
    public static final class C12953a {
        public C12953a() {
        }

        public /* synthetic */ C12953a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C12952c m4932a() {
            return new C12952c();
        }
    }

    /* renamed from: j.a.l.n.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/c$b.class */
    public static final class C12954b implements C12967f.AbstractC12969b {
        public C12954b() {
        }

        @Override // p459j.p460a.p533l.p534n.C12967f.AbstractC12969b
        /* renamed from: a */
        public void mo4896a(BlockLogRealmObject blockLogRealmObject) {
            Context context;
            if (blockLogRealmObject != null && (context = C12952c.this.getContext()) != null) {
                if (TextUtils.isEmpty(blockLogRealmObject.get_number())) {
                    C14687h.m861a(context, C14206w4.m2225a((int) R$string.no_identify_privatenumber), 1).m858c();
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("show_sn_warning", true);
                NumberDetailActivity.C4873a aVar = NumberDetailActivity.f12014n;
                C15149k.m383a((Object) context, "this");
                context.startActivity(aVar.m26841a(context, blockLogRealmObject.get_number(), blockLogRealmObject.get_e164(), bundle, "FROM_BLOCK_HISTORY"));
            }
        }

        @Override // p459j.p460a.p533l.p534n.C12967f.AbstractC12969b
        /* renamed from: b */
        public void mo4895b(BlockLogRealmObject blockLogRealmObject) {
            if (blockLogRealmObject != null) {
                C12952c.this.f29306a.m4930a(blockLogRealmObject);
            }
        }
    }

    /* renamed from: j.a.l.n.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/c$c.class */
    public static final class C12955c<T> implements Action1<Object> {
        public C12955c() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C13875a0) {
                C12952c.this.f29306a.m4920j();
            }
        }
    }

    /* renamed from: J */
    public void m4939J() {
        HashMap hashMap = this.f29309d;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final void m4938K() {
        if (this.f29307b == null) {
            this.f29307b = new C12967f(null);
        }
        C12967f fVar = this.f29307b;
        if (fVar != null) {
            fVar.m4904a(new C12954b());
        }
        RecyclerView recyclerView = (RecyclerView) m4934b(R$id.rvBlockLogList);
        C15149k.m383a((Object) recyclerView, "rvBlockLogList");
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView2 = (RecyclerView) m4934b(R$id.rvBlockLogList);
        C15149k.m383a((Object) recyclerView2, "rvBlockLogList");
        recyclerView2.setAdapter(this.f29307b);
        mo4933f(null);
        registerForContextMenu((RecyclerView) m4934b(R$id.rvBlockLogList));
        C13915b3.m3048d("block_history_count", 0);
        C13915b3.m3061a("block_history_newest_time");
        C14092n3.m2583b("block_history_newest_name", "");
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12951b
    /* renamed from: a */
    public Context mo4937a() {
        return getContext();
    }

    /* renamed from: b */
    public View m4934b(int i) {
        if (this.f29309d == null) {
            this.f29309d = new HashMap();
        }
        View view = (View) this.f29309d.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f29309d.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12951b
    /* renamed from: b */
    public void mo4935b() {
        ((RecyclerView) m4934b(R$id.rvBlockLogList)).showContextMenu();
    }

    @Override // p459j.p460a.p533l.p534n.AbstractC12951b
    /* renamed from: f */
    public void mo4933f(List<? extends BlockLogRealmObject> list) {
        boolean z = true;
        if (list == null || !(!list.isEmpty())) {
            z = false;
        }
        RecyclerView recyclerView = (RecyclerView) m4934b(R$id.rvBlockLogList);
        C15149k.m383a((Object) recyclerView, "rvBlockLogList");
        int i = 8;
        recyclerView.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = (LinearLayout) m4934b(R$id.block_history_empty);
        C15149k.m383a((Object) linearLayout, "block_history_empty");
        if (!z) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        C12967f fVar = this.f29307b;
        if (fVar != null) {
            fVar.m4901a(list);
        }
        C14037j3.m2731a().mo2704a(new C13912b0(0, z));
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200 && i2 == -1 && !TextUtils.isEmpty(this.f29306a.m4926d())) {
            C14356f.m1480b(this.f29306a.m4926d());
        }
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(19)
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        C12967f fVar = this.f29307b;
        if (fVar == null) {
            return false;
        }
        if (fVar != null && fVar.getItemCount() == 0) {
            return false;
        }
        switch (menuItem.getItemId()) {
            case R$id.menu_block /* 2131362820 */:
                this.f29306a.m4925e();
                return true;
            case R$id.menu_call /* 2131362830 */:
                this.f29306a.m4924f();
                return true;
            case R$id.menu_delete /* 2131362843 */:
                this.f29306a.m4923g();
                return true;
            case R$id.menu_message /* 2131362858 */:
                this.f29306a.m4922h();
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
        if (this.f29306a.m4928b() != null) {
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
            boolean z = true;
            boolean z2 = this.f29306a.m4921i() && C12942i.m4967a(getContext(), this.f29306a.m4927c()) == 2131886328;
            if (!this.f29306a.m4921i() || z2) {
                z = false;
            }
            findItem.setVisible(z);
            if (C14217x3.m2160b(this.f29306a.m4926d()) || TextUtils.equals(C14206w4.m2225a((int) R$string.unknown_number), this.f29306a.m4926d())) {
                MenuItem findItem5 = contextMenu.findItem(R$id.menu_call);
                C15149k.m383a((Object) findItem5, "menu.findItem(R.id.menu_call)");
                findItem5.setVisible(false);
                MenuItem findItem6 = contextMenu.findItem(R$id.menu_message);
                C15149k.m383a((Object) findItem6, "menu.findItem(R.id.menu_message)");
                findItem6.setVisible(false);
            } else if (!C14108o4.m2477i(this.f29306a.m4926d())) {
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
        return layoutInflater.inflate(R$layout.blocklog_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m4939J();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        if (2131362845 != menuItem.getItemId()) {
            return false;
        }
        this.f29306a.m4931a();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m4938K();
        this.f29306a.m4920j();
        this.f29308c = C14037j3.m2731a().mo2703a((Action1) new C12955c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Subscription subscription = this.f29308c;
        if (subscription != null) {
            subscription.unsubscribe();
        }
    }
}
