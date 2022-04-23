package com.callapp.contacts.widget.referandearn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.j;
import androidx.viewpager2.widget.ViewPager2;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.referandearn.ReferAndEarnSMSFragment;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� 12\u00020\u00012\u00020\u0002:\u00011B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u001fH\u0016J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\r2\u0006\u0010!\u001a\u00020\"H\u0016J&\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010.\u001a\u00020\u001fH\u0016J\b\u0010/\u001a\u00020\u001fH\u0016J\b\u00100\u001a\u00020\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u00062"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;", "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;", "()V", "adapter", "Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;", "getAdapter", "()Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;", "setAdapter", "(Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;)V", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", Constants.EXTRA_ENTRY_POINT, "", "getEntryPoint", "()Ljava/lang/String;", "setEntryPoint", "(Ljava/lang/String;)V", "fragmentIndex", "", "progressBar", "Landroid/widget/ProgressBar;", Payload.SOURCE, "viewPager", "Landroidx/viewpager2/widget/ViewPager2;", "getViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", "setViewPager", "(Landroidx/viewpager2/widget/ViewPager2;)V", "getLayoutResource", "loadSMSFragment", "", "onAttach", "context", "Landroid/content/Context;", "onBackPressed", "onCopyClicked", "shareLink", "onCreateView", "Landroid/view/View;", "layoutInflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "bundle", "Landroid/os/Bundle;", "onDismiss", "onInviteClicked", "onSMSClicked", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment.class */
public final class ShareCallAppDialogFragment extends BaseBottomSheetDialogFragment implements ReferAndEarnShareOptionsFragmentListener {
    public static final Companion g = new Companion(null);
    private static final String l;

    /* renamed from: c  reason: collision with root package name */
    public ViewPagerFragmentAdapter f16933c;
    public ViewPager2 e;
    public String f;
    private String h;
    private ProgressBar i;
    private ContactData j;
    private int k = 1;

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u001c\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;", "", "()V", "EXTRA_FRAGMENT_INDEX", "", "HINT_VIEW", "", "SHARE_VIEW", "SMS_VIEW", "TAG", "getTAG$annotations", "getTAG", "()Ljava/lang/String;", "newInstance", "Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "fragmentIndex", Constants.EXTRA_ENTRY_POINT, "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static ShareCallAppDialogFragment a(ContactData contactData, int i, String entryPoint) {
            p.d(entryPoint, "entryPoint");
            ShareCallAppDialogFragment shareCallAppDialogFragment = new ShareCallAppDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("extra_contact_data", contactData);
            bundle.putString("extra_entry_point", entryPoint);
            bundle.putInt("extra_fragment_index", i);
            v vVar = v.f38654a;
            shareCallAppDialogFragment.setArguments(bundle);
            return shareCallAppDialogFragment;
        }

        public static /* synthetic */ ShareCallAppDialogFragment a(ContactData contactData, int i, String str, int i2) {
            if ((i2 & 1) != 0) {
                contactData = null;
            }
            if ((i2 & 2) != 0) {
                i = 1;
            }
            return a(contactData, i, str);
        }

        public final String getTAG() {
            return ShareCallAppDialogFragment.l;
        }
    }

    static {
        String simpleName = ShareCallAppDialogFragment.class.getSimpleName();
        p.b(simpleName, "ShareCallAppDialogFragment::class.java.simpleName");
        l = simpleName;
    }

    public static final /* synthetic */ ProgressBar a(ShareCallAppDialogFragment shareCallAppDialogFragment) {
        ProgressBar progressBar = shareCallAppDialogFragment.i;
        if (progressBar == null) {
            p.a("progressBar");
        }
        return progressBar;
    }

    public static final ShareCallAppDialogFragment a(ContactData contactData, int i, String str) {
        return Companion.a(contactData, i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        ViewPagerFragmentAdapter viewPagerFragmentAdapter = this.f16933c;
        if (viewPagerFragmentAdapter == null) {
            p.a("adapter");
        }
        ReferAndEarnSMSFragment.Companion companion = ReferAndEarnSMSFragment.f16873a;
        viewPagerFragmentAdapter.a(ReferAndEarnSMSFragment.Companion.a(this.j));
        ViewPagerFragmentAdapter viewPagerFragmentAdapter2 = this.f16933c;
        if (viewPagerFragmentAdapter2 == null) {
            p.a("adapter");
        }
        viewPagerFragmentAdapter2.notifyItemInserted(2);
        ViewPager2 viewPager2 = this.e;
        if (viewPager2 == null) {
            p.a("viewPager");
        }
        viewPager2.setCurrentItem(2, true);
    }

    public static final String getTAG() {
        return l;
    }

    @Override // com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener
    public final void a(String shareLink, Context context) {
        p.d(shareLink, "shareLink");
        p.d(context, "context");
        CallAppClipboardManager.get().a(Activities.getString(2131887530), shareLink);
        FeedbackManager.get().a(Activities.getString(2131886662), (Integer) null);
        a();
    }

    @Override // com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener
    public final void c() {
        a();
    }

    @Override // com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener
    public final void d() {
        ViewPager2 viewPager2 = this.e;
        if (viewPager2 == null) {
            p.a("viewPager");
        }
        viewPager2.setCurrentItem(1, true);
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment
    public final int getLayoutResource() {
        return 2131559015;
    }

    public final ViewPager2 getViewPager() {
        ViewPager2 viewPager2 = this.e;
        if (viewPager2 == null) {
            p.a("viewPager");
        }
        return viewPager2;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        p.d(context, "context");
        super.onAttach(context);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.j = (ContactData) arguments.getSerializable("extra_contact_data");
            this.f = String.valueOf(arguments.getString("extra_entry_point"));
            this.k = arguments.getInt("extra_fragment_index");
        }
    }

    @Override // com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(layoutInflater, "layoutInflater");
        super.onCreateView(layoutInflater, viewGroup, bundle);
        FragmentManager childFragmentManager = getChildFragmentManager();
        p.b(childFragmentManager, "childFragmentManager");
        j lifecycle = getLifecycle();
        p.b(lifecycle, "lifecycle");
        this.f16933c = new ViewPagerFragmentAdapter(childFragmentManager, lifecycle);
        View rootView = getRootView();
        ProgressBar progressBar = null;
        ViewPager2 viewPager2 = rootView != null ? (ViewPager2) rootView.findViewById(2131364520) : null;
        p.a(viewPager2);
        this.e = viewPager2;
        View rootView2 = getRootView();
        if (rootView2 != null) {
            progressBar = (ProgressBar) rootView2.findViewById(2131363575);
        }
        p.a(progressBar);
        this.i = progressBar;
        ViewPagerFragmentAdapter viewPagerFragmentAdapter = this.f16933c;
        if (viewPagerFragmentAdapter == null) {
            p.a("adapter");
        }
        viewPagerFragmentAdapter.a(new ReferAndEarnHintView());
        ViewPagerFragmentAdapter viewPagerFragmentAdapter2 = this.f16933c;
        if (viewPagerFragmentAdapter2 == null) {
            p.a("adapter");
        }
        ReferAndEarnShareOptionsFragment.Companion companion = ReferAndEarnShareOptionsFragment.f16892a;
        ContactData contactData = this.j;
        String str = this.f;
        if (str == null) {
            p.a(Constants.EXTRA_ENTRY_POINT);
        }
        viewPagerFragmentAdapter2.a(ReferAndEarnShareOptionsFragment.Companion.a(contactData, str));
        ViewPager2 viewPager22 = this.e;
        if (viewPager22 == null) {
            p.a("viewPager");
        }
        ViewPagerFragmentAdapter viewPagerFragmentAdapter3 = this.f16933c;
        if (viewPagerFragmentAdapter3 == null) {
            p.a("adapter");
        }
        viewPager22.setAdapter(viewPagerFragmentAdapter3);
        ViewPager2 viewPager23 = this.e;
        if (viewPager23 == null) {
            p.a("viewPager");
        }
        viewPager23.setUserInputEnabled(false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.h = arguments.getString("EXTRA_SOURCE");
        }
        ReferAndEarnDataManager.Companion.postPointsReferKey(new ShareCallAppDialogFragment$onCreateView$2(this), this.j);
        ViewPager2 viewPager24 = this.e;
        if (viewPager24 == null) {
            p.a("viewPager");
        }
        viewPager24.setCurrentItem(this.k, false);
        ProgressBar progressBar2 = this.i;
        if (progressBar2 == null) {
            p.a("progressBar");
        }
        progressBar2.setVisibility(8);
        ViewPager2 viewPager25 = this.e;
        if (viewPager25 == null) {
            p.a("viewPager");
        }
        viewPager25.setVisibility(0);
        ViewUtils.b(getRootView(), 2131232171, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), 1);
        return getRootView();
    }

    @Override // com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener
    public final void t_() {
        PermissionManager.get();
        if (!PermissionManager.a("android.permission.SEND_SMS")) {
            PermissionManager permissionManager = PermissionManager.get();
            Context context = getContext();
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseActivity");
            permissionManager.a((BaseActivity) context, new Runnable() { // from class: com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment$onSMSClicked$1
                @Override // java.lang.Runnable
                public final void run() {
                    ShareCallAppDialogFragment.this.f();
                }
            }, new Runnable() { // from class: com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment$onSMSClicked$2

                @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\n¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/app/Activity;", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "<anonymous parameter 3>", "Landroid/content/Intent;", "onActivityResult"}, k = 3, mv = {1, 4, 2})
                /* renamed from: com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment$onSMSClicked$2$1  reason: invalid class name */
                /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onSMSClicked$2$1.class */
                static final class AnonymousClass1 implements ActivityResult {

                    /* renamed from: a  reason: collision with root package name */
                    public static final AnonymousClass1 f16938a = new AnonymousClass1();

                    AnonymousClass1() {
                    }

                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public final void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Activities.a((Activity) ShareCallAppDialogFragment.this.getActivity(), (ActivityResult) AnonymousClass1.f16938a);
                }
            }, PermissionManager.PermissionGroup.SMS);
            return;
        }
        f();
    }

    @Override // com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener
    public final void u_() {
        ViewPager2 viewPager2 = this.e;
        if (viewPager2 == null) {
            p.a("viewPager");
        }
        viewPager2.setCurrentItem(1, true);
    }
}
