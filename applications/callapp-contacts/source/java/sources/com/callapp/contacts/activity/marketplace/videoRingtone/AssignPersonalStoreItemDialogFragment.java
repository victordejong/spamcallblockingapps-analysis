package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoRingtoneFragment;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082.¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;", "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;", "()V", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "requestCode", "", "selectedContacts", "Ljava/util/ArrayList;", "", "selectedVideo", "getLayoutResource", "onAttach", "", "context", "Landroid/content/Context;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "layoutInflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "bundle", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment.class */
public final class AssignPersonalStoreItemDialogFragment extends BaseBottomSheetDialogFragment {

    /* renamed from: c */
    public static final Companion f23709c = new Companion(null);

    /* renamed from: i */
    private static final String f23710i;

    /* renamed from: e */
    private ArrayList<String> f23711e;

    /* renamed from: f */
    private String f23712f;

    /* renamed from: g */
    private int f23713g;

    /* renamed from: h */
    private PersonalStoreItemUrlData.PersonalStoreItemType f23714h;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\r\u001a\u00020\u000e2\u0012\b\u0002\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;", "", "()V", "EXTRA_ASSIGN_CONTACTS_ID", "", "EXTRA_SELECTED_VIDEO", "SELECTED_CONTACTS_RESULT", "", "TAG", "getTAG$annotations", "getTAG", "()Ljava/lang/String;", "UPDATE_CONTACTS_RESULT", "newInstance", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;", "selectedContacts", "Ljava/util/ArrayList;", "selectedVideo", "requestCode", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AssignPersonalStoreItemDialogFragment m29899a(ArrayList<String> arrayList, String selectedVideo, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            C18524p.m3840d(selectedVideo, "selectedVideo");
            C18524p.m3840d(personalType, "personalType");
            AssignPersonalStoreItemDialogFragment assignPersonalStoreItemDialogFragment = new AssignPersonalStoreItemDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("extra_selected_contacts", arrayList);
            bundle.putString("extra_selected_video", selectedVideo);
            bundle.putInt("extra_request_code", i);
            bundle.putString("extra_personal_type", personalType.name());
            C20128v c20128v = C20128v.f66529a;
            assignPersonalStoreItemDialogFragment.setArguments(bundle);
            return assignPersonalStoreItemDialogFragment;
        }

        public final String getTAG() {
            return AssignPersonalStoreItemDialogFragment.f23710i;
        }
    }

    static {
        String simpleName = AssignPersonalStoreItemDialogFragment.class.getSimpleName();
        C18524p.m3843b(simpleName, "AssignPersonalStoreItemD…nt::class.java.simpleName");
        f23710i = simpleName;
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment
    public final int getLayoutResource() {
        return 2131559021;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType;
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f23711e = arguments.getStringArrayList("extra_selected_contacts");
            String string = arguments.getString("extra_selected_video", "");
            C18524p.m3843b(string, "getString(AssignVideoRin…EXTRA_SELECTED_VIDEO, \"\")");
            this.f23712f = string;
            this.f23713g = arguments.getInt("extra_request_code");
            String it2 = arguments.getString("extra_personal_type");
            if (it2 != null) {
                C18524p.m3843b(it2, "it");
                personalStoreItemType = PersonalStoreItemUrlData.PersonalStoreItemType.valueOf(it2);
            } else {
                personalStoreItemType = null;
            }
            C18524p.m3851a(personalStoreItemType);
            this.f23714h = personalStoreItemType;
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f23712f;
        if (str == null) {
            C18524p.m3848a("selectedVideo");
        }
        if (StringUtils.m26059a((CharSequence) str)) {
            FeedbackManager.get().m28669a(Activities.getString(2131887315), (Integer) null);
            mo11082a();
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(layoutInflater, "layoutInflater");
        super.onCreateView(layoutInflater, viewGroup, bundle);
        AssignVideoRingtoneFragment.Companion companion = AssignVideoRingtoneFragment.f23715a;
        ArrayList<String> arrayList = this.f23711e;
        String str = this.f23712f;
        if (str == null) {
            C18524p.m3848a("selectedVideo");
        }
        int i = this.f23713g;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23714h;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalType");
        }
        getChildFragmentManager().m43765a().m43535b(2131362868, AssignVideoRingtoneFragment.Companion.m29896a(arrayList, str, i, personalStoreItemType), null).mo43536b();
        return getRootView();
    }
}
