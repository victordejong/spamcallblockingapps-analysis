package p459j.p460a.p474c0.p491g.p493b0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationActivity;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView;
import gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorView;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.messaging.scan.p077ui.MessageScanActivity;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p160h.p179e.p180a.p187n.AbstractC6391b;
import p459j.p460a.p471b1.p473b.C11510a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11596c;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p491g.AbstractActionMode$CallbackC12096m;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.C11922b;
import p459j.p460a.p474c0.p491g.C12086h;
import p459j.p460a.p474c0.p491g.C12111t;
import p459j.p460a.p474c0.p491g.p493b0.C11960e;
import p459j.p460a.p474c0.p491g.p493b0.C11979j;
import p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c;
import p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12140a0;
import p459j.p460a.p474c0.p499h.C12145c;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12188n;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13914b2;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14027i1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14042j4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14305v;
import p459j.p460a.p582w0.p590x4.C14310x;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.c0.g.b0.c */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c.class */
public class FragmentC11932c extends Fragment implements C11596c.AbstractC11599c, ComposeMessageView.AbstractC4745m, ConversationMessageView.AbstractC4767l, C11960e.AbstractC11964d, C11617j.AbstractC11622e, C11979j.AbstractC11980a {

    /* renamed from: A */
    public C11592f<C11617j> f26739A;

    /* renamed from: B */
    public Subscription f26740B;

    /* renamed from: C */
    public int f26741C;

    /* renamed from: a */
    public ConstraintLayout f26743a;

    /* renamed from: b */
    public ConstraintLayout f26744b;

    /* renamed from: c */
    public LinearLayout f26745c;

    /* renamed from: d */
    public ComposeMessageView f26746d;

    /* renamed from: e */
    public RecyclerView f26747e;

    /* renamed from: f */
    public C11969f f26748f;

    /* renamed from: g */
    public TextView f26749g;

    /* renamed from: h */
    public int f26750h;

    /* renamed from: i */
    public View f26751i;

    /* renamed from: j */
    public View f26752j;

    /* renamed from: k */
    public C12188n f26753k;

    /* renamed from: l */
    public String f26754l;

    /* renamed from: m */
    public MessageData f26755m;

    /* renamed from: p */
    public Parcelable f26758p;

    /* renamed from: q */
    public AbstractC11956v f26759q;

    /* renamed from: r */
    public ActionBar f26760r;

    /* renamed from: y */
    public boolean f26767y;

    /* renamed from: z */
    public boolean f26768z;

    /* renamed from: n */
    public int f26756n = C12810o.m5238g();

    /* renamed from: o */
    public final C11589c<C11596c> f26757o = AbstractC11590d.m9040a(this);

    /* renamed from: s */
    public int f26761s = -1;

    /* renamed from: t */
    public final C13930d f26762t = new C13930d();

    /* renamed from: u */
    public boolean f26763u = false;

    /* renamed from: v */
    public int f26764v = -1;

    /* renamed from: w */
    public C11610g f26765w = null;

    /* renamed from: x */
    public final BroadcastReceiver f26766x = new C11945k();

    /* renamed from: D */
    public final RecyclerView.OnScrollListener f26742D = new C11947m();

    /* renamed from: j.a.c0.g.b0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$a.class */
    public class DialogInterface$OnClickListenerC11933a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f26769a;

        /* renamed from: b */
        public final /* synthetic */ DialogC14618f f26770b;

        /* renamed from: j.a.c0.g.b0.c$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$a$a.class */
        public class C11934a implements Single.OnSubscribe<Boolean> {
            public C11934a() {
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
                int i = FragmentC11932c.this.f26756n;
                C11534l f = AbstractC11528g.m9259k().mo9244f();
                DialogInterface$OnClickListenerC11933a aVar = DialogInterface$OnClickListenerC11933a.this;
                String str = aVar.f26769a;
                FragmentC11932c cVar = FragmentC11932c.this;
                boolean a = C11521c.m9373a(f, str, cVar.m7872a(cVar.f26756n));
                C11596c b = FragmentC11932c.this.f26757o.mo9033b();
                NumberInfo p = FragmentC11932c.this.f26759q.mo7769p();
                if (b != null) {
                    C14305v vVar = C14305v.f32041b;
                    String str2 = FragmentC11932c.this.f26754l;
                    String str3 = DialogInterface$OnClickListenerC11933a.this.f26769a;
                    String str4 = C14247d.f31851f;
                    String C = p != null ? p.m28393C() : C14247d.f31851f;
                    if (p != null) {
                        str4 = p.m28383M();
                    }
                    vVar.m1636a(str2, str3, C, str4, FragmentC11932c.this.f26759q.mo7772l().get(0), FragmentC11932c.this.f26759q.mo7768s().get(0), null, false, DialogInterface$OnClickListenerC11933a.this.f26770b.m1009a(), 3, i);
                }
                if (FragmentC11932c.this.m7880I()) {
                    FragmentC11932c cVar2 = FragmentC11932c.this;
                    cVar2.mo7850a(cVar2.f26754l);
                }
                singleSubscriber.onSuccess(Boolean.valueOf(a));
            }
        }

        public DialogInterface$OnClickListenerC11933a(String str, DialogC14618f fVar) {
            this.f26769a = str;
            this.f26770b = fVar;
        }

        /* renamed from: a */
        public /* synthetic */ void m7790a(Boolean bool) {
            if (bool.booleanValue()) {
                MessagingContentProvider.m27766f(FragmentC11932c.this.f26754l);
                C14687h.m862a(FragmentC11932c.this.getActivity(), 1 == FragmentC11932c.this.f26756n ? R$string.move_sms_toast_to_spam : R$string.move_sms_toast_to_general, 1).m858c();
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Single.create(new C11934a()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action1() { // from class: j.a.c0.g.b0.a
                @Override // p660rx.functions.Action1
                public final void call(Object obj) {
                    FragmentC11932c.DialogInterface$OnClickListenerC11933a.this.m7790a((Boolean) obj);
                }
            }, C14081m3.m2611a());
        }
    }

    /* renamed from: j.a.c0.g.b0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$b.class */
    public class DialogInterface$OnClickListenerC11935b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11935b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FragmentC11932c.this.f26759q.m7779c();
        }
    }

    /* renamed from: j.a.c0.g.b0.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$c.class */
    public class DialogInterface$OnClickListenerC11936c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f26774a;

        public DialogInterface$OnClickListenerC11936c(String str) {
            this.f26774a = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FragmentC11932c.this.f26757o.mo9033b().m9008a(FragmentC11932c.this.f26757o, this.f26774a);
            FragmentC11932c.this.f26759q.m7779c();
            if (FragmentC11932c.this.m7880I()) {
                FragmentC11932c cVar = FragmentC11932c.this;
                cVar.mo7850a(cVar.f26754l);
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$d.class */
    public static final class DialogInterface$OnClickListenerC11937d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ComposeMessageView f26776a;

        public DialogInterface$OnClickListenerC11937d(ComposeMessageView composeMessageView) {
            this.f26776a = composeMessageView;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f26776a.m27190s();
        }
    }

    /* renamed from: j.a.c0.g.b0.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$e.class */
    public static final class DialogInterface$OnClickListenerC11938e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f26777a;

        /* renamed from: b */
        public final /* synthetic */ Activity f26778b;

        public DialogInterface$OnClickListenerC11938e(String str, Activity activity) {
            this.f26777a = str;
            this.f26778b = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FragmentC11932c.m7849a(this.f26777a, this.f26778b);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$f.class */
    public class C11939f extends AbstractC6391b {

        /* renamed from: a */
        public final /* synthetic */ ActionBar f26779a;

        /* renamed from: j.a.c0.g.b0.c$f$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$f$a.class */
        public class RunnableC11940a implements Runnable {
            public RunnableC11940a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C11939f fVar = C11939f.this;
                FragmentC11932c.this.m7839b(fVar.f26779a);
            }
        }

        public C11939f(ActionBar actionBar) {
            this.f26779a = actionBar;
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo7788a() {
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo4669a(int i) {
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo4668a(int i, NumInfo numInfo) throws Exception {
            if (numInfo != null && FragmentC11932c.this.getActivity() != null) {
                FragmentC11932c.this.getActivity().runOnUiThread(new RunnableC11940a());
            }
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: b */
        public void mo7787b() {
        }
    }

    /* renamed from: j.a.c0.g.b0.c$g */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$g.class */
    public class C11941g implements C12086h.AbstractC12090d {

        /* renamed from: a */
        public final /* synthetic */ ConversationMessageView f26782a;

        /* renamed from: b */
        public final /* synthetic */ boolean f26783b;

        /* renamed from: c */
        public final /* synthetic */ MessagePartData f26784c;

        public C11941g(ConversationMessageView conversationMessageView, boolean z, MessagePartData messagePartData) {
            this.f26782a = conversationMessageView;
            this.f26783b = z;
            this.f26784c = messagePartData;
        }

        @Override // p459j.p460a.p474c0.p491g.C12086h.AbstractC12090d
        /* renamed from: a */
        public void mo7194a(Menu menu) {
            C11610g c = this.f26782a.m27111c();
            FragmentC11932c.this.getActivity().getMenuInflater().inflate(R$menu.conversation_fragment_select_menu, menu);
            menu.findItem(R$id.details_menu).setVisible(false);
            menu.findItem(R$id.action_download).setVisible(!this.f26783b && c.m8935I());
            menu.findItem(R$id.action_resend).setVisible(this.f26783b && c.m8934J());
            menu.findItem(R$id.save_attachment).setVisible(!this.f26783b && this.f26784c != null);
            menu.findItem(R$id.forward_message_menu).setVisible(!this.f26783b && c.m8898g());
            menu.findItem(R$id.copy_text).setVisible(!this.f26783b && c.m8900f());
            boolean z = false;
            if (FragmentC11932c.this.f26761s != 1) {
                z = false;
                if (FragmentC11932c.this.f26761s != 3) {
                    z = false;
                    if (c.m8919a()) {
                        z = true;
                    }
                }
            }
            MenuItem findItem = menu.findItem(R$id.change_type);
            findItem.setVisible(z);
            if (z) {
                findItem.setTitle(1 == FragmentC11932c.this.f26756n ? R$string.message_context_menu_to_spam : R$string.message_context_menu_to_general);
            }
        }

        @Override // p459j.p460a.p474c0.p491g.C12086h.AbstractC12090d
        /* renamed from: a */
        public void mo7193a(MenuItem menuItem) {
            if (menuItem != null) {
                FragmentC11932c.this.f26765w = this.f26782a.m27111c();
                if (2131362146 == menuItem.getItemId() || C12810o.m5232m()) {
                    FragmentC11932c.this.m7841b(menuItem.getItemId());
                    return;
                }
                FragmentC11932c.this.f26764v = menuItem.getItemId();
                C12810o.m5261a((Context) FragmentC11932c.this.getActivity(), (Object) this, (Integer) 4, (Integer) null).show();
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$h */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$h.class */
    public class DialogInterface$OnClickListenerC11942h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Collection f26786a;

        public DialogInterface$OnClickListenerC11942h(Collection collection) {
            this.f26786a = collection;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            for (C11979j.C11981b bVar : this.f26786a) {
                FragmentC11932c.this.f26757o.mo9033b().m9008a(FragmentC11932c.this.f26757o, bVar.f26862a);
            }
            FragmentC11932c.this.f26759q.m7779c();
            if (FragmentC11932c.this.m7880I()) {
                FragmentC11932c cVar = FragmentC11932c.this;
                cVar.mo7850a(cVar.f26754l);
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$i */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$i.class */
    public class C11943i implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ boolean f26788a;

        public C11943i(boolean z) {
            this.f26788a = z;
        }

        /* renamed from: a */
        public void call(Integer num) {
            FragmentC11932c.this.f26761s = num.intValue();
            int intValue = num.intValue();
            if (intValue != 1) {
                if (intValue == 2) {
                    FragmentC11932c.this.f26749g.setText(R$string.conversation_page_number_white_list);
                } else if (intValue != 3) {
                    FragmentC11932c.this.f26749g.setText("");
                } else if (C12810o.m5232m()) {
                    FragmentC11932c.this.f26749g.setText(R$string.conversation_page_number_blocked_and_add_white_list);
                } else {
                    FragmentC11932c.this.f26749g.setText(R$string.conversation_page_number_white_list);
                }
            } else if (C12810o.m5232m()) {
                FragmentC11932c.this.f26749g.setText(R$string.conversation_page_number_blocked);
            }
            FragmentC11932c.this.m7840b(num.intValue(), this.f26788a);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$j */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$j.class */
    public class C11944j implements Single.OnSubscribe<Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f26790a;

        public C11944j(String str) {
            this.f26790a = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Integer> singleSubscriber) {
            FragmentC11932c cVar = FragmentC11932c.this;
            singleSubscriber.onSuccess(Integer.valueOf(cVar.m7870a(cVar.getActivity(), this.f26790a)));
        }
    }

    /* renamed from: j.a.c0.g.b0.c$k */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$k.class */
    public class C11945k extends BroadcastReceiver {
        public C11945k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("conversation_id");
            String stringExtra2 = intent.getStringExtra("conversation_self_id");
            C12151d.m7000b(stringExtra);
            C12151d.m7000b(stringExtra2);
            if (TextUtils.equals(FragmentC11932c.this.f26757o.mo9033b().m8990f(), stringExtra)) {
                FragmentC11932c.this.f26746d.m27227a(stringExtra2);
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$l */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$l.class */
    public class C11946l implements Single.OnSubscribe<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f26793a;

        public C11946l(FragmentC11932c cVar, String str) {
            this.f26793a = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            C13625a.m3784e(MyApplication.m29013o(), this.f26793a);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$m */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$m.class */
    public class C11947m extends RecyclerView.OnScrollListener {

        /* renamed from: a */
        public int f26794a;

        /* renamed from: b */
        public boolean f26795b;

        /* renamed from: c */
        public boolean f26796c = true;

        /* renamed from: d */
        public int f26797d = 0;

        public C11947m() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 0) {
                this.f26794a = 0;
                this.f26795b = false;
            } else if (i == 1) {
                FragmentC11932c.this.f26747e.getItemAnimator().endAnimations();
            }
            this.f26797d = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (this.f26797d == 1 && !this.f26795b) {
                this.f26794a += i2;
                if (this.f26794a < (-FragmentC11932c.this.f26741C) && !FragmentC11932c.this.mo7793w()) {
                    FragmentC11932c.this.f26746d.m27218c(false);
                    this.f26795b = true;
                }
            }
            if (this.f26796c != FragmentC11932c.this.m7879J()) {
                ViewPropertyAnimator animate = FragmentC11932c.this.f26751i.animate();
                FragmentC11932c.this.m7879J();
                animate.alpha(0.0f);
                this.f26796c = FragmentC11932c.this.m7879J();
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$n */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$n.class */
    public class View$OnClickListenerC11948n implements View.OnClickListener {
        public View$OnClickListenerC11948n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FragmentC11932c.this.mo7793w()) {
                ((BugleActionBarActivity) FragmentC11932c.this.getActivity()).m27388e(((C11979j) FragmentC11932c.this.f26759q.m7775i()).m7671a(((ConversationMessageView) view).m27111c()));
                FragmentC11932c.this.f26748f.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$o */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$o.class */
    public class View$OnLongClickListenerC11949o implements View.OnLongClickListener {
        public View$OnLongClickListenerC11949o() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!FragmentC11932c.this.mo7793w()) {
                return false;
            }
            ((BugleActionBarActivity) FragmentC11932c.this.getActivity()).m27388e(((C11979j) FragmentC11932c.this.f26759q.m7775i()).m7671a(((ConversationMessageView) view).m27111c()));
            FragmentC11932c.this.f26748f.notifyDataSetChanged();
            return true;
        }
    }

    /* renamed from: j.a.c0.g.b0.c$p */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$p.class */
    public class C11950p implements Action1<Object> {
        public C11950p() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14148s0) {
                C14148s0 s0Var = (C14148s0) obj;
                int i = s0Var.f31651a;
                if ((i == 2 || i == 3 || i == 0) && s0Var.f31652b == 0) {
                    FragmentC11932c.this.m7882G();
                    FragmentC11932c.this.m7833b(true, false);
                }
            } else if (obj instanceof C13914b2) {
                FragmentC11932c.this.m7882G();
                FragmentC11932c.this.m7833b(true, false);
            } else if (obj instanceof C14027i1) {
                MessageData messageData = ((C14027i1) obj).f31468a;
                if (FragmentC11932c.this.f26754l != null && messageData != null && FragmentC11932c.this.f26754l.equals(messageData.m27593s())) {
                    C14289m.m1911a(FragmentC11932c.this.f26759q.mo7777f(), 1, FragmentC11932c.this.f26759q.mo7772l() != null ? FragmentC11932c.this.f26759q.mo7772l().size() : 0, messageData.m27642D(), FragmentC11932c.this.f26762t.m3021b(true), FragmentC11932c.this.f26759q.mo7772l(), FragmentC11932c.this.f26759q.mo7768s(), FragmentC11932c.this.m7886C(), C14131q4.m2411a(messageData.m27588x()) != 0, FragmentC11932c.this.f26756n);
                }
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.c$q */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$q.class */
    public class DialogInterface$OnClickListenerC11951q implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11951q() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FragmentC11932c.this.m7791z();
        }
    }

    /* renamed from: j.a.c0.g.b0.c$r */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$r.class */
    public class RunnableC11952r implements Runnable {
        public RunnableC11952r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC11932c.this.m7823d(true);
            FragmentC11932c.this.f26746d.m27218c(false);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$s */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$s.class */
    public class RunnableC11953s implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MessageData f26804a;

        public RunnableC11953s(MessageData messageData) {
            this.f26804a = messageData;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC11932c.this.mo7865a(this.f26804a);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$t */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$t.class */
    public class RunnableC11954t implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f26806a;

        public RunnableC11954t(String str) {
            this.f26806a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC11932c.this.m7812h(this.f26806a);
        }
    }

    /* renamed from: j.a.c0.g.b0.c$u */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$u.class */
    public static class C11955u {

        /* renamed from: a */
        public final Uri f26808a;

        /* renamed from: b */
        public final String f26809b;

        /* renamed from: c */
        public Uri f26810c;

        public C11955u(Uri uri, String str) {
            this.f26808a = uri;
            this.f26809b = str;
        }
    }

    /* renamed from: j.a.c0.g.b0.c$v */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$v.class */
    public interface AbstractC11956v extends C12140a0.AbstractC12141a {
        /* renamed from: a */
        CharSequence mo7782a(String str, boolean z);

        /* renamed from: a */
        void mo7783a(int i);

        /* renamed from: b */
        void m7781b();

        /* renamed from: b */
        void mo7780b(int i);

        /* renamed from: c */
        void m7779c();

        /* renamed from: d */
        void mo7778d();

        /* renamed from: f */
        int mo7777f();

        /* renamed from: h */
        void mo7776h();

        /* renamed from: i */
        ActionMode.Callback m7775i();

        /* renamed from: j */
        void mo7774j();

        /* renamed from: k */
        ActionMode m7773k();

        /* renamed from: l */
        List<String> mo7772l();

        /* renamed from: n */
        boolean mo7771n();

        /* renamed from: o */
        boolean mo7770o();

        /* renamed from: p */
        NumberInfo mo7769p();

        /* renamed from: s */
        List<String> mo7768s();

        ActionMode startActionMode(ActionMode.Callback callback);
    }

    /* renamed from: j.a.c0.g.b0.c$w */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/c$w.class */
    public static class AsyncTaskC11957w extends AbstractAsyncTaskC12189n0<Void, Void, Void> {

        /* renamed from: e */
        public final Context f26811e;

        /* renamed from: f */
        public final List<C11955u> f26812f = new ArrayList();

        public AsyncTaskC11957w(Context context) {
            this.f26811e = context;
        }

        public AsyncTaskC11957w(Context context, Uri uri, String str) {
            this.f26811e = context;
            m7767a(uri, str);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo6854a(Void... voidArr) {
            if (!C11510a.m9437c(this.f26811e)) {
                return null;
            }
            if (C14017g4.m2799y()) {
                m7762d();
                return null;
            }
            m7763c();
            return null;
        }

        /* renamed from: a */
        public void m7767a(Uri uri, String str) {
            this.f26812f.add(new C11955u(uri, str));
        }

        /* renamed from: a */
        public void onPostExecute(Void r11) {
            String str;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (C11955u uVar : this.f26812f) {
                if (uVar.f26810c == null) {
                    i4++;
                } else {
                    Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                    intent.setData(uVar.f26810c);
                    intent.setPackage(this.f26811e.getPackageName());
                    this.f26811e.sendBroadcast(intent);
                    if (C12205r.m6809d(uVar.f26809b)) {
                        i++;
                    } else if (C12205r.m6804i(uVar.f26809b)) {
                        i2++;
                    } else {
                        int i5 = i3 + 1;
                        DownloadManager downloadManager = (DownloadManager) this.f26811e.getSystemService("download");
                        File file = new File(uVar.f26810c.getPath());
                        i3 = i5;
                        if (file.exists()) {
                            downloadManager.addCompletedDownload(file.getName(), this.f26811e.getString(R$string.attachment_file_description), true, uVar.f26809b, file.getAbsolutePath(), file.length(), false);
                            i3 = i5;
                        }
                    }
                }
            }
            int i6 = i + i2;
            int i7 = i6 + i3;
            if (i4 > 0) {
                str = String.format(this.f26811e.getResources().getString(i4 > 1 ? R$string.attachment_save_error_other : R$string.attachment_save_error_one), Integer.valueOf(i4));
            } else {
                int i8 = i7 > 1 ? R$string.attachments_saved_other : R$string.attachments_saved_one;
                if (i3 <= 0) {
                    i8 = i2 == 0 ? i7 > 1 ? R$string.photos_saved_to_album_other : R$string.photos_saved_to_album_one : i == 0 ? C6298e.m23342c() ? R$string.videos_saved_to_movies_whoscall : i7 > 1 ? R$string.videos_saved_to_album_other : R$string.videos_saved_to_album_one : i7 > 1 ? R$string.attachments_saved_to_album_other : R$string.attachments_saved_to_album_one;
                } else if (i6 == 0) {
                    i8 = i7 > 1 ? R$string.attachments_saved_to_downloads_other : R$string.attachments_saved_to_downloads_one;
                }
                str = String.format(this.f26811e.getResources().getString(i8), Integer.valueOf(i7), this.f26811e.getResources().getString(2131886242));
            }
            C14687h.m861a(this.f26811e, str, 1).m858c();
        }

        /* renamed from: b */
        public int m7764b() {
            return this.f26812f.size();
        }

        /* renamed from: c */
        public final void m7763c() {
            r0 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), this.f26811e.getResources().getString(2131886242));
            File file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            for (C11955u uVar : this.f26812f) {
                boolean z = C12205r.m6809d(uVar.f26809b) || C12205r.m6804i(uVar.f26809b);
                Uri uri = uVar.f26808a;
                if (z) {
                }
                uVar.f26810c = C12216t0.m6772a(uri, file, uVar.f26809b);
            }
        }

        /* renamed from: d */
        public final void m7762d() {
            int size = this.f26812f.size();
            for (int i = 0; i < size; i++) {
                C11955u uVar = this.f26812f.get(i);
                uVar.f26810c = C12216t0.m6771a(uVar.f26808a, uVar.f26809b, i, this.f26811e.getResources().getString(2131886242));
            }
        }
    }

    /* renamed from: a */
    public static void m7867a(Uri uri, Rect rect, boolean z, String str, Activity activity) {
        AbstractC12126w.m7095a().mo7093a(activity, uri, rect, z ? MessagingContentProvider.m27770d(str) : MessagingContentProvider.m27779a(str), !z);
    }

    /* renamed from: a */
    public static void m7849a(String str, Activity activity) {
        AbstractC12126w.m7095a().mo7092a(activity, str, 2);
    }

    /* renamed from: a */
    public static void m7845a(ArrayList<String> arrayList, Uri uri, Rect rect, boolean z, Activity activity) {
        AbstractC12126w.m7095a().mo7091a(activity, arrayList, uri, rect, !z);
    }

    /* renamed from: a */
    public static void m7844a(boolean z, ComposeMessageView composeMessageView, String str, Activity activity, boolean z2) {
        AlertDialog.Builder title = new AlertDialog.Builder(activity).setTitle(R$string.mms_attachment_limit_reached);
        if (z) {
            if (z2) {
                title.setMessage(R$string.video_attachment_limit_exceeded_when_sending);
            } else {
                title.setMessage(R$string.attachment_limit_reached_dialog_message_when_sending).setNegativeButton(R$string.attachment_limit_reached_send_anyway, new DialogInterface$OnClickListenerC11937d(composeMessageView));
            }
            title.setPositiveButton(17039370, new DialogInterface$OnClickListenerC11938e(str, activity));
        } else {
            title.setMessage(R$string.attachment_limit_reached_dialog_message_when_composing).setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
        }
        title.show();
    }

    /* renamed from: A */
    public final boolean m7888A() {
        C11596c b = this.f26757o.mo9033b();
        if (!b.m8975p()) {
            return false;
        }
        Iterator<ParticipantData> it = b.m8976o().iterator();
        while (it.hasNext()) {
            if (it.next().m27550H()) {
                C12212s0.m6796a((int) R$string.unknown_sender);
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    public String m7887B() {
        return this.f26757o.mo9033b().m8988g();
    }

    /* renamed from: C */
    public final String m7886C() {
        return getActivity() != null ? getActivity().getTitle().toString() : "";
    }

    /* renamed from: D */
    public final FragmentManager m7885D() {
        return getChildFragmentManager();
    }

    /* renamed from: E */
    public final int m7884E() {
        return Math.max((this.f26748f.getItemCount() - 1) - ((LinearLayoutManager) this.f26747e.getLayoutManager()).findLastVisibleItemPosition(), 0);
    }

    /* renamed from: F */
    public final int m7883F() {
        Intent intent;
        Activity activity = getActivity();
        if (activity == null || (intent = activity.getIntent()) == null) {
            return -1;
        }
        return intent.getIntExtra("message_position", -1);
    }

    /* renamed from: G */
    public final void m7882G() {
        Activity activity = getActivity();
        if (activity != null && (activity instanceof BugleActionBarActivity)) {
            ((BugleActionBarActivity) activity).supportInvalidateOptionsMenu();
        }
    }

    /* renamed from: H */
    public final boolean m7881H() {
        return this.f26759q != null && this.f26757o.mo9031c();
    }

    /* renamed from: I */
    public final boolean m7880I() {
        boolean z = true;
        if (1 != this.f26748f.getItemCount()) {
            z = false;
        }
        return z;
    }

    /* renamed from: J */
    public final boolean m7879J() {
        boolean z = true;
        if (this.f26747e.getChildCount() == 0) {
            return true;
        }
        RecyclerView recyclerView = this.f26747e;
        View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
        int findLastVisibleItemPosition = ((LinearLayoutManager) this.f26747e.getLayoutManager()).findLastVisibleItemPosition();
        int i = findLastVisibleItemPosition;
        if (findLastVisibleItemPosition < 0) {
            RecyclerView.ViewHolder findViewHolderForItemId = this.f26747e.findViewHolderForItemId(this.f26747e.getChildItemId(childAt));
            i = findLastVisibleItemPosition;
            if (findViewHolderForItemId != null) {
                i = findViewHolderForItemId.getAdapterPosition();
            }
        }
        if (!(i + 1 == this.f26747e.getAdapter().getItemCount()) || childAt.getBottom() > this.f26747e.getHeight()) {
            z = false;
        }
        return z;
    }

    /* renamed from: K */
    public void m7878K() {
        this.f26768z = true;
    }

    /* renamed from: L */
    public boolean m7877L() {
        ComposeMessageView composeMessageView = this.f26746d;
        return composeMessageView != null && composeMessageView.m27193o();
    }

    /* renamed from: M */
    public boolean m7876M() {
        return this.f26746d.m27192p();
    }

    /* renamed from: N */
    public final void m7875N() {
        Activity activity;
        if (!m7881H() && (activity = getActivity()) != null && (activity instanceof ConversationActivity)) {
            ConversationActivity conversationActivity = (ConversationActivity) activity;
            this.f26759q = conversationActivity.m27178K();
            this.f26754l = conversationActivity.m27180I();
            this.f26755m = conversationActivity.m27179J();
            this.f26757o.mo9038b((C11589c<C11596c>) AbstractC11528g.m9259k().mo9253a(activity, this, this.f26754l, this.f26756n));
            try {
                this.f26757o.m9043d();
            } catch (IllegalStateException e) {
                activity.finish();
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: O */
    public void m7874O() {
        if (this.f26759q.mo7770o()) {
            this.f26757o.mo9033b().m8972s();
        }
    }

    /* renamed from: P */
    public void m7873P() {
        this.f26767y = true;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11623f
    /* renamed from: a */
    public int mo7384a() {
        ParticipantData d = this.f26757o.mo9033b().m8992d(this.f26746d.m27214e());
        return d == null ? -1 : d.m27517z();
    }

    /* renamed from: a */
    public final int m7872a(int i) {
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 1;
        }
        throw new IllegalStateException("Attempted to switch an invalid filter type");
    }

    /* renamed from: a */
    public final int m7870a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        C12942i a = C12928g.m5000a().m4996a(context, str, "", 2);
        boolean c = C14063l4.m2667c(str);
        if (a.m4960d() && c) {
            return 3;
        }
        if (c) {
            return 2;
        }
        return a.m4960d() ? 1 : 0;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: a */
    public CharSequence mo7847a(String str, boolean z) {
        AbstractC11956v vVar = this.f26759q;
        CharSequence charSequence = str;
        if (vVar != null) {
            charSequence = vVar.mo7782a(str, z);
        }
        return charSequence;
    }

    /* renamed from: a */
    public final void m7871a(int i, boolean z) {
        if (z) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f26747e.getLayoutManager();
            int findFirstVisibleItemPosition = i - linearLayoutManager.findFirstVisibleItemPosition();
            int max = findFirstVisibleItemPosition > 15 ? Math.max(0, i - 15) : findFirstVisibleItemPosition < -15 ? Math.min(linearLayoutManager.getItemCount() - 1, i + 15) : -1;
            if (max != -1) {
                this.f26747e.scrollToPosition(max);
            }
            this.f26747e.smoothScrollToPosition(i);
            return;
        }
        this.f26747e.scrollToPosition(i);
    }

    /* renamed from: a */
    public void m7869a(Context context, String str, MessageData messageData, int i) {
        if (!this.f26757o.mo9031c()) {
            this.f26754l = str;
            this.f26755m = messageData;
            this.f26756n = i;
            this.f26757o.mo9038b((C11589c<C11596c>) AbstractC11528g.m9259k().mo9253a(context, this, str, this.f26756n));
            ConstraintLayout constraintLayout = this.f26744b;
            int i2 = 0;
            if (constraintLayout != null) {
                constraintLayout.setVisibility(2 == this.f26756n ? 0 : 8);
            }
            ComposeMessageView composeMessageView = this.f26746d;
            if (composeMessageView != null) {
                composeMessageView.setVisibility(2 == this.f26756n ? 8 : 0);
            }
            LinearLayout linearLayout = this.f26745c;
            if (linearLayout != null) {
                if (2 != this.f26756n) {
                    i2 = 8;
                }
                linearLayout.setVisibility(i2);
                return;
            }
            return;
        }
        C12151d.m6999b(TextUtils.equals(this.f26757o.mo9033b().m8990f(), str));
    }

    /* renamed from: a */
    public void m7868a(Uri uri, Rect rect, boolean z) {
        m7867a(uri, rect, z, this.f26754l, getActivity());
    }

    /* renamed from: a */
    public final void m7866a(ActionBar actionBar) {
        if (this.f26757o.mo9033b().m8975p() && !this.f26757o.mo9033b().m8984i() && this.f26757o.mo9033b().m8978m() <= 0) {
            String l = this.f26757o.mo9033b().m8979l();
            if (!TextUtils.isEmpty(l) && C12145c.m7023a(l) == null) {
                C12145c.m7022a(l, new C11939f(actionBar));
            }
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: a */
    public void mo7865a(MessageData messageData) {
        if (!mo7809j()) {
            mo7843a(true, (Runnable) new RunnableC11953s(messageData));
        } else if (m7888A()) {
            messageData.m27594r();
            this.f26757o.mo9033b().m9009a(this.f26757o, messageData);
            this.f26746d.m27191r();
            NumberInfo p = this.f26759q.mo7769p();
            String l = this.f26757o.mo9033b().m8979l();
            boolean z = !C14217x3.m2160b(C14217x3.m2146e(getActivity(), l));
            boolean b = z ? C13915b3.m3059b("isContactSmsPopup") : C13915b3.m3059b("isStrangerSmsPopup");
            boolean i = this.f26757o.mo9033b().m8984i();
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            if (i) {
                Iterator<ParticipantData> it = this.f26757o.mo9033b().m8976o().m8873q().iterator();
                while (it.hasNext()) {
                    ParticipantData next = it.next();
                    if (sb.length() != 0) {
                        sb.append(",");
                        sb2.append(",");
                    }
                    sb.append(C14108o4.m2474l(next.m27534c()));
                    sb2.append(next.m27537a(false));
                }
            }
            String sb3 = i ? sb.toString() : C14108o4.m2474l(l);
            String sb4 = i ? sb2.toString() : z ? C14217x3.m2146e(getActivity(), l) : C14108o4.m2493a(l, true, false);
            String a = C14042j4.m2727a(sb3);
            C14310x xVar = C14310x.f32065c;
            xVar.m1619a("sms_type", 2);
            xVar.m1619a("contact", Boolean.valueOf(z));
            xVar.m1619a("dialog_setting", Boolean.valueOf(b));
            xVar.m1619a("dialog_popup", "no_show_others");
            xVar.m1619a("sms_notification", false);
            xVar.m1619a("enable_default_sms", Boolean.valueOf(C12810o.m5236i()));
            xVar.m1619a("remote_e164", sb3);
            String str = null;
            xVar.m1619a("spam_category", p == null ? null : p.m28383M());
            xVar.m1619a(CacheIndexRealmObject.DISPLAY_NAME, sb4);
            boolean z2 = false;
            if (p != null) {
                z2 = false;
                if (p.m28381O() > 0) {
                    z2 = true;
                }
            }
            xVar.m1619a("s_spam", Boolean.valueOf(z2));
            if (p != null) {
                str = p.m28393C();
            }
            xVar.m1619a("s_name", str);
            xVar.m1619a("c_spam", Boolean.valueOf(!C14217x3.m2160b(a)));
            xVar.m1619a("c_name", a);
            xVar.m1621a();
        } else {
            C12153d0.m6981e("MessagingApp", "Message can't be sent: conv participants not loaded");
        }
    }

    /* renamed from: a */
    public final void m7864a(ConversationMessageView conversationMessageView, MessagePartData messagePartData) {
        m7862a(conversationMessageView, messagePartData, false);
    }

    /* renamed from: a */
    public final void m7862a(ConversationMessageView conversationMessageView, MessagePartData messagePartData, boolean z) {
        if (conversationMessageView != null) {
            C12086h.m7199a(getActivity(), new C11941g(conversationMessageView, z, messagePartData));
        } else {
            C12086h.m7195d();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
    /* renamed from: a */
    public void mo7730a(C11596c cVar) {
        this.f26757o.mo9034a((C11589c<C11596c>) cVar);
        this.f26748f.notifyDataSetChanged();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
    /* renamed from: a */
    public void mo7861a(C11596c cVar, Cursor cursor, C11610g gVar, boolean z) {
        this.f26757o.mo9034a((C11589c<C11596c>) cVar);
        boolean J = m7879J();
        int E = m7884E();
        this.f26748f.m7702a(!cVar.m8975p() || cVar.m8980k() != null, false);
        m7882G();
        Cursor a = this.f26748f.m7204a(cursor);
        if (!(cursor == null || a != null || this.f26758p == null)) {
            this.f26747e.getLayoutManager().onRestoreInstanceState(this.f26758p);
            this.f26742D.onScrolled(this.f26747e, 0, 0);
        }
        if (z) {
            m7871a(Math.max((this.f26748f.getItemCount() - 1) - E, 0), false);
        } else if (gVar != null) {
            if (J || !gVar.m8893k()) {
                m7823d(!J);
            } else if (this.f26757o.mo9033b().m8973r()) {
                C12212s0.m6793a(getActivity(), getView().getRootView(), getString(R$string.in_conversation_notify_new_message_text), C12111t.C12113b.m7139a(new RunnableC11952r(), getString(R$string.in_conversation_notify_new_message_action)), null, C12111t.C12115d.m7123a(this.f26746d));
            }
        }
        if (cursor != null) {
            this.f26759q.mo7780b(cursor.getCount());
            int F = m7883F();
            if (F >= 0) {
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "onConversationMessagesCursorUpdated  scrollToPos: " + F + " cursorCount: " + cursor.getCount());
                }
                m7871a(F, true);
                m7792y();
            }
        }
        this.f26759q.m7781b();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7860a(C11617j jVar) {
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7859a(C11617j jVar, int i) {
        this.f26739A.mo9034a((C11592f<C11617j>) jVar);
        if (i == C11617j.f26070s) {
            this.f26768z = true;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: a */
    public void mo7728a(C11634p.C11635a aVar) {
        this.f26746d.m27229a(aVar);
        this.f26759q.mo7778d();
    }

    /* renamed from: a */
    public void m7858a(AbstractC11956v vVar) {
        this.f26759q = vVar;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
    /* renamed from: a */
    public void mo7850a(String str) {
        if (TextUtils.equals(str, this.f26754l)) {
            this.f26759q.mo7776h();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: a */
    public void mo7848a(String str, String str2, List<String> list, int i, String str3) {
        C14289m.m1911a(this.f26759q.mo7777f(), i, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), true, this.f26756n);
        String n = this.f26757o.mo9033b().m8977n();
        String str4 = n;
        if (TextUtils.isEmpty(n)) {
            str4 = "";
        }
        C14191v.m2259a(getActivity(), MessageScanActivity.m27495a(getActivity(), new SmsMessage(str, str4, str2, list), str3));
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: a */
    public void mo7846a(ArrayList<String> arrayList, Uri uri, Rect rect, boolean z) {
        m7845a(arrayList, uri, rect, z, getActivity());
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11979j.AbstractC11980a
    /* renamed from: a */
    public void mo7668a(Collection<C11979j.C11981b> collection) {
        if (mo7809j()) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(getActivity());
            fVar.m979b(getString(R$string.delete_confirm_text));
            fVar.m977c(4);
            fVar.m978b(getString(R$string.okok), new DialogInterface$OnClickListenerC11942h(collection));
            fVar.m984a(getString(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m982b();
            return;
        }
        mo7843a(false, (Runnable) null);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: a */
    public void mo7727a(boolean z) {
        setHasOptionsMenu(z);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: a */
    public void mo7843a(boolean z, Runnable runnable) {
        if (this.f26753k == null) {
            this.f26753k = new C12188n(1);
        }
        this.f26753k.m6858a(runnable, getActivity(), this);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: a */
    public void mo7842a(boolean z, boolean z2) {
        m7844a(z, this.f26746d, this.f26754l, getActivity(), z2);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: a */
    public boolean mo7863a(ConversationMessageView conversationMessageView, MessagePartData messagePartData, Rect rect) {
        if (mo7793w()) {
            return false;
        }
        if (messagePartData != null) {
            if (messagePartData.m27560x()) {
                m7868a(messagePartData.m27567q(), rect, false);
            }
            if (!messagePartData.m27585A()) {
                return false;
            }
            AbstractC12126w.m7095a().mo7065c(getActivity(), messagePartData.m27567q());
            return false;
        }
        int N = conversationMessageView.m27111c().m8930N();
        if (!(!conversationMessageView.m27111c().m8893k() && (N == 6 || N == 7 || N == 8 || N == 9))) {
            return false;
        }
        m7862a(conversationMessageView, messagePartData, true);
        return false;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: b */
    public C11634p.C11635a mo7834b(String str, boolean z) {
        return this.f26757o.mo9033b().m9000a(str, z);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: b */
    public void mo7726b() {
        this.f26746d.m27187v();
        this.f26759q.m7781b();
    }

    /* renamed from: b */
    public final void m7841b(int i) {
        String q = this.f26765w.m8887q();
        Activity activity = getActivity();
        switch (i) {
            case R$id.action_delete_message /* 2131361852 */:
                m7820e(q);
                C11931b.m7889a("delete", this.f26756n);
                break;
            case R$id.action_download /* 2131361856 */:
                m7815g(q);
                break;
            case R$id.action_resend /* 2131361871 */:
                m7812h(q);
                break;
            case R$id.change_type /* 2131362062 */:
                m7824d(q);
                C11931b.m7889a("move", this.f26756n);
                break;
            case R$id.copy_text /* 2131362146 */:
                C12151d.m6999b(this.f26765w.m8926R());
                ((ClipboardManager) activity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.f26765w.m8929O()));
                C11931b.m7889a("copy", this.f26756n);
                break;
            case R$id.details_menu /* 2131362182 */:
                C11977i.m7674d(activity, this.f26765w, this.f26757o.mo9033b().m8976o(), this.f26757o.mo9033b().m8992d(this.f26765w.m8880x()));
                break;
            case R$id.forward_message_menu /* 2131362313 */:
                AbstractC12126w.m7095a().mo7069b(getActivity(), 12, this.f26757o.mo9033b().m9001a(this.f26765w));
                C11931b.m7889a("forward", this.f26756n);
                break;
            case R$id.save_attachment /* 2131363135 */:
                if (C11510a.m9437c(MyApplication.m29013o())) {
                    AsyncTaskC11957w wVar = new AsyncTaskC11957w(getActivity());
                    for (MessagePartData messagePartData : this.f26765w.m8910b()) {
                        wVar.m7767a(messagePartData.m27567q(), messagePartData.m27569c());
                    }
                    if (wVar.m7764b() > 0) {
                        wVar.m6852b(new Void[0]);
                        this.f26759q.m7779c();
                        break;
                    }
                } else {
                    ActivityCompat.requestPermissions(activity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
                    break;
                }
                break;
        }
        this.f26765w = null;
    }

    /* renamed from: b */
    public final void m7840b(int i, boolean z) {
        ActionBar actionBar = this.f26760r;
        boolean z2 = true;
        if (!(actionBar != null && (actionBar.isShowing() || z)) || mo7793w() || i <= 0) {
            z2 = false;
        }
        this.f26749g.setVisibility(z2 ? 0 : 8);
        int height = this.f26743a.getHeight();
        RecyclerView recyclerView = this.f26747e;
        recyclerView.setPadding(0, this.f26750h + height, 0, recyclerView.getPaddingBottom());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r0.m27236a(r9) == false) goto L_0x0016;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005c, code lost:
        if (r0.getId() != 2131362142) goto L_0x005f;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7839b(androidx.appcompat.app.ActionBar r9) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.m7839b(androidx.appcompat.app.ActionBar):void");
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
    /* renamed from: b */
    public void mo7729b(C11596c cVar) {
        this.f26757o.mo9034a((C11589c<C11596c>) cVar);
        if (this.f26757o.mo9033b().m8975p()) {
            this.f26748f.m7702a(this.f26757o.mo9033b().m8980k() != null, true);
            m7882G();
            this.f26759q.m7781b();
            this.f26747e.setVisibility(0);
            this.f26759q.mo7783a(this.f26757o.mo9033b().m8982j());
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: b */
    public void mo7725b(boolean z) {
    }

    /* renamed from: b */
    public final void m7833b(boolean z, boolean z2) {
        int i;
        String l = this.f26757o.mo9033b().m8979l();
        if (this.f26747e != null && this.f26749g != null && this.f26752j != null && !TextUtils.isEmpty(l)) {
            View view = this.f26752j;
            ActionBar actionBar = this.f26760r;
            view.setVisibility((actionBar == null || !actionBar.isShowing() || !mo7793w()) ? 8 : 0);
            if (z || -1 == (i = this.f26761s)) {
                Single.create(new C11944j(l)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11943i(z2));
            } else {
                m7840b(i, z2);
            }
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: b */
    public boolean mo7838b(ConversationMessageView conversationMessageView, MessagePartData messagePartData, Rect rect) {
        if (mo7793w()) {
            return false;
        }
        m7864a(conversationMessageView, messagePartData);
        return true;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: b */
    public boolean mo7835b(String str) {
        if (mo7793w()) {
            return ((C11979j) this.f26759q.m7775i()).m7670a(str);
        }
        return false;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: c */
    public void mo7724c() {
        this.f26759q.m7779c();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
    /* renamed from: c */
    public void mo7831c(C11596c cVar) {
        this.f26757o.mo9034a((C11589c<C11596c>) cVar);
        C12086h.m7195d();
        m7882G();
        this.f26759q.mo7774j();
        this.f26748f.notifyDataSetChanged();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: c */
    public void mo7828c(String str) {
        m7815g(str);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: c */
    public void mo7827c(boolean z) {
    }

    /* renamed from: c */
    public final boolean m7832c(int i) {
        Point point;
        Activity activity = getActivity();
        switch (i) {
            case R$id.action_block /* 2131361843 */:
                String l = this.f26757o.mo9033b().m8979l();
                String e = C14108o4.m2481e(l);
                if (TextUtils.isEmpty(e)) {
                    return true;
                }
                C14289m.m1911a(this.f26759q.mo7777f(), 3, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), this.f26763u, this.f26756n);
                C14289m.m1909a(6, 1, l);
                NumberInfo p = this.f26759q.mo7769p();
                C12928g.m4989a((Context) activity, false, true, true, e, (HandlerC12947l) null, 2, new DataUserReport(e, l, p == null ? "" : p.m28393C(), p == null ? "" : p.m28383M(), DataUserReport.Source.SMS));
                return true;
            case R$id.action_call /* 2131361845 */:
                String n = this.f26757o.mo9033b().m8977n();
                C12151d.m7000b(n);
                View findViewById = activity.findViewById(R$id.action_call);
                if (findViewById != null) {
                    int[] iArr = new int[2];
                    findViewById.getLocationOnScreen(iArr);
                    point = new Point(iArr[0] + (findViewById.getWidth() / 2), iArr[1] + (findViewById.getHeight() / 2));
                } else {
                    Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
                    point = new Point(defaultDisplay.getWidth() / 2, defaultDisplay.getHeight() / 2);
                }
                C14289m.m1911a(this.f26759q.mo7777f(), 2, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), this.f26763u, this.f26756n);
                AbstractC12126w.m7095a().mo7074a(activity, n, point);
                return true;
            case R$id.action_delete /* 2131361851 */:
                if (mo7809j()) {
                    DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(activity);
                    fVar.m979b(getString(R$string.delete_confirm_text));
                    fVar.m977c(4);
                    fVar.m978b(getString(R$string.okok), new DialogInterface$OnClickListenerC11951q());
                    fVar.m984a(getString(R$string.cancel), (DialogInterface.OnClickListener) null);
                    fVar.m982b();
                    return true;
                }
                mo7843a(false, (Runnable) null);
                return true;
            case R$id.action_edit /* 2131361857 */:
                this.f26759q.startActionMode(new C11979j(this));
                this.f26746d.m27218c(true);
                m7833b(false, false);
                return true;
            case R$id.action_remove_white_list /* 2131361869 */:
                m7817f(this.f26757o.mo9033b().m8979l());
                return true;
            case R$id.action_unblock /* 2131361876 */:
                String l2 = this.f26757o.mo9033b().m8979l();
                if (TextUtils.isEmpty(l2)) {
                    return true;
                }
                C12928g.m4997a(activity, l2, 2, "", (View.OnClickListener) null, DataUserReport.Source.SMS);
                return true;
            default:
                return false;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: d */
    public void mo7723d() {
        this.f26759q.mo7778d();
    }

    /* renamed from: d */
    public void m7824d(String str) {
        if (mo7809j()) {
            int i = 1 == this.f26756n ? R$string.move_sms_dialog_to_spam_title : R$string.move_sms_dialog_to_general_title;
            int i2 = 1 == this.f26756n ? R$string.move_sms_dialog_to_spam_content : R$string.move_sms_dialog_to_general_content;
            DialogC14618f fVar = new DialogC14618f(getActivity());
            fVar.setTitle(i);
            fVar.m995c(i2);
            fVar.m1000b(R$string.callend_sms_report_checkbox_title);
            fVar.m1001a(true);
            fVar.m1007a(R$string.cancel, (DialogInterface.OnClickListener) null);
            fVar.m999b(R$string.move_sms_dialog_move_btn, new DialogInterface$OnClickListenerC11933a(str, fVar));
            fVar.show();
            return;
        }
        mo7843a(false, (Runnable) null);
    }

    /* renamed from: d */
    public final void m7823d(boolean z) {
        if (this.f26748f.getItemCount() > 0) {
            m7871a(this.f26748f.getItemCount() - 1, z);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: e */
    public void mo7822e() {
        C14289m.m1911a(this.f26759q.mo7777f(), 5, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), true, this.f26756n);
    }

    /* renamed from: e */
    public void m7820e(String str) {
        if (mo7809j()) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(getActivity());
            fVar.m979b(getString(R$string.delete_confirm_text));
            fVar.m977c(4);
            fVar.m978b(getString(R$string.okok), new DialogInterface$OnClickListenerC11936c(str));
            fVar.m984a(getString(R$string.cancel), new DialogInterface$OnClickListenerC11935b());
            fVar.m982b();
            return;
        }
        mo7843a(false, (Runnable) null);
        this.f26759q.m7779c();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: f */
    public void mo7819f() {
        this.f26763u = true;
    }

    /* renamed from: f */
    public final void m7817f(String str) {
        Single.create(new C11946l(this, str)).subscribeOn(Schedulers.m0io()).subscribe();
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: g */
    public int mo7722g() {
        return R$layout.sim_selector_item_view;
    }

    /* renamed from: g */
    public void m7815g(String str) {
        if (mo7809j()) {
            this.f26757o.mo9033b().m8997b(this.f26757o, str);
        } else {
            mo7843a(false, (Runnable) null);
        }
    }

    /* renamed from: h */
    public void m7812h(String str) {
        if (!mo7809j()) {
            mo7843a(true, (Runnable) new RunnableC11954t(str));
        } else if (m7888A()) {
            this.f26757o.mo9033b().m8995c(this.f26757o, str);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: h */
    public boolean mo7814h() {
        return false;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: i */
    public int mo7811i() {
        return -1;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: j */
    public boolean mo7809j() {
        return C12212s0.m6785c();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: k */
    public void mo7807k() {
        m7849a(this.f26754l, getActivity());
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: l */
    public void mo7805l() {
        this.f26759q.mo7778d();
        m7823d(false);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: m */
    public Uri mo7803m() {
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: n */
    public void mo7801n() {
        if (this.f26746d != null) {
            C12140a0.m7038c(getActivity(), this.f26746d);
        }
        FragmentTransaction beginTransaction = getActivity().getFragmentManager().beginTransaction();
        DialogFragmentC11974h a = DialogFragmentC11974h.m7689a(mo7384a());
        a.setTargetFragment(this, 0);
        a.show(beginTransaction, (String) null);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: o */
    public int mo7799o() {
        return C11617j.f26070s;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m7875N();
        if (m7881H()) {
            this.f26747e.setVisibility(4);
            this.f26757o.m9043d();
            this.f26757o.mo9033b().m9011a(getLoaderManager(), this.f26757o);
            this.f26746d.m27228a(new C11960e(getActivity(), this, this.f26746d, this.f26759q, m7885D(), this.f26757o, this.f26746d.m27211f(), bundle));
            this.f26746d.m27232a(AbstractC11590d.m9041a((AbstractC11590d) this.f26757o));
            this.f26759q.m7781b();
            this.f26739A = AbstractC11590d.m9041a((AbstractC11590d) this.f26746d.m27211f());
            this.f26739A.mo9033b().m8826a((C11617j.AbstractC11622e) this);
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if ((i == 3 || i == 4) && i2 == -1) {
            int i3 = this.f26764v;
            if (-1 != i3) {
                if (3 == i) {
                    m7832c(i3);
                } else if (this.f26765w != null) {
                    m7841b(i3);
                }
                this.f26764v = -1;
                C14289m.m1867c(5, C12810o.m5236i());
                return;
            }
            return;
        }
        C12188n nVar = this.f26753k;
        if (nVar != null) {
            nVar.m6859a(i, i2);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f26747e.getItemAnimator().endAnimations();
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26748f = new C11969f(getActivity(), null, this, null, new View$OnClickListenerC11948n(), new View$OnLongClickListenerC11949o());
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.f26759q.m7773k() == null) {
            menuInflater.inflate(R$menu.conversation_menu, menu);
            C11596c b = this.f26757o.mo9033b();
            String l = b.m8979l();
            int a = m7870a(getActivity(), l);
            MenuItem findItem = menu.findItem(R$id.action_edit);
            C11969f fVar = this.f26748f;
            findItem.setVisible(fVar != null && fVar.getItemCount() > 0);
            menu.findItem(R$id.action_unblock).setVisible(1 == a);
            menu.findItem(R$id.action_block).setVisible(!TextUtils.isEmpty(l) && a == 0);
            menu.findItem(R$id.action_remove_white_list).setVisible(2 == a || 3 == a);
            boolean z = false;
            if (AbstractC12181l0.m6886t().m6889q()) {
                z = false;
                if (b.m8977n() != null) {
                    z = true;
                }
            }
            if (getActivity() != null && (getActivity() instanceof AppCompatActivity) && !getActivity().isFinishing()) {
                ActionBar supportActionBar = ((AppCompatActivity) getActivity()).getSupportActionBar();
                View customView = supportActionBar == null ? null : supportActionBar.getCustomView();
                if (customView != null && customView.getId() == 2131362142) {
                    menu.findItem(R$id.action_call).setVisible(z);
                }
            }
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        View inflate = layoutInflater.inflate(R$layout.conversation_fragment, viewGroup, false);
        m7875N();
        if (m7881H()) {
            this.f26747e = (RecyclerView) inflate.findViewById(16908298);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
            linearLayoutManager.setStackFromEnd(true);
            linearLayoutManager.setReverseLayout(false);
            this.f26747e.setHasFixedSize(true);
            this.f26747e.setLayoutManager(linearLayoutManager);
            this.f26747e.setAdapter(this.f26748f);
            if (bundle != null) {
                this.f26758p = bundle.getParcelable("conversationViewState");
            }
            this.f26751i = inflate.findViewById(R$id.conversation_compose_divider);
            this.f26752j = inflate.findViewById(R$id.edit_mode_divider);
            this.f26741C = ViewConfiguration.get(getActivity()).getScaledTouchSlop();
            this.f26747e.addOnScrollListener(this.f26742D);
            this.f26746d = (ComposeMessageView) inflate.findViewById(R$id.message_compose_view_container);
            this.f26746d.m27230a(AbstractC11528g.m9259k().mo9249a(this.f26757o.mo9033b().m8990f()), this);
            this.f26750h = getResources().getDimensionPixelSize(R$dimen.app_action_bar_height);
            this.f26749g = (TextView) inflate.findViewById(R$id.block_status);
            this.f26743a = (ConstraintLayout) inflate.findViewById(R$id.cl_conversation_status);
            this.f26744b = (ConstraintLayout) inflate.findViewById(R$id.cl_spam_type_status);
            this.f26745c = (LinearLayout) inflate.findViewById(R$id.ll_spam_can_not_reply_hint);
            this.f26744b.setVisibility(2 == this.f26756n ? 0 : 8);
            this.f26746d.setVisibility(2 == this.f26756n ? 8 : 0);
            LinearLayout linearLayout = this.f26745c;
            if (2 != this.f26756n) {
                i = 8;
            }
            linearLayout.setVisibility(i);
        }
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ComposeMessageView composeMessageView = this.f26746d;
        if (composeMessageView != null) {
            composeMessageView.m27188u();
        }
        if (this.f26757o.mo9031c()) {
            this.f26757o.m9042e();
        }
        this.f26754l = null;
        C11922b.f26721c.m7891b().m7919a();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Subscription subscription = this.f26740B;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f26740B.unsubscribe();
        }
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (2131361845 == menuItem.getItemId() || 2131362862 == menuItem.getItemId() || C12810o.m5232m()) {
            boolean z = true;
            if (!m7832c(menuItem.getItemId())) {
                z = super.onOptionsItemSelected(menuItem);
            }
            return z;
        }
        this.f26764v = menuItem.getItemId();
        C12810o.m5261a((Context) getActivity(), (Object) this, (Integer) 3, (Integer) null).show();
        return true;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (m7881H()) {
            ComposeMessageView composeMessageView = this.f26746d;
            if (composeMessageView != null && !this.f26767y) {
                composeMessageView.m27183z();
            }
            this.f26767y = false;
            this.f26757o.mo9033b().m8971t();
            this.f26758p = this.f26747e.getLayoutManager().onSaveInstanceState();
            LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.f26766x);
            C11922b.f26721c.m7891b().m7909b();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m7875N();
        if (m7881H()) {
            MessageData messageData = this.f26755m;
            if (messageData == null) {
                this.f26746d.m27212e(this.f26768z);
            } else {
                this.f26746d.m27235a(messageData);
                this.f26755m = null;
            }
            this.f26768z = false;
            if (this.f26759q.mo7771n()) {
                this.f26746d.mo7719a();
            }
            this.f26746d.m27185x();
            m7874O();
            this.f26748f.notifyDataSetChanged();
            LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.f26766x, new IntentFilter("conversation_self_id_change"));
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable parcelable = this.f26758p;
        if (parcelable != null) {
            bundle.putParcelable("conversationViewState", parcelable);
        }
        this.f26746d.m27237a(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f26762t.m3018e();
        m7875N();
        if (m7881H()) {
            C14289m.m1911a(this.f26759q.mo7777f(), 0, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), this.f26763u, this.f26756n);
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f26762t.m3017f();
        if (m7881H()) {
            C14289m.m1911a(this.f26759q.mo7777f(), 4, -1, -1, this.f26762t.m3021b(true), this.f26759q.mo7772l(), this.f26759q.mo7768s(), m7886C(), this.f26763u, this.f26756n);
        }
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f26740B = C14037j3.m2731a().mo2703a((Action1) new C11950p());
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: p */
    public void mo7797p() {
        this.f26746d.m27191r();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: q */
    public void mo7796q() {
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: r */
    public void mo7795r() {
        C12212s0.m6796a((int) R$string.attachment_load_failed_dialog_message);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: s */
    public FragmentC12048l mo7721s() {
        return new FragmentC12048l(getActivity());
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11964d
    /* renamed from: t */
    public SimSelectorView mo7720t() {
        return (SimSelectorView) getView().findViewById(R$id.sim_selector);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.AbstractC4745m
    /* renamed from: u */
    public boolean mo7794u() {
        return true;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11979j.AbstractC11980a
    /* renamed from: v */
    public void mo7667v() {
        if (2 != this.f26756n) {
            this.f26746d.setVisibility(0);
        }
        this.f26748f.notifyDataSetChanged();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4767l
    /* renamed from: w */
    public boolean mo7793w() {
        AbstractC11956v vVar = this.f26759q;
        return (vVar == null || vVar.m7775i() == null || !(this.f26759q.m7775i() instanceof AbstractActionMode$CallbackC12096m)) ? false : true;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11979j.AbstractC11980a
    /* renamed from: x */
    public void mo7666x() {
        if (mo7793w()) {
            this.f26759q.m7779c();
            this.f26748f.notifyDataSetChanged();
        }
    }

    /* renamed from: y */
    public final void m7792y() {
        Intent intent;
        Activity activity = getActivity();
        if (activity != null && (intent = activity.getIntent()) != null) {
            intent.putExtra("message_position", -1);
        }
    }

    /* renamed from: z */
    public void m7791z() {
        if (mo7809j()) {
            this.f26757o.mo9033b().m9010a(this.f26757o, this.f26756n);
            mo7850a(this.f26754l);
            return;
        }
        mo7843a(false, (Runnable) null);
    }
}
