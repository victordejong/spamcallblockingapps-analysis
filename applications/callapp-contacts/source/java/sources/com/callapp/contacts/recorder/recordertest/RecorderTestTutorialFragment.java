package com.callapp.contacts.recorder.recordertest;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.databinding.RecorderTestTutorialBinding;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002:\u0001-B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J$\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020\u0016H\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\u001a\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001c2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)H\u0016J\u0006\u0010*\u001a\u00020\u0016J\b\u0010+\u001a\u00020\u0016H\u0002J\b\u0010,\u001a\u00020\u0016H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006."}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/manager/popup/PopupDoneListener;", "()V", "_binding", "Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;", "recorderTestWizardEvents", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;", "getRecorderTestWizardEvents", "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;", "setRecorderTestWizardEvents", "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;)V", "textView", "Landroid/widget/TextView;", "getTextView", "()Landroid/widget/TextView;", "setTextView", "(Landroid/widget/TextView;)V", "initPage1", "", "initPage2", "onAttach", "context", "Landroid/content/Context;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onDetach", "onViewCreated", "view", "popupDone", "success", "", "setTextColor", "step1Android10", "step1Under10", "RecorderTestWizardEvents", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment.class */
public final class RecorderTestTutorialFragment extends Fragment implements PopupDoneListener {

    /* renamed from: a */
    private RecorderTestWizardEvents f27537a;

    /* renamed from: b */
    private RecorderTestTutorialBinding f27538b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;", "", "onStartRecorderTextClicked", "", Constants.EXTRA_ENTRY_POINT, "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents.class */
    public interface RecorderTestWizardEvents {
        /* renamed from: a */
        void mo27797a(String str);
    }

    /* renamed from: a */
    public final void m27802a() {
        LinearLayout linearLayout = getBinding().f25103i;
        C18524p.m3843b(linearLayout, "binding.page1");
        linearLayout.setVisibility(8);
        LinearLayout linearLayout2 = getBinding().f25106l;
        C18524p.m3843b(linearLayout2, "binding.page2");
        linearLayout2.setVisibility(0);
        TextView textView = getBinding().f25108n;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131887497));
        ImageView imageView = getBinding().f25100f;
        C18524p.m3843b(imageView, "binding.arrowToggle");
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_ATOP));
        getBinding().f25114t.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView2 = getBinding().f25115u;
        textView2.setText(Activities.getText(2131887495));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = getBinding().f25107m;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$initPage2$$inlined$apply$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecorderTestTutorialFragment.RecorderTestWizardEvents recorderTestWizardEvents = RecorderTestTutorialFragment.this.getRecorderTestWizardEvents();
                if (recorderTestWizardEvents != null) {
                    recorderTestWizardEvents.mo27797a("rec_ensure_quality");
                }
            }
        });
        textView3.setText(Activities.getString(2131887518));
        if (Build.VERSION.SDK_INT >= 29) {
            m27798c();
        } else {
            m27800b();
        }
    }

    /* renamed from: b */
    private final void m27800b() {
        LinearLayout linearLayout = getBinding().f25109o;
        C18524p.m3843b(linearLayout, "binding.step1Container");
        linearLayout.setVisibility(8);
        LinearLayout linearLayout2 = getBinding().f25113s;
        C18524p.m3843b(linearLayout2, "binding.step2Container");
        linearLayout2.setVisibility(0);
        TextView textView = getBinding().f25114t;
        C18524p.m3843b(textView, "binding.step2Text");
        textView.setText(Activities.getString(2131886135));
    }

    /* renamed from: c */
    private final void m27798c() {
        CallAppApplication.get().m31858d(new RecorderTestTutorialFragment$step1Android10$1(this, Activities.isCallAppAccessibilityServiceEnabled()));
    }

    public final RecorderTestTutorialBinding getBinding() {
        RecorderTestTutorialBinding recorderTestTutorialBinding = this.f27538b;
        C18524p.m3851a(recorderTestTutorialBinding);
        return recorderTestTutorialBinding;
    }

    public final RecorderTestWizardEvents getRecorderTestWizardEvents() {
        return this.f27537a;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        try {
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment.RecorderTestWizardEvents");
            }
            this.f27537a = (RecorderTestWizardEvents) parentFragment;
        } catch (ClassCastException e) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f27538b = RecorderTestTutorialBinding.m29054a(inflater, viewGroup);
        ScrollView root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f27538b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f27537a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        if (Prefs.f26555gN.get().booleanValue()) {
            m27802a();
            return;
        }
        TextView textView = getBinding().f25105k;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getText(2131887507));
        LinearLayout linearLayout = getBinding().f25103i;
        C18524p.m3843b(linearLayout, "binding.page1");
        linearLayout.setVisibility(0);
        getBinding().f25104j.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$initPage1$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Prefs.f26555gN.set(Boolean.TRUE);
                RecorderTestTutorialFragment.this.m27802a();
            }
        });
    }

    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
    public final void popupDone(boolean z) {
        m27798c();
    }
}
