package com.tmobile.services.nameid.p007ui.banner;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.p007ui.NameIDImageButton;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.p007ui.banner.NameIDBanner;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� U2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001UB\u001d\b\u0007\u0012\u0006\u0010P\u001a\u00020O\u0012\n\b\u0002\u0010R\u001a\u0004\u0018\u00010Q¢\u0006\u0004\bS\u0010TJ\u0019\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ'\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010 \u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010\nJ'\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001eH\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\nJ\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\nJ\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\nJ\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\nJ\u000f\u0010,\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010\nJ\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b.\u0010\bJ\u0017\u00101\u001a\u00020\u00062\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\nJ\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\nJ\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\nJ\u0017\u00106\u001a\u00020\u00062\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b6\u00102J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\nJ\u0017\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u001eH\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\nR\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010@\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010C\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010F\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010AR\u0016\u0010J\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010L\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010DR\u0016\u0010M\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010AR\u0016\u0010N\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010D¨\u0006V"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBannerView;", "com/tmobile/services/nameid/ui/banner/NameIDBanner$View", "Lcom/tmobile/services/nameid/ui/banner/MainActivityBanner;", "Landroidx/cardview/widget/CardView;", "", "alternate", "", "configureColors", "(Z)V", "configureColorsAlternate", "()V", "configureColorsBasic", "topVisible", "bottomTextVisible", "bottomButtonVisible", "configureVisibility", "(ZZZ)V", "Landroid/app/Activity;", "findActivityRef", "()Landroid/app/Activity;", "contactAllowed", "hasUserDeniedContactPermission", "onContactPermissionChanged", "(ZZ)V", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "onPageChanged", "(Lcom/tmobile/services/nameid/NameIDPage;)V", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "state", "", "trialDaysLeft", "onUserStateChange", "(Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;I)V", "requestPermission", "backgroundColor", "textColor", "accentColor", "setColors", "(III)V", "setGone", "setViewGone", "setViewVisible", "showCallCareDialog", "showContactPermissionBanner", "useAlternateColors", "showDiscoverBanner", "", "message", "showMessage", "(Ljava/lang/String;)V", "showPendingSubscriptionBanner", "showPendingTrialBanner", "showSubscribeDialog", "showToast", "showTrialDayLeftBanner", "daysLeft", "showTrialDaysLeftBanner", "(I)V", "showUpgradeBanner", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "bottomButton", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "Landroid/widget/LinearLayout;", "bottomLayout", "Landroid/widget/LinearLayout;", "Landroid/widget/TextView;", "bottomText", "Landroid/widget/TextView;", "Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$Presenter;", "presenter", "Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$Presenter;", "rootLayout", "Lcom/tmobile/services/nameid/ui/NameIDImageButton;", "topCloseButton", "Lcom/tmobile/services/nameid/ui/NameIDImageButton;", "topHeader", "topLayout", "topText", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerView */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerView.class */
public final class NameIDBannerView extends CardView implements NameIDBanner.View, MainActivityBanner {

    /* renamed from: o */
    private NameIDBanner.Presenter f13893o;

    /* renamed from: p */
    private LinearLayout f13894p;

    /* renamed from: q */
    private LinearLayout f13895q;

    /* renamed from: r */
    private NameIDImageButton f13896r;

    /* renamed from: s */
    private TextView f13897s;

    /* renamed from: t */
    private TextView f13898t;

    /* renamed from: u */
    private LinearLayout f13899u;

    /* renamed from: v */
    private TextView f13900v;

    /* renamed from: w */
    private NameIDTextView f13901w;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBannerView$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerView$Companion */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerView$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @JvmOverloads
    public NameIDBannerView(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NameIDBannerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.m1830e(context, "context");
        View view = LayoutInflater.from(context).inflate(C1517R.layout.nameid_banner, (ViewGroup) this, true);
        this.f13893o = new NameIDBannerPresenter(this, PermissionChecker.m5423b(getContext()), PermissionChecker.m5422c(), BuildUtils.m5850d());
        Intrinsics.m1831d(view, "view");
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C1517R.C1520id.nameid_banner_root);
        Intrinsics.m1831d(linearLayout, "view.nameid_banner_root");
        this.f13894p = linearLayout;
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C1517R.C1520id.nameid_banner_top_layout);
        Intrinsics.m1831d(linearLayout2, "view.nameid_banner_top_layout");
        this.f13895q = linearLayout2;
        TextView textView = (TextView) view.findViewById(C1517R.C1520id.nameid_banner_top_header);
        Intrinsics.m1831d(textView, "view.nameid_banner_top_header");
        this.f13897s = textView;
        TextView textView2 = (TextView) view.findViewById(C1517R.C1520id.nameid_banner_top_subtext);
        Intrinsics.m1831d(textView2, "view.nameid_banner_top_subtext");
        this.f13898t = textView2;
        NameIDImageButton nameIDImageButton = (NameIDImageButton) view.findViewById(C1517R.C1520id.nameid_banner_top_close_button);
        Intrinsics.m1831d(nameIDImageButton, "view.nameid_banner_top_close_button");
        this.f13896r = nameIDImageButton;
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(C1517R.C1520id.nameid_banner_bottom_layout);
        Intrinsics.m1831d(linearLayout3, "view.nameid_banner_bottom_layout");
        this.f13899u = linearLayout3;
        TextView textView3 = (TextView) view.findViewById(C1517R.C1520id.nameid_banner_bottom_text);
        Intrinsics.m1831d(textView3, "view.nameid_banner_bottom_text");
        this.f13900v = textView3;
        NameIDTextView nameIDTextView = (NameIDTextView) view.findViewById(C1517R.C1520id.nameid_banner_bottom_button);
        Intrinsics.m1831d(nameIDTextView, "view.nameid_banner_bottom_button");
        this.f13901w = nameIDTextView;
        this.f13896r.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NameIDBannerView.this.f13893o.mo6225h();
            }
        });
        setBackgroundColor(ContextCompat.m19675d(getContext(), C1517R.C1518color.black_or_deep_purple));
        setRadius(0.0f);
        this.f13893o.mo6223j();
    }

    public /* synthetic */ NameIDBannerView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* renamed from: A */
    private final void m6215A() {
        m6212D(ContextCompat.m19675d(getContext(), C1517R.C1518color.black_or_deep_purple), ContextCompat.m19675d(getContext(), C1517R.C1518color.white), ContextCompat.m19675d(getContext(), C1517R.C1518color.magenta_or_pumpkin_orange));
    }

    /* renamed from: B */
    private final void m6214B(boolean z, boolean z2, boolean z3) {
        this.f13895q.setVisibility(z ? 0 : 8);
        this.f13900v.setVisibility(z2 ? 0 : 8);
        this.f13901w.setVisibility(z3 ? 0 : 8);
        if (z || z3 || z2) {
            this.f13899u.setVisibility(0);
        } else {
            this.f13899u.setVisibility(8);
        }
    }

    /* renamed from: C */
    private final Activity m6213C() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* renamed from: D */
    private final void m6212D(int i, int i2, int i3) {
        this.f13894p.setBackgroundColor(i);
        this.f13897s.setTextColor(i2);
        this.f13898t.setTextColor(i2);
        this.f13896r.setColorFilter(i3);
        this.f13900v.setTextColor(i2);
        this.f13901w.setTextColor(i3);
    }

    /* renamed from: x */
    private final void m6195x(boolean z) {
        if (z) {
            m6193z();
        } else {
            m6215A();
        }
    }

    /* renamed from: y */
    static /* synthetic */ void m6194y(NameIDBannerView nameIDBannerView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        nameIDBannerView.m6195x(z);
    }

    /* renamed from: z */
    private final void m6193z() {
        m6212D(ContextCompat.m19675d(getContext(), C1517R.C1518color.magenta_or_orchid_purple), ContextCompat.m19675d(getContext(), C1517R.C1518color.white), ContextCompat.m19675d(getContext(), C1517R.C1518color.white));
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.MainActivityBanner
    /* renamed from: a */
    public void mo6211a(boolean z, boolean z2) {
        this.f13893o.mo6232a(z, z2);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: b */
    public void mo6210b() {
        Activity C = m6213C();
        if (C != null) {
            FragmentManager supportFragmentManager = ((MainActivity) C).getSupportFragmentManager();
            Intrinsics.m1831d(supportFragmentManager, "(activity as MainActivity).supportFragmentManager");
            NameIDDialogBuilder.f13943m.m6139e(C).m6160b(supportFragmentManager);
            return;
        }
        LogUtil.m5631p("NameIDBannerViewshow", "Cannot show 'Call Care' dialog - activity was not found");
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.MainActivityBanner
    /* renamed from: c */
    public void mo6209c(@NotNull NameIDPage page) {
        Intrinsics.m1830e(page, "page");
        LogUtil.m5643d("NameIDBannerViewonPageChange", "Received new page - " + page.m7485a());
        this.f13893o.mo6230c(page);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: d */
    public void mo6208d() {
        LogUtil.m5643d("NameIDBannerView#showContactPermissionBanner", "showing contact permission banner");
        this.f13897s.setText(getContext().getString(C1517R.string.activity_permissions_needed_title));
        this.f13898t.setText(getContext().getString(C1517R.string.activity_permissions_needed_subtitle_in_app));
        this.f13901w.setText(getContext().getString(C1517R.string.search_lookup_allow_contact_access));
        this.f13901w.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView$showContactPermissionBanner$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDBannerView.this.f13893o.mo6227f();
            }
        });
        m6214B(true, false, true);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: e */
    public void mo6207e() {
        LogUtil.m5643d("NameIDBannerView#showPendingTrialBanner", "showing pending trial banner");
        this.f13897s.setText(getContext().getString(C1517R.string.trial_pending_message_title));
        this.f13898t.setText(getContext().getString(C1517R.string.trial_pending_message_subtitle));
        m6214B(true, false, false);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: f */
    public void mo6206f() {
        Activity C = m6213C();
        if (C == null) {
            LogUtil.m5631p("NameIDBannerViewrequestPermission", "Could not request permission because activity was not found");
        } else if (PermissionChecker.m5420e(C)) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            Context context = getContext();
            Intrinsics.m1832c(context);
            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
            C.startActivityForResult(intent, 1);
        } else {
            PermissionChecker.m5421d(C);
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: g */
    public void mo6205g(@NotNull String message) {
        Intrinsics.m1830e(message, "message");
        LogUtil.m5643d("NameIDBannerViewshowMessage", "Showing message \"" + message + '\"');
        this.f13900v.setText(message);
        m6214B(false, true, false);
        m6195x(false);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: i */
    public void mo6204i() {
        LogUtil.m5643d("NameIDBannerView#showTrialDayLeftBanner", "showing trial day left banner");
        this.f13900v.setText(getContext().getString(C1517R.string.trial_banner_day_left));
        this.f13901w.setText(getContext().getString(C1517R.string.general_upgrade));
        this.f13901w.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView$showTrialDayLeftBanner$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDBannerView.this.f13893o.mo6222k();
            }
        });
        m6214B(false, true, true);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: j */
    public void mo6203j() {
        Activity C = m6213C();
        if (C != null) {
            FragmentManager supportFragmentManager = ((MainActivity) C).getSupportFragmentManager();
            Intrinsics.m1831d(supportFragmentManager, "(activity as MainActivity).supportFragmentManager");
            WidgetUtils.m5231h0((FragmentActivity) C, supportFragmentManager, null, null);
            return;
        }
        LogUtil.m5631p("NameIDBannerViewshow", "Cannot show subscribe dialog - activity was not found");
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.MainActivityBanner
    /* renamed from: k */
    public void mo6202k(@NotNull String message) {
        Intrinsics.m1830e(message, "message");
        this.f13893o.mo6231b(message);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: l */
    public void mo6201l(boolean z) {
        LogUtil.m5643d("NameIDBannerView#showPendingSubscriptionBanner", "showing scam freedom banner");
        this.f13900v.setText(getContext().getString(C1517R.string.scam_freedom_banner_message));
        this.f13901w.setText(getContext().getString(C1517R.string.scam_freedom_banner_button));
        this.f13901w.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView$showDiscoverBanner$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDBanner.Presenter presenter = NameIDBannerView.this.f13893o;
                Context context = NameIDBannerView.this.getContext();
                Intrinsics.m1831d(context, "context");
                presenter.mo6226g(context);
            }
        });
        m6214B(false, true, true);
        m6195x(z);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: m */
    public void mo6200m(int i) {
        LogUtil.m5643d("NameIDBannerView#showTrialDaysLeftBanner", "showing trial days left banner");
        TextView textView = this.f13900v;
        String string = getContext().getString(C1517R.string.trial_banner_days_left);
        Intrinsics.m1831d(string, "context.getString(R.string.trial_banner_days_left)");
        String format = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        Intrinsics.m1831d(format, "java.lang.String.format(this, *args)");
        textView.setText(format);
        this.f13901w.setText(getContext().getString(C1517R.string.general_upgrade));
        this.f13901w.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView$showTrialDaysLeftBanner$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDBannerView.this.f13893o.mo6222k();
            }
        });
        m6214B(false, true, true);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.MainActivityBanner
    /* renamed from: n */
    public void mo6199n(@NotNull SubscriptionHelper.State state, int i) {
        Intrinsics.m1830e(state, "state");
        this.f13893o.mo6228e(state, i);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: r */
    public void mo6198r() {
        LogUtil.m5643d("NameIDBannerView#showPendingSubscriptionBanner", "showing pending subscription banner");
        this.f13897s.setText(getContext().getString(C1517R.string.subscribe_pending_message_title));
        this.f13898t.setText(getContext().getString(C1517R.string.subscribe_pending_message_subtitle));
        m6214B(true, false, false);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    /* renamed from: s */
    public void mo6197s() {
        LogUtil.m5643d("NameIDBannerView#showUpgradeBanner", "showing upgrade banner");
        this.f13900v.setText(getContext().getString(C1517R.string.upgrade_banner_text));
        this.f13901w.setText(getContext().getString(C1517R.string.general_upgrade));
        this.f13901w.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.banner.NameIDBannerView$showUpgradeBanner$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDBannerView.this.f13893o.mo6222k();
            }
        });
        m6214B(false, true, true);
        m6194y(this, false, 1, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.View
    public void setGone() {
        LogUtil.m5643d("NameIDBannerView#setGone", "Setting visibility to gone");
        m6214B(false, false, false);
    }

    public void setViewGone() {
        this.f13893o.mo6229d();
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.MainActivityBanner
    public void setViewVisible() {
        this.f13893o.mo6224i();
    }
}
