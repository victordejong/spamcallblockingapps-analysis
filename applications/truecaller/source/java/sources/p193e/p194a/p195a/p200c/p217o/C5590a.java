package p193e.p194a.p195a.p200c.p217o;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.notifications.ConversationMutePeriod;
import com.truecaller.messaging.conversation.notifications.TwoLinesSwitchView;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18198z;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1114o5.C19063n1;
import p193e.p194a.p1114o5.C19077o1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� W2\u00020\u00012\u00020\u0002:\u0001GB\u0007¢\u0006\u0004\bV\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b!\u0010\u001fJ!\u0010&\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020$H\u0016¢\u0006\u0004\b)\u0010*J)\u0010.\u001a\u00020\u00052\u0006\u0010(\u001a\u00020$2\u0006\u0010+\u001a\u00020$2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J-\u00104\u001a\u00020\u00052\u0006\u0010(\u001a\u00020$2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u0016002\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u001f\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u00020\"2\u0006\u0010(\u001a\u00020$H\u0002¢\u0006\u0004\b7\u0010'R\"\u0010?\u001a\u0002088��@��X\u0081.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001d\u0010E\u001a\u00020@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8��@��X\u0081.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010U\u001a\u00020N8��@��X\u0081.¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010T¨\u0006X"}, d2 = {"Le/a/a/c/o/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/o/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onDestroyView", "bc", "", "text", "cf", "(Ljava/lang/String;)V", "title", "oA", "", "mute", "Uj", "(Z)V", "on", "P8", "Landroid/net/Uri;", "currentUri", "", "activityRequestCode", "q6", "(Landroid/net/Uri;I)V", "requestCode", "Vo", "(I)V", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "uri", "QA", "Le/a/a/c/o/c;", "a", "Le/a/a/c/o/c;", "PA", "()Le/a/a/c/o/c;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/o/c;)V", "presenter", "Le/a/m3/z;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/z;", "binding", "Le/a/o5/l1;", AbstractC2405c.f7629a, "Le/a/o5/l1;", "getRingtoneNotificationSettings$truecaller_googlePlayRelease", "()Le/a/o5/l1;", "setRingtoneNotificationSettings$truecaller_googlePlayRelease", "(Le/a/o5/l1;)V", "ringtoneNotificationSettings", "Le/a/p5/c0;", C22021b.f61237c, "Le/a/p5/c0;", "getResourceProvider$truecaller_googlePlayRelease", "()Le/a/p5/c0;", "setResourceProvider$truecaller_googlePlayRelease", "(Le/a/p5/c0;)V", "resourceProvider", "<init>", "f", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.o.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a.class */
public final class C5590a extends Fragment implements AbstractC5603d {

    /* renamed from: e */
    public static final /* synthetic */ l[] f18840e = {C22128a.m8621g0(C5590a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentConversationNotificationSettingsBinding;", 0)};

    /* renamed from: f */
    public static final C5593c f18841f = new C5593c(null);
    @Inject

    /* renamed from: a */
    public AbstractC5602c f18842a;
    @Inject

    /* renamed from: b */
    public AbstractC19223c0 f18843b;
    @Inject

    /* renamed from: c */
    public AbstractC19056l1 f18844c;

    /* renamed from: d */
    public final ViewBindingProperty f18845d = new C19350a(new C5592b());

    /* renamed from: e.a.a.c.o.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/c/o/a$a.class */
    public static final class C5591a extends m implements s1.z.b.l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ int f18846b;

        /* renamed from: c */
        public final /* synthetic */ Object f18847c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5591a(int i, Object obj) {
            super(1);
            this.f18846b = i;
            this.f18847c = obj;
        }

        /* renamed from: d */
        public final Object m32933d(Object obj) {
            s sVar = s.a;
            int i = this.f18846b;
            if (i == 0) {
                s1.z.c.l.e((View) obj, "it");
                ((C5590a) this.f18847c).m32935PA().mo32913u3();
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                s1.z.c.l.e((View) obj, "it");
                ((C5590a) this.f18847c).m32935PA().mo32914sg();
                return sVar;
            }
        }
    }

    /* renamed from: e.a.a.c.o.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$b.class */
    public static final class C5592b extends m implements s1.z.b.l<C5590a, C18198z> {
        public C5592b() {
            super(1);
        }

        /* renamed from: d */
        public Object m32932d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131364872;
            TwoLinesSwitchView twoLinesSwitchView = (TwoLinesSwitchView) requireView.findViewById(C2752R.C2754id.muteSwitch);
            if (twoLinesSwitchView != null) {
                i = 2131365965;
                TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.soundSectionTitle);
                if (textView != null) {
                    i = 2131365966;
                    TwoLinesSwitchView twoLinesSwitchView2 = (TwoLinesSwitchView) requireView.findViewById(C2752R.C2754id.soundSwitch);
                    if (twoLinesSwitchView2 != null) {
                        i = 2131366512;
                        MaterialToolbar findViewById = requireView.findViewById(2131366512);
                        if (findViewById != null) {
                            return new C18198z((ConstraintLayout) requireView, twoLinesSwitchView, textView, twoLinesSwitchView2, findViewById);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.o.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$c.class */
    public static final class C5593c {
        public C5593c(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.o.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$d.class */
    public static final class View$OnClickListenerC5594d implements View.OnClickListener {
        public View$OnClickListenerC5594d() {
            C5590a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5590a.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.c.o.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$e.class */
    public static final class C5595e extends m implements p<CompoundButton, Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5595e(boolean z) {
            super(2);
            C5590a.this = r4;
        }

        /* renamed from: k */
        public Object m32931k(Object obj, Object obj2) {
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            s1.z.c.l.e((CompoundButton) obj, "<anonymous parameter 0>");
            C5590a.this.m32935PA().mo32912v3(booleanValue);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.o.a$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$f.class */
    public static final class C5596f extends m implements p<CompoundButton, Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5596f(boolean z) {
            super(2);
            C5590a.this = r4;
        }

        /* renamed from: k */
        public Object m32930k(Object obj, Object obj2) {
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            s1.z.c.l.e((CompoundButton) obj, "<anonymous parameter 0>");
            C5590a.this.m32935PA().mo32920F5(booleanValue);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.o.a$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$g.class */
    public static final class DialogInterface$OnClickListenerC5597g implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ ConversationMutePeriod[] f18852b;

        public DialogInterface$OnClickListenerC5597g(ConversationMutePeriod[] conversationMutePeriodArr) {
            C5590a.this = r4;
            this.f18852b = conversationMutePeriodArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C5590a.this.m32935PA().mo32915c2(this.f18852b[i]);
        }
    }

    /* renamed from: e.a.a.c.o.a$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$h.class */
    public static final class DialogInterface$OnCancelListenerC5598h implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC5598h(ConversationMutePeriod[] conversationMutePeriodArr) {
            C5590a.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C5590a.this.m32935PA().mo32916U3();
        }
    }

    /* renamed from: e.a.a.c.o.a$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$i.class */
    public static final class C5599i extends m implements s1.z.b.l<Uri, s> {

        /* renamed from: c */
        public final /* synthetic */ int f18855c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5599i(int i) {
            super(1);
            C5590a.this = r4;
            this.f18855c = i;
        }

        /* renamed from: d */
        public Object m32929d(Object obj) {
            Uri uri = (Uri) obj;
            s1.z.c.l.e(uri, "uri");
            C5590a c5590a = C5590a.this;
            int i = this.f18855c;
            l[] lVarArr = C5590a.f18840e;
            c5590a.m32934QA(uri, i);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.o.a$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/a$j.class */
    public static final class C5600j extends m implements s1.z.b.l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5600j() {
            super(1);
            C5590a.this = r4;
        }

        /* renamed from: d */
        public Object m32928d(Object obj) {
            Throwable th = (Throwable) obj;
            if (th != null) {
                th.getMessage();
                Toast.makeText(C5590a.this.getContext(), (int) C2752R.string.SettingsRingtoneStorageError, 1).show();
            }
            return s.a;
        }
    }

    /* renamed from: OA */
    public final C18198z m32936OA() {
        return (C18198z) this.f18845d.m34468b(this, f18840e[0]);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: P8 */
    public void mo32927P8(boolean z) {
        TwoLinesSwitchView twoLinesSwitchView = m32936OA().f51465b;
        twoLinesSwitchView.setOnCheckedChangeListener(null);
        twoLinesSwitchView.setIsChecked(z);
        twoLinesSwitchView.setOnCheckedChangeListener(new C5596f(z));
    }

    /* renamed from: PA */
    public final AbstractC5602c m32935PA() {
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c != null) {
            return abstractC5602c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: QA */
    public final void m32934QA(Uri uri, int i) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19063n1.AbstractC19064a.C19066b c19066b = C19063n1.AbstractC19064a.C19066b.f53247f;
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(c19066b, "ringtoneType");
        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", c19066b.f53245e);
        intent.putExtra("android.intent.extra.ringtone.TYPE", 2);
        intent.putExtra("android.intent.extra.ringtone.TITLE", requireContext.getString(C2752R.string.SettingsMessagesRingtoneTitle));
        intent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", uri);
        Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(requireContext, 2);
        Uri uri2 = uri;
        if (s1.z.c.l.a(c19066b, C19063n1.AbstractC19064a.C19067c.f53248f)) {
            uri2 = uri;
            if (actualDefaultRingtoneUri != null) {
                uri2 = actualDefaultRingtoneUri;
            }
        }
        intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", uri2);
        startActivityForResult(intent, i);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: Uj */
    public void mo32926Uj(boolean z) {
        TwoLinesSwitchView twoLinesSwitchView = m32936OA().f51464a;
        twoLinesSwitchView.setOnCheckedChangeListener(null);
        twoLinesSwitchView.setIsChecked(z);
        twoLinesSwitchView.setOnCheckedChangeListener(new C5595e(z));
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: Vo */
    public void mo32925Vo(int i) {
        C19291g.m13555e1(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, i);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: bc */
    public void mo32924bc() {
        ConversationMutePeriod[] values = ConversationMutePeriod.values();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), 2131952119);
        builder.setTitle(C2752R.string.conversation_notification_mute_period_title);
        ArrayList arrayList = new ArrayList(3);
        for (ConversationMutePeriod conversationMutePeriod : values) {
            AbstractC19223c0 abstractC19223c0 = this.f18843b;
            if (abstractC19223c0 == null) {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
            arrayList.add(abstractC19223c0.mo13768b(conversationMutePeriod.getStringResId(), new Object[0]));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        builder.setItems((CharSequence[]) array, new DialogInterface$OnClickListenerC5597g(values));
        builder.setOnCancelListener(new DialogInterface$OnCancelListenerC5598h(values));
        builder.create().show();
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: cf */
    public void mo32923cf(String str) {
        m32936OA().f51464a.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: oA */
    public void mo32922oA(String str) {
        m32936OA().f51465b.setSubtitle(str);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C5590a.super.onActivityResult(i, i2, intent);
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c != null) {
            abstractC5602c.onActivityResult(i, i2, intent);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        Conversation conversation;
        C5590a.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (conversation = (Conversation) arguments.getParcelable("conversation")) == null) {
            return;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C5601b c5601b = new C5601b(requireContext, conversation);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c5601b, C5601b.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5617j c5617j = new C5617j(c5601b, mo10154s, null);
        this.f18842a = (AbstractC5602c) c5617j.f18912f.get();
        AbstractC19223c0 mo12349i = c5617j.f18907a.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        this.f18843b = mo12349i;
        AbstractC19056l1 mo12212s4 = c5617j.f18907a.mo12212s4();
        Objects.requireNonNull(mo12212s4, "Cannot return null from a non-@Nullable component method");
        this.f18844c = mo12212s4;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_conversation_notification_settings, viewGroup, false);
    }

    public void onDestroyView() {
        C5590a.super.onDestroyView();
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c != null) {
            abstractC5602c.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        C5590a.super.onRequestPermissionsResult(i, strArr, iArr);
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c != null) {
            abstractC5602c.onRequestPermissionsResult(i, strArr, iArr);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C5590a.super.onResume();
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c != null) {
            abstractC5602c.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5590a.super.onViewCreated(view, bundle);
        AbstractC5602c abstractC5602c = this.f18842a;
        if (abstractC5602c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5602c.mo9029Y0(this);
        m32936OA().f51466c.setNavigationOnClickListener(new View$OnClickListenerC5594d());
        m32936OA().f51464a.setOnViewClickListener(new C5591a(0, this));
        m32936OA().f51465b.setOnViewClickListener(new C5591a(1, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5603d
    /* renamed from: q6 */
    public void mo32921q6(Uri uri, int i) {
        if (uri != null) {
            m32934QA(uri, i);
            return;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19063n1.AbstractC19064a.C19066b c19066b = C19063n1.AbstractC19064a.C19066b.f53247f;
        C5599i c5599i = new C5599i(i);
        s1.z.c.l.e(this, "lifeCycleOwner");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(c19066b, "ringtoneType");
        s1.z.c.l.e(c5599i, "onCopied");
        AbstractC27028u lifecycle = getLifecycle();
        s1.z.c.l.d(lifecycle, "lifeCycleOwner.lifecycle");
        d.H(MediaSessionCompat.m43234h0(lifecycle), C18334g0.m15209q(requireContext).mo12378g(), (j0) null, new C19077o1(requireContext, c19066b, c5599i, null), 2, (Object) null).n0(false, true, new C5600j());
    }
}
