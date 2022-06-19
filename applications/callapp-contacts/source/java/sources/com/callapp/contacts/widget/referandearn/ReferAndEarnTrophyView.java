package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC1268u;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.common.model.json.JSONReferAndEarnRewards;
import com.callapp.contacts.databinding.ReferAndEarnTrophyViewBinding;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.List;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� '2\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002:\u0002'(B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00162\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\u001a\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001d2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��¨\u0006)"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;", "Landroidx/fragment/app/Fragment;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "()V", "_binding", "Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;", "jsonReferAndEarnRewards", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "trophyViewType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "getTrophyViewType", "()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "setTrophyViewType", "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)V", "viewModel", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;", "changeTextViewPosition", "", "onAttach", "context", "Landroid/content/Context;", "onChanged", "referAndEarnList", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "Companion", "TrophyViewType", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView.class */
public final class ReferAndEarnTrophyView extends Fragment implements AbstractC1268u<List<? extends ReferAndEarnData>> {

    /* renamed from: b */
    public static final Companion f29397b = new Companion(null);

    /* renamed from: a */
    public TrophyViewType f29398a;

    /* renamed from: c */
    private ReferAndEarnViewModel f29399c;

    /* renamed from: d */
    private List<? extends JSONReferAndEarnRewards> f29400d;

    /* renamed from: e */
    private ReferAndEarnTrophyViewBinding f29401e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;", "", "()V", "EXTRA_TROPHY_VIEW", "", "newInstance", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;", "trophyViewType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static ReferAndEarnTrophyView m26325a(TrophyViewType trophyViewType) {
            C18524p.m3840d(trophyViewType, "trophyViewType");
            ReferAndEarnTrophyView referAndEarnTrophyView = new ReferAndEarnTrophyView();
            Bundle bundle = new Bundle();
            bundle.putString("extra_trophy_view", trophyViewType.name());
            C20128v c20128v = C20128v.f66529a;
            referAndEarnTrophyView.setArguments(bundle);
            return referAndEarnTrophyView;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "", "(Ljava/lang/String;I)V", "EXPENDED", "MINIMAL", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType.class */
    public enum TrophyViewType {
        EXPENDED,
        MINIMAL
    }

    /* renamed from: c */
    public static final /* synthetic */ ReferAndEarnViewModel m26327c(ReferAndEarnTrophyView referAndEarnTrophyView) {
        ReferAndEarnViewModel referAndEarnViewModel = referAndEarnTrophyView.f29399c;
        if (referAndEarnViewModel == null) {
            C18524p.m3848a("viewModel");
        }
        return referAndEarnViewModel;
    }

    public final ReferAndEarnTrophyViewBinding getBinding() {
        ReferAndEarnTrophyViewBinding referAndEarnTrophyViewBinding = this.f29401e;
        C18524p.m3851a(referAndEarnTrophyViewBinding);
        return referAndEarnTrophyViewBinding;
    }

    public final TrophyViewType getTrophyViewType() {
        TrophyViewType trophyViewType = this.f29398a;
        if (trophyViewType == null) {
            C18524p.m3848a("trophyViewType");
        }
        return trophyViewType;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        TrophyViewType trophyViewType;
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String it2 = arguments.getString("extra_trophy_view");
            if (it2 != null) {
                C18524p.m3843b(it2, "it");
                trophyViewType = TrophyViewType.valueOf(it2);
            } else {
                trophyViewType = null;
            }
            C18524p.m3851a(trophyViewType);
            this.f29398a = trophyViewType;
        }
    }

    @Override // androidx.lifecycle.AbstractC1268u
    public final /* synthetic */ void onChanged(List<? extends ReferAndEarnData> list) {
        int i;
        List<? extends ReferAndEarnData> list2 = list;
        if (list2 != null) {
            Iterator<T> it2 = list2.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                i2 = i + ((ReferAndEarnData) it2.next()).getEarnedPoints();
            }
            float f = i;
            if (f == BitmapDescriptorFactory.HUE_RED) {
                ReferAndEarnDataManager.Companion.addSelfPoint();
            }
            RoundCornerProgressBar roundCornerProgressBar = getBinding().f25134e;
            C18524p.m3843b(roundCornerProgressBar, "binding.referAndEarnProgress");
            roundCornerProgressBar.setProgress(f);
            TextView textView = getBinding().f25130a;
            C18524p.m3843b(textView, "binding.earnedTextView");
            textView.setText(String.valueOf((int) f));
            Prefs.f26640ht.set(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f29401e = ReferAndEarnTrophyViewBinding.m29051a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        getBinding().f25134e.setOnProgressChangedListener(null);
        this.f29401e = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        TrophyViewType trophyViewType = this.f29398a;
        if (trophyViewType == null) {
            C18524p.m3848a("trophyViewType");
        }
        if (trophyViewType == TrophyViewType.MINIMAL) {
            C0680c c0680c = new C0680c();
            c0680c.m44701a(getBinding().f25133d);
            LinearLayout linearLayout = getBinding().f25132c;
            C18524p.m3843b(linearLayout, "binding.pointsTextContainer");
            c0680c.m44711a(linearLayout.getId(), 0, 3);
            LinearLayout linearLayout2 = getBinding().f25132c;
            C18524p.m3843b(linearLayout2, "binding.pointsTextContainer");
            c0680c.m44712a(linearLayout2.getId(), 4);
            RelativeLayout relativeLayout = getBinding().f25135f;
            C18524p.m3843b(relativeLayout, "binding.referAndEarnProgressLayout");
            int id = relativeLayout.getId();
            LinearLayout linearLayout3 = getBinding().f25132c;
            C18524p.m3843b(linearLayout3, "binding.pointsTextContainer");
            c0680c.m44711a(id, linearLayout3.getId(), 4);
            RelativeLayout relativeLayout2 = getBinding().f25135f;
            C18524p.m3843b(relativeLayout2, "binding.referAndEarnProgressLayout");
            c0680c.m44712a(relativeLayout2.getId(), 4);
            c0680c.m44693b(getBinding().f25133d);
        }
        new ReferAndEarnTrophyView$onViewCreated$1(this).execute();
    }
}
