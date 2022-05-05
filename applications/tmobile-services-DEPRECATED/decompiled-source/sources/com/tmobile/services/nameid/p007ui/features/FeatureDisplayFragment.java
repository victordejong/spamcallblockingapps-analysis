package com.tmobile.services.nameid.p007ui.features;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.MetroProcessResponse;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.NameIDFeatureIndicator;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u000eIJKLMNOPQRSTUVB\t\b\u0002¢\u0006\u0004\bH\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0018\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020*8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u001c\u00101\u001a\u00020\u00138\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0016\u00108\u001a\u0002058&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010?\u001a\u00020<8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b@\u00104R\u0016\u0010C\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\bB\u0010%R\u0016\u0010D\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bD\u0010)R\u0016\u0010F\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\bE\u0010%R\u0016\u0010G\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010)\u0082\u0001\u0002WX¨\u0006Y"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment;", "Landroidx/fragment/app/Fragment;", "", "configureActionSection", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "setFeatureType", "Landroid/widget/TextView;", "textView", "setupProxyDescription", "(Landroid/widget/TextView;)V", "", "add", "upgrade", "updateCallerIdPrefMagenta", "(ZZ)V", "updateCallerIdPrefMetro", "", "LOG_TAG", "Ljava/lang/String;", "actionSection", "Landroid/view/View;", "Landroid/widget/Switch;", "actionSwitch", "Landroid/widget/Switch;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "actionSwitchListener", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "descriptionView", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/NameIDFeatureIndicator;", "featureTypeView", "Lcom/tmobile/services/nameid/ui/NameIDFeatureIndicator;", "hasSwitch", "Z", "getHasSwitch", "()Z", "Landroid/graphics/drawable/Drawable;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "Landroid/widget/ImageView;", "iconView", "Landroid/widget/ImageView;", "", "getLayoutResId", "()I", "layoutResId", "getShowFeatureInd", "showFeatureInd", "getSubtitle", "subtitle", "subtitleView", "getTitle", "title", "titleView", "<init>", "AppFeaturesFragment", "BlockVoicemail", "CallerId", "CallerIdAppFeatures", "FeatureType", "Lookup", "ManageCategories", "NumberChange", "OobeFragment", "ProxyDigits", "Report", "ScamBlock", "ScamId", "ScamShield", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment;", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment.class */
public abstract class FeatureDisplayFragment extends Fragment {

    /* renamed from: f */
    private final String f13998f;

    /* renamed from: g */
    private ImageView f13999g;

    /* renamed from: h */
    private NameIDFeatureIndicator f14000h;

    /* renamed from: i */
    private NameIDTextView f14001i;

    /* renamed from: j */
    private NameIDTextView f14002j;

    /* renamed from: k */
    private NameIDTextView f14003k;

    /* renamed from: l */
    private View f14004l;

    /* renamed from: m */
    private Switch f14005m;

    /* renamed from: n */
    private final boolean f14006n;

    /* renamed from: o */
    private final CompoundButton.OnCheckedChangeListener f14007o;

    /* renamed from: p */
    private HashMap f14008p;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018��2\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment;", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment;", "", "layoutResId", "I", "getLayoutResId", "()I", "", "showFeatureInd", "Z", "getShowFeatureInd", "()Z", "<init>", "(ZI)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$AppFeaturesFragment */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment.class */
    public static abstract class AppFeaturesFragment extends FeatureDisplayFragment {

        /* renamed from: q */
        private final boolean f14009q;

        /* renamed from: r */
        private final int f14010r;

        /* renamed from: s */
        private HashMap f14011s;

        public AppFeaturesFragment() {
            this(false, 0, 3, null);
        }

        public AppFeaturesFragment(boolean z, int i) {
            super(null);
            this.f14009q = z;
            this.f14010r = i;
        }

        public /* synthetic */ AppFeaturesFragment(boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? C1517R.layout.fragment_app_feature_display : i);
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14011s;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: R0 */
        public int mo6051R0() {
            return this.f14010r;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: S0 */
        public boolean mo6050S0() {
            return this.f14009q;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            FeatureDisplayFragment.super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$BlockVoicemail;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$BlockVoicemail */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$BlockVoicemail.class */
    public static final class BlockVoicemail extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14012t;
        @NotNull

        /* renamed from: v */
        private final Lazy f14014v;
        @NotNull

        /* renamed from: x */
        private final Lazy f14016x;

        /* renamed from: y */
        private HashMap f14017y;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14013u = FeatureType.Premium;
        @NotNull

        /* renamed from: w */
        private final String f14015w = "";

        public BlockVoicemail() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$BlockVoicemail$icon$2(this));
            this.f14012t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$BlockVoicemail$title$2(this));
            this.f14014v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$BlockVoicemail$description$2(this));
            this.f14016x = a3;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14017y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14016x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14013u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14012t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14015w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14014v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0016\u001a\u00020\u00128V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0019\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006R\u001d\u0010\u001c\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006¨\u0006\u001f"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$CallerId;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "", "hasSwitch", "Z", "getHasSwitch", "()Z", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle$delegate", "getSubtitle", "subtitle", "title$delegate", "getTitle", "title", "<init>", "(Z)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$CallerId */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$CallerId.class */
    public static final class CallerId extends OobeFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14018t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14019u;
        @NotNull

        /* renamed from: v */
        private final Lazy f14020v;
        @NotNull

        /* renamed from: w */
        private final Lazy f14021w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14022x;

        /* renamed from: y */
        private final boolean f14023y;

        /* renamed from: z */
        private HashMap f14024z;

        public CallerId() {
            this(false, 1, null);
        }

        public CallerId(boolean z) {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            Lazy a4;
            this.f14023y = z;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerId$icon$2(this));
            this.f14018t = a;
            this.f14019u = FeatureType.New;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerId$title$2(this));
            this.f14020v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerId$subtitle$2(this));
            this.f14021w = a3;
            a4 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerId$description$2(this));
            this.f14022x = a4;
        }

        public /* synthetic */ CallerId(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14024z;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14022x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14019u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: P0 */
        public boolean mo6053P0() {
            return this.f14023y;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14018t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return (String) this.f14021w.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14020v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0016\u001a\u00020\u00128V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006R\u001d\u0010\u001c\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006¨\u0006\u001f"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$CallerIdAppFeatures;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "", "hasSwitch", "Z", "getHasSwitch", "()Z", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "(Z)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$CallerIdAppFeatures */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$CallerIdAppFeatures.class */
    public static final class CallerIdAppFeatures extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14025t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14026u;
        @NotNull

        /* renamed from: v */
        private final Lazy f14027v;
        @NotNull

        /* renamed from: w */
        private final String f14028w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14029x;

        /* renamed from: y */
        private final boolean f14030y;

        /* renamed from: z */
        private HashMap f14031z;

        public CallerIdAppFeatures() {
            this(false, 1, null);
        }

        public CallerIdAppFeatures(boolean z) {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            this.f14030y = z;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerIdAppFeatures$icon$2(this));
            this.f14025t = a;
            this.f14026u = FeatureType.New;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerIdAppFeatures$title$2(this));
            this.f14027v = a2;
            this.f14028w = "";
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$CallerIdAppFeatures$description$2(this));
            this.f14029x = a3;
        }

        public /* synthetic */ CallerIdAppFeatures(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14031z;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14029x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14026u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: P0 */
        public boolean mo6053P0() {
            return this.f14030y;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14025t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14028w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14027v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0001\u0018�� \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Companion", "Free", "Premium", "New", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$FeatureType */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType.class */
    public enum FeatureType {
        Free,
        Premium,
        New;
        
        public static final Companion Companion = new Companion(null);

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType$Companion;", "", "string", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "fromString", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$FeatureType$Companion */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            /* renamed from: a */
            public final FeatureType m6052a(@NotNull String string) {
                FeatureType featureType;
                Intrinsics.m1830e(string, "string");
                int hashCode = string.hashCode();
                if (hashCode != 49) {
                    if (hashCode == 50 && string.equals(TmoUserStatus.CUSTOMER_TYPE_PREPAID)) {
                        featureType = FeatureType.New;
                    }
                    featureType = FeatureType.Free;
                } else {
                    if (string.equals(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
                        featureType = FeatureType.Premium;
                    }
                    featureType = FeatureType.Free;
                }
                return featureType;
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$Lookup;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$Lookup */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$Lookup.class */
    public static final class Lookup extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14032t;
        @NotNull

        /* renamed from: v */
        private final Lazy f14034v;
        @NotNull

        /* renamed from: x */
        private final Lazy f14036x;

        /* renamed from: y */
        private HashMap f14037y;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14033u = FeatureType.Premium;
        @NotNull

        /* renamed from: w */
        private final String f14035w = "";

        public Lookup() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Lookup$icon$2(this));
            this.f14032t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Lookup$title$2(this));
            this.f14034v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Lookup$description$2(this));
            this.f14036x = a3;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14037y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14036x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14033u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14032t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14035w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14034v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ManageCategories;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ManageCategories */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ManageCategories.class */
    public static final class ManageCategories extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14038t;
        @NotNull

        /* renamed from: v */
        private final Lazy f14040v;
        @NotNull

        /* renamed from: x */
        private final Lazy f14042x;

        /* renamed from: y */
        private HashMap f14043y;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14039u = FeatureType.Premium;
        @NotNull

        /* renamed from: w */
        private final String f14041w = "";

        public ManageCategories() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ManageCategories$icon$2(this));
            this.f14038t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ManageCategories$title$2(this));
            this.f14040v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ManageCategories$description$2(this));
            this.f14042x = a3;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14043y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14042x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14039u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14038t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14041w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14040v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0014\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$NumberChange;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle$delegate", "getSubtitle", "subtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$NumberChange */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$NumberChange.class */
    public static final class NumberChange extends OobeFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14044t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14045u = FeatureType.Premium;
        @NotNull

        /* renamed from: v */
        private final Lazy f14046v;
        @NotNull

        /* renamed from: w */
        private final Lazy f14047w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14048x;

        /* renamed from: y */
        private HashMap f14049y;

        public NumberChange() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            Lazy a4;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$NumberChange$icon$2(this));
            this.f14044t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$NumberChange$title$2(this));
            this.f14046v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$NumberChange$subtitle$2(this));
            this.f14047w = a3;
            a4 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$NumberChange$description$2(this));
            this.f14048x = a4;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14049y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14048x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14045u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14044t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return (String) this.f14047w.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14046v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018��2\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment;", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment;", "", "layoutResId", "I", "getLayoutResId", "()I", "", "showFeatureInd", "Z", "getShowFeatureInd", "()Z", "<init>", "(ZI)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$OobeFragment */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment.class */
    public static abstract class OobeFragment extends FeatureDisplayFragment {

        /* renamed from: q */
        private final boolean f14050q;

        /* renamed from: r */
        private final int f14051r;

        /* renamed from: s */
        private HashMap f14052s;

        public OobeFragment() {
            this(false, 0, 3, null);
        }

        public OobeFragment(boolean z, int i) {
            super(null);
            this.f14050q = z;
            this.f14051r = i;
        }

        public /* synthetic */ OobeFragment(boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? C1517R.layout.fragment_feature_display : i);
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14052s;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: R0 */
        public int mo6051R0() {
            return this.f14051r;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: S0 */
        public boolean mo6050S0() {
            return this.f14050q;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            FeatureDisplayFragment.super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0014\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ProxyDigits;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle$delegate", "getSubtitle", "subtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ProxyDigits */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ProxyDigits.class */
    public static final class ProxyDigits extends OobeFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14053t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14054u = FeatureType.Premium;
        @NotNull

        /* renamed from: v */
        private final Lazy f14055v;
        @NotNull

        /* renamed from: w */
        private final Lazy f14056w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14057x;

        /* renamed from: y */
        private HashMap f14058y;

        public ProxyDigits() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            Lazy a4;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ProxyDigits$icon$2(this));
            this.f14053t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ProxyDigits$title$2(this));
            this.f14055v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ProxyDigits$subtitle$2(this));
            this.f14056w = a3;
            a4 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ProxyDigits$description$2(this));
            this.f14057x = a4;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14058y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14057x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14054u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14053t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return (String) this.f14056w.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14055v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$Report;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$Report */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$Report.class */
    public static final class Report extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14059t;
        @NotNull

        /* renamed from: v */
        private final Lazy f14061v;
        @NotNull

        /* renamed from: x */
        private final Lazy f14063x;

        /* renamed from: y */
        private HashMap f14064y;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14060u = FeatureType.Free;
        @NotNull

        /* renamed from: w */
        private final String f14062w = "";

        public Report() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Report$icon$2(this));
            this.f14059t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Report$title$2(this));
            this.f14061v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$Report$description$2(this));
            this.f14063x = a3;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14064y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14063x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14060u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14059t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14062w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14061v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\u00020\u00028\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamBlock;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$AppFeaturesFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle", "Ljava/lang/String;", "getSubtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ScamBlock */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamBlock.class */
    public static final class ScamBlock extends AppFeaturesFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14065t;
        @NotNull

        /* renamed from: v */
        private final Lazy f14067v;
        @NotNull

        /* renamed from: x */
        private final Lazy f14069x;

        /* renamed from: y */
        private HashMap f14070y;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14066u = FeatureType.Free;
        @NotNull

        /* renamed from: w */
        private final String f14068w = "";

        public ScamBlock() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamBlock$icon$2(this));
            this.f14065t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamBlock$title$2(this));
            this.f14067v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamBlock$description$2(this));
            this.f14069x = a3;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14070y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14069x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14066u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14065t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return this.f14068w;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14067v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.AppFeaturesFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0014\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamId;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle$delegate", "getSubtitle", "subtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ScamId */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamId.class */
    public static final class ScamId extends OobeFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14071t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14072u = FeatureType.Premium;
        @NotNull

        /* renamed from: v */
        private final Lazy f14073v;
        @NotNull

        /* renamed from: w */
        private final Lazy f14074w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14075x;

        /* renamed from: y */
        private HashMap f14076y;

        public ScamId() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            Lazy a4;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamId$icon$2(this));
            this.f14071t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamId$title$2(this));
            this.f14073v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamId$subtitle$2(this));
            this.f14074w = a3;
            a4 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamId$description$2(this));
            this.f14075x = a4;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14076y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14075x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14072u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14071t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return (String) this.f14074w.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14073v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u0007\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0011\u001a\u00020\r8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0014\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006R\u001d\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamShield;", "com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$OobeFragment", "", "description$delegate", "Lkotlin/Lazy;", "getDescription", "()Ljava/lang/String;", "description", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "getFeatureType", "()Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "Landroid/graphics/drawable/Drawable;", "icon$delegate", "getIcon", "()Landroid/graphics/drawable/Drawable;", "icon", "subtitle$delegate", "getSubtitle", "subtitle", "title$delegate", "getTitle", "title", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$ScamShield */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/features/FeatureDisplayFragment$ScamShield.class */
    public static final class ScamShield extends OobeFragment {
        @NotNull

        /* renamed from: t */
        private final Lazy f14077t;
        @NotNull

        /* renamed from: u */
        private final FeatureType f14078u = FeatureType.Premium;
        @NotNull

        /* renamed from: v */
        private final Lazy f14079v;
        @NotNull

        /* renamed from: w */
        private final Lazy f14080w;
        @NotNull

        /* renamed from: x */
        private final Lazy f14081x;

        /* renamed from: y */
        private HashMap f14082y;

        public ScamShield() {
            super(false, 0, 3, null);
            Lazy a;
            Lazy a2;
            Lazy a3;
            Lazy a4;
            a = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamShield$icon$2(this));
            this.f14077t = a;
            a2 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamShield$title$2(this));
            this.f14079v = a2;
            a3 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamShield$subtitle$2(this));
            this.f14080w = a3;
            a4 = LazyKt__LazyJVMKt.m2487a(new FeatureDisplayFragment$ScamShield$description$2(this));
            this.f14081x = a4;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        /* renamed from: G0 */
        public void mo6049G0() {
            HashMap hashMap = this.f14082y;
            if (hashMap != null) {
                hashMap.clear();
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: N0 */
        public String mo6048N0() {
            return (String) this.f14081x.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: O0 */
        public FeatureType mo6047O0() {
            return this.f14078u;
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: Q0 */
        public Drawable mo6046Q0() {
            return (Drawable) this.f14077t.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        /* renamed from: T0 */
        public String mo6045T0() {
            return (String) this.f14080w.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment
        @NotNull
        public String getTitle() {
            return (String) this.f14079v.getValue();
        }

        @Override // com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.OobeFragment, com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment, androidx.fragment.app.Fragment
        public /* synthetic */ void onDestroyView() {
            super.onDestroyView();
            mo6049G0();
        }
    }

    private FeatureDisplayFragment() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.m1831d(simpleName, "javaClass.simpleName");
        this.f13998f = simpleName;
        this.f14007o = new CompoundButton.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$actionSwitchListener$1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                String str;
                str = FeatureDisplayFragment.this.f13998f;
                LogUtil.m5643d(str, "Action switch toogled.");
                FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setEnabled(false);
                FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setOnCheckedChangeListener(null);
                boolean z2 = (compoundButton instanceof Switch) && z;
                if (BuildUtils.m5851c()) {
                    FeatureDisplayFragment.this.m6097W0(z2, false);
                } else {
                    FeatureDisplayFragment.this.m6096X0(z2, false);
                }
            }
        };
    }

    public /* synthetic */ FeatureDisplayFragment(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: H0 */
    public static final /* synthetic */ Switch m6105H0(FeatureDisplayFragment featureDisplayFragment) {
        Switch r0 = featureDisplayFragment.f14005m;
        if (r0 != null) {
            return r0;
        }
        Intrinsics.m1814u("actionSwitch");
        throw null;
    }

    /* renamed from: M0 */
    private final void m6100M0() {
        if (!mo6053P0() || !SubscriptionHelper.m5314n(null)) {
            View view = this.f14004l;
            if (view != null) {
                view.setVisibility(8);
            } else {
                Intrinsics.m1814u("actionSection");
                throw null;
            }
        } else {
            View view2 = this.f14004l;
            if (view2 != null) {
                view2.setVisibility(0);
            } else {
                Intrinsics.m1814u("actionSection");
                throw null;
            }
        }
    }

    /* renamed from: U0 */
    private final void m6099U0() {
        if (mo6050S0()) {
            NameIDFeatureIndicator nameIDFeatureIndicator = this.f14000h;
            if (nameIDFeatureIndicator != null) {
                nameIDFeatureIndicator.setFeatureType(mo6047O0());
            } else {
                Intrinsics.m1814u("featureTypeView");
                throw null;
            }
        } else {
            NameIDFeatureIndicator nameIDFeatureIndicator2 = this.f14000h;
            if (nameIDFeatureIndicator2 != null) {
                nameIDFeatureIndicator2.setVisibility(8);
            } else {
                Intrinsics.m1814u("featureTypeView");
                throw null;
            }
        }
    }

    /* renamed from: V0 */
    private final void m6098V0(TextView textView) {
        int U;
        SpannableString spannableString = new SpannableString(mo6048N0());
        String string = getResources().getString(C1517R.string.app_feature_proxy_description_smaller_substring);
        Intrinsics.m1831d(string, "resources.getString(R.st…iption_smaller_substring)");
        U = StringsKt__StringsKt.m1453U(spannableString, string, 0, false, 6, null);
        if (U == -1) {
            textView.setText(mo6048N0());
            return;
        }
        spannableString.setSpan(new AbsoluteSizeSpan(12, true), U, string.length() + U, 0);
        textView.setText(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W0 */
    public final void m6097W0(final boolean z, final boolean z2) {
        Context context = getContext();
        if (context != null) {
            TmoApiWrapper.m6646d0(context, TmoApiWrapper.AccountType.CNAM, z, z2, "OOBE", new Consumer<TmoUserStatus>(z, z2) { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMagenta$$inlined$let$lambda$1
                /* renamed from: a */
                public final void accept(TmoUserStatus tmoUserStatus) {
                    CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
                    FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setEnabled(true);
                    Switch H0 = FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this);
                    onCheckedChangeListener = FeatureDisplayFragment.this.f14007o;
                    H0.setOnCheckedChangeListener(onCheckedChangeListener);
                }
            }, new Consumer<Throwable>(z, z2) { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMagenta$$inlined$let$lambda$2

                /* renamed from: g */
                final /* synthetic */ boolean f14085g;

                /* renamed from: a */
                public final void accept(Throwable th) {
                    CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
                    FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setChecked(!this.f14085g);
                    FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setEnabled(true);
                    Switch H0 = FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this);
                    onCheckedChangeListener = FeatureDisplayFragment.this.f14007o;
                    H0.setOnCheckedChangeListener(onCheckedChangeListener);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public final void m6096X0(final boolean z, boolean z2) {
        Context context = getContext();
        if (context != null) {
            MetroApiWrapper.m6734a(new Consumer<MetroProcessResponse>() { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$1
                /* renamed from: a */
                public final void accept(final MetroProcessResponse metroProcessResponse) {
                    Context l = MainApplication.m7528l();
                    Intrinsics.m1832c(l);
                    Intrinsics.m1831d(l, "MainApplication.getAppContext()!!");
                    new Handler(l.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
                            String str;
                            String str2;
                            MetroProcessResponse e = metroProcessResponse;
                            Intrinsics.m1831d(e, "e");
                            if (e.isSuccess()) {
                                str2 = FeatureDisplayFragment.this.f13998f;
                                LogUtil.m5631p(str2, "Caller ID status updated to: " + z);
                                AnalyticsWrapper.m5869k(z, true, "", "OOBE", "TMODPI");
                                ApiUtils.m6833t0(z);
                            } else {
                                str = FeatureDisplayFragment.this.f13998f;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Error occurred while modifying Caller ID status: ");
                                MetroProcessResponse e2 = metroProcessResponse;
                                Intrinsics.m1831d(e2, "e");
                                sb.append(e2.getError());
                                LogUtil.m5631p(str, sb.toString());
                                FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setChecked(!z);
                                boolean z3 = z;
                                MetroProcessResponse e3 = metroProcessResponse;
                                Intrinsics.m1831d(e3, "e");
                                String error = e3.getError();
                                Intrinsics.m1831d(error, "e.error");
                                if (error != null) {
                                    String upperCase = error.toUpperCase();
                                    Intrinsics.m1831d(upperCase, "(this as java.lang.String).toUpperCase()");
                                    AnalyticsWrapper.m5869k(z3, false, upperCase, "OOBE", "TMODPI");
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                                }
                            }
                            FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this).setEnabled(true);
                            Switch H0 = FeatureDisplayFragment.m6105H0(FeatureDisplayFragment.this);
                            onCheckedChangeListener = FeatureDisplayFragment.this.f14007o;
                            H0.setOnCheckedChangeListener(onCheckedChangeListener);
                        }
                    });
                }
            }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2
                /* renamed from: a */
                public final void accept(final Throwable th) {
                    String str;
                    StringBuilder sb = new StringBuilder();
                    str = FeatureDisplayFragment.this.f13998f;
                    sb.append(str);
                    sb.append("subscribe");
                    String sb2 = sb.toString();
                    LogUtil.m5643d(sb2, "Error while attempting to subscribe. " + th.getMessage());
                    Context l = MainApplication.m7528l();
                    Intrinsics.m1832c(l);
                    Intrinsics.m1831d(l, "MainApplication.getAppContext()!!");
                    new Handler(l.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2.1
                        /* JADX WARN: Code restructure failed: missing block: B:7:0x0073, code lost:
                            if (r8 != null) goto L_0x0086;
                         */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                r6 = this;
                                r0 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.this
                                java.lang.String r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.m6103J0(r0)
                                r7 = r0
                                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                                r1 = r0
                                r1.<init>()
                                r8 = r0
                                r0 = r8
                                java.lang.String r1 = "Error occurred while modifying Caller ID status: "
                                java.lang.StringBuilder r0 = r0.append(r1)
                                r0 = r8
                                r1 = r6
                                java.lang.Throwable r1 = r5
                                java.lang.StringBuilder r0 = r0.append(r1)
                                r0 = r7
                                r1 = r8
                                java.lang.String r1 = r1.toString()
                                com.tmobile.services.nameid.utility.LogUtil.m5631p(r0, r1)
                                r0 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.this
                                android.widget.Switch r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.m6105H0(r0)
                                r1 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r1 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                boolean r1 = r5
                                r2 = 1
                                r1 = r1 ^ r2
                                r0.setChecked(r1)
                                r0 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.this
                                android.widget.Switch r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.m6105H0(r0)
                                r1 = 1
                                r0.setEnabled(r1)
                                r0 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                boolean r0 = r5
                                r9 = r0
                                r0 = r6
                                java.lang.Throwable r0 = r5
                                java.lang.String r0 = r0.getMessage()
                                r8 = r0
                                r0 = r8
                                if (r0 == 0) goto L_0x0083
                                r0 = r8
                                if (r0 == 0) goto L_0x0079
                                r0 = r8
                                java.lang.String r0 = r0.toUpperCase()
                                r8 = r0
                                r0 = r8
                                java.lang.String r1 = "(this as java.lang.String).toUpperCase()"
                                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                                r0 = r8
                                if (r0 == 0) goto L_0x0083
                                goto L_0x0086
                            L_0x0079:
                                java.lang.NullPointerException r0 = new java.lang.NullPointerException
                                r1 = r0
                                java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
                                r1.<init>(r2)
                                throw r0
                            L_0x0083:
                                java.lang.String r0 = ""
                                r8 = r0
                            L_0x0086:
                                r0 = r9
                                r1 = 0
                                r2 = r8
                                java.lang.String r3 = "OOBE"
                                java.lang.String r4 = "TMODPI"
                                com.tmobile.services.nameid.utility.AnalyticsWrapper.m5869k(r0, r1, r2, r3, r4)
                                r0 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.this
                                android.widget.Switch r0 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.m6105H0(r0)
                                r1 = r6
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment$updateCallerIdPrefMetro$$inlined$let$lambda$2 r1 = com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.this
                                com.tmobile.services.nameid.ui.features.FeatureDisplayFragment r1 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.this
                                android.widget.CompoundButton$OnCheckedChangeListener r1 = com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment.m6104I0(r1)
                                r0.setOnCheckedChangeListener(r1)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.p007ui.features.C1878xe3d1b3b6.RunnableC18791.run():void");
                        }
                    });
                }
            }, z ? "buy" : "cancel", "callerid", context);
        }
    }

    /* renamed from: G0 */
    public void mo6049G0() {
        HashMap hashMap = this.f14008p;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @NotNull
    /* renamed from: N0 */
    public abstract String mo6048N0();

    @NotNull
    /* renamed from: O0 */
    public abstract FeatureType mo6047O0();

    /* renamed from: P0 */
    public boolean mo6053P0() {
        return this.f14006n;
    }

    @NotNull
    /* renamed from: Q0 */
    public abstract Drawable mo6046Q0();

    /* renamed from: R0 */
    public abstract int mo6051R0();

    /* renamed from: S0 */
    public abstract boolean mo6050S0();

    @NotNull
    /* renamed from: T0 */
    public abstract String mo6045T0();

    @NotNull
    public abstract String getTitle();

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(mo6051R0(), viewGroup, false);
        View findViewById = inflate.findViewById(C1517R.C1520id.feature_display_icon);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.feature_display_icon)");
        this.f13999g = (ImageView) findViewById;
        View findViewById2 = inflate.findViewById(C1517R.C1520id.feature_display_title);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.feature_display_title)");
        this.f14001i = (NameIDTextView) findViewById2;
        View findViewById3 = inflate.findViewById(C1517R.C1520id.feature_display_subtitle);
        Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.feature_display_subtitle)");
        this.f14002j = (NameIDTextView) findViewById3;
        View findViewById4 = inflate.findViewById(C1517R.C1520id.feature_display_description);
        Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.f…ture_display_description)");
        this.f14003k = (NameIDTextView) findViewById4;
        View findViewById5 = inflate.findViewById(C1517R.C1520id.feature_display_indicator);
        Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.feature_display_indicator)");
        this.f14000h = (NameIDFeatureIndicator) findViewById5;
        View findViewById6 = inflate.findViewById(C1517R.C1520id.feature_display_action);
        Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.feature_display_action)");
        this.f14004l = findViewById6;
        View findViewById7 = inflate.findViewById(C1517R.C1520id.feature_display_action_switch);
        Intrinsics.m1831d(findViewById7, "view.findViewById(R.id.f…re_display_action_switch)");
        Switch r0 = (Switch) findViewById7;
        this.f14005m = r0;
        if (r0 != null) {
            r0.setOnCheckedChangeListener(this.f14007o);
            ImageView imageView = this.f13999g;
            if (imageView != null) {
                imageView.setImageDrawable(mo6046Q0());
                NameIDTextView nameIDTextView = this.f14001i;
                if (nameIDTextView != null) {
                    nameIDTextView.setText(getTitle());
                    NameIDTextView nameIDTextView2 = this.f14002j;
                    if (nameIDTextView2 != null) {
                        nameIDTextView2.setText(mo6045T0());
                        if (this instanceof ProxyDigits) {
                            NameIDTextView nameIDTextView3 = this.f14003k;
                            if (nameIDTextView3 != null) {
                                m6098V0(nameIDTextView3);
                            } else {
                                Intrinsics.m1814u("descriptionView");
                                throw null;
                            }
                        } else {
                            NameIDTextView nameIDTextView4 = this.f14003k;
                            if (nameIDTextView4 != null) {
                                nameIDTextView4.setText(mo6048N0());
                            } else {
                                Intrinsics.m1814u("descriptionView");
                                throw null;
                            }
                        }
                        m6099U0();
                        m6100M0();
                        return inflate;
                    }
                    Intrinsics.m1814u("subtitleView");
                    throw null;
                }
                Intrinsics.m1814u("titleView");
                throw null;
            }
            Intrinsics.m1814u("iconView");
            throw null;
        }
        Intrinsics.m1814u("actionSwitch");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo6049G0();
    }
}
