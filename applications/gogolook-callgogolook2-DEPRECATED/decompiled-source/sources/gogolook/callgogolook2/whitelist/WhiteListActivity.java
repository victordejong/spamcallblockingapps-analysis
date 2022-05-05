package gogolook.callgogolook2.whitelist;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.logselect.LogSelectionActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p462a1.AbstractC11088b;
import p459j.p460a.p462a1.C11091d;
import p459j.p460a.p462a1.C11105e;
import p459j.p460a.p531k0.p532g.DialogC12864a;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p582w0.C13914b2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018�� .2\u00020\u00012\u00020\u0002:\u0001.B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0006\u0010\f\u001a\u00020\rJ\"\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\"\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\rH\u0014J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010$\u001a\u00020\rH\u0014J\u0018\u0010%\u001a\u00020\r2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016J\b\u0010)\u001a\u00020\rH\u0002J\u0010\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020\r2\u0006\u0010+\u001a\u00020,H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/whitelist/WhiteListActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/whitelist/WhiteListContract$View;", "()V", "presenter", "Lgogolook/callgogolook2/whitelist/WhiteListPresenter;", "subscription", "Lrx/Subscription;", "whiteListRecyclerAdapter", "Lgogolook/callgogolook2/whitelist/WhiteListRecyclerAdapter;", "getViewContext", "Landroid/content/Context;", "initView", "", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "Landroid/view/View;", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onDestroy", "onOptionsItemSelected", "onStart", "setWhiteListData", "orderedRealmCollection", "", "Lgogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject;", "showAddDialog", "showCheckSaveToWhiteListDialog", "e164", "", "showDeleteDialog", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity.class */
public final class WhiteListActivity extends AppCompatActivity implements AbstractC11088b {

    /* renamed from: a */
    public C11091d f13301a = new C11091d(this);

    /* renamed from: b */
    public C11105e f13302b;

    /* renamed from: c */
    public Subscription f13303c;

    /* renamed from: d */
    public HashMap f13304d;

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$a.class */
    public static final class C5327a {
        public C5327a() {
        }

        public /* synthetic */ C5327a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$b.class */
    public static final class C5328b implements C11105e.AbstractC11106a {
        public C5328b() {
        }

        @Override // p459j.p460a.p462a1.C11105e.AbstractC11106a
        /* renamed from: a */
        public void mo10259a(WhiteListRealmObject whiteListRealmObject) {
            C15149k.m377b(whiteListRealmObject, "whiteListRealmObject");
            WhiteListActivity.this.m25662c(whiteListRealmObject.get_e164());
        }

        @Override // p459j.p460a.p462a1.C11105e.AbstractC11106a
        /* renamed from: b */
        public void mo10258b(WhiteListRealmObject whiteListRealmObject) {
            C15149k.m377b(whiteListRealmObject, "whiteListRealmObject");
            WhiteListActivity whiteListActivity = WhiteListActivity.this;
            whiteListActivity.startActivity(NumberDetailActivity.f12014n.m26841a(whiteListActivity, whiteListRealmObject.get_e164(), null, null, "FROM_WHITE_LIST"));
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$c.class */
    public static final class View$OnClickListenerC5329c implements View.OnClickListener {
        public View$OnClickListenerC5329c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WhiteListActivity.this.registerForContextMenu(view);
            WhiteListActivity.this.openContextMenu(view);
            WhiteListActivity.this.unregisterForContextMenu(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$d.class */
    public static final class C5330d<T> implements Action1<Object> {
        public C5330d() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C13914b2) {
                WhiteListActivity.this.f13301a.m10279b();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$e.class */
    public static final class C5331e implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ EditText f13308a;

        /* renamed from: b */
        public final /* synthetic */ DialogC12864a f13309b;

        public C5331e(EditText editText, DialogC12864a aVar) {
            this.f13308a = editText;
            this.f13309b = aVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C15149k.m377b(editable, "s");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C15149k.m377b(charSequence, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C15149k.m377b(charSequence, "s");
            EditText editText = this.f13308a;
            C15149k.m383a((Object) editText, "input");
            String obj = editText.getText().toString();
            int length = obj.length() - 1;
            int i4 = 0;
            boolean z = false;
            while (i4 <= length) {
                boolean z2 = obj.charAt(!z ? i4 : length) <= ' ';
                if (!z) {
                    if (!z2) {
                        z = true;
                    } else {
                        i4++;
                    }
                } else if (!z2) {
                    break;
                } else {
                    length--;
                }
            }
            if (obj.subSequence(i4, length + 1).toString().length() > 0) {
                this.f13309b.m5115a(true);
            } else {
                this.f13309b.m5115a(false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$f.class */
    public static final class DialogInterface$OnClickListenerC5332f implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ EditText f13311b;

        public DialogInterface$OnClickListenerC5332f(EditText editText) {
            this.f13311b = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            EditText editText = this.f13311b;
            C15149k.m383a((Object) editText, "input");
            String obj = editText.getText().toString();
            int length = obj.length() - 1;
            int i2 = 0;
            boolean z = false;
            while (i2 <= length) {
                boolean z2 = obj.charAt(!z ? i2 : length) <= ' ';
                if (!z) {
                    if (!z2) {
                        z = true;
                    } else {
                        i2++;
                    }
                } else if (!z2) {
                    break;
                } else {
                    length--;
                }
            }
            String l = C14108o4.m2474l(obj.subSequence(i2, length + 1).toString());
            C11091d dVar = WhiteListActivity.this.f13301a;
            C15149k.m383a((Object) l, "e164");
            dVar.m10281a(l);
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$g.class */
    public static final class DialogInterface$OnClickListenerC5333g implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f13313b;

        public DialogInterface$OnClickListenerC5333g(String str) {
            this.f13313b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            WhiteListActivity.this.f13301a.m10277c(this.f13313b);
        }
    }

    /* renamed from: gogolook.callgogolook2.whitelist.WhiteListActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/whitelist/WhiteListActivity$h.class */
    public static final class DialogInterface$OnClickListenerC5334h implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f13315b;

        public DialogInterface$OnClickListenerC5334h(String str) {
            this.f13315b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            WhiteListActivity.this.f13301a.m10278b(this.f13315b);
        }
    }

    static {
        new C5327a(null);
    }

    /* renamed from: D */
    public final void m25666D() {
        if (this.f13302b == null) {
            this.f13302b = new C11105e(null);
            C11105e eVar = this.f13302b;
            if (eVar != null) {
                eVar.m10261a(new C5328b());
            }
        }
        RecyclerView recyclerView = (RecyclerView) m25661e(R$id.mRvWhiteList);
        C15149k.m383a((Object) recyclerView, "mRvWhiteList");
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView2 = (RecyclerView) m25661e(R$id.mRvWhiteList);
        C15149k.m383a((Object) recyclerView2, "mRvWhiteList");
        recyclerView2.setAdapter(this.f13302b);
        ((TextView) m25661e(R$id.mTvAdd)).setOnClickListener(new View$OnClickListenerC5329c());
    }

    /* renamed from: E */
    public final void m25665E() {
        DialogC12864a aVar = new DialogC12864a(this);
        EditText a = aVar.m5118a();
        C15149k.m383a((Object) a, "input");
        a.setHint(C14206w4.m2225a((int) R$string.block_hint_insert));
        a.setInputType(3);
        a.addTextChangedListener(new C5331e(a, aVar));
        aVar.setTitle(C14206w4.m2225a((int) R$string.blocklist_menu_insert));
        aVar.m5113b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC5332f(a));
        aVar.m5116a(C14206w4.m2225a((int) R$string.cancel), null);
        aVar.show();
        aVar.m5115a(false);
    }

    @Override // p459j.p460a.p462a1.AbstractC11088b
    /* renamed from: a */
    public Context mo10291a() {
        return this;
    }

    @Override // p459j.p460a.p462a1.AbstractC11088b
    /* renamed from: b */
    public void mo10290b(String str) {
        C15149k.m377b(str, "e164");
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m979b(C14206w4.m2225a((int) R$string.block_exception_specail_content));
        fVar.m978b(C14206w4.m2225a((int) R$string.confirm), new DialogInterface$OnClickListenerC5333g(str));
        fVar.m984a(C14206w4.m2225a((int) R$string.cancel), (DialogInterface.OnClickListener) null);
        fVar.m982b();
    }

    /* renamed from: c */
    public final void m25662c(String str) {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m979b(C14206w4.m2225a((int) R$string.blocklist_smart_exception_page_delete));
        fVar.m977c(4);
        fVar.m978b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC5334h(str));
        fVar.m984a(C14206w4.m2225a((int) R$string.cancel), (DialogInterface.OnClickListener) null);
        fVar.m982b();
    }

    @Override // p459j.p460a.p462a1.AbstractC11088b
    /* renamed from: c */
    public void mo10289c(List<? extends WhiteListRealmObject> list) {
        if (list != null) {
            if (!(!list.isEmpty())) {
                list = null;
            }
            if (list != null) {
                C11105e eVar = this.f13302b;
                if (eVar != null) {
                    eVar.m10260a(list);
                }
                RecyclerView recyclerView = (RecyclerView) m25661e(R$id.mRvWhiteList);
                C15149k.m383a((Object) recyclerView, "mRvWhiteList");
                recyclerView.setVisibility(0);
                LinearLayout linearLayout = (LinearLayout) m25661e(R$id.mLlEmpty);
                C15149k.m383a((Object) linearLayout, "mLlEmpty");
                linearLayout.setVisibility(8);
                return;
            }
        }
        RecyclerView recyclerView2 = (RecyclerView) m25661e(R$id.mRvWhiteList);
        C15149k.m383a((Object) recyclerView2, "mRvWhiteList");
        recyclerView2.setVisibility(8);
        LinearLayout linearLayout2 = (LinearLayout) m25661e(R$id.mLlEmpty);
        C15149k.m383a((Object) linearLayout2, "mLlEmpty");
        linearLayout2.setVisibility(0);
    }

    /* renamed from: e */
    public View m25661e(int i) {
        if (this.f13304d == null) {
            this.f13304d = new HashMap();
        }
        View view = (View) this.f13304d.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f13304d.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 4097 && intent != null) {
            this.f13301a.m10280a(intent.getStringArrayExtra("selection_numbers"));
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == 2131362829) {
            startActivityForResult(LogSelectionActivity.f11160g.m27791a(this, 2, R$string.blocklist_smart_exception_page_add_history, R$string.confirm, -13451228, C13217t.m4394e()), FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            return true;
        } else if (itemId == 2131362854) {
            m25665E();
            return true;
        } else if (itemId != 2131362863) {
            return true;
        } else {
            startActivityForResult(LogSelectionActivity.f11160g.m27791a(this, 0, R$string.blocklist_menu_recentcall, R$string.confirm, -13451228, C13217t.m4394e()), FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.new_blocklist_white_activity);
        setSupportActionBar((Toolbar) m25661e(R$id.mBlockListToolBar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(C14206w4.m2225a((int) R$string.blocklist_smart_exception_title));
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        this.f13303c = C14037j3.m2731a().mo2703a((Action1) new C5330d());
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        C15149k.m377b(contextMenu, SupportMenuInflater.XML_MENU);
        C15149k.m377b(view, "v");
        if (C15149k.m384a((TextView) m25661e(R$id.mTvAdd), view)) {
            MenuInflater menuInflater = getMenuInflater();
            C15149k.m383a((Object) menuInflater, "menuInflater");
            menuInflater.inflate(R$menu.context_whitelist_add_rule, contextMenu);
        }
        new DialogC14669c.C14674d(this, contextMenu).m891a();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Subscription subscription = this.f13303c;
        if (subscription != null) {
            subscription.unsubscribe();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m25666D();
        this.f13301a.m10279b();
    }
}
