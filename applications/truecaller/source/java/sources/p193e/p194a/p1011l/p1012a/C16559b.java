package p193e.p194a.p1011l.p1012a;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.C8612s;
import s1.g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bM\u0010\u0010J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R%\u0010\u001e\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR%\u0010#\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R%\u0010&\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001b\u001a\u0004\b%\u0010\"R%\u0010)\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u001b\u001a\u0004\b(\u0010\"R\"\u0010.\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\f0*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-R%\u00103\u001a\n \u0019*\u0004\u0018\u00010/0/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u001b\u001a\u0004\b1\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R%\u0010>\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\u001b\u001a\u0004\b=\u0010\"R%\u0010A\u001a\n \u0019*\u0004\u0018\u00010/0/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\u001b\u001a\u0004\b@\u00102R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR%\u0010L\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010\u001b\u001a\u0004\bK\u0010\u001d¨\u0006N"}, d2 = {"Le/a/l/a/b;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/widget/EditText;", "kotlin.jvm.PlatformType", "n", "Ls1/g;", "RA", "()Landroid/widget/EditText;", "premiumTopImageUrlView", "Landroid/widget/ImageView;", "h", "getAddGoldImageFromGallery", "()Landroid/widget/ImageView;", "addGoldImageFromGallery", "m", "getGoldTopImage", "goldTopImage", "i", "getAddPremiumImageFromGallery", "addPremiumImageFromGallery", "Lkotlin/Function1;", "Landroid/net/Uri;", "g", "Ls1/z/b/l;", "pickImageFromGalleryListener", "Landroid/widget/Button;", "k", "getBtnSave", "()Landroid/widget/Button;", "btnSave", "Le/a/p4/b;", "e", "Le/a/p4/b;", "SA", "()Le/a/p4/b;", "setQaMenuSettings", "(Le/a/p4/b;)V", "qaMenuSettings", "o", "getPremiumTopImage", "premiumTopImage", "j", "getBtnReset", "btnReset", "Le/a/l/a2;", "f", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "l", "QA", "goldImageUrlView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.a.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/b.class */
public final class C16559b extends AbstractC16589l {

    /* renamed from: p */
    public static final /* synthetic */ int f46546p = 0;
    @Inject

    /* renamed from: e */
    public AbstractC19215b f46547e;
    @Inject

    /* renamed from: f */
    public AbstractC16613a2 f46548f;

    /* renamed from: g */
    public l<? super Uri, s> f46549g;

    /* renamed from: h */
    public final g f46550h = C19286f.m13659t(this, C2752R.C2754id.addGoldImageFromGallery);

    /* renamed from: i */
    public final g f46551i = C19286f.m13659t(this, C2752R.C2754id.addPremiumImageFromGallery);

    /* renamed from: j */
    public final g f46552j = C19286f.m13659t(this, C2752R.C2754id.btnReset);

    /* renamed from: k */
    public final g f46553k = C19286f.m13659t(this, 2131362443);

    /* renamed from: l */
    public final g f46554l = C19286f.m13659t(this, C2752R.C2754id.goldImageUrlView);

    /* renamed from: m */
    public final g f46555m = C19286f.m13659t(this, C2752R.C2754id.goldTopImage);

    /* renamed from: n */
    public final g f46556n = C19286f.m13659t(this, C2752R.C2754id.premiumTopImageUrlView);

    /* renamed from: o */
    public final g f46557o = C19286f.m13659t(this, C2752R.C2754id.premiumTopImage);

    /* renamed from: e.a.l.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/a/b$a.class */
    public static final class View$OnClickListenerC16560a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46558a;

        /* renamed from: b */
        public final /* synthetic */ Object f46559b;

        public View$OnClickListenerC16560a(int i, Object obj) {
            this.f46558a = i;
            this.f46559b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f46558a;
            if (i == 0) {
                AbstractC19215b m17244SA = ((C16559b) this.f46559b).m17244SA();
                m17244SA.mo13864Q(null);
                m17244SA.mo13865P0(null);
                EditText m17245RA = ((C16559b) this.f46559b).m17245RA();
                m17245RA.setText((CharSequence) null);
                C19286f.m13689O(m17245RA);
                EditText m17246QA = ((C16559b) this.f46559b).m17246QA();
                m17246QA.setText((CharSequence) null);
                C19286f.m13689O(m17246QA);
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC19215b m17244SA2 = ((C16559b) this.f46559b).m17244SA();
                EditText m17245RA2 = ((C16559b) this.f46559b).m17245RA();
                s1.z.c.l.d(m17245RA2, "premiumTopImageUrlView");
                m17244SA2.mo13864Q(m17245RA2.getText().toString());
                EditText m17246QA2 = ((C16559b) this.f46559b).m17246QA();
                s1.z.c.l.d(m17246QA2, "goldImageUrlView");
                m17244SA2.mo13865P0(m17246QA2.getText().toString());
                C16559b c16559b = (C16559b) this.f46559b;
                AbstractC16613a2 abstractC16613a2 = c16559b.f46548f;
                if (abstractC16613a2 == null) {
                    s1.z.c.l.l("premiumScreenNavigator");
                    throw null;
                }
                Context requireContext = c16559b.requireContext();
                s1.z.c.l.d(requireContext, "requireContext()");
                abstractC16613a2.mo17167b(requireContext, PremiumLaunchContext.NAV_DRAWER);
            }
        }
    }

    /* renamed from: e.a.l.a.b$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/b$c.class */
    public static final class View$OnClickListenerC16561c implements View.OnClickListener {

        /* renamed from: e.a.l.a.b$c$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/a/b$c$a.class */
        public static final class C16562a extends m implements l<Uri, s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16562a() {
                super(1);
                View$OnClickListenerC16561c.this = r4;
            }

            /* renamed from: d */
            public Object m17243d(Object obj) {
                Uri uri = (Uri) obj;
                s1.z.c.l.e(uri, "uri");
                String uri2 = uri.toString();
                C16559b.this.m17244SA().mo13864Q(uri2);
                C16559b.this.m17245RA().setText(uri2);
                return s.a;
            }
        }

        public View$OnClickListenerC16561c() {
            C16559b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16559b c16559b = C16559b.this;
            C16562a c16562a = new C16562a();
            int i = C16559b.f46546p;
            Objects.requireNonNull(c16559b);
            c16559b.startActivityForResult(C8612s.m28219c(), 1);
            c16559b.f46549g = c16562a;
        }
    }

    /* renamed from: e.a.l.a.b$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/b$d.class */
    public static final class View$OnClickListenerC16563d implements View.OnClickListener {

        /* renamed from: e.a.l.a.b$d$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/a/b$d$a.class */
        public static final class C16564a extends m implements l<Uri, s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16564a() {
                super(1);
                View$OnClickListenerC16563d.this = r4;
            }

            /* renamed from: d */
            public Object m17242d(Object obj) {
                Uri uri = (Uri) obj;
                s1.z.c.l.e(uri, "uri");
                String uri2 = uri.toString();
                C16559b.this.m17244SA().mo13865P0(uri2);
                C16559b.this.m17246QA().setText(uri2);
                return s.a;
            }
        }

        public View$OnClickListenerC16563d() {
            C16559b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16559b c16559b = C16559b.this;
            C16564a c16564a = new C16564a();
            int i = C16559b.f46546p;
            Objects.requireNonNull(c16559b);
            c16559b.startActivityForResult(C8612s.m28219c(), 1);
            c16559b.f46549g = c16564a;
        }
    }

    /* renamed from: QA */
    public final EditText m17246QA() {
        return (EditText) this.f46554l.getValue();
    }

    /* renamed from: RA */
    public final EditText m17245RA() {
        return (EditText) this.f46556n.getValue();
    }

    /* renamed from: SA */
    public final AbstractC19215b m17244SA() {
        AbstractC19215b abstractC19215b = this.f46547e;
        if (abstractC19215b != null) {
            return abstractC19215b;
        }
        s1.z.c.l.l("qaMenuSettings");
        throw null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        C16559b.super.onActivityResult(i, i2, intent);
        if (i2 != -1 || i != 1 || intent == null || (data = intent.getData()) == null) {
            return;
        }
        l<? super Uri, s> lVar = this.f46549g;
        if (lVar == null) {
            s1.z.c.l.l("pickImageFromGalleryListener");
            throw null;
        }
        s1.z.c.l.d(data, "it");
        lVar.d(data);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.qa_debug_top_image_dialog_fragment, viewGroup, false);
    }

    public void onStart() {
        Window window;
        C16559b.super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -2);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        EditText m17245RA = m17245RA();
        s1.z.c.l.d(m17245RA, "premiumTopImageUrlView");
        C17891a1.C17902k.m15603j(m17245RA, new b(0, this));
        EditText m17246QA = m17246QA();
        s1.z.c.l.d(m17246QA, "goldImageUrlView");
        C17891a1.C17902k.m15603j(m17246QA, new b(1, this));
        AbstractC19215b abstractC19215b = this.f46547e;
        if (abstractC19215b == null) {
            s1.z.c.l.l("qaMenuSettings");
            throw null;
        }
        String mo13858V2 = abstractC19215b.mo13858V2();
        if (mo13858V2 != null) {
            m17245RA().setText(mo13858V2);
        }
        AbstractC19215b abstractC19215b2 = this.f46547e;
        if (abstractC19215b2 == null) {
            s1.z.c.l.l("qaMenuSettings");
            throw null;
        }
        String mo13861S1 = abstractC19215b2.mo13861S1();
        if (mo13861S1 != null) {
            m17246QA().setText(mo13861S1);
        }
        ((Button) this.f46552j.getValue()).setOnClickListener(new View$OnClickListenerC16560a(0, this));
        ((Button) this.f46553k.getValue()).setOnClickListener(new View$OnClickListenerC16560a(1, this));
        ((ImageView) this.f46551i.getValue()).setOnClickListener(new View$OnClickListenerC16561c());
        ((ImageView) this.f46550h.getValue()).setOnClickListener(new View$OnClickListenerC16563d());
    }
}
