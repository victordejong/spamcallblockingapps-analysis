package org.mistergroup.shouldianswer.p101ui.incall;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.provider.MediaStore;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ToggleButton;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.AbstractC0717h;
import androidx.fragment.app.AbstractC0738l;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.makeramen.roundedimageview.RoundedImageView;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p075c.p077b.p078a.C1630b;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.LimitedScrollView;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2120ai;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.incall.InCallDialpadFragment;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.services.incall.C2485a;
import org.mistergroup.shouldianswer.services.incall.C2488c;
import org.mistergroup.shouldianswer.services.incall.MyInCallService;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3082b;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3116p;
import org.mistergroup.shouldianswer.utils.C3123t;
import org.mistergroup.shouldianswer.utils.C3134x;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity.class */
public final class InCallActivity extends ActivityC2499a {

    /* renamed from: N */
    private static long f7452N;

    /* renamed from: O */
    private static int f7453O;

    /* renamed from: l */
    public static final C2546a f7454l = new C2546a(null);

    /* renamed from: A */
    private PowerManager.WakeLock f7455A;

    /* renamed from: B */
    private boolean f7456B;

    /* renamed from: C */
    private View$OnTouchListenerC2572a f7457C;

    /* renamed from: D */
    private C2485a f7458D;

    /* renamed from: E */
    private boolean f7459E;

    /* renamed from: F */
    private C3082b f7460F;

    /* renamed from: G */
    private C3082b f7461G;

    /* renamed from: H */
    private C3082b f7462H;

    /* renamed from: I */
    private boolean f7463I;

    /* renamed from: J */
    private boolean f7464J;

    /* renamed from: K */
    private Integer f7465K = 0;

    /* renamed from: L */
    private Integer f7466L = 0;

    /* renamed from: M */
    private boolean f7467M;

    /* renamed from: m */
    private AbstractC2120ai f7468m;

    /* renamed from: n */
    private C2485a f7469n;

    /* renamed from: o */
    private boolean f7470o;

    /* renamed from: p */
    private boolean f7471p;

    /* renamed from: q */
    private C3123t f7472q;

    /* renamed from: r */
    private InCallDialpadFragment f7473r;

    /* renamed from: s */
    private Drawable f7474s;

    /* renamed from: t */
    private Drawable f7475t;

    /* renamed from: u */
    private Drawable f7476u;

    /* renamed from: v */
    private Drawable f7477v;

    /* renamed from: w */
    private Drawable f7478w;

    /* renamed from: x */
    private Drawable f7479x;

    /* renamed from: y */
    private Drawable f7480y;

    /* renamed from: z */
    private Drawable f7481z;

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$a.class */
    public static final class C2546a {
        private C2546a() {
        }

        public /* synthetic */ C2546a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Intent m785a(Context context, boolean z, boolean z2, boolean z3) {
            C1694h.m3117b(context, "context");
            Intent intent = new Intent(context, InCallActivity.class);
            intent.addFlags(131072);
            return intent;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$b.class */
    static final class View$OnClickListenerC2547b implements View.OnClickListener {
        View$OnClickListenerC2547b() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1694h.m3117b(view, "view");
            InCallActivity.this.m803p();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$c.class */
    public static final class C2548c implements InCallDialpadFragment.AbstractC2568a {
        C2548c() {
            InCallActivity.this = r4;
        }

        @Override // org.mistergroup.shouldianswer.p101ui.incall.InCallDialpadFragment.AbstractC2568a
        /* renamed from: a */
        public void mo775a() {
            C2485a c2485a = InCallActivity.this.f7458D;
            if (c2485a == null) {
                C1694h.m3124a();
            }
            Call m909i = c2485a.m909i();
            if (m909i == null) {
                C1694h.m3124a();
            }
            m909i.stopDtmfTone();
        }

        @Override // org.mistergroup.shouldianswer.p101ui.incall.InCallDialpadFragment.AbstractC2568a
        /* renamed from: a */
        public void mo774a(char c) {
            C2485a c2485a = InCallActivity.this.f7458D;
            if (c2485a == null) {
                C1694h.m3124a();
            }
            Call m909i = c2485a.m909i();
            if (m909i == null) {
                C1694h.m3124a();
            }
            m909i.playDtmfTone(c);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$d.class */
    static final class C2549d extends AbstractC1695i implements AbstractC1663b<Integer, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2549d() {
            super(1);
            InCallActivity.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* synthetic */ C1775o mo138a(Integer num) {
            m784a(num.intValue());
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m784a(int i) {
            if (i == View$OnTouchListenerC2572a.f7544a.m770a()) {
                C3104j.m157a(C3104j.f9124a, "InCallActivity Accept Call", (String) null, 2, (Object) null);
                InCallActivity.this.f7456B = true;
                C2485a c2485a = InCallActivity.this.f7469n;
                if (c2485a == null) {
                    C1694h.m3124a();
                }
                Call m909i = c2485a.m909i();
                if (m909i == null) {
                    C1694h.m3124a();
                }
                m909i.answer(0);
            } else if (i == View$OnTouchListenerC2572a.f7544a.m769b()) {
                C3104j.m157a(C3104j.f9124a, "InCallActivity Reject Call", (String) null, 2, (Object) null);
                C2485a c2485a2 = InCallActivity.this.f7469n;
                if (c2485a2 == null) {
                    C1694h.m3124a();
                }
                Call m909i2 = c2485a2.m909i();
                if (m909i2 == null) {
                    C1694h.m3124a();
                }
                m909i2.reject(false, null);
            }
            InCallActivity.this.m793u();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$e.class */
    static final class View$OnClickListenerC2550e implements View.OnClickListener {
        View$OnClickListenerC2550e() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("InCallActivity.theme");
            C2398ai.f6930a.m1282c(C2398ai.f6930a.m1242u() == 0 ? 1 : 0);
            InCallActivity.this.m791v();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$f.class */
    static final class C2551f extends AbstractC1695i implements AbstractC1663b<C2485a, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2551f() {
            super(1);
            InCallActivity.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2485a c2485a) {
            m783a(c2485a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m783a(C2485a c2485a) {
            if (c2485a != null) {
                InCallActivity.this.f7469n = c2485a;
                InCallActivity.this.m793u();
                return;
            }
            C3104j.m157a(C3104j.f9124a, "InCallActivity callInfo null...finish()", (String) null, 2, (Object) null);
            C2488c.f7274a.m904a((AbstractC1663b<? super C2485a, C1775o>) null);
            InCallActivity.this.finish();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$g.class */
    static final class View$OnClickListenerC2552g implements View.OnClickListener {
        View$OnClickListenerC2552g() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m801q();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$h.class */
    static final class View$OnClickListenerC2553h implements View.OnClickListener {
        View$OnClickListenerC2553h() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m799r();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$i.class */
    static final class View$OnClickListenerC2554i implements View.OnClickListener {
        View$OnClickListenerC2554i() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m809m();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$j.class */
    static final class View$OnClickListenerC2555j implements View.OnClickListener {
        View$OnClickListenerC2555j() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m797s();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$k.class */
    static final class View$OnClickListenerC2556k implements View.OnClickListener {
        View$OnClickListenerC2556k() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2485a c2485a = InCallActivity.this.f7469n;
            if (c2485a == null) {
                C1694h.m3124a();
            }
            Call m909i = c2485a.m909i();
            if (m909i == null) {
                C1694h.m3124a();
            }
            m909i.disconnect();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$l.class */
    static final class View$OnClickListenerC2557l implements View.OnClickListener {
        View$OnClickListenerC2557l() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m807n();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$m.class */
    static final class View$OnClickListenerC2558m implements View.OnClickListener {
        View$OnClickListenerC2558m() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallActivity.this.m805o();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$n.class */
    static final class View$OnClickListenerC2559n implements View.OnClickListener {
        View$OnClickListenerC2559n() {
            InCallActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m227c("InCallActivity.butAddCall click");
            MainFragment.f7560b.m751b(InCallActivity.this);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$o.class */
    public static final class C2560o extends AbstractC1695i implements AbstractC1663b<Exception, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2560o() {
            super(1);
            InCallActivity.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(Exception exc) {
            m782a(exc);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m782a(Exception exc) {
            C1694h.m3117b(exc, "e");
            Button button = InCallActivity.m831a(InCallActivity.this).f5556f;
            C1694h.m3122a((Object) button, "binding.butLoadReviews");
            button.setVisibility(0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$p.class */
    public static final class DialogInterface$OnClickListenerC2561p implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ List f7497b;

        DialogInterface$OnClickListenerC2561p(List list) {
            InCallActivity.this = r4;
            this.f7497b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Call m909i;
            try {
                PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) this.f7497b.get(i);
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "InCallActivity.onSelectPhoneAccountState phoneAccountSelected to which=" + String.valueOf(i), (String) null, 2, (Object) null);
                C2485a c2485a = InCallActivity.this.f7469n;
                if (c2485a == null || (m909i = c2485a.m909i()) == null) {
                    return;
                }
                m909i.phoneAccountSelected(phoneAccountHandle, false);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$q.class */
    public static final class DialogInterface$OnCancelListenerC2562q implements DialogInterface.OnCancelListener {
        DialogInterface$OnCancelListenerC2562q() {
            InCallActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            Call m909i;
            C3104j.m157a(C3104j.f9124a, "InCallActivity.onSelectPhoneAccountState dismissed so we disconnect the call!", (String) null, 2, (Object) null);
            C2485a c2485a = InCallActivity.this.f7469n;
            if (c2485a == null || (m909i = c2485a.m909i()) == null) {
                return;
            }
            m909i.disconnect();
        }
    }

    @AbstractC1634f(m3162b = "InCallActivity.kt", m3161c = {284, 303, 318, 325, 328, 352}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.incall.InCallActivity$updateUI$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$r.class */
    public static final class C2563r extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7499a;

        /* renamed from: b */
        Object f7500b;

        /* renamed from: c */
        Object f7501c;

        /* renamed from: d */
        Object f7502d;

        /* renamed from: e */
        Object f7503e;

        /* renamed from: f */
        Object f7504f;

        /* renamed from: g */
        Object f7505g;

        /* renamed from: h */
        Object f7506h;

        /* renamed from: i */
        Object f7507i;

        /* renamed from: j */
        Object f7508j;

        /* renamed from: k */
        boolean f7509k;

        /* renamed from: l */
        boolean f7510l;

        /* renamed from: m */
        long f7511m;

        /* renamed from: n */
        int f7512n;

        /* renamed from: p */
        private AbstractC1786ad f7514p;

        /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$r$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a.class */
        public static final class C2564a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7515a;

            /* renamed from: b */
            final /* synthetic */ Bitmap f7516b;

            /* renamed from: c */
            final /* synthetic */ String f7517c;

            /* renamed from: d */
            final /* synthetic */ C2385ac f7518d;

            /* renamed from: e */
            final /* synthetic */ C2563r f7519e;

            /* renamed from: f */
            private AbstractC1786ad f7520f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2564a(Bitmap bitmap, String str, C2385ac c2385ac, AbstractC1641c abstractC1641c, C2563r c2563r) {
                super(2, abstractC1641c);
                this.f7516b = bitmap;
                this.f7517c = str;
                this.f7518d = c2385ac;
                this.f7519e = c2563r;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2564a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2564a c2564a = new C2564a(this.f7516b, this.f7517c, this.f7518d, abstractC1641c, this.f7519e);
                c2564a.f7520f = (AbstractC1786ad) obj;
                return c2564a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7515a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7520f;
                    C3116p c3116p = C3116p.f9183a;
                    Bitmap bitmap = this.f7516b;
                    String str = this.f7517c;
                    RoundedImageView roundedImageView = InCallActivity.m831a(InCallActivity.this).f5566p;
                    C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
                    AppCompatTextView appCompatTextView = InCallActivity.m831a(InCallActivity.this).f5542K;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvContactPhoto");
                    c3116p.m108a(bitmap, str, roundedImageView, appCompatTextView);
                    Bitmap bitmap2 = null;
                    try {
                        bitmap2 = MediaStore.Images.Media.getBitmap(InCallActivity.this.getContentResolver(), this.f7518d.m1343m());
                    } catch (FileNotFoundException e) {
                        C3104j.f9124a.m163a(e);
                    } catch (Exception e2) {
                        C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
                    }
                    C3116p c3116p2 = C3116p.f9183a;
                    if (bitmap2 == null) {
                        bitmap2 = this.f7516b;
                    }
                    String str2 = this.f7517c;
                    RoundedImageView roundedImageView2 = InCallActivity.m831a(InCallActivity.this).f5567q;
                    C1694h.m3122a((Object) roundedImageView2, "binding.imgContactPhotoBig");
                    AppCompatTextView appCompatTextView2 = InCallActivity.m831a(InCallActivity.this).f5543L;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvContactPhotoBig");
                    c3116p2.m108a(bitmap2, str2, roundedImageView2, appCompatTextView2);
                    InCallActivity.this.f7463I = true;
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$r$b */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b.class */
        public static final class C2565b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7521a;

            /* renamed from: b */
            final /* synthetic */ String f7522b;

            /* renamed from: c */
            final /* synthetic */ C2563r f7523c;

            /* renamed from: d */
            private AbstractC1786ad f7524d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2565b(String str, AbstractC1641c abstractC1641c, C2563r c2563r) {
                super(2, abstractC1641c);
                this.f7522b = str;
                this.f7523c = c2563r;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2565b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2565b c2565b = new C2565b(this.f7522b, abstractC1641c, this.f7523c);
                c2565b.f7524d = (AbstractC1786ad) obj;
                return c2565b;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7521a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7524d;
                    C3116p c3116p = C3116p.f9183a;
                    String str = this.f7522b;
                    RoundedImageView roundedImageView = InCallActivity.m831a(InCallActivity.this).f5567q;
                    C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhotoBig");
                    AppCompatTextView appCompatTextView = InCallActivity.m831a(InCallActivity.this).f5543L;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvContactPhotoBig");
                    c3116p.m108a(null, str, roundedImageView, appCompatTextView);
                    C3116p c3116p2 = C3116p.f9183a;
                    String str2 = this.f7522b;
                    RoundedImageView roundedImageView2 = InCallActivity.m831a(InCallActivity.this).f5566p;
                    C1694h.m3122a((Object) roundedImageView2, "binding.imgContactPhoto");
                    AppCompatTextView appCompatTextView2 = InCallActivity.m831a(InCallActivity.this).f5542K;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvContactPhoto");
                    c3116p2.m108a(null, str2, roundedImageView2, appCompatTextView2);
                    InCallActivity.this.f7463I = true;
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$r$c */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c.class */
        public static final class C2566c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7525a;

            /* renamed from: b */
            final /* synthetic */ String f7526b;

            /* renamed from: c */
            final /* synthetic */ C1699m.C1702c f7527c;

            /* renamed from: d */
            final /* synthetic */ C3123t f7528d;

            /* renamed from: e */
            final /* synthetic */ boolean f7529e;

            /* renamed from: f */
            final /* synthetic */ C2563r f7530f;

            /* renamed from: g */
            private AbstractC1786ad f7531g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2566c(String str, C1699m.C1702c c1702c, C3123t c3123t, boolean z, AbstractC1641c abstractC1641c, C2563r c2563r) {
                super(2, abstractC1641c);
                this.f7526b = str;
                this.f7527c = c1702c;
                this.f7528d = c3123t;
                this.f7529e = z;
                this.f7530f = c2563r;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2566c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2566c c2566c = new C2566c(this.f7526b, this.f7527c, this.f7528d, this.f7529e, abstractC1641c, this.f7530f);
                c2566c.f7531g = (AbstractC1786ad) obj;
                return c2566c;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7525a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7531g;
                    AppCompatTextView appCompatTextView = InCallActivity.m831a(InCallActivity.this).f5552U;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvTitle");
                    appCompatTextView.setText(this.f7526b);
                    AppCompatTextView appCompatTextView2 = InCallActivity.m831a(InCallActivity.this).f5549R;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvSubtitle");
                    appCompatTextView2.setText((String) this.f7527c.f4391a);
                    AppCompatTextView appCompatTextView3 = InCallActivity.m831a(InCallActivity.this).f5547P;
                    C1694h.m3122a((Object) appCompatTextView3, "binding.tvRating1");
                    appCompatTextView3.setText(this.f7528d.m56e());
                    AppCompatTextView appCompatTextView4 = InCallActivity.m831a(InCallActivity.this).f5548Q;
                    C1694h.m3122a((Object) appCompatTextView4, "binding.tvRating2");
                    appCompatTextView4.setText(this.f7528d.m55f());
                    AppCompatTextView appCompatTextView5 = InCallActivity.m831a(InCallActivity.this).f5546O;
                    C1694h.m3122a((Object) appCompatTextView5, "binding.tvFeaturedInfo");
                    appCompatTextView5.setVisibility(this.f7528d.m58d().length() == 0 ? 8 : 0);
                    AppCompatTextView appCompatTextView6 = InCallActivity.m831a(InCallActivity.this).f5546O;
                    C1694h.m3122a((Object) appCompatTextView6, "binding.tvFeaturedInfo");
                    appCompatTextView6.setText(this.f7528d.m58d());
                    LinearLayout linearLayout = InCallActivity.m831a(InCallActivity.this).f5576z;
                    C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
                    linearLayout.setVisibility(8);
                    LinearLayout linearLayout2 = InCallActivity.m831a(InCallActivity.this).f5572v;
                    C1694h.m3122a((Object) linearLayout2, "binding.llCommunityReviews");
                    linearLayout2.setVisibility(8);
                    LinearLayout linearLayout3 = InCallActivity.m831a(InCallActivity.this).f5537F;
                    C1694h.m3122a((Object) linearLayout3, "binding.llUnknownNumberInfo");
                    linearLayout3.setVisibility(this.f7528d.m53h() ? 0 : 8);
                    LinearLayout linearLayout4 = InCallActivity.m831a(InCallActivity.this).f5574x;
                    C1694h.m3122a((Object) linearLayout4, "binding.llExpandPanel");
                    linearLayout4.setVisibility(this.f7529e ? 0 : 8);
                    Button button = InCallActivity.m831a(InCallActivity.this).f5558h;
                    C1694h.m3122a((Object) button, "binding.butMoreInfo");
                    button.setVisibility(8);
                    Button button2 = InCallActivity.m831a(InCallActivity.this).f5556f;
                    C1694h.m3122a((Object) button2, "binding.butLoadReviews");
                    button2.setVisibility(0);
                    AppCompatTextView appCompatTextView7 = InCallActivity.m831a(InCallActivity.this).f5538G;
                    C1694h.m3122a((Object) appCompatTextView7, "binding.loadReviewsError");
                    appCompatTextView7.setVisibility(8);
                    ProgressBar progressBar = InCallActivity.m831a(InCallActivity.this).f5539H;
                    C1694h.m3122a((Object) progressBar, "binding.progressBar1");
                    progressBar.setVisibility(8);
                    AppCompatTextView appCompatTextView8 = InCallActivity.m831a(InCallActivity.this).f5544M;
                    C1694h.m3122a((Object) appCompatTextView8, "binding.tvDbSensitivityInfo");
                    appCompatTextView8.setVisibility(this.f7528d.m54g() ? 0 : 8);
                    C3134x c3134x = C3134x.f9269a;
                    InCallActivity inCallActivity = InCallActivity.this;
                    ImageView imageView = InCallActivity.m831a(InCallActivity.this).f5569s;
                    C1694h.m3122a((Object) imageView, "binding.imgMainRatingInTitle");
                    c3134x.m25a(inCallActivity, imageView, this.f7528d.m52i());
                    C3134x c3134x2 = C3134x.f9269a;
                    InCallActivity inCallActivity2 = InCallActivity.this;
                    ImageView imageView2 = InCallActivity.m831a(InCallActivity.this).f5568r;
                    C1694h.m3122a((Object) imageView2, "binding.imgMainRatingInSubtitle");
                    c3134x2.m25a(inCallActivity2, imageView2, this.f7528d.m52i());
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallActivity$r$d */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d.class */
        public static final class C2567d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7532a;

            /* renamed from: b */
            final /* synthetic */ Integer f7533b;

            /* renamed from: c */
            final /* synthetic */ C2485a f7534c;

            /* renamed from: d */
            final /* synthetic */ String f7535d;

            /* renamed from: e */
            final /* synthetic */ C2563r f7536e;

            /* renamed from: f */
            private AbstractC1786ad f7537f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2567d(Integer num, C2485a c2485a, String str, AbstractC1641c abstractC1641c, C2563r c2563r) {
                super(2, abstractC1641c);
                this.f7533b = num;
                this.f7534c = c2485a;
                this.f7535d = str;
                this.f7536e = c2563r;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2567d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2567d c2567d = new C2567d(this.f7533b, this.f7534c, this.f7535d, abstractC1641c, this.f7536e);
                c2567d.f7537f = (AbstractC1786ad) obj;
                return c2567d;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                MyInCallService myInCallService;
                C1622b.m3174a();
                if (this.f7532a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7537f;
                    View$OnTouchListenerC2572a view$OnTouchListenerC2572a = InCallActivity.this.f7457C;
                    if (view$OnTouchListenerC2572a != null) {
                        view$OnTouchListenerC2572a.m773a();
                    }
                    boolean z = true;
                    if (!C1694h.m3123a(this.f7533b, InCallActivity.this.f7465K)) {
                        Integer num = this.f7533b;
                        String str = (num != null && num.intValue() == 0) ? "STATE_NEW" : (num != null && num.intValue() == 4) ? "STATE_ACTIVE" : (num != null && num.intValue() == 9) ? "STATE_CONNECTING" : (num != null && num.intValue() == 1) ? "STATE_DIALING" : (num != null && num.intValue() == 7) ? "STATE_DISCONNECTED" : (num != null && num.intValue() == 10) ? "STATE_DISCONNECTING" : (num != null && num.intValue() == 3) ? "STATE_HOLDING" : (num != null && num.intValue() == 11) ? "STATE_PULLING_CALL" : (num != null && num.intValue() == 2) ? "STATE_RINGING" : (num != null && num.intValue() == 8) ? "STATE_SELECT_PHONE_ACCOUNT" : "undefined";
                        C3104j.m157a(C3104j.f9124a, "InCallActivity.updateUI state changed to " + str, (String) null, 2, (Object) null);
                        Integer num2 = InCallActivity.this.f7465K;
                        if (num2 != null && num2.intValue() == 1) {
                            C3082b c3082b = InCallActivity.this.f7462H;
                            if (c3082b == null) {
                                C1694h.m3124a();
                            }
                            c3082b.m197b();
                        }
                        InCallActivity.this.f7465K = this.f7533b;
                        Integer num3 = this.f7533b;
                        if (num3 != null && num3.intValue() == 1) {
                            C3082b c3082b2 = InCallActivity.this.f7462H;
                            if (c3082b2 == null) {
                                C1694h.m3124a();
                            }
                            c3082b2.m200a();
                        }
                    }
                    Call m909i = this.f7534c.m909i();
                    Integer m3168a = m909i != null ? C1630b.m3168a(m909i.getState()) : null;
                    if (m3168a != null && m3168a.intValue() == 8) {
                        InCallActivity.this.m795t();
                    }
                    boolean z2 = m3168a != null && m3168a.intValue() == 2;
                    boolean z3 = (m3168a != null && m3168a.intValue() == 9) || (m3168a != null && m3168a.intValue() == 1);
                    boolean z4 = (m3168a != null && m3168a.intValue() == 4) || (m3168a != null && m3168a.intValue() == 3);
                    boolean z5 = z4 || z3;
                    AppCompatTextView appCompatTextView = InCallActivity.m831a(InCallActivity.this).f5541J;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvCallType");
                    appCompatTextView.setText(this.f7535d);
                    boolean z6 = z2 && !InCallActivity.this.f7463I && !InCallActivity.this.f7464J;
                    boolean z7 = z5 && InCallActivity.this.f7463I;
                    boolean z8 = !z6 && !InCallActivity.this.f7464J;
                    boolean z9 = z2 && InCallActivity.this.f7463I;
                    ImageView imageView = InCallActivity.m831a(InCallActivity.this).f5569s;
                    C1694h.m3122a((Object) imageView, "binding.imgMainRatingInTitle");
                    imageView.setVisibility(z6 ? 0 : 8);
                    FrameLayout frameLayout = InCallActivity.m831a(InCallActivity.this).f5563m;
                    C1694h.m3122a((Object) frameLayout, "binding.frameContactPhotoInTitle");
                    frameLayout.setVisibility(z7 ? 0 : z6 ? 8 : 4);
                    ImageView imageView2 = InCallActivity.m831a(InCallActivity.this).f5568r;
                    C1694h.m3122a((Object) imageView2, "binding.imgMainRatingInSubtitle");
                    imageView2.setVisibility(z8 ? 0 : 8);
                    FrameLayout frameLayout2 = InCallActivity.m831a(InCallActivity.this).f5562l;
                    C1694h.m3122a((Object) frameLayout2, "binding.frameContactPhotoBig");
                    frameLayout2.setVisibility(z9 ? 0 : 8);
                    if (z4 && InCallActivity.this.f7456B) {
                        InCallActivity.this.f7456B = false;
                        LinearLayout linearLayout = InCallActivity.m831a(InCallActivity.this).f5573w;
                        C1694h.m3122a((Object) linearLayout, "binding.llContent");
                        linearLayout.setAlpha(1.0f);
                    }
                    long time = new Date().getTime();
                    Call m909i2 = this.f7534c.m909i();
                    if (m909i2 == null) {
                        C1694h.m3124a();
                    }
                    Call.Details details = m909i2.getDetails();
                    C1694h.m3122a((Object) details, "callInfo.call!!.details");
                    long connectTimeMillis = (time - details.getConnectTimeMillis()) / 1000;
                    C1705p c1705p = C1705p.f4394a;
                    long j = 60;
                    Object[] objArr = {C1630b.m3167a(connectTimeMillis / j), C1630b.m3167a(connectTimeMillis % j)};
                    String format = String.format("%02d:%02d", Arrays.copyOf(objArr, objArr.length));
                    C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
                    AppCompatTextView appCompatTextView2 = InCallActivity.m831a(InCallActivity.this).f5545N;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvDuration");
                    appCompatTextView2.setVisibility(z4 ? 0 : 8);
                    AppCompatTextView appCompatTextView3 = InCallActivity.m831a(InCallActivity.this).f5545N;
                    C1694h.m3122a((Object) appCompatTextView3, "binding.tvDuration");
                    appCompatTextView3.setText(format);
                    LinearLayout linearLayout2 = InCallActivity.m831a(InCallActivity.this).f5533B;
                    C1694h.m3122a((Object) linearLayout2, "binding.llOffHookActions");
                    linearLayout2.setVisibility(z5 ? 0 : 8);
                    LinearLayout linearLayout3 = InCallActivity.m831a(InCallActivity.this).f5535D;
                    C1694h.m3122a((Object) linearLayout3, "binding.llRingingActions");
                    linearLayout3.setVisibility(z2 ? 0 : 8);
                    FloatingActionButton floatingActionButton = InCallActivity.m831a(InCallActivity.this).f5561k;
                    C1694h.m3122a((Object) floatingActionButton, "binding.fabDisconnect");
                    floatingActionButton.setVisibility((z3 || z4) ? 0 : 8);
                    LimitedScrollView limitedScrollView = InCallActivity.m831a(InCallActivity.this).f5540I;
                    C1694h.m3122a((Object) limitedScrollView, "binding.scrollView");
                    limitedScrollView.setVisibility(z2 ? 0 : 8);
                    LinearLayout linearLayout4 = InCallActivity.m831a(InCallActivity.this).f5573w;
                    C1694h.m3122a((Object) linearLayout4, "binding.llContent");
                    linearLayout4.setVisibility(0);
                    ImageView imageView3 = InCallActivity.m831a(InCallActivity.this).f5565o;
                    C1694h.m3122a((Object) imageView3, "binding.imgChangeTheme");
                    imageView3.setVisibility(0);
                    WeakReference<MyInCallService> m894b = C2488c.f7274a.m894b();
                    CallAudioState callAudioState = (m894b == null || (myInCallService = m894b.get()) == null) ? null : myInCallService.getCallAudioState();
                    if (callAudioState != null) {
                        int route = callAudioState.getRoute();
                        boolean isMuted = callAudioState.isMuted();
                        int supportedRouteMask = callAudioState.getSupportedRouteMask();
                        Integer num4 = InCallActivity.this.f7466L;
                        if (num4 == null || num4.intValue() != supportedRouteMask) {
                            InCallActivity.this.f7466L = C1630b.m3168a(supportedRouteMask);
                            String str2 = "";
                            if ((supportedRouteMask & 8) != 0) {
                                str2 = "SPEAKER,";
                            }
                            String str3 = str2;
                            if ((supportedRouteMask & 1) != 0) {
                                str3 = str2 + "EARPIECE,";
                            }
                            String str4 = str3;
                            if ((supportedRouteMask & 2) != 0) {
                                str4 = str3 + "BLUETOOTH,";
                            }
                            String str5 = str4;
                            if ((supportedRouteMask & 4) != 0) {
                                str5 = str4 + "WIRED_HEADSET,";
                            }
                            String str6 = str5;
                            if ((supportedRouteMask & 5) != 0) {
                                str6 = str5 + "WIRED_OR_EARPIECE,";
                            }
                            C3104j.m157a(C3104j.f9124a, "InCallActivity.updateUI supported routes " + str6, (String) null, 2, (Object) null);
                        }
                        boolean z10 = route == 8;
                        if (route != 2) {
                            z = false;
                        }
                        InCallActivity inCallActivity = InCallActivity.this;
                        InCallActivity.m831a(InCallActivity.this).f5557g.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, isMuted ? inCallActivity.f7474s : inCallActivity.f7475t, (Drawable) null, (Drawable) null);
                        ToggleButton toggleButton = InCallActivity.m831a(InCallActivity.this).f5557g;
                        C1694h.m3122a((Object) toggleButton, "binding.butMicrophone");
                        toggleButton.setChecked(isMuted);
                        InCallActivity inCallActivity2 = InCallActivity.this;
                        InCallActivity.m831a(InCallActivity.this).f5560j.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, z10 ? inCallActivity2.f7477v : inCallActivity2.f7476u, (Drawable) null, (Drawable) null);
                        ToggleButton toggleButton2 = InCallActivity.m831a(InCallActivity.this).f5560j;
                        C1694h.m3122a((Object) toggleButton2, "binding.butReprodutor");
                        toggleButton2.setVisibility((supportedRouteMask & 8) != 0 ? 0 : 4);
                        ToggleButton toggleButton3 = InCallActivity.m831a(InCallActivity.this).f5560j;
                        C1694h.m3122a((Object) toggleButton3, "binding.butReprodutor");
                        toggleButton3.setChecked(z10);
                        InCallActivity inCallActivity3 = InCallActivity.this;
                        InCallActivity.m831a(InCallActivity.this).f5554d.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, z ? inCallActivity3.f7481z : inCallActivity3.f7480y, (Drawable) null, (Drawable) null);
                        ToggleButton toggleButton4 = InCallActivity.m831a(InCallActivity.this).f5554d;
                        C1694h.m3122a((Object) toggleButton4, "binding.butBluetooth");
                        toggleButton4.setVisibility((supportedRouteMask & 2) != 0 ? 0 : 4);
                        ToggleButton toggleButton5 = InCallActivity.m831a(InCallActivity.this).f5554d;
                        C1694h.m3122a((Object) toggleButton5, "binding.butBluetooth");
                        toggleButton5.setChecked(z);
                    }
                    InCallActivity.m831a(InCallActivity.this).f5559i.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, InCallActivity.this.f7470o ? InCallActivity.this.f7479x : InCallActivity.this.f7478w, (Drawable) null, (Drawable) null);
                    ToggleButton toggleButton6 = InCallActivity.m831a(InCallActivity.this).f5559i;
                    C1694h.m3122a((Object) toggleButton6, "binding.butPause");
                    toggleButton6.setChecked(InCallActivity.this.f7470o);
                    Button button = InCallActivity.m831a(InCallActivity.this).f5553c;
                    C1694h.m3122a((Object) button, "binding.butAddCall");
                    button.setVisibility(0);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2563r(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            InCallActivity.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2563r) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2563r c2563r = new C2563r(abstractC1641c);
            c2563r.f7514p = (AbstractC1786ad) obj;
            return c2563r;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x068a  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0362 A[Catch: Exception -> 0x068c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x068c, blocks: (B:7:0x005e, B:9:0x00b4, B:12:0x011b, B:15:0x0187, B:18:0x01fb, B:22:0x025b, B:25:0x026e, B:27:0x027a, B:29:0x0285, B:33:0x02a7, B:38:0x0357, B:40:0x0362, B:42:0x036e, B:46:0x0397, B:48:0x039f, B:50:0x03aa, B:56:0x03be, B:58:0x03c9, B:63:0x03da, B:65:0x03ee, B:68:0x03fc, B:75:0x04b4, B:81:0x0536, B:85:0x059e, B:91:0x0615, B:93:0x0621, B:95:0x0625, B:97:0x0637, B:99:0x063c), top: B:108:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x036b  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x03ee A[Catch: Exception -> 0x068c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x068c, blocks: (B:7:0x005e, B:9:0x00b4, B:12:0x011b, B:15:0x0187, B:18:0x01fb, B:22:0x025b, B:25:0x026e, B:27:0x027a, B:29:0x0285, B:33:0x02a7, B:38:0x0357, B:40:0x0362, B:42:0x036e, B:46:0x0397, B:48:0x039f, B:50:0x03aa, B:56:0x03be, B:58:0x03c9, B:63:0x03da, B:65:0x03ee, B:68:0x03fc, B:75:0x04b4, B:81:0x0536, B:85:0x059e, B:91:0x0615, B:93:0x0621, B:95:0x0625, B:97:0x0637, B:99:0x063c), top: B:108:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0533  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0610  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0612  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0621 A[Catch: Exception -> 0x068c, TRY_ENTER, TryCatch #0 {Exception -> 0x068c, blocks: (B:7:0x005e, B:9:0x00b4, B:12:0x011b, B:15:0x0187, B:18:0x01fb, B:22:0x025b, B:25:0x026e, B:27:0x027a, B:29:0x0285, B:33:0x02a7, B:38:0x0357, B:40:0x0362, B:42:0x036e, B:46:0x0397, B:48:0x039f, B:50:0x03aa, B:56:0x03be, B:58:0x03c9, B:63:0x03da, B:65:0x03ee, B:68:0x03fc, B:75:0x04b4, B:81:0x0536, B:85:0x059e, B:91:0x0615, B:93:0x0621, B:95:0x0625, B:97:0x0637, B:99:0x063c), top: B:108:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0637 A[Catch: Exception -> 0x068c, TRY_ENTER, TryCatch #0 {Exception -> 0x068c, blocks: (B:7:0x005e, B:9:0x00b4, B:12:0x011b, B:15:0x0187, B:18:0x01fb, B:22:0x025b, B:25:0x026e, B:27:0x027a, B:29:0x0285, B:33:0x02a7, B:38:0x0357, B:40:0x0362, B:42:0x036e, B:46:0x0397, B:48:0x039f, B:50:0x03aa, B:56:0x03be, B:58:0x03c9, B:63:0x03da, B:65:0x03ee, B:68:0x03fc, B:75:0x04b4, B:81:0x0536, B:85:0x059e, B:91:0x0615, B:93:0x0621, B:95:0x0625, B:97:0x0637, B:99:0x063c), top: B:108:0x0008 }] */
        /* JADX WARN: Type inference failed for: r1v24, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v81, types: [T, java.lang.String] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 1691
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.incall.InCallActivity.C2563r.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC2120ai m831a(InCallActivity inCallActivity) {
        AbstractC2120ai abstractC2120ai = inCallActivity.f7468m;
        if (abstractC2120ai == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2120ai;
    }

    /* renamed from: a */
    private final void m832a(String str) {
        PowerManager.WakeLock wakeLock = this.f7455A;
        if (wakeLock == null || wakeLock.isHeld()) {
            return;
        }
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "InCallActivity.enableProximityScreenOff acquire lock (" + str + ')', (String) null, 2, (Object) null);
        wakeLock.acquire();
    }

    /* renamed from: b */
    private final void m826b(String str) {
        PowerManager.WakeLock wakeLock = this.f7455A;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "InCallActivity.disableProximityScreenOff RELEASE lock (" + str + ')', (String) null, 2, (Object) null);
        wakeLock.release();
    }

    /* renamed from: m */
    public final void m809m() {
        C3074a.f8976a.m226d("InCallActivity.dialpad");
        InCallDialpadFragment inCallDialpadFragment = this.f7473r;
        if (inCallDialpadFragment != null) {
            inCallDialpadFragment.m780a(0);
        }
    }

    /* renamed from: n */
    public final void m807n() {
        Object systemService;
        C3074a.f8976a.m226d("InCallActivity.loadReviews");
        C3123t c3123t = this.f7472q;
        if (c3123t != null) {
            try {
                systemService = getSystemService("connectivity");
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
            boolean z2 = activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "InCallActivity.loadReviews isConnected=" + String.valueOf(z) + " isWifi=" + String.valueOf(z2), (String) null, 2, (Object) null);
            this.f7471p = !this.f7471p;
            if (!this.f7471p) {
                AbstractC2120ai abstractC2120ai = this.f7468m;
                if (abstractC2120ai == null) {
                    C1694h.m3116b("binding");
                }
                abstractC2120ai.f5556f.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, getDrawable(2131230924));
                AbstractC2120ai abstractC2120ai2 = this.f7468m;
                if (abstractC2120ai2 == null) {
                    C1694h.m3116b("binding");
                }
                LinearLayout linearLayout = abstractC2120ai2.f5576z;
                C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
                linearLayout.setVisibility(8);
                AbstractC2120ai abstractC2120ai3 = this.f7468m;
                if (abstractC2120ai3 == null) {
                    C1694h.m3116b("binding");
                }
                AppCompatTextView appCompatTextView = abstractC2120ai3.f5538G;
                C1694h.m3122a((Object) appCompatTextView, "binding.loadReviewsError");
                appCompatTextView.setVisibility(8);
                AbstractC2120ai abstractC2120ai4 = this.f7468m;
                if (abstractC2120ai4 == null) {
                    C1694h.m3116b("binding");
                }
                LinearLayout linearLayout2 = abstractC2120ai4.f5572v;
                C1694h.m3122a((Object) linearLayout2, "binding.llCommunityReviews");
                linearLayout2.setVisibility(8);
                AbstractC2120ai abstractC2120ai5 = this.f7468m;
                if (abstractC2120ai5 == null) {
                    C1694h.m3116b("binding");
                }
                Button button = abstractC2120ai5.f5558h;
                C1694h.m3122a((Object) button, "binding.butMoreInfo");
                button.setVisibility(8);
                AbstractC2120ai abstractC2120ai6 = this.f7468m;
                if (abstractC2120ai6 == null) {
                    C1694h.m3116b("binding");
                }
                LinearLayout linearLayout3 = abstractC2120ai6.f5534C;
                C1694h.m3122a((Object) linearLayout3, "binding.llPositiveNegativeCounts");
                linearLayout3.setVisibility(0);
                return;
            }
            AbstractC2120ai abstractC2120ai7 = this.f7468m;
            if (abstractC2120ai7 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai7.f5556f.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, getDrawable(2131230928));
            AbstractC2120ai abstractC2120ai8 = this.f7468m;
            if (abstractC2120ai8 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout4 = abstractC2120ai8.f5576z;
            C1694h.m3122a((Object) linearLayout4, "binding.llLocalReviews");
            linearLayout4.setVisibility(c3123t.m51j() ? 0 : 8);
            AbstractC2120ai abstractC2120ai9 = this.f7468m;
            if (abstractC2120ai9 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout5 = abstractC2120ai9.f5572v;
            C1694h.m3122a((Object) linearLayout5, "binding.llCommunityReviews");
            linearLayout5.setVisibility(c3123t.m50k() ? 0 : 8);
            AbstractC2120ai abstractC2120ai10 = this.f7468m;
            if (abstractC2120ai10 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout6 = abstractC2120ai10.f5534C;
            C1694h.m3122a((Object) linearLayout6, "binding.llPositiveNegativeCounts");
            linearLayout6.setVisibility(8);
            AbstractC2120ai abstractC2120ai11 = this.f7468m;
            if (abstractC2120ai11 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView2 = abstractC2120ai11.f5538G;
            C1694h.m3122a((Object) appCompatTextView2, "binding.loadReviewsError");
            appCompatTextView2.setVisibility(8);
            AbstractC2120ai abstractC2120ai12 = this.f7468m;
            if (abstractC2120ai12 == null) {
                C1694h.m3116b("binding");
            }
            Button button2 = abstractC2120ai12.f5558h;
            C1694h.m3122a((Object) button2, "binding.butMoreInfo");
            button2.setVisibility(c3123t.m48m() ? 0 : 8);
            c3123t.m66a(new C2560o());
            if (!c3123t.m50k() && !c3123t.m49l()) {
                AbstractC2120ai abstractC2120ai13 = this.f7468m;
                if (abstractC2120ai13 == null) {
                    C1694h.m3116b("binding");
                }
                LinearLayout linearLayout7 = abstractC2120ai13.f5572v;
                C1694h.m3122a((Object) linearLayout7, "binding.llCommunityReviews");
                AbstractC2120ai abstractC2120ai14 = this.f7468m;
                if (abstractC2120ai14 == null) {
                    C1694h.m3116b("binding");
                }
                Button button3 = abstractC2120ai14.f5558h;
                C1694h.m3122a((Object) button3, "binding.butMoreInfo");
                AbstractC2120ai abstractC2120ai15 = this.f7468m;
                if (abstractC2120ai15 == null) {
                    C1694h.m3116b("binding");
                }
                ProgressBar progressBar = abstractC2120ai15.f5539H;
                C1694h.m3122a((Object) progressBar, "binding.progressBar1");
                AbstractC2120ai abstractC2120ai16 = this.f7468m;
                if (abstractC2120ai16 == null) {
                    C1694h.m3116b("binding");
                }
                AppCompatTextView appCompatTextView3 = abstractC2120ai16.f5538G;
                C1694h.m3122a((Object) appCompatTextView3, "binding.loadReviewsError");
                c3123t.m70a(linearLayout7, button3, progressBar, appCompatTextView3);
            }
            AbstractC2120ai abstractC2120ai17 = this.f7468m;
            if (abstractC2120ai17 == null) {
                C1694h.m3116b("binding");
            }
            Button button4 = abstractC2120ai17.f5556f;
            C1694h.m3122a((Object) button4, "binding.butLoadReviews");
            button4.setVisibility(8);
            AbstractC2120ai abstractC2120ai18 = this.f7468m;
            if (abstractC2120ai18 == null) {
                C1694h.m3116b("binding");
            }
            LimitedScrollView limitedScrollView = abstractC2120ai18.f5540I;
            C1694h.m3122a((Object) limitedScrollView, "binding.scrollView");
            int top = limitedScrollView.getTop();
            AbstractC2120ai abstractC2120ai19 = this.f7468m;
            if (abstractC2120ai19 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout8 = abstractC2120ai19.f5535D;
            C1694h.m3122a((Object) linearLayout8, "binding.llRingingActions");
            int measuredHeight = linearLayout8.getMeasuredHeight();
            AbstractC2120ai abstractC2120ai20 = this.f7468m;
            if (abstractC2120ai20 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai20.f5540I.setMaxHeight(Math.round((measuredHeight - top) - (C3134x.f9269a.m27a() * 10)));
        }
    }

    /* renamed from: o */
    public final void m805o() {
        try {
            C3074a.f8976a.m227c("InCallActivity.moreReviews");
            C3123t c3123t = this.f7472q;
            if (c3123t == null) {
                C1694h.m3124a();
            }
            NumberInfo m47n = c3123t.m47n();
            String m1479b = m47n.m1479b();
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C2454t.f7186a.m984a().m981b() + "/search?q=" + m1479b + "&src=sian&countryOperator=" + m47n.m1475c())));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: p */
    public final void m803p() {
        MyInCallService myInCallService;
        try {
            C3074a.f8976a.m226d("InCallActivity.microphone");
            WeakReference<MyInCallService> m894b = C2488c.f7274a.m894b();
            if (m894b == null || (myInCallService = m894b.get()) == null) {
                return;
            }
            C1694h.m3122a((Object) myInCallService, "inCallService");
            CallAudioState callAudioState = myInCallService.getCallAudioState();
            C1694h.m3122a((Object) callAudioState, "audioState");
            boolean z = !callAudioState.isMuted();
            AbstractC2120ai abstractC2120ai = this.f7468m;
            if (abstractC2120ai == null) {
                C1694h.m3116b("binding");
            }
            ToggleButton toggleButton = abstractC2120ai.f5557g;
            C1694h.m3122a((Object) toggleButton, "binding.butMicrophone");
            toggleButton.setChecked(z);
            myInCallService.setMuted(z);
            m793u();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: q */
    public final void m801q() {
        MyInCallService myInCallService;
        try {
            C3074a.f8976a.m226d("InCallActivity.reproductor");
            WeakReference<MyInCallService> m894b = C2488c.f7274a.m894b();
            if (m894b == null || (myInCallService = m894b.get()) == null) {
                return;
            }
            C1694h.m3122a((Object) myInCallService, "inCallService");
            CallAudioState callAudioState = myInCallService.getCallAudioState();
            C1694h.m3122a((Object) callAudioState, "audioState");
            int i = 8;
            if (callAudioState.getRoute() == 8) {
                i = 1;
            }
            myInCallService.setAudioRoute(i);
            m793u();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: r */
    public final void m799r() {
        MyInCallService myInCallService;
        try {
            C3074a.f8976a.m226d("InCallActivity.bluetooth");
            WeakReference<MyInCallService> m894b = C2488c.f7274a.m894b();
            if (m894b == null || (myInCallService = m894b.get()) == null) {
                return;
            }
            C1694h.m3122a((Object) myInCallService, "inCallService");
            CallAudioState callAudioState = myInCallService.getCallAudioState();
            C1694h.m3122a((Object) callAudioState, "audioState");
            myInCallService.setAudioRoute(callAudioState.getRoute() != 2 ? 2 : 1);
            m793u();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: s */
    public final void m797s() {
        C3074a.f8976a.m226d("InCallActivity.hold");
        C2485a c2485a = this.f7469n;
        if (c2485a == null) {
            C1694h.m3124a();
        }
        this.f7470o = !c2485a.m921a();
        C2485a c2485a2 = this.f7469n;
        if (c2485a2 == null) {
            C1694h.m3124a();
        }
        c2485a2.m918a(this.f7470o);
        m793u();
    }

    /* renamed from: t */
    public final void m795t() {
        if (this.f7467M) {
            return;
        }
        this.f7467M = true;
        try {
            ArrayList arrayList = new ArrayList();
            List<PhoneAccountHandle> callCapablePhoneAccounts = C3135y.f9272b.m16h().getCallCapablePhoneAccounts();
            for (PhoneAccountHandle phoneAccountHandle : callCapablePhoneAccounts) {
                PhoneAccount phoneAccount = C3135y.f9272b.m16h().getPhoneAccount(phoneAccountHandle);
                C1694h.m3122a((Object) phoneAccount, "phoneAccount");
                arrayList.add(phoneAccount.getLabel());
            }
            Object[] array = arrayList.toArray(new CharSequence[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            C3104j.m157a(C3104j.f9124a, "InCallActivity.onSelectPhoneAccountState showPhoneAccounts dialog", (String) null, 2, (Object) null);
            new DialogInterfaceC0090d.C0091a(this).m7920a(getString(2131755182)).m7917a((CharSequence[]) array, new DialogInterface$OnClickListenerC2561p(callCapablePhoneAccounts)).m7926a(new DialogInterface$OnCancelListenerC2562q()).m7916b().show();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: u */
    public final void m793u() {
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2563r(null), 2, null);
    }

    /* renamed from: v */
    public final void m791v() {
        if (C2398ai.f6930a.m1242u() == 1) {
            AbstractC2120ai abstractC2120ai = this.f7468m;
            if (abstractC2120ai == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai.f5532A.setBackgroundColor(-16777216);
            return;
        }
        AbstractC2120ai abstractC2120ai2 = this.f7468m;
        if (abstractC2120ai2 == null) {
            C1694h.m3116b("binding");
        }
        FrameLayout frameLayout = abstractC2120ai2.f5532A;
        C1694h.m3122a((Object) frameLayout, "binding.llMainFrame");
        frameLayout.setBackground(getDrawable(2131230841));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        C3104j.m157a(C3104j.f9124a, "InCallActivity.onCreate", (String) null, 2, (Object) null);
        C3074a.f8976a.m227c("InCallActivity created");
        super.onCreate(bundle);
        setTheme(2131820774);
        Object systemService = getSystemService("power");
        if (systemService != null) {
            PowerManager powerManager = (PowerManager) systemService;
            if (powerManager.isWakeLockLevelSupported(32)) {
                this.f7455A = powerManager.newWakeLock(32, "ShouldIAnswer::InCall");
            }
            Window window = getWindow();
            window.setFlags(67108864, 67108864);
            window.addFlags(6815872);
            m7908a(9);
            this.f7474s = getDrawable(2131230933);
            this.f7475t = getDrawable(2131230932);
            this.f7476u = getDrawable(2131230956);
            this.f7477v = getDrawable(2131230955);
            this.f7478w = getDrawable(2131230938);
            this.f7479x = getDrawable(2131230943);
            this.f7480y = getDrawable(2131230886);
            this.f7481z = getDrawable(2131230885);
            ViewDataBinding m5845a = C0651f.m5845a(this, 2131558460);
            C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…R.layout.incall_activity)");
            this.f7468m = (AbstractC2120ai) m5845a;
            AbstractC2120ai abstractC2120ai = this.f7468m;
            if (abstractC2120ai == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2120ai.f5545N;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvDuration");
            appCompatTextView.setVisibility(8);
            AbstractC2120ai abstractC2120ai2 = this.f7468m;
            if (abstractC2120ai2 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2120ai2.f5533B;
            C1694h.m3122a((Object) linearLayout, "binding.llOffHookActions");
            linearLayout.setVisibility(8);
            AbstractC2120ai abstractC2120ai3 = this.f7468m;
            if (abstractC2120ai3 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout2 = abstractC2120ai3.f5535D;
            C1694h.m3122a((Object) linearLayout2, "binding.llRingingActions");
            linearLayout2.setVisibility(8);
            AbstractC2120ai abstractC2120ai4 = this.f7468m;
            if (abstractC2120ai4 == null) {
                C1694h.m3116b("binding");
            }
            LimitedScrollView limitedScrollView = abstractC2120ai4.f5540I;
            C1694h.m3122a((Object) limitedScrollView, "binding.scrollView");
            limitedScrollView.setVisibility(8);
            AbstractC2120ai abstractC2120ai5 = this.f7468m;
            if (abstractC2120ai5 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout3 = abstractC2120ai5.f5573w;
            C1694h.m3122a((Object) linearLayout3, "binding.llContent");
            linearLayout3.setVisibility(8);
            AbstractC2120ai abstractC2120ai6 = this.f7468m;
            if (abstractC2120ai6 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView = abstractC2120ai6.f5565o;
            C1694h.m3122a((Object) imageView, "binding.imgChangeTheme");
            imageView.setVisibility(0);
            AbstractC2120ai abstractC2120ai7 = this.f7468m;
            if (abstractC2120ai7 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView2 = abstractC2120ai7.f5569s;
            C1694h.m3122a((Object) imageView2, "binding.imgMainRatingInTitle");
            imageView2.setVisibility(8);
            AbstractC2120ai abstractC2120ai8 = this.f7468m;
            if (abstractC2120ai8 == null) {
                C1694h.m3116b("binding");
            }
            FrameLayout frameLayout = abstractC2120ai8.f5563m;
            C1694h.m3122a((Object) frameLayout, "binding.frameContactPhotoInTitle");
            frameLayout.setVisibility(8);
            AbstractC2120ai abstractC2120ai9 = this.f7468m;
            if (abstractC2120ai9 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView3 = abstractC2120ai9.f5568r;
            C1694h.m3122a((Object) imageView3, "binding.imgMainRatingInSubtitle");
            imageView3.setVisibility(8);
            AbstractC2120ai abstractC2120ai10 = this.f7468m;
            if (abstractC2120ai10 == null) {
                C1694h.m3116b("binding");
            }
            FrameLayout frameLayout2 = abstractC2120ai10.f5562l;
            C1694h.m3122a((Object) frameLayout2, "binding.frameContactPhotoBig");
            frameLayout2.setVisibility(8);
            AbstractC2120ai abstractC2120ai11 = this.f7468m;
            if (abstractC2120ai11 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView2 = abstractC2120ai11.f5552U;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvTitle");
            appCompatTextView2.setText("");
            AbstractC2120ai abstractC2120ai12 = this.f7468m;
            if (abstractC2120ai12 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView3 = abstractC2120ai12.f5549R;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvSubtitle");
            appCompatTextView3.setText("");
            AbstractC2120ai abstractC2120ai13 = this.f7468m;
            if (abstractC2120ai13 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView4 = abstractC2120ai13.f5546O;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvFeaturedInfo");
            appCompatTextView4.setVisibility(8);
            AbstractC2120ai abstractC2120ai14 = this.f7468m;
            if (abstractC2120ai14 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout4 = abstractC2120ai14.f5576z;
            C1694h.m3122a((Object) linearLayout4, "binding.llLocalReviews");
            linearLayout4.setVisibility(8);
            AbstractC2120ai abstractC2120ai15 = this.f7468m;
            if (abstractC2120ai15 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout5 = abstractC2120ai15.f5572v;
            C1694h.m3122a((Object) linearLayout5, "binding.llCommunityReviews");
            linearLayout5.setVisibility(8);
            AbstractC2120ai abstractC2120ai16 = this.f7468m;
            if (abstractC2120ai16 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout6 = abstractC2120ai16.f5537F;
            C1694h.m3122a((Object) linearLayout6, "binding.llUnknownNumberInfo");
            linearLayout6.setVisibility(8);
            AbstractC2120ai abstractC2120ai17 = this.f7468m;
            if (abstractC2120ai17 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout7 = abstractC2120ai17.f5574x;
            C1694h.m3122a((Object) linearLayout7, "binding.llExpandPanel");
            linearLayout7.setVisibility(8);
            AbstractC2120ai abstractC2120ai18 = this.f7468m;
            if (abstractC2120ai18 == null) {
                C1694h.m3116b("binding");
            }
            Button button = abstractC2120ai18.f5558h;
            C1694h.m3122a((Object) button, "binding.butMoreInfo");
            button.setVisibility(8);
            AbstractC2120ai abstractC2120ai19 = this.f7468m;
            if (abstractC2120ai19 == null) {
                C1694h.m3116b("binding");
            }
            Button button2 = abstractC2120ai19.f5556f;
            C1694h.m3122a((Object) button2, "binding.butLoadReviews");
            button2.setVisibility(8);
            AbstractC2120ai abstractC2120ai20 = this.f7468m;
            if (abstractC2120ai20 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView5 = abstractC2120ai20.f5538G;
            C1694h.m3122a((Object) appCompatTextView5, "binding.loadReviewsError");
            appCompatTextView5.setVisibility(8);
            AbstractC2120ai abstractC2120ai21 = this.f7468m;
            if (abstractC2120ai21 == null) {
                C1694h.m3116b("binding");
            }
            ProgressBar progressBar = abstractC2120ai21.f5539H;
            C1694h.m3122a((Object) progressBar, "binding.progressBar1");
            progressBar.setVisibility(8);
            AbstractC2120ai abstractC2120ai22 = this.f7468m;
            if (abstractC2120ai22 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView6 = abstractC2120ai22.f5544M;
            C1694h.m3122a((Object) appCompatTextView6, "binding.tvDbSensitivityInfo");
            appCompatTextView6.setVisibility(8);
            AbstractC2120ai abstractC2120ai23 = this.f7468m;
            if (abstractC2120ai23 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView4 = abstractC2120ai23.f5564n;
            C1694h.m3122a((Object) imageView4, "binding.imgAccept");
            this.f7460F = new C3082b(imageView4, 2130772000, 0);
            AbstractC2120ai abstractC2120ai24 = this.f7468m;
            if (abstractC2120ai24 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView7 = abstractC2120ai24.f5551T;
            C1694h.m3122a((Object) appCompatTextView7, "binding.tvSwipeUp");
            this.f7461G = new C3082b(appCompatTextView7, 2130772001, 0);
            AbstractC2120ai abstractC2120ai25 = this.f7468m;
            if (abstractC2120ai25 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView8 = abstractC2120ai25.f5541J;
            C1694h.m3122a((Object) appCompatTextView8, "binding.tvCallType");
            this.f7462H = new C3082b(appCompatTextView8, 2130772000, 0);
            AbstractC2120ai abstractC2120ai26 = this.f7468m;
            if (abstractC2120ai26 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView5 = abstractC2120ai26.f5564n;
            C1694h.m3122a((Object) imageView5, "binding.imgAccept");
            imageView5.setTranslationZ(100.0f);
            AbstractC2120ai abstractC2120ai27 = this.f7468m;
            if (abstractC2120ai27 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout8 = abstractC2120ai27.f5575y;
            C1694h.m3122a((Object) linearLayout8, "binding.llFadingOut");
            linearLayout8.setVisibility(0);
            C3134x c3134x = C3134x.f9269a;
            InCallActivity inCallActivity = this;
            AbstractC2120ai abstractC2120ai28 = this.f7468m;
            if (abstractC2120ai28 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView6 = abstractC2120ai28.f5570t;
            C1694h.m3122a((Object) imageView6, "binding.imgRating1");
            c3134x.m24b(inCallActivity, imageView6, EnumC2395ag.POSITIVE);
            C3134x c3134x2 = C3134x.f9269a;
            AbstractC2120ai abstractC2120ai29 = this.f7468m;
            if (abstractC2120ai29 == null) {
                C1694h.m3116b("binding");
            }
            ImageView imageView7 = abstractC2120ai29.f5571u;
            C1694h.m3122a((Object) imageView7, "binding.imgRating2");
            c3134x2.m24b(inCallActivity, imageView7, EnumC2395ag.NEGATIVE);
            AbstractC2120ai abstractC2120ai30 = this.f7468m;
            if (abstractC2120ai30 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai30.f5557g.setOnClickListener(new View$OnClickListenerC2547b());
            AbstractC2120ai abstractC2120ai31 = this.f7468m;
            if (abstractC2120ai31 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai31.f5560j.setOnClickListener(new View$OnClickListenerC2552g());
            AbstractC2120ai abstractC2120ai32 = this.f7468m;
            if (abstractC2120ai32 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai32.f5554d.setOnClickListener(new View$OnClickListenerC2553h());
            AbstractC2120ai abstractC2120ai33 = this.f7468m;
            if (abstractC2120ai33 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai33.f5555e.setOnClickListener(new View$OnClickListenerC2554i());
            AbstractC2120ai abstractC2120ai34 = this.f7468m;
            if (abstractC2120ai34 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai34.f5559i.setOnClickListener(new View$OnClickListenerC2555j());
            AbstractC2120ai abstractC2120ai35 = this.f7468m;
            if (abstractC2120ai35 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai35.f5561k.setOnClickListener(new View$OnClickListenerC2556k());
            AbstractC2120ai abstractC2120ai36 = this.f7468m;
            if (abstractC2120ai36 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai36.f5556f.setOnClickListener(new View$OnClickListenerC2557l());
            AbstractC2120ai abstractC2120ai37 = this.f7468m;
            if (abstractC2120ai37 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai37.f5558h.setOnClickListener(new View$OnClickListenerC2558m());
            AbstractC2120ai abstractC2120ai38 = this.f7468m;
            if (abstractC2120ai38 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai38.f5553c.setOnClickListener(new View$OnClickListenerC2559n());
            AbstractC0717h j = m5665j();
            C1694h.m3122a((Object) j, "supportFragmentManager");
            AbstractC0738l mo5592a = j.mo5592a();
            C1694h.m3122a((Object) mo5592a, "fragmentManager.beginTransaction()");
            this.f7473r = new InCallDialpadFragment();
            InCallDialpadFragment inCallDialpadFragment = this.f7473r;
            if (inCallDialpadFragment == null) {
                C1694h.m3124a();
            }
            mo5592a.m5463a(2131362206, inCallDialpadFragment);
            mo5592a.mo5457b();
            InCallDialpadFragment inCallDialpadFragment2 = this.f7473r;
            if (inCallDialpadFragment2 != null) {
                inCallDialpadFragment2.m779a(new C2548c());
            }
            AbstractC2120ai abstractC2120ai39 = this.f7468m;
            if (abstractC2120ai39 == null) {
                C1694h.m3116b("binding");
            }
            this.f7457C = new View$OnTouchListenerC2572a(abstractC2120ai39, new C2549d());
            AbstractC2120ai abstractC2120ai40 = this.f7468m;
            if (abstractC2120ai40 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai40.f5535D.setOnTouchListener(this.f7457C);
            m791v();
            AbstractC2120ai abstractC2120ai41 = this.f7468m;
            if (abstractC2120ai41 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2120ai41.f5565o.setOnClickListener(new View$OnClickListenerC2550e());
            C2488c.f7274a.m904a(new C2551f());
            AbstractC2120ai abstractC2120ai42 = this.f7468m;
            if (abstractC2120ai42 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout9 = abstractC2120ai42.f5533B;
            C1694h.m3122a((Object) linearLayout9, "binding.llOffHookActions");
            linearLayout9.setVisibility(8);
            AbstractC2120ai abstractC2120ai43 = this.f7468m;
            if (abstractC2120ai43 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout10 = abstractC2120ai43.f5573w;
            C1694h.m3122a((Object) linearLayout10, "binding.llContent");
            linearLayout10.setVisibility(8);
            C3082b c3082b = this.f7460F;
            if (c3082b == null) {
                C1694h.m3124a();
            }
            c3082b.m200a();
            C3082b c3082b2 = this.f7461G;
            if (c3082b2 == null) {
                C1694h.m3124a();
            }
            c3082b2.m200a();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.os.PowerManager");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m826b("destroy");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        C3104j.m157a(C3104j.f9124a, "InCallActivity.onNewIntent", (String) null, 2, (Object) null);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onResume() {
        super.onResume();
        m832a("resume");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStart() {
        super.onStart();
        long currentTimeMillis = System.currentTimeMillis();
        if (f7452N != 0 && !ActivityC2499a.f7362k.m864a()) {
            long j = f7452N;
            f7453O++;
            if (currentTimeMillis - j > 2000) {
                f7453O = 0;
            }
            if (f7453O > 5) {
                C3104j.m158a(C3104j.f9124a, new Exception("InCallActivity too much of starts!"), (String) null, 2, (Object) null);
                ActivityC2499a.f7362k.m863a(true);
            }
        }
        f7452N = currentTimeMillis;
        C2488c.f7274a.m905a(new WeakReference<>(this));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStop() {
        super.onStop();
        C2488c.f7274a.m905a((WeakReference<InCallActivity>) null);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            m832a("focus");
        } else {
            m826b("focus");
        }
    }
}
