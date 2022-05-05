package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.core.role.RoleManagerCompat;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationActivityUiState;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import gogolook.callgogolook2.phone.SettingResultActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14308w;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity.class */
public class ConversationActivity extends BugleActionBarActivity implements ContactPickerFragment.AbstractC4727i, FragmentC11932c.AbstractC11956v, ConversationActivityUiState.AbstractC4754b {

    /* renamed from: h */
    public ConversationActivityUiState f11658h;

    /* renamed from: i */
    public boolean f11659i;

    /* renamed from: j */
    public boolean f11660j;

    /* renamed from: k */
    public boolean f11661k;

    /* renamed from: l */
    public String f11662l;

    /* renamed from: m */
    public String f11663m;

    /* renamed from: n */
    public String f11664n;

    /* renamed from: o */
    public Uri f11665o;

    /* renamed from: r */
    public Subscription f11668r;

    /* renamed from: w */
    public MessageData f11673w;

    /* renamed from: p */
    public NumberInfo f11666p = null;

    /* renamed from: q */
    public boolean f11667q = false;

    /* renamed from: s */
    public int f11669s = -1;

    /* renamed from: t */
    public int f11670t = C12810o.m5238g();

    /* renamed from: u */
    public List<String> f11671u = null;

    /* renamed from: v */
    public List<String> f11672v = null;

    /* renamed from: x */
    public C11086o f11674x = new C4746a();

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$a.class */
    public class C4746a extends C11086o {

        /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$a$a.class */
        public class C4747a implements Action1<String> {

            /* renamed from: a */
            public final /* synthetic */ String f11676a;

            /* renamed from: b */
            public final /* synthetic */ NumberInfo f11677b;

            public C4747a(String str, NumberInfo numberInfo) {
                this.f11676a = str;
                this.f11677b = numberInfo;
            }

            /* renamed from: a */
            public void call(String str) {
                if (C14217x3.m2196a((Activity) ConversationActivity.this)) {
                    ConversationActivity.this.m27168a(this.f11676a, str, this.f11677b);
                    ConversationActivity conversationActivity = ConversationActivity.this;
                    conversationActivity.mo27176a(conversationActivity.getSupportActionBar());
                }
            }
        }

        public C4746a() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (C14217x3.m2196a((Activity) ConversationActivity.this) && str != null && numberInfo != null) {
                ConversationActivity.this.f11666p = numberInfo;
                C14217x3.m2176a(str).subscribe(new C4747a(str, numberInfo), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$b.class */
    public class C4748b implements Action1<Object> {
        public C4748b() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14148s0) {
                C14148s0 s0Var = (C14148s0) obj;
                int i = s0Var.f31651a;
                if ((i == 2 || i == 3 || i == 0) && s0Var.f31652b == 0 && !C14217x3.m2173a(ConversationActivity.this.f11671u)) {
                    C11052i.m10328e().m10340a((String) ConversationActivity.this.f11671u.get(0), ConversationActivity.this.f11674x, 0, EnumC11047e.Conversation);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$c.class */
    public class C4749c implements Action1<List<String>> {
        public C4749c() {
        }

        /* renamed from: a */
        public void call(List<String> list) {
            if (C14191v.m2262a((Activity) ConversationActivity.this)) {
                ConversationActivity.this.m27158f(list);
                if (list != null) {
                    if (list.size() == 1) {
                        ConversationActivity.this.m27159e(list);
                    } else if (list.size() > 1) {
                        ConversationActivity.this.f11667q = true;
                    }
                }
                ConversationActivity conversationActivity = ConversationActivity.this;
                conversationActivity.m27162c(conversationActivity.f11664n);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$d.class */
    public class C4750d implements Single.OnSubscribe<List<String>> {
        public C4750d() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super List<String>> singleSubscriber) {
            singleSubscriber.onSuccess(C11521c.m9329k(AbstractC11528g.m9259k().mo9244f(), ConversationActivity.this.f11664n));
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$e.class */
    public class C4751e implements Action1<String> {
        public C4751e() {
        }

        /* renamed from: a */
        public void call(String str) {
            if (!C14191v.m2262a((Activity) ConversationActivity.this)) {
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                ConversationActivity.this.m27162c(str);
            } else {
                C12212s0.m6796a((int) R$string.conversation_creation_failure);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivity$f.class */
    public class C4752f implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ List f11683a;

        public C4752f(ConversationActivity conversationActivity, List list) {
            this.f11683a = list;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            C11534l f = AbstractC11528g.m9259k().mo9244f();
            C11521c.m9337d(this.f11683a);
            ArrayList<String> c = C11521c.m9341c(this.f11683a);
            long a = C11834j.m8126a(AbstractC11516a.m9413n().mo9412a(), c);
            String str = null;
            if (a < 0) {
                singleSubscriber.onSuccess(null);
                return;
            }
            if (c.size() == 1) {
                str = c.get(0);
            }
            singleSubscriber.onSuccess(C11521c.m9382a(f, a, str, (List<ParticipantData>) this.f11683a, false, false, (String) null));
        }
    }

    /* renamed from: G */
    public final ContactPickerFragment m27182G() {
        return (ContactPickerFragment) getFragmentManager().findFragmentByTag("contactpicker");
    }

    /* renamed from: H */
    public final FragmentC11932c m27181H() {
        return (FragmentC11932c) getFragmentManager().findFragmentByTag("ConversationFragment");
    }

    /* renamed from: I */
    public String m27180I() {
        ConversationActivityUiState conversationActivityUiState = this.f11658h;
        return conversationActivityUiState == null ? null : conversationActivityUiState.m27140t();
    }

    /* renamed from: J */
    public MessageData m27179J() {
        return this.f11673w;
    }

    /* renamed from: K */
    public FragmentC11932c.AbstractC11956v m27178K() {
        return this;
    }

    /* renamed from: L */
    public void m27177L() {
        FragmentC11932c H = m27181H();
        if (H == null || !H.m7876M()) {
            mo7776h();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: a */
    public CharSequence mo7782a(String str, boolean z) {
        int indexOf;
        if (TextUtils.isEmpty(this.f11662l) || (indexOf = str.toLowerCase().indexOf(this.f11662l)) < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (!z) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-16777216), indexOf, this.f11662l.length() + indexOf, 33);
        }
        spannableStringBuilder.setSpan(new BackgroundColorSpan(Color.parseColor("#e6fcff27")), indexOf, this.f11662l.length() + indexOf, 33);
        return spannableStringBuilder;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: a */
    public void mo7783a(int i) {
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationActivityUiState.AbstractC4754b
    /* renamed from: a */
    public void mo27133a(int i, int i2, boolean z) {
        C12151d.m6999b(i != i2);
        m27161c(z);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity
    /* renamed from: a */
    public void mo27176a(ActionBar actionBar) {
        super.mo27176a(actionBar);
        FragmentC11932c H = m27181H();
        ContactPickerFragment G = m27182G();
        if (G != null && this.f11658h.m27134z()) {
            G.m27270a(actionBar);
        } else if (H != null && this.f11658h.m27149A()) {
            H.m7839b(actionBar);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: a */
    public void mo27169a(String str) {
        C12151d.m6999b(str != null);
        this.f11658h.m27145a(str);
    }

    /* renamed from: a */
    public final void m27168a(String str, String str2, NumberInfo numberInfo) {
        C14123p4.m2429b(getWindow(), C14123p4.m2441a(RowInfo.m28249a(C14108o4.m2474l(str), str2, numberInfo), !TextUtils.isEmpty(str2)));
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: b */
    public void mo7780b(int i) {
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: b */
    public void mo27165b(List<ParticipantData> list) {
        ArrayList arrayList = new ArrayList();
        for (ParticipantData participantData : list) {
            arrayList.add(participantData.m27519x());
        }
        m27158f(arrayList);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: b */
    public void mo27164b(boolean z) {
        this.f11658h.m27144a(z);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, p459j.p460a.p474c0.p499h.C12140a0.AbstractC12141a
    /* renamed from: c */
    public void mo7035c(int i) {
        super.mo7035c(i);
        m27391b();
    }

    /* renamed from: c */
    public final void m27162c(String str) {
        if (this.f11658h == null) {
            Intent intent = getIntent();
            this.f11658h = new ConversationActivityUiState(str);
            this.f11658h.m27146a(this);
            this.f11659i = false;
            m27161c(false);
            String stringExtra = intent.getStringExtra("attachment_uri");
            if (!TextUtils.isEmpty(stringExtra)) {
                String stringExtra2 = intent.getStringExtra("attachment_type");
                Rect a = C12212s0.m6792a(findViewById(R$id.conversation_and_compose_container));
                if (C12205r.m6809d(stringExtra2)) {
                    AbstractC12126w.m7095a().mo7093a((Activity) this, Uri.parse(stringExtra), a, MessagingContentProvider.m27779a(this.f11658h.m27140t()), true);
                } else if (C12205r.m6804i(stringExtra2)) {
                    AbstractC12126w.m7095a().mo7076a(this, Uri.parse(stringExtra));
                }
            }
        }
    }

    /* renamed from: c */
    public final void m27161c(boolean z) {
        if (!this.f11659i) {
            C12151d.m7000b(this.f11658h);
            Intent intent = getIntent();
            String t = this.f11658h.m27140t();
            FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
            boolean A = this.f11658h.m27149A();
            boolean z2 = this.f11658h.m27134z();
            FragmentC11932c H = m27181H();
            if (A) {
                C12151d.m7000b(t);
                FragmentC11932c cVar = H;
                if (H == null) {
                    cVar = new FragmentC11932c();
                    beginTransaction.add(R$id.conversation_fragment_container, cVar, "ConversationFragment");
                }
                this.f11673w = (MessageData) intent.getParcelableExtra("draft_data");
                if (!z2) {
                    intent.removeExtra("draft_data");
                }
                cVar.m7858a(this);
                cVar.m7869a(this, t, this.f11673w, this.f11670t);
            } else if (H != null) {
                H.m7873P();
                beginTransaction.remove(H);
            }
            ContactPickerFragment G = m27182G();
            if (z2) {
                ContactPickerFragment contactPickerFragment = G;
                if (G == null) {
                    contactPickerFragment = new ContactPickerFragment();
                    beginTransaction.add(R$id.contact_picker_fragment_container, contactPickerFragment, "contactpicker");
                }
                contactPickerFragment.m27269a(this);
                contactPickerFragment.m27271a(this.f11658h.m27139u(), z);
            } else if (G != null) {
                beginTransaction.remove(G);
            }
            if (!this.f11659i) {
                beginTransaction.commit();
                m27391b();
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: d */
    public void mo7778d() {
        this.f11658h.m27136x();
    }

    /* renamed from: d */
    public final void m27160d(List<String> list) {
        if (list == null || list.size() <= 0) {
            m27162c((String) null);
            C14123p4.m2429b(getWindow(), C14167t.m2315a(2131100101));
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            String trim = str.trim();
            if (!TextUtils.isEmpty(trim)) {
                arrayList.add(ParticipantData.m27527i(trim));
            }
        }
        Single.create(new C4752f(this, arrayList)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4751e(), C14081m3.m2611a());
    }

    /* renamed from: e */
    public final void m27159e(List<String> list) {
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(list.get(0))) {
            C11052i.m10328e().m10340a(list.get(0).trim(), this.f11674x, 0, EnumC11047e.Conversation);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: f */
    public int mo7777f() {
        return this.f11669s;
    }

    /* renamed from: f */
    public final void m27158f(List<String> list) {
        List<String> list2 = this.f11671u;
        if (list2 != null) {
            list2.clear();
        } else {
            this.f11671u = new ArrayList();
        }
        this.f11671u.addAll(list);
        List<String> list3 = this.f11672v;
        if (list3 != null) {
            list3.clear();
        } else {
            this.f11672v = new ArrayList();
        }
        for (String str : list) {
            this.f11672v.add(C14108o4.m2474l(str));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: h */
    public void mo7776h() {
        if (C14017g4.m2805s()) {
            finishAfterTransition();
        } else {
            finish();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: j */
    public void mo7774j() {
        m27391b();
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: l */
    public List<String> mo7772l() {
        return this.f11671u;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: n */
    public boolean mo7771n() {
        return this.f11658h.m27135y();
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: o */
    public boolean mo7770o() {
        return !this.f11660j && hasWindowFocus();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2 && i2 == -1) {
            FragmentC11932c H = m27181H();
            if (H != null) {
                H.m7878K();
            } else {
                C12153d0.m6987b("MessagingApp", "ConversationFragment is missing after launching AttachmentChooserActivity!");
            }
        } else if (i2 == 1) {
            finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (m27386k() != null) {
            m27389c();
            return;
        }
        FragmentC11932c H = m27181H();
        if (H == null || !H.m7877L()) {
            super.onBackPressed();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.conversation_activity);
        Intent intent = getIntent();
        if (bundle != null) {
            this.f11658h = (ConversationActivityUiState) bundle.getParcelable("uistate");
        }
        this.f11669s = intent.getIntExtra("source", -1);
        this.f11670t = intent.getIntExtra("filter_type", -1);
        this.f11664n = intent.getStringExtra("conversation_id");
        this.f11665o = intent.getData();
        this.f11662l = intent.getStringExtra("highlight_key");
        this.f11662l = TextUtils.isEmpty(this.f11662l) ? null : this.f11662l.toLowerCase();
        this.f11663m = intent.getStringExtra("receiver_number");
        if (11 == this.f11669s && !C14217x3.m2160b(this.f11664n)) {
            SmsDialogActivity.m27054P();
            String c = C14308w.m1622c(this.f11664n);
            C14308w wVar = C14308w.f32062d;
            wVar.m1624a(c, "type", 1);
            wVar.m1625a(c, 3);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ConversationActivityUiState conversationActivityUiState = this.f11658h;
        if (conversationActivityUiState != null) {
            conversationActivityUiState.m27146a((ConversationActivityUiState.AbstractC4754b) null);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (super.onOptionsItemSelected(menuItem)) {
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        m27177L();
        return true;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f11660j = true;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f11659i = false;
        this.f11660j = false;
        if (!C12810o.m5244c()) {
            if (this.f11661k) {
                finish();
                return;
            }
            this.f11661k = true;
            SettingResultActivity.m26746b((Context) this, RoleManagerCompat.ROLE_SMS, (Integer) 5);
        } else if (this.f11671u == null && !this.f11667q) {
            if (!TextUtils.isEmpty(this.f11664n)) {
                Single.create(new C4750d()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.m0io()).subscribe(new C4749c(), C14081m3.m2611a());
                return;
            }
            Uri uri = this.f11665o;
            if (uri != null) {
                String[] k = C12216t0.m6752k(uri);
                m27158f(k != null ? Arrays.asList(k) : new ArrayList<>());
                List<String> list = this.f11671u;
                if (list == null) {
                    return;
                }
                if (list.size() == 1) {
                    m27159e(this.f11671u);
                    m27160d(this.f11671u);
                } else if (this.f11671u.size() > 1) {
                    this.f11667q = true;
                }
            } else {
                m27162c((String) null);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ConversationActivityUiState conversationActivityUiState = this.f11658h;
        if (conversationActivityUiState != null) {
            bundle.putParcelable("uistate", conversationActivityUiState.clone());
            this.f11659i = true;
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f11668r = C14037j3.m2731a().mo2703a((Action1) new C4748b());
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        Subscription subscription = this.f11668r;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f11668r.unsubscribe();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        FragmentC11932c H = m27181H();
        if (z && H != null) {
            H.m7874O();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: p */
    public NumberInfo mo7769p() {
        return this.f11666p;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c.AbstractC11956v
    /* renamed from: s */
    public List<String> mo7768s() {
        return this.f11672v;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: w */
    public void mo27157w() {
        this.f11658h.m27137w();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: x */
    public String mo27156x() {
        return this.f11663m;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.AbstractC4727i
    /* renamed from: y */
    public void mo27155y() {
        onBackPressed();
    }
}
