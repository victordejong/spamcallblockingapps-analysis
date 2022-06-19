package com.callapp.contacts.recorder.recordertest;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J&\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0013"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;", "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;", "()V", "getLayoutResource", "", "onCreateView", "Landroid/view/View;", "layoutInflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "bundle", "Landroid/os/Bundle;", "onStartRecorderTextClicked", "", Constants.EXTRA_ENTRY_POINT, "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorial.class */
public final class RecorderTestTutorial extends BaseBottomSheetDialogFragment implements RecorderTestTutorialFragment.RecorderTestWizardEvents {

    /* renamed from: c */
    public static final Companion f27536c = new Companion(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;", "", "()V", "RECORDER_TEST_TUTORIAL_TAG", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment.RecorderTestWizardEvents
    /* renamed from: a */
    public final void mo27797a(String entryPoint) {
        C18524p.m3840d(entryPoint, "entryPoint");
        mo11082a();
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment
    public final int getLayoutResource() {
        return 2131559021;
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(layoutInflater, "layoutInflater");
        super.onCreateView(layoutInflater, viewGroup, bundle);
        ViewUtils.m27299b(getRootView(), 2131232171, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), 1);
        getChildFragmentManager().m43765a().m43535b(2131362868, new RecorderTestTutorialFragment(), null).mo43536b();
        return getRootView();
    }
}
