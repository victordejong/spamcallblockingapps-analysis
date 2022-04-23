package com.tmobile.services.nameid.p007ui.dialog_fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.LogUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b#\u0010\u0013J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u000e8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001cR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDProgressDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "text", "setLoadingText", "(I)V", "styleDarkMode", "()V", "", "darkMode", "Z", "getDarkMode", "()Z", "setDarkMode", "(Z)V", "layoutResId", "I", "layoutRoot", "Landroid/view/View;", "loadingText", "Landroid/widget/TextView;", "loadingTextView", "Landroid/widget/TextView;", "<init>", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDProgressDialog */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDProgressDialog.class */
public final class NameIDProgressDialog extends DialogFragment {

    /* renamed from: l */
    public static final Companion f13974l = new Companion(null);

    /* renamed from: g */
    private TextView f13976g;

    /* renamed from: h */
    private View f13977h;

    /* renamed from: i */
    private boolean f13978i;

    /* renamed from: k */
    private HashMap f13980k;
    @StringRes

    /* renamed from: f */
    private int f13975f = C1517R.string.progress_dialog_text;

    /* renamed from: j */
    private final int f13979j = C1517R.layout.progress_dialog;

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDProgressDialog$Companion;", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "progressText", "", "darkMode", "Landroidx/fragment/app/DialogFragment;", "showProgessDialog", "(Landroidx/fragment/app/FragmentManager;IZ)Landroidx/fragment/app/DialogFragment;", "showSearchLoadingDialog", "(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DialogFragment;", "", "LOADING_DIALOG_GENERIC", "Ljava/lang/String;", "SEARCH_LOADING_DIALOG", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDProgressDialog$Companion */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDProgressDialog$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final DialogFragment m6115a(@NotNull FragmentManager fragmentManager, @StringRes int i, boolean z) {
            Intrinsics.m1830e(fragmentManager, "fragmentManager");
            NameIDProgressDialog nameIDProgressDialog = new NameIDProgressDialog();
            nameIDProgressDialog.m6117I0(i);
            nameIDProgressDialog.m6118H0(z);
            if (!fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
                nameIDProgressDialog.show(fragmentManager, "loading_dialog_generic");
            }
            return nameIDProgressDialog;
        }

        @NotNull
        /* renamed from: b */
        public final DialogFragment m6114b(@NotNull FragmentManager fragmentManager) {
            Intrinsics.m1830e(fragmentManager, "fragmentManager");
            NameIDProgressDialog nameIDProgressDialog = new NameIDProgressDialog();
            nameIDProgressDialog.m6117I0(C1517R.string.search_loading_dialog_text);
            if (!fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
                nameIDProgressDialog.show(fragmentManager, "search_loading_dialog");
            }
            return nameIDProgressDialog;
        }
    }

    /* renamed from: J0 */
    private final void m6116J0() {
        try {
            View view = this.f13977h;
            if (view != null) {
                Context context = getContext();
                Intrinsics.m1832c(context);
                view.setBackgroundColor(ContextCompat.m19675d(context, C1517R.C1518color.black_or_deep_purple));
                TextView textView = this.f13976g;
                if (textView != null) {
                    Context context2 = getContext();
                    Intrinsics.m1832c(context2);
                    textView.setTextColor(ContextCompat.m19675d(context2, C1517R.C1518color.white));
                    return;
                }
                Intrinsics.m1814u("loadingTextView");
                throw null;
            }
            Intrinsics.m1814u("layoutRoot");
            throw null;
        } catch (Throwable th) {
            LogUtil.m5643d("NameIDProgDialog#", "Couldn't set dark mode: " + th);
        }
    }

    /* renamed from: G0 */
    public void m6119G0() {
        HashMap hashMap = this.f13980k;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: H0 */
    public final void m6118H0(boolean z) {
        this.f13978i = z;
    }

    /* renamed from: I0 */
    public final void m6117I0(@StringRes int i) {
        this.f13975f = i;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, 16973831);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View view = inflater.inflate(this.f13979j, viewGroup, false);
        View findViewById = view.findViewById(C1517R.C1520id.progress_dialog_textview);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.progress_dialog_textview)");
        TextView textView = (TextView) findViewById;
        this.f13976g = textView;
        if (textView != null) {
            textView.setText(this.f13975f);
            View findViewById2 = view.findViewById(C1517R.C1520id.progress_dialog_layout);
            Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.progress_dialog_layout)");
            this.f13977h = findViewById2;
            if (this.f13978i) {
                m6116J0();
            }
            View findViewById3 = view.findViewById(C1517R.C1520id.progress_dialog_progress_bar);
            Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.p…ress_dialog_progress_bar)");
            ((ProgressBar) findViewById3).setIndeterminateDrawable(getResources().getDrawable(C1517R.C1519drawable.spinner_gradient));
            Intrinsics.m1831d(view, "view");
            return view;
        }
        Intrinsics.m1814u("loadingTextView");
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m6119G0();
    }
}
