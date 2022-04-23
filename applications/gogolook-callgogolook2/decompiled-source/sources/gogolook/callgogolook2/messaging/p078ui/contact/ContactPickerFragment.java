package gogolook.callgogolook2.messaging.p078ui.contact;

import android.app.Activity;
import android.app.Fragment;
import android.database.Cursor;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.SuperscriptSpan;
import android.transition.Explode;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.CustomHeaderViewPager;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactRecipientAutoCompleteView;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.C11593a;
import p459j.p460a.p474c0.p475c.p478y.C11594b;
import p459j.p460a.p474c0.p491g.AbstractC12093j;
import p459j.p460a.p474c0.p491g.p492a0.C11908a;
import p459j.p460a.p474c0.p491g.p492a0.C11909b;
import p459j.p460a.p474c0.p491g.p492a0.C11914d;
import p459j.p460a.p474c0.p491g.p492a0.C11921g;
import p459j.p460a.p474c0.p491g.p498z.C12136c;
import p459j.p460a.p474c0.p499h.C12140a0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12197q;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment.class */
public class ContactPickerFragment extends Fragment implements C11594b.AbstractC11595a, ContactListItemView.AbstractC4717a, ContactRecipientAutoCompleteView.AbstractC4731d, Toolbar.OnMenuItemClickListener, GetOrCreateConversationAction.AbstractC4622b {

    /* renamed from: b */
    public AbstractC4727i f11593b;

    /* renamed from: c */
    public ContactRecipientAutoCompleteView f11594c;

    /* renamed from: d */
    public CustomHeaderViewPager f11595d;

    /* renamed from: e */
    public C11908a f11596e;

    /* renamed from: f */
    public C11921g f11597f;

    /* renamed from: g */
    public View f11598g;

    /* renamed from: h */
    public View f11599h;

    /* renamed from: i */
    public View f11600i;

    /* renamed from: j */
    public Toolbar f11601j;

    /* renamed from: k */
    public ImageView f11602k;

    /* renamed from: n */
    public GetOrCreateConversationAction.C4623c f11605n;

    /* renamed from: a */
    public final C11589c<C11594b> f11592a = AbstractC11590d.m9040a(this);

    /* renamed from: l */
    public int f11603l = 0;

    /* renamed from: m */
    public Set<String> f11604m = null;

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$a.class */
    public class C4719a implements TextWatcher {
        public C4719a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ContactPickerFragment.this.m27257e();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$b.class */
    public class View$OnClickListenerC4720b implements View.OnClickListener {
        public View$OnClickListenerC4720b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactPickerFragment.this.f11593b.mo27155y();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$c.class */
    public class View$OnClickListenerC4721c implements View.OnClickListener {
        public View$OnClickListenerC4721c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R$id.action_add_more_participants /* 2131361835 */:
                    ContactPickerFragment.this.f11593b.mo27157w();
                    C12140a0.m7041a().m7040a(ContactPickerFragment.this.getActivity(), ContactPickerFragment.this.f11594c);
                    return;
                case R$id.action_confirm_participants /* 2131361847 */:
                    ContactPickerFragment.this.m27263c();
                    return;
                case R$id.action_delete_text /* 2131361853 */:
                    C12151d.m7012a(1, ContactPickerFragment.this.f11603l);
                    ContactPickerFragment.this.f11594c.setText("");
                    return;
                case R$id.action_ime_dialpad_toggle /* 2131361860 */:
                    if ((ContactPickerFragment.this.f11594c.getInputType() & 3) != 3) {
                        ContactPickerFragment.this.f11594c.setInputType(131075);
                        ContactPickerFragment.this.f11602k.setImageResource(R$drawable.abs_text_btn);
                    } else {
                        ContactPickerFragment.this.f11594c.setInputType(131073);
                        ContactPickerFragment.this.f11602k.setImageResource(R$drawable.abs_nb_btn);
                    }
                    C12140a0.m7041a().m7039b(ContactPickerFragment.this.getActivity(), ContactPickerFragment.this.f11594c);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$d.class */
    public class RunnableC4722d implements Runnable {
        public RunnableC4722d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ContactPickerFragment.this.f11594c != null) {
                ContactPickerFragment.this.f11594c.setSelection(ContactPickerFragment.this.f11594c.getText().length());
                ContactPickerFragment.this.f11594c.onEditorAction(ContactPickerFragment.this.f11594c, 6, null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$e.class */
    public class RunnableC4723e implements Runnable {
        public RunnableC4723e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity activity = ContactPickerFragment.this.getActivity();
            if (activity != null) {
                C12140a0.m7041a().m7039b(activity, ContactPickerFragment.this.f11594c);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$f.class */
    public class C4724f extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f11612a;

        public C4724f(ContactPickerFragment contactPickerFragment, Rect rect) {
            this.f11612a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f11612a;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$g.class */
    public class RunnableC4725g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f11613a;

        public RunnableC4725g(boolean z) {
            this.f11613a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactPickerFragment.this.f11595d.setVisibility(this.f11613a ? 0 : 8);
            ContactPickerFragment.this.f11595d.setAlpha(1.0f);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$h.class */
    public class RunnableC4726h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f11615a;

        public RunnableC4726h(boolean z) {
            this.f11615a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactPickerFragment.this.f11595d.setVisibility(0);
            ContactPickerFragment.this.f11595d.setAlpha(this.f11615a ? 0.0f : 1.0f);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactPickerFragment$i.class */
    public interface AbstractC4727i {
        /* renamed from: a */
        void mo27169a(String str);

        /* renamed from: b */
        void m27253b();

        /* renamed from: b */
        void mo27165b(List<ParticipantData> list);

        /* renamed from: b */
        void mo27164b(boolean z);

        /* renamed from: w */
        void mo27157w();

        /* renamed from: x */
        String mo27156x();

        /* renamed from: y */
        void mo27155y();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactRecipientAutoCompleteView.AbstractC4731d
    /* renamed from: a */
    public void mo27242a() {
        if (this.f11603l == 4) {
            m27263c();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactRecipientAutoCompleteView.AbstractC4731d
    /* renamed from: a */
    public void mo27241a(int i) {
        C12151d.m6999b(i > 0);
        C12212s0.m6796a(i > 1 ? R$string.add_invalid_contact_error_other : R$string.add_invalid_contact_error_one);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactRecipientAutoCompleteView.AbstractC4731d
    /* renamed from: a */
    public void mo27240a(int i, int i2) {
        C12151d.m6999b(i != i2);
        int i3 = this.f11603l;
        if (i3 == 1) {
            m27263c();
        } else if (i3 == 2 && i > 0 && this.f11594c.isFocused()) {
            this.f11593b.mo27157w();
        }
        this.f11593b.mo27164b(C11594b.m9019a(i2));
        this.f11604m = this.f11594c.m27251G();
        m27266b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (r4 != 3) goto L_0x0034;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
        if (r4 != 4) goto L_0x0045;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r4 != 2) goto L_0x0023;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27271a(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f11603l
            r6 = r0
            r0 = r6
            r1 = r4
            if (r0 == r1) goto L_0x006b
            r0 = 1
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005c
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L_0x0023
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x005c
        L_0x0023:
            r0 = r3
            int r0 = r0.f11603l
            r1 = 2
            if (r0 != r1) goto L_0x0034
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L_0x005c
        L_0x0034:
            r0 = r3
            int r0 = r0.f11603l
            r1 = 3
            if (r0 != r1) goto L_0x0045
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = 4
            if (r0 == r1) goto L_0x005c
        L_0x0045:
            r0 = r3
            int r0 = r0.f11603l
            r1 = 4
            if (r0 != r1) goto L_0x0059
            r0 = r4
            r1 = 3
            if (r0 != r1) goto L_0x0059
            r0 = r7
            r8 = r0
            goto L_0x005c
        L_0x0059:
            r0 = 0
            r8 = r0
        L_0x005c:
            r0 = r8
            p459j.p460a.p474c0.p499h.C12151d.m6999b(r0)
            r0 = r3
            r1 = r4
            r0.f11603l = r1
            r0 = r3
            r1 = r5
            r0.m27258d(r1)
        L_0x006b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.contact.ContactPickerFragment.m27271a(int, boolean):void");
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11594b.AbstractC11595a
    /* renamed from: a */
    public void mo9014a(Cursor cursor) {
        this.f11592a.m9043d();
        this.f11596e.m7185a(cursor);
    }

    /* renamed from: a */
    public void m27270a(ActionBar actionBar) {
        actionBar.hide();
        C12212s0.m6795a(getActivity(), getResources().getColor(2131100157));
    }

    /* renamed from: a */
    public void m27269a(AbstractC4727i iVar) {
        this.f11593b = iVar;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction.AbstractC4622b
    /* renamed from: a */
    public void mo8773a(C11569a aVar, Object obj) {
        C12151d.m6999b(aVar == this.f11605n);
        C12153d0.m6987b("MessagingApp", "onGetOrCreateConversationFailed");
        this.f11605n = null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction.AbstractC4622b
    /* renamed from: a */
    public void mo8772a(C11569a aVar, Object obj, String str) {
        boolean z = true;
        C12151d.m6999b(aVar == this.f11605n);
        if (str == null) {
            z = false;
        }
        C12151d.m6999b(z);
        this.f11594c.setInputType(131073);
        this.f11593b.mo27169a(str);
        this.f11605n = null;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView.AbstractC4717a
    /* renamed from: a */
    public void mo7938a(C11593a aVar, ContactListItemView contactListItemView) {
        if (!mo7939a(aVar)) {
            if (this.f11603l == 1) {
                this.f11599h = contactListItemView;
            }
            this.f11594c.m36982a(aVar.m9020i());
        } else if (this.f11603l != 1) {
            this.f11594c.m36907k(aVar.m9020i());
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11594b.AbstractC11595a
    /* renamed from: a */
    public void mo9013a(C11594b bVar) {
        this.f11592a.mo9034a((C11589c<C11594b>) bVar);
        m27266b();
    }

    /* renamed from: a */
    public final void m27267a(boolean z) {
        if (z != (this.f11595d.getVisibility() == 0)) {
            this.f11595d.animate().alpha(z ? 1.0f : 0.0f).setStartDelay(!z ? C12212s0.f27370b : 0L).withStartAction(new RunnableC4726h(z)).withEndAction(new RunnableC4725g(z));
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView.AbstractC4717a
    /* renamed from: a */
    public boolean mo7939a(C11593a aVar) {
        Set<String> set = this.f11604m;
        return set != null && set.contains(C14108o4.m2474l(aVar.m9020i().m25027c()));
    }

    /* renamed from: b */
    public final void m27266b() {
        this.f11596e.m7187F();
        this.f11597f.m7187F();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11594b.AbstractC11595a
    /* renamed from: b */
    public void mo9012b(Cursor cursor) {
        this.f11592a.m9043d();
        this.f11597f.m7185a(cursor);
        if (cursor != null && cursor.getCount() == 0) {
            this.f11595d.m27370a(1);
        }
    }

    /* renamed from: b */
    public final void m27264b(boolean z) {
        if (C14017g4.m2805s()) {
            Explode explode = new Explode();
            View view = this.f11599h;
            Rect a = view == null ? null : C12212s0.m6792a(view);
            explode.setDuration(C12212s0.f27370b);
            explode.setInterpolator(C12212s0.f27373e);
            explode.setEpicenterCallback(new C4724f(this, a));
            TransitionManager.beginDelayedTransition(this.f11595d, explode);
            m27261c(z);
        }
    }

    /* renamed from: c */
    public final void m27263c() {
        ArrayList<ParticipantData> F = this.f11594c.m27252F();
        if (C11594b.m9015b(F.size())) {
            C12212s0.m6796a((int) R$string.too_many_participants);
        } else if (F.size() > 0 && this.f11605n == null) {
            this.f11593b.mo27165b(F);
            this.f11605n = GetOrCreateConversationAction.m27713a(F, (Object) null, this);
        }
    }

    /* renamed from: c */
    public final void m27261c(boolean z) {
        if (C14017g4.m2805s()) {
            this.f11596e.m7183a(z, this.f11599h);
            this.f11597f.m7183a(z, this.f11599h);
        }
    }

    /* renamed from: d */
    public final void m27260d() {
        C12151d.m7000b(this.f11594c);
        this.f11594c.requestFocus();
        C12212s0.m6790a(this.f11598g, new RunnableC4723e());
        this.f11594c.invalidate();
    }

    /* renamed from: d */
    public final void m27258d(boolean z) {
        if (this.f11598g != null) {
            int i = this.f11603l;
            if (i == 1) {
                this.f11595d.setVisibility(0);
                this.f11600i.setVisibility(4);
                this.f11594c.setEnabled(true);
                m27260d();
            } else if (i == 2) {
                if (z) {
                    if (this.f11599h == null) {
                        this.f11599h = this.f11601j;
                    }
                    m27264b(false);
                    C12136c.m7045a(this.f11595d, this.f11599h, this.f11598g, true, C12212s0.f27370b);
                    m27267a(false);
                } else {
                    this.f11595d.setVisibility(8);
                }
                this.f11600i.setVisibility(0);
                this.f11594c.setEnabled(true);
            } else if (i == 3) {
                if (z) {
                    this.f11595d.setVisibility(0);
                    m27261c(false);
                    m27264b(true);
                }
                this.f11595d.setVisibility(0);
                this.f11600i.setVisibility(4);
                this.f11594c.setEnabled(true);
            } else if (i != 4) {
                C12151d.m7005a("Unsupported contact picker mode!");
            } else {
                this.f11595d.setVisibility(0);
                this.f11600i.setVisibility(4);
                this.f11594c.setEnabled(false);
            }
            m27257e();
        }
    }

    /* renamed from: e */
    public final void m27257e() {
        int i = this.f11603l;
        if (i != 1) {
            if (i == 2) {
                this.f11602k.setId(R$id.action_add_more_participants);
                this.f11602k.setImageResource(R$drawable.abs_contact_btn);
            } else if (i == 3 || i == 4) {
                this.f11602k.setId(R$id.action_confirm_participants);
                this.f11602k.setImageResource(R$drawable.abs_ok_btn);
            } else {
                C12151d.m7005a("Unsupported contact picker mode!");
            }
        } else if (TextUtils.isEmpty(this.f11594c.getText())) {
            this.f11602k.setId(R$id.action_ime_dialpad_toggle);
            if ((this.f11594c.getInputType() & 3) != 3) {
                this.f11602k.setImageResource(R$drawable.abs_nb_btn);
            } else {
                this.f11602k.setImageResource(R$drawable.abs_text_btn);
            }
        } else {
            this.f11602k.setId(R$id.action_delete_text);
            this.f11602k.setImageResource(R$drawable.abs_delete_btn);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C12151d.m6999b(this.f11603l != 0);
        m27258d(false);
        if (this.f11593b == null && (getActivity() instanceof ConversationActivity)) {
            this.f11593b = (ConversationActivity) getActivity();
        }
        AbstractC4727i iVar = this.f11593b;
        if (iVar != null) {
            iVar.m27253b();
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11596e = new C11908a(getActivity(), this);
        this.f11597f = new C11921g(getActivity(), this);
        if (C12197q.m6821c()) {
            this.f11592a.mo9038b((C11589c<C11594b>) AbstractC11528g.m9259k().mo9254a(getActivity(), this));
            this.f11592a.mo9033b().m9018a(getLoaderManager(), this.f11592a);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R$layout.contact_picker_fragment, viewGroup, false);
        this.f11594c = (ContactRecipientAutoCompleteView) inflate.findViewById(R$id.recipient_text_view);
        this.f11594c.setThreshold(0);
        this.f11594c.setDropDownAnchor(R$id.compose_contact_divider);
        this.f11594c.setDropDownVerticalOffset(0);
        this.f11594c.m27249a(this);
        this.f11594c.m36983a(new C11909b(layoutInflater, getActivity(), this));
        this.f11594c.setAdapter(new C11914d(getActivity(), this));
        this.f11594c.addTextChangedListener(new C4719a());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R$string.recipient_hint));
        spannableStringBuilder.setSpan(new SuperscriptSpan() { // from class: gogolook.callgogolook2.messaging.ui.contact.ContactPickerFragment.2
            @Override // android.text.style.SuperscriptSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.baselineShift += ContactPickerFragment.this.getResources().getDimensionPixelSize(R$dimen.app_contact_picker_edittext_hint_margin_vertical);
            }

            @Override // android.text.style.SuperscriptSpan, android.text.style.MetricAffectingSpan
            public void updateMeasureState(TextPaint textPaint) {
                super.updateMeasureState(textPaint);
                textPaint.baselineShift += ContactPickerFragment.this.getResources().getDimensionPixelSize(R$dimen.app_contact_picker_edittext_hint_margin_vertical);
            }
        }, 0, spannableStringBuilder.length(), 33);
        this.f11594c.setHint(spannableStringBuilder);
        C11921g gVar = this.f11597f;
        C11908a aVar = this.f11596e;
        this.f11595d = (CustomHeaderViewPager) inflate.findViewById(R$id.contact_pager);
        this.f11595d.m27368a(new AbstractC12093j[]{gVar, aVar});
        this.f11595d.m27367b(-1);
        this.f11595d.setBackgroundColor(getResources().getColor(R$color.app_action_mode_background));
        this.f11595d.m27370a(0);
        this.f11601j = (Toolbar) inflate.findViewById(2131363304);
        this.f11601j.setNavigationIcon(R$drawable.abs_back_btn);
        this.f11601j.setNavigationContentDescription(R$string.back);
        this.f11601j.setNavigationOnClickListener(new View$OnClickListenerC4720b());
        this.f11602k = (ImageView) inflate.findViewById(R$id.contact_picker_swap_button);
        this.f11602k.setId(R$id.action_ime_dialpad_toggle);
        this.f11602k.setOnClickListener(new View$OnClickListenerC4721c());
        this.f11600i = inflate.findViewById(R$id.compose_contact_divider);
        this.f11594c.m36993a(this.f11600i);
        this.f11598g = inflate;
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.f11592a.mo9031c()) {
            this.f11592a.m9042e();
        }
        GetOrCreateConversationAction.C4623c cVar = this.f11605n;
        if (cVar != null) {
            cVar.m9091d();
        }
        this.f11605n = null;
    }

    @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R$id.action_add_more_participants /* 2131361835 */:
                this.f11593b.mo27157w();
                return true;
            case R$id.action_confirm_participants /* 2131361847 */:
                m27263c();
                return true;
            case R$id.action_delete_text /* 2131361853 */:
                C12151d.m7012a(1, this.f11603l);
                this.f11594c.setText("");
                return true;
            case R$id.action_ime_dialpad_toggle /* 2131361860 */:
                if ((this.f11594c.getInputType() & 3) != 3) {
                    this.f11594c.setInputType(131075);
                    menuItem.setIcon(R$drawable.ic_ime_light);
                } else {
                    this.f11594c.setInputType(131073);
                    menuItem.setIcon(R$drawable.ic_numeric_dialpad);
                }
                C12140a0.m7041a().m7039b(getActivity(), this.f11594c);
                return true;
            default:
                return false;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (!C14217x3.m2160b(this.f11593b.mo27156x())) {
            this.f11594c.setText(this.f11593b.mo27156x());
            this.f11594c.post(new RunnableC4722d());
        }
    }
}
