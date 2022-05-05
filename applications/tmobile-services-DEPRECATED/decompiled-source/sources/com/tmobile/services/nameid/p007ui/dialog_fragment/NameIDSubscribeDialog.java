package com.tmobile.services.nameid.p007ui.dialog_fragment;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\u0003\u001a\u00020\u00028\u0014@\u0014X\u0094D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogFragment;", "", "layoutResId", "I", "getLayoutResId", "()I", "<init>", "()V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDSubscribeDialog */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog.class */
public final class NameIDSubscribeDialog extends NameIDDialogFragment {

    /* renamed from: r */
    private static final String f13981r = "NameIDSubscribeDialog#";

    /* renamed from: s */
    public static final Companion f13982s = new Companion(null);

    /* renamed from: p */
    private final int f13983p = C1517R.layout.subscribe_dialog_fragment;

    /* renamed from: q */
    private HashMap f13984q;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014JA\u0010\r\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog$Companion;", "Landroidx/fragment/app/FragmentActivity;", "activity", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "fromBanner", "notStartedTrial", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "tab", "Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;", "listener", "Landroidx/fragment/app/DialogFragment;", "show", "(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;ZZLcom/tmobile/services/nameid/MainActivity$Tabs;Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;)Landroidx/fragment/app/DialogFragment;", "", "LOG_TAG", "Ljava/lang/String;", "UPGRADE_OR_TRIAL", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDSubscribeDialog$Companion */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDSubscribeDialog$Companion$WhenMappings */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDSubscribeDialog$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a */
            public static final /* synthetic */ int[] f13985a;

            static {
                int[] iArr = new int[MainActivity.Tabs.values().length];
                f13985a = iArr;
                iArr[MainActivity.Tabs.MANAGE.ordinal()] = 1;
                f13985a[MainActivity.Tabs.ACTIVITY.ordinal()] = 2;
                f13985a[MainActivity.Tabs.SCAM_BLOCK.ordinal()] = 3;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final DialogFragment m6106a(@NotNull FragmentActivity activity, @NotNull FragmentManager fragmentManager, boolean z, boolean z2, @Nullable MainActivity.Tabs tabs, @Nullable WidgetUtils.SubscribeFromDialogListener subscribeFromDialogListener) {
            Intrinsics.m1830e(activity, "activity");
            Intrinsics.m1830e(fragmentManager, "fragmentManager");
            NameIDSubscribeDialog nameIDSubscribeDialog = new NameIDSubscribeDialog();
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6155g(C1517R.C1519drawable.ic_shield_filled);
            nameIDDialogBuilder.m6146p(C1517R.string.subscribe_dialog_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.premium_feature_list, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_upgrade, new String[0]);
            NameIDDialogBuilder.m6158d(nameIDDialogBuilder, true, null, 2, null);
            nameIDDialogBuilder.m6157e(new NameIDSubscribeDialog$Companion$show$1(z, tabs, activity, fragmentManager, subscribeFromDialogListener));
            if (BuildUtils.m5851c() && z2) {
                nameIDDialogBuilder.m6148n(C1517R.string.my_account_start_trial, new String[0]);
                nameIDDialogBuilder.m6149m(new NameIDSubscribeDialog$Companion$show$2(activity, fragmentManager, nameIDSubscribeDialog));
                nameIDDialogBuilder.m6147o(false);
            }
            nameIDSubscribeDialog.m6121L0(nameIDDialogBuilder.m6161a());
            if (!fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
                nameIDSubscribeDialog.show(fragmentManager, "upgrade_or_trial");
            }
            return nameIDSubscribeDialog;
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogFragment
    /* renamed from: G0 */
    public void mo6113G0() {
        HashMap hashMap = this.f13984q;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogFragment
    /* renamed from: K0 */
    protected int mo6112K0() {
        return this.f13983p;
    }

    @Override // com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo6113G0();
    }
}
