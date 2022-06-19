package p193e.p194a.p195a.p200c.p203c;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.draft.SharedTextDraftsArguments;
import com.truecaller.messaging.linkpreviews.LinkPreviewDraftView;
import com.truecaller.messaging.views.MediaEditText;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5669i;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5671k;
import p193e.p194a.p195a.p200c.p219p8.C5668h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b@\u0010\u001eJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u001eJ)\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00122\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u001eJ\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u001eR\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006A"}, d2 = {"Le/a/a/c/c/b;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/c/x;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "m1", "()Ljava/lang/String;", "text", "setText", "(Ljava/lang/String;)V", "", "res", "M3", "(I)V", "a", "finish", "()V", "w0", "x1", "title", "description", "Landroid/net/Uri;", "imageUrl", "P4", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V", "n1", "j1", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", AbstractC2405c.f7629a, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "sendButton", "Landroidx/appcompat/widget/Toolbar;", C22021b.f61237c, "Landroidx/appcompat/widget/Toolbar;", "toolbar", "Lcom/truecaller/messaging/views/MediaEditText;", "Lcom/truecaller/messaging/views/MediaEditText;", "editText", "Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;", "d", "Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;", "linkPreviewDraftView", "Le/a/a/c/c/w;", "e", "Le/a/a/c/c/w;", "OA", "()Le/a/a/c/c/w;", "setPresenter", "(Le/a/a/c/c/w;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.c.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/b.class */
public final class C5126b extends Fragment implements AbstractC5166x {

    /* renamed from: a */
    public MediaEditText f17524a;

    /* renamed from: b */
    public Toolbar f17525b;

    /* renamed from: c */
    public FloatingActionButton f17526c;

    /* renamed from: d */
    public LinkPreviewDraftView f17527d;
    @Inject

    /* renamed from: e */
    public AbstractC5165w f17528e;

    /* renamed from: e.a.a.c.c.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/c/b$a.class */
    public static final class View$OnClickListenerC5127a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17529a;

        /* renamed from: b */
        public final /* synthetic */ Object f17530b;

        public View$OnClickListenerC5127a(int i, Object obj) {
            this.f17529a = i;
            this.f17530b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17529a;
            if (i == 0) {
                ((C5126b) this.f17530b).m33819OA().mo33701m();
            } else if (i != 1) {
                throw null;
            } else {
                ((C5126b) this.f17530b).m33819OA().mo33704Z();
            }
        }
    }

    /* renamed from: e.a.a.c.c.b$b */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/c/b$b.class */
    public static final class DialogInterface$OnClickListenerC5128b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17531a;

        /* renamed from: b */
        public final /* synthetic */ Object f17532b;

        public DialogInterface$OnClickListenerC5128b(int i, Object obj) {
            this.f17531a = i;
            this.f17532b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f17531a;
            if (i2 == 0) {
                ((C5126b) this.f17532b).m33819OA().mo33700t();
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C5126b) this.f17532b).m33819OA().mo33699w();
            }
        }
    }

    /* renamed from: e.a.a.c.c.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/b$c.class */
    public static final class View$OnClickListenerC5129c implements View.OnClickListener {
        public View$OnClickListenerC5129c() {
            C5126b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5126b.this.m33819OA().mo33702l();
        }
    }

    /* renamed from: e.a.a.c.c.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/b$d.class */
    public static final class C5130d extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5130d() {
            super(1);
            C5126b.this = r4;
        }

        /* renamed from: d */
        public Object m33818d(Object obj) {
            C5126b.this.m33819OA().mo33703k(String.valueOf((Editable) obj), true);
            return s.a;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: M3 */
    public void mo33714M3(int i) {
        FloatingActionButton floatingActionButton = this.f17526c;
        if (floatingActionButton != null) {
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(C19291g.m13612L(requireContext(), i)));
        } else {
            s1.z.c.l.l("sendButton");
            throw null;
        }
    }

    /* renamed from: OA */
    public final AbstractC5165w m33819OA() {
        AbstractC5165w abstractC5165w = this.f17528e;
        if (abstractC5165w != null) {
            return abstractC5165w;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: P4 */
    public void mo33713P4(String str, String str2, Uri uri) {
        s1.z.c.l.e(str, "title");
        s1.z.c.l.e(str2, "description");
        LinkPreviewDraftView linkPreviewDraftView = this.f17527d;
        if (linkPreviewDraftView == null) {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
        linkPreviewDraftView.setVisibility(0);
        LinkPreviewDraftView linkPreviewDraftView2 = this.f17527d;
        if (linkPreviewDraftView2 == null) {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
        linkPreviewDraftView2.setTitle(str);
        LinkPreviewDraftView linkPreviewDraftView3 = this.f17527d;
        if (linkPreviewDraftView3 == null) {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
        linkPreviewDraftView3.setDescription(str2);
        LinkPreviewDraftView linkPreviewDraftView4 = this.f17527d;
        if (linkPreviewDraftView4 == null) {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
        linkPreviewDraftView4.setImage(uri);
        LinkPreviewDraftView linkPreviewDraftView5 = this.f17527d;
        if (linkPreviewDraftView5 != null) {
            linkPreviewDraftView5.setOnRemoveClickListener(new View$OnClickListenerC5129c());
        } else {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: a */
    public void mo33712a(int i) {
        Toast.makeText(requireContext(), i, 1).show();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: j1 */
    public void mo33711j1() {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.DialogSendGroupSmsTitle);
        g_a.m3664e(C2752R.string.DialogSendGroupSmsMessage);
        g_a.m3660i(C2752R.string.DialogSendGroupSmsButtonSms, new DialogInterface$OnClickListenerC5128b(0, this));
        g_a.m3662g(C2752R.string.DialogSendGroupSmsButtonMms, new DialogInterface$OnClickListenerC5128b(1, this));
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: m1 */
    public String mo33710m1() {
        MediaEditText mediaEditText = this.f17524a;
        if (mediaEditText != null) {
            return mediaEditText.getText().toString();
        }
        s1.z.c.l.l("editText");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: n1 */
    public void mo33709n1() {
        LinkPreviewDraftView linkPreviewDraftView = this.f17527d;
        if (linkPreviewDraftView != null) {
            linkPreviewDraftView.setVisibility(8);
        } else {
            s1.z.c.l.l("linkPreviewDraftView");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        SharedTextDraftsArguments sharedTextDraftsArguments;
        C5126b.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (sharedTextDraftsArguments = (SharedTextDraftsArguments) arguments.getParcelable("shared_text_drafts")) == null) {
            return;
        }
        C5164v c5164v = new C5164v(sharedTextDraftsArguments);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c5164v, C5164v.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f17528e = (AbstractC5165w) new C5134d(c5164v, mo10154s, null).f17553f.get();
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_text_draft, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5126b.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(2131366512);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.toolbar)");
        this.f17525b = (Toolbar) findViewById;
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            Toolbar toolbar = this.f17525b;
            if (toolbar == null) {
                s1.z.c.l.l("toolbar");
                throw null;
            }
            hVar.setSupportActionBar(toolbar);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
        }
        Toolbar toolbar2 = this.f17525b;
        if (toolbar2 == null) {
            s1.z.c.l.l("toolbar");
            throw null;
        }
        toolbar2.setNavigationOnClickListener(new View$OnClickListenerC5127a(0, this));
        View findViewById2 = view.findViewById(2131363455);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.editText)");
        MediaEditText mediaEditText = (MediaEditText) findViewById2;
        this.f17524a = mediaEditText;
        C19291g.m13542j(mediaEditText, new C5130d());
        FloatingActionButton findViewById3 = view.findViewById(2131365654);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.sendButton)");
        this.f17526c = findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.link_preview);
        s1.z.c.l.d(findViewById4, "view.findViewById(R.id.link_preview)");
        this.f17527d = (LinkPreviewDraftView) findViewById4;
        FloatingActionButton floatingActionButton = this.f17526c;
        if (floatingActionButton == null) {
            s1.z.c.l.l("sendButton");
            throw null;
        }
        floatingActionButton.setOnClickListener(new View$OnClickListenerC5127a(1, this));
        AbstractC5165w abstractC5165w = this.f17528e;
        if (abstractC5165w != null) {
            abstractC5165w.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    public void setText(String str) {
        s1.z.c.l.e(str, "text");
        MediaEditText mediaEditText = this.f17524a;
        if (mediaEditText != null) {
            mediaEditText.setText(str);
        } else {
            s1.z.c.l.l("editText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: w0 */
    public void mo33708w0() {
        TruecallerInit.m34565Xa(requireActivity(), "messages", "forwardMessages");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5166x
    /* renamed from: x1 */
    public void mo33707x1() {
        MediaEditText mediaEditText = this.f17524a;
        if (mediaEditText == null) {
            s1.z.c.l.l("editText");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        mediaEditText.addTextChangedListener(new C5668h(requireContext, true));
        MediaEditText mediaEditText2 = this.f17524a;
        if (mediaEditText2 == null) {
            s1.z.c.l.l("editText");
            throw null;
        }
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        MediaEditText mediaEditText3 = this.f17524a;
        if (mediaEditText3 == null) {
            s1.z.c.l.l("editText");
            throw null;
        }
        mediaEditText2.setCustomSelectionActionModeCallback(new ActionMode$CallbackC5671k(requireContext2, mediaEditText3, true));
        MediaEditText mediaEditText4 = this.f17524a;
        if (mediaEditText4 == null) {
            s1.z.c.l.l("editText");
            throw null;
        }
        Context requireContext3 = requireContext();
        s1.z.c.l.d(requireContext3, "requireContext()");
        MediaEditText mediaEditText5 = this.f17524a;
        if (mediaEditText5 != null) {
            mediaEditText4.setCustomInsertionActionModeCallback(new ActionMode$CallbackC5669i(requireContext3, mediaEditText5, true));
        } else {
            s1.z.c.l.l("editText");
            throw null;
        }
    }
}
