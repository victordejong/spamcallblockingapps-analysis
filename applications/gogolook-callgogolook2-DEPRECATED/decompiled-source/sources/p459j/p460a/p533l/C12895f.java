package p459j.p460a.p533l;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.DDDBlockActivity;
import gogolook.callgogolook2.block.blocklog.BlockLogActivity;
import gogolook.callgogolook2.block.category.CategoryBlockActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.main.logselect.LogSelectionActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import gogolook.callgogolook2.whitelist.WhiteListActivity;
import gogolook.support.p080v7.widget.extension.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.EnumC6186c;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.p532g.DialogC12864a;
import p459j.p460a.p533l.C12875e;
import p459j.p460a.p533l.C12895f;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13914b2;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14045k0;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14116p0;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p459j.p618b.p619a.p620a.p621a.AbstractC14693c;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.l.f */
/* loaded from: classes2-dex2jar.jar:j/a/l/f.class */
public class C12895f extends AbstractC12476c implements MainActivity.AbstractC4579b, C13930d.AbstractC13931a {

    /* renamed from: f */
    public Context f29191f;

    /* renamed from: g */
    public RecyclerView f29192g;

    /* renamed from: h */
    public LinearLayout f29193h;

    /* renamed from: i */
    public RelativeLayout f29194i;

    /* renamed from: j */
    public List<Map<EnumC12874d, String>> f29195j;

    /* renamed from: k */
    public C12875e f29196k;

    /* renamed from: l */
    public View f29197l;

    /* renamed from: m */
    public boolean f29198m;

    /* renamed from: n */
    public int f29199n;

    /* renamed from: o */
    public int f29200o = 0;

    /* renamed from: p */
    public boolean f29201p = true;

    /* renamed from: q */
    public int f29202q = 0;

    /* renamed from: r */
    public Subscription f29203r = null;

    /* renamed from: s */
    public Set<String> f29204s = new HashSet();

    /* renamed from: t */
    public AbstractC6207d f29205t = null;

    /* renamed from: u */
    public C13929c f29206u = new C13929c(this, false);

    /* renamed from: v */
    public AbstractC6377c f29207v = new C12912k();

    /* renamed from: w */
    public View.OnKeyListener f29208w = new View$OnKeyListenerC12923v();

    /* renamed from: x */
    public View f29209x;

    /* renamed from: j.a.l.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$a.class */
    public class View$OnClickListenerC12896a implements View.OnClickListener {
        public View$OnClickListenerC12896a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12895f.this.m5036f0();
        }
    }

    /* renamed from: j.a.l.f$a0 */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$a0.class */
    public class C12897a0 implements Action1<List<Map<EnumC12874d, String>>> {
        public C12897a0() {
        }

        /* renamed from: a */
        public void call(List<Map<EnumC12874d, String>> list) {
            FragmentActivity activity = C12895f.this.getActivity();
            if (C14217x3.m2196a((Activity) activity) && C12895f.this.m6067Q()) {
                C12895f.this.f29195j = list;
                C12895f.this.f29196k.m5099a(C12895f.this.f29195j);
                if (!C12895f.this.f29198m) {
                    if (!C14073m.m2622f()) {
                        C12895f.this.m5055b0();
                    } else if (!C12895f.this.m5042e(false)) {
                        C12895f.this.m5055b0();
                    }
                }
                Intent intent = activity.getIntent();
                NotificationManager notificationManager = (NotificationManager) activity.getSystemService("notification");
                if (intent.getStringExtra("unblock_number") != null) {
                    C12928g.m4997a(C12895f.this.f29191f, intent.getStringExtra("unblock_number"), intent.getIntExtra("unblock_kind", 3), intent.getStringExtra("unblock_keyword"), (View.OnClickListener) null, DataUserReport.Source.OTHER);
                    intent.removeExtra("unblock_number");
                    if (notificationManager != null) {
                        notificationManager.cancel(1975);
                        notificationManager.cancel(1976);
                    }
                }
            }
        }
    }

    /* renamed from: j.a.l.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$b.class */
    public class RunnableC12898b implements Runnable {
        public RunnableC12898b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C12895f fVar = C12895f.this;
            fVar.registerForContextMenu(fVar.f29197l);
            C12895f.this.getActivity().openContextMenu(C12895f.this.f29197l);
            C12895f fVar2 = C12895f.this;
            fVar2.unregisterForContextMenu(fVar2.f29197l);
        }
    }

    /* renamed from: j.a.l.f$b0 */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$b0.class */
    public class C12899b0 implements Single.OnSubscribe<List<Map<EnumC12874d, String>>> {
        public C12899b0() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super List<Map<EnumC12874d, String>>> singleSubscriber) {
            HashMap hashMap;
            ArrayList arrayList = new ArrayList();
            C12895f.this.m5017n(arrayList);
            C12895f.this.m5026k(arrayList);
            C12895f.this.m5015o(arrayList);
            C12895f.this.m5020m(arrayList);
            C12895f.this.m5023l(arrayList);
            if (C14073m.m2622f()) {
                hashMap = new HashMap();
                hashMap.put(EnumC12874d.TYPE, String.valueOf(8));
                hashMap.put(EnumC12874d.SWITCH, String.valueOf(0));
                hashMap.put(EnumC12874d.E164, "");
                arrayList.add(hashMap);
                C12895f.this.m5020m(arrayList);
            } else {
                hashMap = null;
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put(EnumC12874d.TYPE, String.valueOf(4));
            hashMap2.put(EnumC12874d.SWITCH, String.valueOf(0));
            hashMap2.put(EnumC12874d.E164, "");
            arrayList.add(hashMap2);
            HashMap hashMap3 = new HashMap();
            hashMap3.put(EnumC12874d.TYPE, String.valueOf(7));
            hashMap3.put(EnumC12874d.SWITCH, String.valueOf(0));
            hashMap3.put(EnumC12874d.E164, "");
            arrayList.add(hashMap3);
            HashMap hashMap4 = new HashMap();
            hashMap4.put(EnumC12874d.TYPE, String.valueOf(5));
            hashMap4.put(EnumC12874d.SWITCH, String.valueOf(0));
            hashMap4.put(EnumC12874d.E164, "");
            arrayList.add(hashMap4);
            C12895f.this.m5020m(arrayList);
            ArrayList arrayList2 = new ArrayList();
            List<BlockListRealmObject> f = C13032a.m4738f();
            if (f != null) {
                for (BlockListRealmObject blockListRealmObject : f) {
                    Integer num = blockListRealmObject.get_type();
                    if (num != null) {
                        int intValue = num.intValue();
                        if (intValue == 4) {
                            hashMap2.put(EnumC12874d.SWITCH, String.valueOf(1));
                            hashMap2.put(EnumC12874d.RANGE, String.valueOf(blockListRealmObject.get_kind()));
                        } else if (intValue == 5) {
                            hashMap4.put(EnumC12874d.SWITCH, String.valueOf(1));
                            hashMap4.put(EnumC12874d.RANGE, String.valueOf(blockListRealmObject.get_kind()));
                        } else if (intValue == 7) {
                            hashMap3.put(EnumC12874d.SWITCH, String.valueOf(1));
                            hashMap3.put(EnumC12874d.RANGE, String.valueOf(blockListRealmObject.get_kind()));
                        } else if (intValue != 8) {
                            if (!TextUtils.isEmpty(blockListRealmObject.get_number()) || num.intValue() < 1 || num.intValue() > 3) {
                                long id = blockListRealmObject.getId();
                                String str = blockListRealmObject.get_number();
                                String str2 = blockListRealmObject.get_e164();
                                String str3 = blockListRealmObject.get_reason();
                                String valueOf = String.valueOf(blockListRealmObject.get_ccat());
                                HashMap hashMap5 = new HashMap();
                                hashMap5.put(EnumC12874d._ID, String.valueOf(id));
                                hashMap5.put(EnumC12874d.NUMBER, str);
                                hashMap5.put(EnumC12874d.E164, str2);
                                hashMap5.put(EnumC12874d.TYPE, String.valueOf(num));
                                hashMap5.put(EnumC12874d.RANGE, String.valueOf(blockListRealmObject.get_kind()));
                                hashMap5.put(EnumC12874d.REASON, str3);
                                hashMap5.put(EnumC12874d.SWITCH, String.valueOf(1));
                                if (C14217x3.m2160b(valueOf) || valueOf.equals("0")) {
                                    hashMap5.put(EnumC12874d.CCAT, "");
                                } else {
                                    hashMap5.put(EnumC12874d.CCAT, valueOf);
                                }
                                arrayList2.add(hashMap5);
                            }
                        } else if (hashMap != null) {
                            hashMap.put(EnumC12874d.SWITCH, String.valueOf(1));
                            hashMap.put(EnumC12874d.RANGE, String.valueOf(blockListRealmObject.get_kind()));
                        }
                    }
                }
            }
            HashMap hashMap6 = new HashMap();
            hashMap6.put(EnumC12874d.TYPE, String.valueOf(-2));
            hashMap6.put(EnumC12874d.COUNT, String.valueOf(arrayList2.size()));
            arrayList.add(hashMap6);
            arrayList.addAll(arrayList2);
            arrayList.add(null);
            singleSubscriber.onSuccess(arrayList);
        }
    }

    /* renamed from: j.a.l.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$c.class */
    public class C12900c implements Action1<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ EditText f29214a;

        /* renamed from: b */
        public final /* synthetic */ DialogC12864a f29215b;

        /* renamed from: c */
        public final /* synthetic */ int f29216c;

        /* renamed from: j.a.l.f$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/l/f$c$a.class */
        public class C12901a implements TextWatcher {
            public C12901a() {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (C12900c.this.f29214a.getText().toString().trim().length() >= 2) {
                    C12900c.this.f29215b.m5115a(true);
                } else {
                    C12900c.this.f29215b.m5115a(false);
                }
            }
        }

        /* renamed from: j.a.l.f$c$b */
        /* loaded from: classes2-dex2jar.jar:j/a/l/f$c$b.class */
        public class DialogInterface$OnClickListenerC12902b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12902b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String trim = C12900c.this.f29214a.getText().toString().trim();
                C12900c cVar = C12900c.this;
                C12895f.this.m5062a(trim, cVar.f29216c, true);
                C14289m.m1913a(7, 5, 1);
                dialogInterface.dismiss();
            }
        }

        public C12900c(EditText editText, DialogC12864a aVar, int i) {
            this.f29214a = editText;
            this.f29215b = aVar;
            this.f29216c = i;
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            if (bool.booleanValue()) {
                this.f29214a.addTextChangedListener(new C12901a());
                this.f29215b.setTitle(C12895f.this.m6059b(R$string.specific_block_title));
                DialogC12864a aVar = this.f29215b;
                aVar.m5113b(C12895f.this.m6059b(R$string.okok), new DialogInterface$OnClickListenerC12902b());
                aVar.m5116a(C12895f.this.m6059b(R$string.cancel), null);
                this.f29215b.show();
                this.f29215b.m5115a(false);
                return;
            }
            C14687h.m862a(C12895f.this.f29191f, (int) R$string.specific_block_limit, 1).m858c();
        }
    }

    /* renamed from: j.a.l.f$c0 */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$c0.class */
    public class View$OnClickListenerC12903c0 implements View.OnClickListener {
        public View$OnClickListenerC12903c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12895f.this.m5036f0();
        }
    }

    /* renamed from: j.a.l.f$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$d.class */
    public class C12904d implements Single.OnSubscribe<Boolean> {
        public C12904d(C12895f fVar) {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            boolean z = false;
            List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("_type", "_status"), C13193p.m4438a(2, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a == null || a.size() < 50) {
                z = true;
            }
            singleSubscriber.onSuccess(Boolean.valueOf(z));
        }
    }

    /* renamed from: j.a.l.f$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$e.class */
    public class C12905e implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ EditText f29221a;

        /* renamed from: b */
        public final /* synthetic */ DialogC12864a f29222b;

        public C12905e(C12895f fVar, EditText editText, DialogC12864a aVar) {
            this.f29221a = editText;
            this.f29222b = aVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.f29221a.getText().toString().trim().length() > 0) {
                this.f29222b.m5115a(true);
            } else {
                this.f29222b.m5115a(false);
            }
        }
    }

    /* renamed from: j.a.l.f$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$f.class */
    public class DialogInterface$OnClickListenerC12906f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f29223a;

        /* renamed from: b */
        public final /* synthetic */ int f29224b;

        /* renamed from: c */
        public final /* synthetic */ int f29225c;

        /* renamed from: j.a.l.f$f$a */
        /* loaded from: classes2-dex2jar.jar:j/a/l/f$f$a.class */
        public class DialogInterface$OnClickListenerC12907a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ String f29227a;

            public DialogInterface$OnClickListenerC12907a(String str) {
                this.f29227a = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogInterface$OnClickListenerC12906f fVar = DialogInterface$OnClickListenerC12906f.this;
                C12895f.this.m5062a(this.f29227a, fVar.f29225c, true);
                C14289m.m1909a(7, 1, C14108o4.m2474l(this.f29227a));
            }
        }

        public DialogInterface$OnClickListenerC12906f(EditText editText, int i, int i2) {
            this.f29223a = editText;
            this.f29224b = i;
            this.f29225c = i2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            String trim = this.f29223a.getText().toString().trim();
            if (this.f29224b != 2131362854 || !C12895f.this.m5037f(C14108o4.m2474l(trim))) {
                C12895f.this.m5062a(trim, this.f29225c, true);
                C14289m.m1909a(7, 1, C14108o4.m2474l(trim));
                return;
            }
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(C12895f.this.f29191f);
            fVar.m979b(C12895f.this.m6059b(R$string.block_addblocklist_specail_content));
            fVar.m978b(C12895f.this.m6059b(R$string.confirm), new DialogInterface$OnClickListenerC12907a(trim));
            fVar.m984a(C12895f.this.m6059b(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: j.a.l.f$g */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$g.class */
    public class DialogInterface$OnClickListenerC12908g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f29229a;

        /* renamed from: b */
        public final /* synthetic */ int f29230b;

        public DialogInterface$OnClickListenerC12908g(EditText editText, int i) {
            this.f29229a = editText;
            this.f29230b = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            C12895f.this.m5062a(this.f29229a.getText().toString().trim(), this.f29230b, true);
        }
    }

    /* renamed from: j.a.l.f$h */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$h.class */
    public class C12909h implements Action1<Pair<String, String>> {
        public C12909h() {
        }

        /* renamed from: a */
        public void call(Pair<String, String> pair) {
            if (pair != null) {
                C14687h.m861a(C12895f.this.getActivity(), (String) pair.second, 1).m858c();
                C12895f.this.m5062a((String) pair.first, 1, true);
                C14289m.m1909a(7, 1, (String) pair.first);
            }
        }
    }

    /* renamed from: j.a.l.f$i */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$i.class */
    public class C12910i implements Action1<Throwable> {
        public C12910i(C12895f fVar) {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C14080m2.m2614a("FILES", th);
        }
    }

    /* renamed from: j.a.l.f$j */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$j.class */
    public class C12911j implements Single.OnSubscribe<Pair<String, String>> {

        /* renamed from: a */
        public final /* synthetic */ Uri f29233a;

        public C12911j(Uri uri) {
            this.f29233a = uri;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Pair<String, String>> singleSubscriber) {
            try {
                Cursor query = C12895f.this.getActivity().getContentResolver().query(this.f29233a, new String[]{"data1"}, null, null, null);
                Pair pair = null;
                if (query != null) {
                    String c = query.moveToFirst() ? C14108o4.m2486c(query.getString(query.getColumnIndex("data1"))) : null;
                    pair = null;
                    if (!TextUtils.isEmpty(c)) {
                        pair = new Pair(c, String.format(C12895f.this.m6059b(R$string.blocklist_menu_contact_addtoast), C14217x3.m2146e(C12895f.this.f29191f, c)));
                    }
                }
                singleSubscriber.onSuccess(pair);
                if (query != null) {
                    query.close();
                }
            } catch (SQLException e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: j.a.l.f$k */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$k.class */
    public class C12912k extends AbstractC6377c {
        public C12912k() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
            C12895f.this.m5042e(false);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            C12895f.this.m5042e(false);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
        }
    }

    /* renamed from: j.a.l.f$l */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$l.class */
    public class View$OnClickListenerC12913l implements View.OnClickListener {
        public View$OnClickListenerC12913l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12895f.this.m5073Z();
            C12895f.this.m5036f0();
        }
    }

    /* renamed from: j.a.l.f$m */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$m.class */
    public class View$OnClickListenerC12914m implements View.OnClickListener {
        public View$OnClickListenerC12914m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12895f.this.m5073Z();
            C12895f.this.m5036f0();
        }
    }

    /* renamed from: j.a.l.f$n */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$n.class */
    public class View$OnClickListenerC12915n implements View.OnClickListener {
        public View$OnClickListenerC12915n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12895f.this.m5042e(true)) {
                C12895f.this.f29196k.m5109a().put(EnumC12874d.SWITCH, String.valueOf(1));
                C12895f.this.m5062a("", 8, false);
            } else {
                C12895f.this.m5073Z();
            }
            C12895f.this.m5036f0();
        }
    }

    /* renamed from: j.a.l.f$o */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$o.class */
    public class C12916o implements Action1<Void> {
        public C12916o() {
        }

        /* renamed from: a */
        public void call(Void r3) {
            C12895f.this.m5055b0();
        }
    }

    /* renamed from: j.a.l.f$p */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$p.class */
    public class C12917p implements Action1<Throwable> {
        public C12917p(C12895f fVar) {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.l.f$q */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$q.class */
    public class C12918q implements Single.OnSubscribe<Void> {
        public C12918q() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            List<WhiteListRealmObject> a = C13217t.m4398a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            C12895f.this.f29202q = 0;
            C12895f.this.f29204s.clear();
            if (a != null && !a.isEmpty()) {
                C12895f.this.f29202q = a.size();
                for (WhiteListRealmObject whiteListRealmObject : a) {
                    C12895f.this.f29204s.add(whiteListRealmObject.get_e164());
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.l.f$r */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$r.class */
    public class C12919r implements AbstractC6258b {
        public C12919r() {
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(@NonNull String str) {
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            if (!C6214a.m23563c(AdUnit.BLOCK.m28821a())) {
                C14247d.m2062a(str, C6192e.m23607a(AdUnit.BLOCK.m28821a()).m23605b());
            } else if (C12895f.this.f29194i == null) {
                C14247d.m2062a(str, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
            } else {
                C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                C12895f.this.m5032h0();
            }
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(@NonNull String str) {
            C14247d.m2057e(AdUnit.BLOCK);
            C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        }
    }

    /* renamed from: j.a.l.f$s */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$s.class */
    public class C12920s implements AbstractC6207d.AbstractC6208a {
        public C12920s(C12895f fVar) {
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            C14247d.m2059c(AdUnit.BLOCK);
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            C14247d.m2058d(AdUnit.BLOCK);
        }
    }

    /* renamed from: j.a.l.f$t */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$t.class */
    public class C12921t implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f29242a;

        public C12921t(C12895f fVar, ViewGroup viewGroup) {
            this.f29242a = viewGroup;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ViewGroup viewGroup = this.f29242a;
            if (viewGroup != null) {
                viewGroup.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.f29242a.requestLayout();
            }
        }
    }

    /* renamed from: j.a.l.f$u */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$u.class */
    public class C12922u extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f29243a;

        public C12922u(C12895f fVar, ViewGroup viewGroup) {
            this.f29243a = viewGroup;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ViewGroup viewGroup = this.f29243a;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
        }
    }

    /* renamed from: j.a.l.f$v */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$v.class */
    public class View$OnKeyListenerC12923v implements View.OnKeyListener {
        public View$OnKeyListenerC12923v() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return false;
            }
            C12895f.this.m5036f0();
            return true;
        }
    }

    /* renamed from: j.a.l.f$w */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$w.class */
    public class C12924w implements Action1 {
        public C12924w() {
        }

        /* renamed from: a */
        public /* synthetic */ void m5001a() {
            C12895f.this.m5055b0();
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if ((obj instanceof C14045k0) || (obj instanceof C14116p0)) {
                if (C14191v.m2262a((Activity) C12895f.this.getActivity()) && C12895f.this.f29196k != null) {
                    C12895f.this.getActivity().runOnUiThread(new Runnable() { // from class: j.a.l.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            C12895f.C12924w.this.m5001a();
                        }
                    });
                }
            } else if (obj instanceof C13875a0) {
                if (C12895f.this.f29201p) {
                    C12895f.this.m5073Z();
                }
            } else if (obj instanceof C13914b2) {
                C12895f.this.m5060a0();
            }
        }
    }

    /* renamed from: j.a.l.f$x */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$x.class */
    public class C12925x implements AbstractC14693c.AbstractC14696c {
        public C12925x() {
        }

        @Override // p459j.p618b.p619a.p620a.p621a.AbstractC14693c.AbstractC14696c
        /* renamed from: a */
        public void mo835a(View view, int i) {
            int a;
            C12895f.this.f29199n = i;
            Map map = (Map) C12895f.this.f29196k.getItem(i);
            if (map != null && (a = C14073m.m2628a(map)) != 8 && a != 5 && a != 14) {
                if (a == -1) {
                    C12895f.this.startActivity(new Intent(C12895f.this.getActivity(), BlockLogActivity.class));
                    C14289m.m1899a((Integer) 1, (Integer) null);
                } else if (a == -3) {
                    C12895f.this.startActivity(new Intent(C12895f.this.getActivity(), WhiteListActivity.class));
                    C14289m.m1899a((Integer) 2, (Integer) null);
                } else if (a == 4) {
                    C12895f.this.m5061a(map, (int) R$string.blocklist_private_intro_title, (int) R$string.blocklist_private_intro_content);
                } else if (a == 7) {
                    C12895f.this.m5061a(map, (int) R$string.blocklist_non_contact_intro_title, (int) R$string.blocklist_non_contact_intro_content);
                } else if (a == 9) {
                    C12895f.this.f29191f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C14206w4.m2225a((int) R$string.kr_lawbanner_url))));
                    C14289m.m1858e();
                } else if (a == 15) {
                    C12895f.this.f29191f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C14206w4.m2225a((int) R$string.kr_lawbanner_url_2))));
                    C14289m.m1855f();
                } else if (a == 12) {
                    Intent intent = new Intent(C12895f.this.f29191f, CategoryBlockActivity.class);
                    intent.putExtra("extra_cate_type", 1);
                    C14289m.m1899a((Integer) 9, (Integer) null);
                    C14289m.m1913a(7, -1, 1);
                    C12895f.this.startActivity(intent);
                } else if (a == 11) {
                    Intent intent2 = new Intent(C12895f.this.f29191f, CategoryBlockActivity.class);
                    intent2.putExtra("extra_cate_type", 0);
                    C14289m.m1899a((Integer) 8, (Integer) null);
                    C14289m.m1913a(7, -1, 1);
                    C12895f.this.startActivity(intent2);
                } else if (a == 13) {
                    Intent intent3 = new Intent(C12895f.this.f29191f, DDDBlockActivity.class);
                    C14289m.m1899a((Integer) 10, (Integer) null);
                    C14289m.m1913a(7, -1, 1);
                    C12895f.this.startActivity(intent3);
                } else {
                    C12895f fVar = C12895f.this;
                    fVar.registerForContextMenu(fVar.f29192g);
                    C12895f.this.getActivity().openContextMenu(C12895f.this.f29192g);
                    C12895f fVar2 = C12895f.this;
                    fVar2.unregisterForContextMenu(fVar2.f29192g);
                }
            }
        }
    }

    /* renamed from: j.a.l.f$y */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$y.class */
    public class C12926y implements AbstractC14693c.AbstractC14697d {
        public C12926y() {
        }

        @Override // p459j.p618b.p619a.p620a.p621a.AbstractC14693c.AbstractC14697d
        /* renamed from: a */
        public boolean mo834a(View view, int i) {
            Map map = (Map) C12895f.this.f29195j.get(i);
            if (map == null) {
                return true;
            }
            int a = C14073m.m2628a(map);
            if (a != 1 && a != 2 && a != 3) {
                return true;
            }
            C12895f.this.f29199n = i;
            C12895f fVar = C12895f.this;
            fVar.registerForContextMenu(fVar.f29192g);
            C12895f.this.getActivity().openContextMenu(C12895f.this.f29192g);
            C12895f fVar2 = C12895f.this;
            fVar2.unregisterForContextMenu(fVar2.f29192g);
            return true;
        }
    }

    /* renamed from: j.a.l.f$z */
    /* loaded from: classes2-dex2jar.jar:j/a/l/f$z.class */
    public class View$OnClickListenerC12927z implements View.OnClickListener {
        public View$OnClickListenerC12927z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12895f.this.m5070a(view);
        }
    }

    /* renamed from: f */
    public static final C12895f m5040f(int i) {
        C12895f fVar = new C12895f();
        Bundle bundle = new Bundle();
        bundle.putInt("EXTRA_ENTRY", i);
        fVar.setArguments(bundle);
        return fVar;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    public void mo1419K() {
        m5060a0();
        m5073Z();
        m5042e(false);
        if (getUserVisibleHint()) {
            C14247d.m2066a(AdUnit.BLOCK);
        }
        m5074Y();
        m5047d0();
        this.f29206u.m3029c(isResumed());
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.blocklist_fragment;
    }

    /* renamed from: V */
    public final void m5077V() {
        ((ViewGroup) getActivity().getWindow().getDecorView()).addView(this.f29209x);
        this.f29209x.setOnKeyListener(this.f29208w);
        this.f29209x.setFocusableInTouchMode(true);
        this.f29209x.requestFocus();
    }

    /* renamed from: W */
    public final boolean m5076W() {
        if (!CallUtils.m26532l()) {
            return false;
        }
        CallUtils.m26562b(this.f29191f);
        return true;
    }

    /* renamed from: X */
    public int m5075X() {
        return this.f29202q;
    }

    /* renamed from: Y */
    public final void m5074Y() {
        C6219a.m23542b(AdUnit.BLOCK.m28821a());
        RelativeLayout relativeLayout = this.f29194i;
        if (relativeLayout == null) {
            C14247d.m2063a(AdUnit.BLOCK, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
        } else if (relativeLayout.getChildCount() > 0) {
            C14247d.m2063a(AdUnit.BLOCK, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
        } else if (C6214a.m23563c(AdUnit.BLOCK.m28821a())) {
            C14247d.m2063a(AdUnit.BLOCK, C6262a.EnumC6267e.AD_EXIST.m23446a());
            m5032h0();
        } else if (!C14217x3.m2137h(getContext())) {
            C6219a.m23546a(null, AdUnit.BLOCK.m28821a(), AdUtils.m28803f(), EnumC6186c.REQUEST_STOP, C6262a.EnumC6266d.ERROR_NETWORK_NOT_ENABLE.m23447a());
        } else {
            C6192e a = C6192e.m23607a(AdUnit.BLOCK.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, true);
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new C12919r());
            a.m23619a(getContext());
        }
    }

    /* renamed from: Z */
    public final void m5073Z() {
        Single.create(new C12899b0()).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12897a0(), C14081m3.m2611a());
    }

    /* renamed from: a */
    public final void m5072a(int i, int i2) {
        int i3;
        DialogC12864a aVar = new DialogC12864a(getActivity());
        EditText a = aVar.m5118a();
        if (i == 2131362854) {
            i3 = R$string.blocklist_menu_insert;
            a.setHint(m6059b(R$string.block_hint_insert));
            a.setInputType(3);
        } else if (i == 2131362881) {
            i3 = R$string.blocklist_menu_startswith;
            a.setHint(m6059b(R$string.specific_block_minlength));
            a.setInputType(3);
        } else {
            i3 = 0;
        }
        if (i == 2131362881) {
            Single.create(new C12904d(this)).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12900c(a, aVar, i2), C14081m3.m2611a());
        } else if (i == 2131362854) {
            a.addTextChangedListener(new C12905e(this, a, aVar));
            aVar.setTitle(m6059b(i3));
            aVar.m5113b(m6059b(R$string.okok), new DialogInterface$OnClickListenerC12906f(a, i, i2));
            aVar.m5116a(m6059b(R$string.cancel), null);
            aVar.show();
            aVar.m5115a(false);
        } else {
            aVar.setTitle(i3);
            aVar.m5113b(m6059b(R$string.okok), new DialogInterface$OnClickListenerC12908g(a, i2));
            aVar.m5116a(m6059b(R$string.cancel), null);
            aVar.show();
        }
    }

    /* renamed from: a */
    public void m5071a(int i, boolean z) {
        if (7 != i && 5 != i) {
            return;
        }
        if (z) {
            m5062a("", i, false);
            C14289m.m1913a(7, m5051d(i), 1);
            return;
        }
        this.f29201p = false;
        m5059b(i, "", "");
    }

    /* renamed from: a */
    public void m5070a(View view) {
        if (getActivity() != null) {
            C14289m.m1874b((Integer) 7, (Integer) null);
            registerForContextMenu(view);
            getActivity().openContextMenu(view);
            unregisterForContextMenu(view);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        this.f29191f = getActivity();
        this.f29192g = (RecyclerView) view.findViewById(R$id.rv_block_log);
        this.f29197l = view.findViewById(R$id.ll_whole);
        this.f29193h = (LinearLayout) view.findViewById(R$id.ll_ad_layout);
        this.f29194i = (RelativeLayout) view.findViewById(R$id.rl_ad_layout);
        view.findViewById(R$id.v_ad_divider);
        this.f29195j = new ArrayList();
        this.f29196k = new C12875e(this, this.f29195j);
        this.f29192g.setLayoutManager(new LinearLayoutManager(this.f29191f));
        this.f29192g.m25659a(view.findViewById(R$id.ll_empty));
        this.f29192g.setAdapter(this.f29196k);
        this.f29192g.addItemDecoration(new C12875e.C12886k());
        m5048d(true);
        this.f29196k.m841a(new C12925x());
        registerForContextMenu(this.f29192g);
        this.f29196k.m840a(new C12926y());
        ((FloatingActionButton) view.findViewById(R$id.btn_fab)).setOnClickListener(new View$OnClickListenerC12927z());
    }

    /* renamed from: a */
    public final void m5069a(ViewGroup viewGroup, boolean z) {
        if (viewGroup != null) {
            if (!z) {
                viewGroup.setVisibility(0);
                return;
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, C14217x3.m2201a(76.0f));
            ofInt.addUpdateListener(new C12921t(this, viewGroup));
            ofInt.addListener(new C12922u(this, viewGroup));
            ofInt.setDuration(500L);
            ofInt.start();
        }
    }

    /* renamed from: a */
    public final void m5062a(String str, int i, boolean z) {
        this.f29201p = C14073m.m2626b(i);
        C14073m.m2629a(this.f29191f, str, i, z, DataUserReport.Source.OTHER).observeOn(AndroidSchedulers.mainThread()).subscribe(Actions.empty(), C14081m3.m2611a());
    }

    /* renamed from: a */
    public final void m5061a(@NonNull Map<EnumC12874d, String> map, @StringRes int i, @StringRes int i2) {
        this.f29209x = LayoutInflater.from(this.f29191f).inflate(R$layout.blocklist_desc_dialog, (ViewGroup) null);
        this.f29209x.setOnClickListener(new View$OnClickListenerC12903c0());
        this.f29209x.findViewById(R$id.ll_whole).setOnClickListener(null);
        this.f29209x.findViewById(R$id.iv_tutorial_close).setOnClickListener(new View$OnClickListenerC12896a());
        View findViewById = this.f29209x.findViewById(R$id.ll_blocklist_type);
        TextView textView = (TextView) this.f29209x.findViewById(R$id.tv_title);
        findViewById.setVisibility(8);
        textView.setText(i);
        ((TextView) this.f29209x.findViewById(R$id.tv_content)).setText(i2);
        m5077V();
    }

    /* renamed from: a0 */
    public final void m5060a0() {
        Single.create(new C12918q()).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12916o(), new C12917p(this));
    }

    /* renamed from: b */
    public final void m5059b(int i, String str, String str2) {
        this.f29201p = C14073m.m2626b(i);
        C14073m.m2630a(this.f29191f, i, str, str2, DataUserReport.Source.OTHER).subscribe(Actions.empty(), C14081m3.m2611a());
    }

    /* renamed from: b0 */
    public final void m5055b0() {
        C12875e eVar = this.f29196k;
        if (eVar != null) {
            eVar.notifyDataSetChanged();
        }
    }

    /* renamed from: c0 */
    public final void m5052c0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.getInt("EXTRA_ENTRY", 0);
        }
    }

    /* renamed from: d */
    public final int m5051d(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 5;
            case 3:
            case 6:
            case 9:
            case 10:
            default:
                return 6;
            case 4:
                return 1;
            case 5:
                return 3;
            case 7:
                return 2;
            case 8:
                return 0;
            case 11:
            case 12:
            case 13:
                return -1;
        }
    }

    /* renamed from: d */
    public void m5048d(boolean z) {
        m5073Z();
    }

    /* renamed from: d0 */
    public final boolean m5047d0() {
        return m5076W() || C12810o.m5271a(this.f29191f);
    }

    /* renamed from: e */
    public final int m5046e(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    /* renamed from: e */
    public final int m5043e(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            int intValue = Integer.valueOf(str).intValue();
            int i2 = R$id.menu_block_call;
            if (intValue == 1) {
                return R$id.menu_block_call;
            }
            if (intValue == 2) {
                if (C12810o.m5234k()) {
                    i = R$id.menu_block_sms;
                }
                return i;
            } else if (intValue != 3) {
                return 0;
            } else {
                if (C12810o.m5234k()) {
                    i2 = R$id.menu_block_both;
                }
                return i2;
            }
        } catch (NumberFormatException e) {
            C14080m2.m2612a((Throwable) e);
            return 0;
        }
    }

    /* renamed from: e */
    public final boolean m5042e(boolean z) {
        if (C14217x3.m2137h(this.f29191f)) {
            this.f29196k.m5095b(z, this.f29207v);
            return true;
        } else if (z) {
            return false;
        } else {
            this.f29196k.m5095b(z, this.f29207v);
            return true;
        }
    }

    /* renamed from: e0 */
    public final void m5041e0() {
        if (this.f29203r == null) {
            this.f29203r = C14037j3.m2731a().mo2703a((Action1) new C12924w());
        }
    }

    /* renamed from: f */
    public boolean m5037f(String str) {
        return this.f29204s.contains(str);
    }

    /* renamed from: f0 */
    public final void m5036f0() {
        ((ViewGroup) getActivity().getWindow().getDecorView()).removeView(this.f29209x);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
    }

    /* renamed from: g0 */
    public final void m5034g0() {
        AbstractC6207d dVar = this.f29205t;
        if (dVar != null) {
            dVar.mo23569a((AbstractC6207d.AbstractC6208a) new C12920s(this));
        }
    }

    /* renamed from: h0 */
    public final void m5032h0() {
        this.f29205t = C6214a.m23564b(AdUnit.BLOCK.m28821a());
        AbstractC6207d dVar = this.f29205t;
        if (dVar != null) {
            C14247d.m2064a(AdUnit.BLOCK, dVar);
            m5034g0();
            this.f29205t.mo23572a(getContext(), this.f29194i);
            m5069a((ViewGroup) this.f29193h, false);
        }
    }

    /* renamed from: i0 */
    public void m5030i0() {
        C14299q.m1737c();
        this.f29201p = false;
        m5059b(8, "", "");
    }

    /* renamed from: j0 */
    public void m5028j0() {
        this.f29201p = false;
        m5059b(4, "", "");
    }

    /* renamed from: k */
    public final void m5026k(List<Map<EnumC12874d, String>> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC12874d.TYPE, String.valueOf(-1));
        list.add(hashMap);
    }

    /* renamed from: k0 */
    public void m5025k0() {
        C14299q.m1732d();
        C14289m.m1913a(7, 0, 1);
        if (C14063l4.m2701A()) {
            m5062a("", 8, false);
            return;
        }
        this.f29209x = LayoutInflater.from(this.f29191f).inflate(R$layout.blocklist_activate_dialog, (ViewGroup) null);
        this.f29209x.setOnClickListener(new View$OnClickListenerC12913l());
        this.f29209x.findViewById(R$id.ll_whole).setOnClickListener(null);
        this.f29209x.findViewById(R$id.iv_tutorial_close).setOnClickListener(new View$OnClickListenerC12914m());
        ((TextView) this.f29209x.findViewById(R$id.tv_description)).setText(m6059b(R$string.blocklist_hklist_dialog_title));
        TextView textView = (TextView) this.f29209x.findViewById(R$id.tv_positive_btn);
        textView.setOnClickListener(new View$OnClickListenerC12915n());
        textView.setText(m6059b(R$string.blocklist_hklist_dialog_button));
        m5077V();
    }

    /* renamed from: l */
    public final void m5023l(List<Map<EnumC12874d, String>> list) {
        if (C14017g4.m2835A()) {
            HashMap hashMap = new HashMap();
            hashMap.put(EnumC12874d.TYPE, String.valueOf(11));
            list.add(hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put(EnumC12874d.TYPE, String.valueOf(12));
            list.add(hashMap2);
            HashMap hashMap3 = new HashMap();
            hashMap3.put(EnumC12874d.TYPE, String.valueOf(13));
            hashMap3.put(EnumC12874d.SWITCH, String.valueOf(1));
            list.add(hashMap3);
            m5020m(list);
        }
    }

    /* renamed from: l0 */
    public void m5022l0() {
        m5062a("", 4, false);
        C14299q.m1743b();
        C14289m.m1913a(7, 1, 1);
    }

    /* renamed from: m */
    public final void m5020m(List<Map<EnumC12874d, String>> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC12874d.TYPE, String.valueOf(14));
        list.add(hashMap);
    }

    /* renamed from: m0 */
    public final void m5019m0() {
        Subscription subscription = this.f29203r;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f29203r.unsubscribe();
        }
        this.f29203r = null;
    }

    /* renamed from: n */
    public final void m5017n(List<Map<EnumC12874d, String>> list) {
        if (C14017g4.m2831E()) {
            HashMap hashMap = new HashMap();
            hashMap.put(EnumC12874d.TYPE, String.valueOf(15));
            list.add(hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put(EnumC12874d.TYPE, String.valueOf(9));
            list.add(hashMap2);
            m5020m(list);
        }
    }

    /* renamed from: o */
    public final void m5015o(List<Map<EnumC12874d, String>> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC12874d.TYPE, String.valueOf(-3));
        list.add(hashMap);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 4101) {
            if (C12810o.m5234k()) {
                Map map = (Map) this.f29196k.getItem(this.f29199n);
                C14073m.m2631a(this.f29191f, C14073m.m2628a(map), (String) map.get(EnumC12874d.NUMBER), (String) map.get(EnumC12874d.E164), this.f29200o, null, DataUserReport.Source.OTHER).subscribe();
                int d = m5051d(C14073m.m2628a(map));
                int e = m5046e(this.f29200o);
                if (4 == d) {
                    C14289m.m1909a(7, e, (String) map.get(EnumC12874d.E164));
                } else {
                    C14289m.m1913a(7, d, e);
                }
            }
        } else if (i2 == -1 && i == 4097) {
            if (intent != null) {
                Single.create(new C12911j(intent.getData())).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12909h(), new C12910i(this));
            }
        } else if (i2 == -1 && i == 4098) {
            m5042e(true);
        } else if (i2 == -1) {
            if (i == 4099 || i == 4100) {
                String[] stringArrayExtra = intent.getStringArrayExtra("selection_numbers");
                if (stringArrayExtra != null && stringArrayExtra.length > 0) {
                    for (String str : stringArrayExtra) {
                        m5062a(TextUtils.isEmpty(str) ? "" : str, TextUtils.isEmpty(str) ? 4 : 1, false);
                        C14289m.m1909a(7, 1, C14108o4.m2474l(str));
                    }
                }
                String[] stringArrayExtra2 = intent.getStringArrayExtra("deselected_number");
                if (stringArrayExtra2 != null && stringArrayExtra2.length > 0) {
                    for (String str2 : stringArrayExtra2) {
                        String l = TextUtils.isEmpty(str2) ? "" : C14108o4.m2474l(str2);
                        m5059b(TextUtils.isEmpty(l) ? 4 : 1, str2, l);
                    }
                }
                m5073Z();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131362826) {
            Map map = (Map) this.f29196k.getItem(this.f29199n);
            startActivity(NumberDetailActivity.m26858a(getActivity(), (String) map.get(EnumC12874d.NUMBER), (String) map.get(EnumC12874d.E164), null, "FROM_BLOCK_RULE"));
            C14299q.m1749a();
        } else if (itemId == 2131362823) {
            Map map2 = (Map) this.f29196k.getItem(this.f29199n);
            m5059b(C14073m.m2628a(map2), (String) map2.get(EnumC12874d.NUMBER), (String) map2.get(EnumC12874d.E164));
        } else if (itemId == 2131362824) {
            this.f29197l.post(new RunnableC12898b());
        }
        if (itemId == 2131362854) {
            m5072a(R$id.menu_insert, 1);
            C14289m.m1874b((Integer) 7, (Integer) 1);
            return true;
        }
        int i = 2;
        if (itemId == 2131362863) {
            C14289m.m1874b((Integer) 7, (Integer) 2);
            startActivityForResult(LogSelectionActivity.m27795a(getActivity(), 0, R$string.blocklist_menu_recentcall, R$string.confirm, -834248, C13032a.m4740e()), FragmentTransaction.TRANSIT_FRAGMENT_FADE);
            return true;
        } else if (itemId == 2131362864) {
            C14289m.m1874b((Integer) 7, (Integer) 3);
            startActivityForResult(LogSelectionActivity.m27795a(getActivity(), 1, R$string.blocklist_menu_recentsms, R$string.confirm, -834248, C13032a.m4740e()), FragmentTransaction.TRANSIT_FRAGMENT_FADE);
            return true;
        } else if (itemId == 2131362881) {
            m5072a(R$id.menu_startswith, 2);
            C14289m.m1874b((Integer) 7, (Integer) 5);
            return true;
        } else {
            int i2 = 4;
            if (itemId == 2131362888) {
                Intent intent = new Intent("android.intent.action.PICK");
                intent.setType("vnd.android.cursor.dir/phone_v2");
                if (this.f29191f.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                    startActivityForResult(intent, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
                } else {
                    C14687h.m862a(this.f29191f, (int) R$string.not_support_function, 1).m858c();
                }
                C14289m.m1874b((Integer) 7, (Integer) 4);
                return true;
            } else if (itemId == 2131362843) {
                Map map3 = (Map) this.f29196k.getItem(this.f29199n);
                m5059b(C14073m.m2628a(map3), (String) map3.get(EnumC12874d.NUMBER), (String) map3.get(EnumC12874d.E164));
                return true;
            } else if (itemId != 2131362821 && itemId != 2131362822 && itemId != 2131362827) {
                return true;
            } else {
                this.f29201p = true;
                if (itemId == 2131362822) {
                    i = 1;
                } else if (itemId != 2131362827) {
                    i = 3;
                }
                this.f29200o = i;
                Map map4 = (Map) this.f29196k.getItem(this.f29199n);
                if ((itemId == 2131362821 || itemId == 2131362827) && !C12810o.m5234k()) {
                    Context context = this.f29191f;
                    if (itemId == 2131362821) {
                        i2 = 3;
                    }
                    startActivityForResult(SettingResultActivity.m26750a(context, RoleManagerCompat.ROLE_SMS, Integer.valueOf(i2)), 4101);
                    return true;
                }
                C14073m.m2631a(this.f29191f, C14073m.m2628a(map4), (String) map4.get(EnumC12874d.NUMBER), (String) map4.get(EnumC12874d.E164), this.f29200o, null, DataUserReport.Source.OTHER).subscribe();
                int d = m5051d(C14073m.m2628a(map4));
                int e = m5046e(this.f29200o);
                if (4 == d) {
                    C14289m.m1909a(7, e, (String) map4.get(EnumC12874d.E164));
                    return true;
                }
                C14289m.m1913a(7, d, e);
                return true;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m5041e0();
        this.f29209x = null;
        C14289m.m1853g();
        m5052c0();
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        String str;
        DialogC14669c.C14674d dVar;
        boolean o = C12810o.m5230o();
        if (view.getId() == 2131361963) {
            getActivity().getMenuInflater().inflate(R$menu.context_blocklistsetting_add_rule, contextMenu);
            contextMenu.findItem(R$id.menu_recentsms).setVisible(C12810o.m5233l());
            dVar = new DialogC14669c.C14674d(getActivity(), contextMenu);
            str = null;
        } else if (this.f29192g.equals(view)) {
            getActivity().getMenuInflater().inflate(R$menu.context_blocklistsetting, contextMenu);
            Map map = (Map) this.f29196k.getItem(this.f29199n);
            int a = C14073m.m2628a(map);
            str = map.containsKey(EnumC12874d.RANGE) ? (String) map.get(EnumC12874d.RANGE) : String.valueOf(3);
            boolean z = o && a == 1;
            contextMenu.findItem(R$id.menu_block_both).setVisible(z);
            contextMenu.findItem(R$id.menu_block_call).setVisible(z);
            contextMenu.findItem(R$id.menu_block_sms).setVisible(z);
            contextMenu.findItem(R$id.menu_block_ndp).setVisible(a == 1);
            MenuItem findItem = contextMenu.findItem(R$id.menu_block_delete);
            boolean z2 = false;
            if (a != 7) {
                z2 = false;
                if (a != 13) {
                    z2 = false;
                    if (a != 5) {
                        z2 = true;
                    }
                }
            }
            findItem.setVisible(z2);
            dVar = new DialogC14669c.C14674d(getActivity(), contextMenu);
        } else if (this.f29197l.equals(view)) {
            getActivity().getMenuInflater().inflate(R$menu.context_blocklistsetting_kind, contextMenu);
            str = (String) this.f29197l.getTag();
            contextMenu.findItem(R$id.menu_block_both).setVisible(o);
            contextMenu.findItem(R$id.menu_block_sms).setVisible(o);
            dVar = new DialogC14669c.C14674d(getActivity(), contextMenu);
        } else {
            dVar = null;
            str = null;
        }
        if (dVar != null) {
            if (str != null) {
                int e = m5043e(str);
                if (e != 0) {
                    dVar.m890a(e);
                    dVar.m887b(R$drawable.ic_check_green);
                    dVar.m886c(ContextCompat.getColor(this.f29191f, 2131100116));
                }
                if (!C12810o.m5234k()) {
                    dVar.m889a(R$id.menu_block_both, getString(R$string.blocklist_menu_action_set));
                    dVar.m889a(R$id.menu_block_sms, getString(R$string.blocklist_menu_action_set));
                }
            }
            dVar.m891a();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m5019m0();
        AbstractC6207d dVar = this.f29205t;
        if (dVar != null) {
            dVar.mo23571a((ViewGroup) this.f29194i);
            this.f29205t.mo23568b();
            this.f29205t = null;
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C14247d.m2061b(AdUnit.BLOCK);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f29198m = true;
        C6192e.m23607a(AdUnit.BLOCK.m28821a()).m23594h();
        this.f29206u.m3029c(false);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f29198m = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C14247d.m2061b(AdUnit.BLOCK);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C14289m.m1892a("block", this.f29206u.m3022b());
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (m6067Q()) {
            this.f29206u.m3028d(z);
        }
    }
}
