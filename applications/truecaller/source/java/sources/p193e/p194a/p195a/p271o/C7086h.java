package p193e.p194a.p195a.p271o;

import android.content.Context;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.LineChart;
import com.truecaller.common.p156ui.PieChart;
import com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerActivity;
import com.truecaller.messaging.storagemanager.langpack.LangPackStorageManagerActivity;
import com.truecaller.messaging.storagemanager.media.MediaStorageManagerActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1059m3.C18173m0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p373a.C8300e;
import p193e.p194a.p372b0.p373a.C8314j;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018�� L2\u00020\u00012\u00020\u0002:\u0001MB\u0007¢\u0006\u0004\bK\u0010\u0011J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001e\u001a\u00020\r2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u001c2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b'\u0010#J\u0017\u0010(\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b(\u0010&J\u000f\u0010)\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010\u0011J\u0017\u0010*\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b*\u0010#J\u0017\u0010+\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b+\u0010&J\u000f\u0010,\u001a\u00020\rH\u0016¢\u0006\u0004\b,\u0010\u0011J\u0017\u0010-\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b-\u0010#J\u0017\u0010.\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b.\u0010&J\u000f\u0010/\u001a\u00020\rH\u0016¢\u0006\u0004\b/\u0010\u0011J\u0017\u00100\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b0\u0010#J\u0017\u00101\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b1\u0010&J\u001d\u00105\u001a\u00020\r*\u0002022\b\b\u0001\u00104\u001a\u000203H\u0002¢\u0006\u0004\b5\u00106R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010J\u001a\u0010\u0012\f\u0012\n G*\u0004\u0018\u00010F0F0E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006N"}, d2 = {"Le/a/a/o/h;", "Landroidx/fragment/app/Fragment;", "Le/a/a/o/l;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDetach", "()V", "Le/a/a/o/e;", "tcItem", "otherItem", "availableItem", "", "percentUsed", "", "animate", "Rf", "(Le/a/a/o/e;Le/a/a/o/e;Le/a/a/o/e;FZ)V", "", "mediaItems", "hi", "(Ljava/util/List;Z)V", "", "size", "Sc", "(Ljava/lang/String;)V", "visible", "Wp", "(Z)V", "rj", "xd", "px", "Q7", "Nm", "vg", "Fv", "Xf", "Ck", "Bv", "nj", "Landroid/widget/TextView;", "", RemoteMessageConst.Notification.COLOR, "SA", "(Landroid/widget/TextView;I)V", "Le/a/m3/m0;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/m3/m0;", "binding", "Le/a/a/o/k;", "e", "Le/a/a/o/k;", "RA", "()Le/a/a/o/k;", "setPresenter", "(Le/a/a/o/k;)V", "presenter", "Ln3/a/e/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "g", "Ln3/a/e/b;", "startForResult", "<init>", "i", C22021b.f61237c, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.o.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/h.class */
public final class C7086h extends AbstractC7082d implements AbstractC7099l {

    /* renamed from: h */
    public static final /* synthetic */ l[] f22826h = {C22128a.m8621g0(C7086h.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentStorageManagerBinding;", 0)};

    /* renamed from: i */
    public static final C7088b f22827i = new C7088b(null);
    @Inject

    /* renamed from: e */
    public AbstractC7098k f22828e;

    /* renamed from: f */
    public final ViewBindingProperty f22829f = new C19350a(new C7087a());

    /* renamed from: g */
    public final AbstractC25374b<Intent> f22830g;

    /* renamed from: e.a.a.o.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$a.class */
    public static final class C7087a extends m implements s1.z.b.l<C7086h, C18173m0> {
        public C7087a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30159d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362227;
            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.available);
            if (textView != null) {
                i = 2131362581;
                MaterialCardView findViewById = requireView.findViewById(C2752R.C2754id.cacheBlock);
                if (findViewById != null) {
                    i = 2131362582;
                    TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.cacheDescription);
                    if (textView2 != null) {
                        i = 2131362583;
                        TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.cacheSize);
                        if (textView3 != null) {
                            i = 2131362584;
                            TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.cacheTitle);
                            if (textView4 != null) {
                                i = 2131362610;
                                MaterialCardView findViewById2 = requireView.findViewById(C2752R.C2754id.callRecordingBlock);
                                if (findViewById2 != null) {
                                    i = 2131362611;
                                    ImageView imageView = (ImageView) requireView.findViewById(C2752R.C2754id.callRecordingBtn);
                                    if (imageView != null) {
                                        i = 2131362618;
                                        TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.callRecordingSize);
                                        if (textView5 != null) {
                                            i = 2131362619;
                                            TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.callRecordingTitle);
                                            if (textView6 != null) {
                                                i = 2131362700;
                                                TextView textView7 = (TextView) requireView.findViewById(C2752R.C2754id.captionFive);
                                                if (textView7 != null) {
                                                    i = 2131362701;
                                                    TextView textView8 = (TextView) requireView.findViewById(C2752R.C2754id.captionFour);
                                                    if (textView8 != null) {
                                                        i = 2131362702;
                                                        TextView textView9 = (TextView) requireView.findViewById(C2752R.C2754id.captionOne);
                                                        if (textView9 != null) {
                                                            i = 2131362703;
                                                            TextView textView10 = (TextView) requireView.findViewById(C2752R.C2754id.captionSix);
                                                            if (textView10 != null) {
                                                                i = 2131362704;
                                                                TextView textView11 = (TextView) requireView.findViewById(C2752R.C2754id.captionThree);
                                                                if (textView11 != null) {
                                                                    i = 2131362705;
                                                                    TextView textView12 = (TextView) requireView.findViewById(C2752R.C2754id.captionTwo);
                                                                    if (textView12 != null) {
                                                                        i = 2131362803;
                                                                        Button button = (Button) requireView.findViewById(C2752R.C2754id.clearCache);
                                                                        if (button != null) {
                                                                            i = 2131363769;
                                                                            FlexboxLayout flexboxLayout = (FlexboxLayout) requireView.findViewById(2131363769);
                                                                            if (flexboxLayout != null) {
                                                                                i = 2131364543;
                                                                                MaterialCardView findViewById3 = requireView.findViewById(C2752R.C2754id.langPackBlock);
                                                                                if (findViewById3 != null) {
                                                                                    i = 2131364544;
                                                                                    ImageView imageView2 = (ImageView) requireView.findViewById(C2752R.C2754id.langPackBtn);
                                                                                    if (imageView2 != null) {
                                                                                        i = 2131364546;
                                                                                        TextView textView13 = (TextView) requireView.findViewById(C2752R.C2754id.langPackSize);
                                                                                        if (textView13 != null) {
                                                                                            i = 2131364547;
                                                                                            TextView textView14 = (TextView) requireView.findViewById(C2752R.C2754id.langPackTitle);
                                                                                            if (textView14 != null) {
                                                                                                i = 2131364623;
                                                                                                LineChart lineChart = (LineChart) requireView.findViewById(C2752R.C2754id.lineChart);
                                                                                                if (lineChart != null) {
                                                                                                    i = 2131364764;
                                                                                                    MaterialCardView findViewById4 = requireView.findViewById(C2752R.C2754id.mediaBlock);
                                                                                                    if (findViewById4 != null) {
                                                                                                        i = 2131364765;
                                                                                                        ImageView imageView3 = (ImageView) requireView.findViewById(C2752R.C2754id.mediaBtn);
                                                                                                        if (imageView3 != null) {
                                                                                                            i = 2131364770;
                                                                                                            TextView textView15 = (TextView) requireView.findViewById(C2752R.C2754id.mediaSize);
                                                                                                            if (textView15 != null) {
                                                                                                                i = 2131364771;
                                                                                                                TextView textView16 = (TextView) requireView.findViewById(C2752R.C2754id.mediaTitle);
                                                                                                                if (textView16 != null) {
                                                                                                                    i = 2131365039;
                                                                                                                    TextView textView17 = (TextView) requireView.findViewById(2131365039);
                                                                                                                    if (textView17 != null) {
                                                                                                                        i = 2131365156;
                                                                                                                        PieChart pieChart = (PieChart) requireView.findViewById(C2752R.C2754id.pieChart);
                                                                                                                        if (pieChart != null) {
                                                                                                                            i = 2131366086;
                                                                                                                            MaterialCardView findViewById5 = requireView.findViewById(C2752R.C2754id.storageUsageBlock);
                                                                                                                            if (findViewById5 != null) {
                                                                                                                                i = 2131366087;
                                                                                                                                TextView textView18 = (TextView) requireView.findViewById(C2752R.C2754id.storageUsageTitle);
                                                                                                                                if (textView18 != null) {
                                                                                                                                    i = 2131366244;
                                                                                                                                    TextView textView19 = (TextView) requireView.findViewById(C2752R.C2754id.tcMedia);
                                                                                                                                    if (textView19 != null) {
                                                                                                                                        i = 2131366245;
                                                                                                                                        TextView textView20 = (TextView) requireView.findViewById(C2752R.C2754id.tcMediaSize);
                                                                                                                                        if (textView20 != null) {
                                                                                                                                            i = 2131366246;
                                                                                                                                            TextView textView21 = (TextView) requireView.findViewById(C2752R.C2754id.tcMediaTitle);
                                                                                                                                            if (textView21 != null) {
                                                                                                                                                i = 2131366512;
                                                                                                                                                MaterialToolbar findViewById6 = requireView.findViewById(2131366512);
                                                                                                                                                if (findViewById6 != null) {
                                                                                                                                                    i = 2131366538;
                                                                                                                                                    MaterialCardView findViewById7 = requireView.findViewById(C2752R.C2754id.totalMediaBlock);
                                                                                                                                                    if (findViewById7 != null) {
                                                                                                                                                        return new C18173m0((ConstraintLayout) requireView, textView, findViewById, textView2, textView3, textView4, findViewById2, imageView, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, button, flexboxLayout, findViewById3, imageView2, textView13, textView14, lineChart, findViewById4, imageView3, textView15, textView16, textView17, pieChart, findViewById5, textView18, textView19, textView20, textView21, findViewById6, findViewById7);
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.o.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$b.class */
    public static final class C7088b {
        public C7088b(f fVar) {
        }
    }

    /* renamed from: e.a.a.o.h$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$c.class */
    public static final class View$OnClickListenerC7089c implements View.OnClickListener {
        public View$OnClickListenerC7089c() {
            C7086h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7086h.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.o.h$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$d.class */
    public static final class View$OnClickListenerC7090d implements View.OnClickListener {
        public View$OnClickListenerC7090d() {
            C7086h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7104o c7104o = (C7104o) C7086h.this.m30161RA();
            Objects.requireNonNull(c7104o);
            d.w2(c7104o, (s1.w.f) null, (j0) null, new C7102n(c7104o, null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.a.o.h$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$e.class */
    public static final class View$OnClickListenerC7091e implements View.OnClickListener {
        public View$OnClickListenerC7091e() {
            C7086h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7099l abstractC7099l = (AbstractC7099l) ((C7104o) C7086h.this.m30161RA()).f57683a;
            if (abstractC7099l != null) {
                abstractC7099l.mo30135px();
            }
        }
    }

    /* renamed from: e.a.a.o.h$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$f.class */
    public static final class View$OnClickListenerC7092f implements View.OnClickListener {
        public View$OnClickListenerC7092f() {
            C7086h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7099l abstractC7099l = (AbstractC7099l) ((C7104o) C7086h.this.m30161RA()).f57683a;
            if (abstractC7099l != null) {
                abstractC7099l.mo30145Ck();
            }
        }
    }

    /* renamed from: e.a.a.o.h$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$g.class */
    public static final class View$OnClickListenerC7093g implements View.OnClickListener {
        public View$OnClickListenerC7093g() {
            C7086h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7099l abstractC7099l = (AbstractC7099l) ((C7104o) C7086h.this.m30161RA()).f57683a;
            if (abstractC7099l != null) {
                abstractC7099l.mo30133vg();
            }
        }
    }

    /* renamed from: e.a.a.o.h$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/h$h.class */
    public static final class C7094h<O> implements AbstractC25373a<ActivityResult> {
        public C7094h() {
            C7086h.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(ActivityResult activityResult) {
            C10480a.m26065H1(C7086h.this.m30161RA(), false, false, 2, null);
        }
    }

    public C7086h() {
        AbstractC25374b<Intent> registerForActivityResult = registerForActivityResult(new C25380d(), new C7094h());
        s1.z.c.l.d(registerForActivityResult, "registerForActivityResul…StorageUsageData(false) }");
        this.f22830g = registerForActivityResult;
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Bv */
    public void mo30146Bv(String str) {
        s1.z.c.l.e(str, "size");
        TextView textView = m30162QA().f51326c;
        s1.z.c.l.d(textView, "binding.cacheSize");
        textView.setText(str);
        m30162QA().f51335l.setOnClickListener(new View$OnClickListenerC7090d());
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Ck */
    public void mo30145Ck() {
        AbstractC25374b<Intent> abstractC25374b = this.f22830g;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        abstractC25374b.mo3694a(new Intent(requireContext, LangPackStorageManagerActivity.class), null);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Fv */
    public void mo30144Fv(String str) {
        s1.z.c.l.e(str, "size");
        TextView textView = m30162QA().f51337n;
        s1.z.c.l.d(textView, "binding.langPackSize");
        textView.setText(str);
        m30162QA().f51336m.setOnClickListener(new View$OnClickListenerC7092f());
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Nm */
    public void mo30143Nm(boolean z) {
        MaterialCardView materialCardView = m30162QA().f51339p;
        s1.z.c.l.d(materialCardView, "binding.mediaBlock");
        C19286f.m13683U(materialCardView, z);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Q7 */
    public void mo30142Q7(String str) {
        s1.z.c.l.e(str, "size");
        TextView textView = m30162QA().f51340q;
        s1.z.c.l.d(textView, "binding.mediaSize");
        textView.setText(str);
        m30162QA().f51339p.setOnClickListener(new View$OnClickListenerC7093g());
    }

    /* renamed from: QA */
    public final C18173m0 m30162QA() {
        return (C18173m0) this.f22829f.m34468b(this, f22826h[0]);
    }

    /* renamed from: RA */
    public final AbstractC7098k m30161RA() {
        AbstractC7098k abstractC7098k = this.f22828e;
        if (abstractC7098k != null) {
            return abstractC7098k;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Rf */
    public void mo30141Rf(C7083e c7083e, C7083e c7083e2, C7083e c7083e3, float f, boolean z) {
        s1.z.c.l.e(c7083e, "tcItem");
        s1.z.c.l.e(c7083e2, "otherItem");
        s1.z.c.l.e(c7083e3, "availableItem");
        TextView textView = m30162QA().f51343t;
        s1.z.c.l.d(textView, "binding.tcMedia");
        textView.setText(c7083e.f22825c);
        TextView textView2 = m30162QA().f51343t;
        s1.z.c.l.d(textView2, "binding.tcMedia");
        m30160SA(textView2, c7083e.f22824b);
        TextView textView3 = m30162QA().f51341r;
        s1.z.c.l.d(textView3, "binding.other");
        textView3.setText(c7083e2.f22825c);
        TextView textView4 = m30162QA().f51341r;
        s1.z.c.l.d(textView4, "binding.other");
        m30160SA(textView4, c7083e2.f22824b);
        TextView textView5 = m30162QA().f51324a;
        s1.z.c.l.d(textView5, "binding.available");
        textView5.setText(c7083e3.f22825c);
        TextView textView6 = m30162QA().f51324a;
        s1.z.c.l.d(textView6, "binding.available");
        m30160SA(textView6, c7083e3.f22824b);
        PieChart pieChart = m30162QA().f51342s;
        String string = requireContext().getString(C2752R.string.ManageStorageUsageMediaPercent, Float.valueOf(f));
        s1.z.c.l.d(string, "requireContext().getStri…ediaPercent, percentUsed)");
        String string2 = requireContext().getString(C2752R.string.ManageStorageUsageMediaUsed);
        s1.z.c.l.d(string2, "requireContext().getStri…ageStorageUsageMediaUsed)");
        Objects.requireNonNull(pieChart);
        s1.z.c.l.e(string, "title");
        s1.z.c.l.e(string2, "subTitle");
        pieChart.f11027h = string;
        pieChart.f11028i = string2;
        pieChart.invalidate();
        PieChart pieChart2 = m30162QA().f51342s;
        List T = i.T(new Long[]{Long.valueOf(c7083e.f22823a), Long.valueOf(c7083e2.f22823a), Long.valueOf(c7083e3.f22823a)});
        List<Number> T2 = i.T(new Integer[]{Integer.valueOf(c7083e.f22824b), Integer.valueOf(c7083e2.f22824b), Integer.valueOf(c7083e3.f22824b)});
        Objects.requireNonNull(pieChart2);
        s1.z.c.l.e(T, RemoteMessageConst.DATA);
        s1.z.c.l.e(T2, "colors");
        pieChart2.f11026g.clear();
        pieChart2.f11026g.addAll(C18334g0.m15206r0(T));
        for (Number number : T2) {
            int intValue = number.intValue();
            List<Paint> list = pieChart2.f11022c;
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(intValue);
            paint.setStrokeWidth(pieChart2.f11021b);
            paint.setStyle(Paint.Style.STROKE);
            list.add(paint);
        }
        pieChart2.invalidate();
        if (z) {
            PieChart pieChart3 = m30162QA().f51342s;
            s1.z.c.l.d(pieChart3, "binding.pieChart");
            C8300e c8300e = new C8300e(pieChart3);
            c8300e.setInterpolator(new AccelerateInterpolator());
            c8300e.setDuration(500L);
            m30162QA().f51342s.startAnimation(c8300e);
        }
    }

    /* renamed from: SA */
    public final void m30160SA(TextView textView, int i) {
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(requireContext, C2752R.C2753drawable.ic_tcx_dot_8dp);
        if (m1789b != null) {
            Drawable mutate = m1789b.mutate();
            s1.z.c.l.d(mutate, "DrawableCompat.wrap(it).mutate()");
            mutate.setTint(i);
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(mutate, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Sc */
    public void mo30140Sc(String str) {
        s1.z.c.l.e(str, "size");
        TextView textView = m30162QA().f51344u;
        s1.z.c.l.d(textView, "binding.tcMediaSize");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Wp */
    public void mo30139Wp(boolean z) {
        MaterialCardView materialCardView = m30162QA().f51346w;
        s1.z.c.l.d(materialCardView, "binding.totalMediaBlock");
        C19286f.m13683U(materialCardView, z);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: Xf */
    public void mo30138Xf(boolean z) {
        MaterialCardView materialCardView = m30162QA().f51336m;
        s1.z.c.l.d(materialCardView, "binding.langPackBlock");
        C19286f.m13683U(materialCardView, z);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: hi */
    public void mo30137hi(List<C7083e> list, boolean z) {
        s1.z.c.l.e(list, "mediaItems");
        List T = i.T(new TextView[]{m30162QA().f51331h, m30162QA().f51334k, m30162QA().f51333j, m30162QA().f51330g, m30162QA().f51329f, m30162QA().f51332i});
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = T.get(i);
            s1.z.c.l.d(obj, "views[i]");
            ((TextView) obj).setText(list.get(i).f22825c);
            Object obj2 = T.get(i);
            s1.z.c.l.d(obj2, "views[i]");
            m30160SA((TextView) obj2, list.get(i).f22824b);
            Object obj3 = T.get(i);
            s1.z.c.l.d(obj3, "views[i]");
            C19286f.m13684T((View) obj3);
        }
        LineChart lineChart = m30162QA().f51338o;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C7083e c7083e : list) {
            arrayList.add(Long.valueOf(c7083e.f22823a));
        }
        ArrayList<Number> arrayList2 = new ArrayList(C25225a.m4004J(list, 10));
        for (C7083e c7083e2 : list) {
            arrayList2.add(Integer.valueOf(c7083e2.f22824b));
        }
        Objects.requireNonNull(lineChart);
        s1.z.c.l.e(arrayList, RemoteMessageConst.DATA);
        s1.z.c.l.e(arrayList2, "colors");
        lineChart.f11019e.clear();
        lineChart.f11019e.addAll(C18334g0.m15206r0(arrayList));
        for (Number number : arrayList2) {
            int intValue = number.intValue();
            List<Paint> list2 = lineChart.f11017c;
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(intValue);
            list2.add(paint);
        }
        lineChart.invalidate();
        if (z) {
            LineChart lineChart2 = m30162QA().f51338o;
            s1.z.c.l.d(lineChart2, "binding.lineChart");
            C8314j c8314j = new C8314j(lineChart2);
            c8314j.setInterpolator(new AccelerateInterpolator());
            c8314j.setDuration(500L);
            m30162QA().f51338o.startAnimation(c8314j);
        }
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: nj */
    public void mo30136nj(boolean z) {
        MaterialCardView materialCardView = m30162QA().f51325b;
        s1.z.c.l.d(materialCardView, "binding.cacheBlock");
        C19286f.m13683U(materialCardView, z);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_storage_manager, viewGroup, false);
    }

    public void onDetach() {
        C7086h.super.onDetach();
        AbstractC7098k abstractC7098k = this.f22828e;
        if (abstractC7098k != null) {
            ((AbstractC20574a) abstractC7098k).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7086h.super.onViewCreated(view, bundle);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m30162QA().f51345v);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m30162QA().f51345v.setNavigationOnClickListener(new View$OnClickListenerC7089c());
        AbstractC7098k abstractC7098k = this.f22828e;
        if (abstractC7098k != null) {
            ((C7104o) abstractC7098k).mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: px */
    public void mo30135px() {
        AbstractC25374b<Intent> abstractC25374b = this.f22830g;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        abstractC25374b.mo3694a(new Intent(requireContext, CallRecStorageManagerActivity.class), null);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: rj */
    public void mo30134rj(String str) {
        s1.z.c.l.e(str, "size");
        TextView textView = m30162QA().f51328e;
        s1.z.c.l.d(textView, "binding.callRecordingSize");
        textView.setText(str);
        m30162QA().f51327d.setOnClickListener(new View$OnClickListenerC7091e());
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: vg */
    public void mo30133vg() {
        AbstractC25374b<Intent> abstractC25374b = this.f22830g;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        abstractC25374b.mo3694a(new Intent(requireContext, MediaStorageManagerActivity.class), null);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7099l
    /* renamed from: xd */
    public void mo30132xd(boolean z) {
        MaterialCardView materialCardView = m30162QA().f51327d;
        s1.z.c.l.d(materialCardView, "binding.callRecordingBlock");
        C19286f.m13683U(materialCardView, z);
    }
}
