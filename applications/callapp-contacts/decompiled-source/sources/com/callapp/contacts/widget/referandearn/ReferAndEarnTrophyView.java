package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.u;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.common.model.json.JSONReferAndEarnRewards;
import com.callapp.contacts.databinding.ReferAndEarnTrophyViewBinding;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� '2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002:\u0002'(B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00162\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\u001a\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001d2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��¨\u0006)"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;", "Landroidx/fragment/app/Fragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "()V", "_binding", "Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;", "jsonReferAndEarnRewards", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "trophyViewType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "getTrophyViewType", "()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "setTrophyViewType", "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)V", "viewModel", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "changeTextViewPosition", "", "onAttach", "context", "Landroid/content/Context;", "onChanged", "referAndEarnList", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "Companion", "TrophyViewType", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView.class */
public final class ReferAndEarnTrophyView extends Fragment implements u<List<? extends ReferAndEarnData>> {

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f16906b = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    public TrophyViewType f16907a;

    /* renamed from: c  reason: collision with root package name */
    private ReferAndEarnViewModel f16908c;

    /* renamed from: d  reason: collision with root package name */
    private List<? extends JSONReferAndEarnRewards> f16909d;
    private ReferAndEarnTrophyViewBinding e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;", "", "()V", "EXTRA_TROPHY_VIEW", "", "newInstance", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;", "trophyViewType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static ReferAndEarnTrophyView a(TrophyViewType trophyViewType) {
            p.d(trophyViewType, "trophyViewType");
            ReferAndEarnTrophyView referAndEarnTrophyView = new ReferAndEarnTrophyView();
            Bundle bundle = new Bundle();
            bundle.putString("extra_trophy_view", trophyViewType.name());
            v vVar = v.f38654a;
            referAndEarnTrophyView.setArguments(bundle);
            return referAndEarnTrophyView;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "", "(Ljava/lang/String;I)V", "EXPENDED", "MINIMAL", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType.class */
    public enum TrophyViewType {
        EXPENDED,
        MINIMAL
    }

    public static final /* synthetic */ ReferAndEarnViewModel c(ReferAndEarnTrophyView referAndEarnTrophyView) {
        ReferAndEarnViewModel referAndEarnViewModel = referAndEarnTrophyView.f16908c;
        if (referAndEarnViewModel == null) {
            p.a("viewModel");
        }
        return referAndEarnViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ReferAndEarnTrophyViewBinding getBinding() {
        ReferAndEarnTrophyViewBinding referAndEarnTrophyViewBinding = this.e;
        p.a(referAndEarnTrophyViewBinding);
        return referAndEarnTrophyViewBinding;
    }

    public final TrophyViewType getTrophyViewType() {
        TrophyViewType trophyViewType = this.f16907a;
        if (trophyViewType == null) {
            p.a("trophyViewType");
        }
        return trophyViewType;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        TrophyViewType trophyViewType;
        p.d(context, "context");
        super.onAttach(context);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String it2 = arguments.getString("extra_trophy_view");
            if (it2 != null) {
                p.b(it2, "it");
                trophyViewType = TrophyViewType.valueOf(it2);
            } else {
                trophyViewType = null;
            }
            p.a(trophyViewType);
            this.f16907a = trophyViewType;
        }
    }

    @Override // androidx.lifecycle.u
    public final /* synthetic */ void onChanged(List<? extends ReferAndEarnData> list) {
        List<? extends ReferAndEarnData> list2 = list;
        if (list2 != null) {
            int i = 0;
            for (ReferAndEarnData referAndEarnData : list2) {
                i += referAndEarnData.getEarnedPoints();
            }
            float f = i;
            if (f == BitmapDescriptorFactory.HUE_RED) {
                ReferAndEarnDataManager.Companion.addSelfPoint();
            }
            RoundCornerProgressBar roundCornerProgressBar = getBinding().e;
            p.b(roundCornerProgressBar, "binding.referAndEarnProgress");
            roundCornerProgressBar.setProgress(f);
            TextView textView = getBinding().f14364a;
            p.b(textView, "binding.earnedTextView");
            textView.setText(String.valueOf((int) f));
            Prefs.ht.set(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.e = ReferAndEarnTrophyViewBinding.a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        getBinding().e.setOnProgressChangedListener(null);
        this.e = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        TrophyViewType trophyViewType = this.f16907a;
        if (trophyViewType == null) {
            p.a("trophyViewType");
        }
        if (trophyViewType == TrophyViewType.MINIMAL) {
            c cVar = new c();
            cVar.a(getBinding().f14367d);
            LinearLayout linearLayout = getBinding().f14366c;
            p.b(linearLayout, "binding.pointsTextContainer");
            cVar.a(linearLayout.getId(), 0, 3);
            LinearLayout linearLayout2 = getBinding().f14366c;
            p.b(linearLayout2, "binding.pointsTextContainer");
            cVar.a(linearLayout2.getId(), 4);
            RelativeLayout relativeLayout = getBinding().f;
            p.b(relativeLayout, "binding.referAndEarnProgressLayout");
            int id = relativeLayout.getId();
            LinearLayout linearLayout3 = getBinding().f14366c;
            p.b(linearLayout3, "binding.pointsTextContainer");
            cVar.a(id, linearLayout3.getId(), 4);
            RelativeLayout relativeLayout2 = getBinding().f;
            p.b(relativeLayout2, "binding.referAndEarnProgressLayout");
            cVar.a(relativeLayout2.getId(), 4);
            cVar.b(getBinding().f14367d);
        }
        new ReferAndEarnTrophyView$onViewCreated$1(this).execute();
    }
}
