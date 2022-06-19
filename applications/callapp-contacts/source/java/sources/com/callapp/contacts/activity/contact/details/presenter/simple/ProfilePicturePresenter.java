package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.graphics.PorterDuff;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.glide.CallAppRequestListener;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.pnikosis.materialishprogress.ProgressWheel;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter.class */
public class ProfilePicturePresenter extends ProgressWheelWrapperPresenter implements ContactDataChangeListener {
    private int circleBorderColor;
    private int circleBorderWidth;
    private int defaultHeaderColor;
    private ProfilePictureView profilePictureView;
    private int spamHeaderColor;

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$4.class */
    static /* synthetic */ class C64104 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22352a;

        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f22352a = iArr;
            try {
                iArr[PresentersContainer.MODE.MISSED_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public void setPictureAndBadgeColors(int i) {
        if (this.profilePictureView.isBadgeInflated()) {
            this.profilePictureView.m26687a(i);
        }
        this.profilePictureView.requestLayout();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter
    protected ProgressWheel getProgressWheel() {
        if (this.profilePictureView == null) {
            this.profilePictureView = (ProfilePictureView) this.presentersContainer.findViewById(2131363565);
        }
        ProfilePictureView profilePictureView = this.profilePictureView;
        if (profilePictureView != null) {
            return profilePictureView.getProgressWheel();
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        String str;
        super.onContactChanged(contactData, set);
        if (CollectionUtils.m26073a(set, ContactField.fullName)) {
            FastCacheDataManager.m28948a(contactData);
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    ProfilePicturePresenter.this.profilePictureView.setText(StringUtils.m26010r(contactData.getFullName()));
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.phone, ContactField.photoUrl)) {
            final GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((String) null);
            if (contactData.isIncognito() || this.presentersContainer.mo30920a(contactData) || IncognitoCallManager.get().isIncognito(contactData)) {
                str = ImageUtils.getResourceUri(2131232150);
            } else if (contactData.isVoiceMail()) {
                str = ImageUtils.getResourceUri(2131231612);
                glideRequestBuilder.m27025a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
                glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099786));
            } else {
                str = contactData.getThumbnailUrl();
            }
            String str2 = str;
            if (contactData.isUnknownNumber()) {
                str2 = str;
                if (!CollectionUtils.m26073a(set, ContactField.newContact)) {
                    str2 = ImageUtils.getResourceUri(2131231610);
                    glideRequestBuilder.m27025a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
                    glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099786));
                }
            }
            if (C64104.f22352a[this.presentersContainer.getContainerMode().ordinal()] == 1) {
                this.circleBorderWidth = 0;
                this.circleBorderColor = 0;
            }
            if (str2 != null) {
                glideRequestBuilder.f28240f = str2;
                glideRequestBuilder.m27023a(contactData.getPhotoDataSource());
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ProfilePictureView profilePictureView = ProfilePicturePresenter.this.profilePictureView;
                        GlideUtils.GlideRequestBuilder glideRequestBuilder2 = glideRequestBuilder;
                        glideRequestBuilder2.f28245k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        glideRequestBuilder2.f28244j = true;
                        glideRequestBuilder2.f28241g = contactData.getPhotoBGColor();
                        glideRequestBuilder2.f28246l = true;
                        GlideUtils.GlideRequestBuilder m27018b = glideRequestBuilder2.m27018b(ProfilePicturePresenter.this.circleBorderWidth, ProfilePicturePresenter.this.circleBorderColor);
                        m27018b.f28248n = ProfilePicturePresenter.this.presentersContainer.getContact() != null ? new CallAppRequestListener(glideRequestBuilder.getPhotoUrl(), ProfilePicturePresenter.this.presentersContainer.getContact()) : null;
                        profilePictureView.m26684a(m27018b);
                    }
                });
                FastCacheDataManager.m28942b(contactData);
            } else {
                this.profilePictureView.m26688a();
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.spamScore)) {
            FastCacheDataManager.m28941c(contactData);
            if (this.profilePictureView == null) {
                return;
            }
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.3
                @Override // java.lang.Runnable
                public void run() {
                    if (UserCorrectedInfoUtil.m27345a(contactData)) {
                        ProfilePicturePresenter profilePicturePresenter = ProfilePicturePresenter.this;
                        profilePicturePresenter.setPictureAndBadgeColors(profilePicturePresenter.spamHeaderColor);
                        return;
                    }
                    ProfilePicturePresenter profilePicturePresenter2 = ProfilePicturePresenter.this;
                    profilePicturePresenter2.setPictureAndBadgeColors(profilePicturePresenter2.defaultHeaderColor);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.genomeData, ContactField.fullName, ContactField.photoUrl, ContactField.spamScore, ContactField.phone));
        ProfilePictureView profilePictureView = (ProfilePictureView) presentersContainer.findViewById(2131363565);
        this.profilePictureView = profilePictureView;
        profilePictureView.setText("?");
        this.spamHeaderColor = C0790b.m44492c(presentersContainer.getRealContext(), 2131099675);
        this.defaultHeaderColor = ThemeUtils.m27386a(presentersContainer.getRealContext(), 2131099784);
        this.circleBorderWidth = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387);
        this.circleBorderColor = -1;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
    }
}
