package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.graphics.PorterDuff;
import androidx.core.content.b;
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

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$4.class */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12474a;

        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f12474a = iArr;
            try {
                iArr[PresentersContainer.MODE.MISSED_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPictureAndBadgeColors(int i) {
        if (this.profilePictureView.isBadgeInflated()) {
            this.profilePictureView.a(i);
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
        if (CollectionUtils.a(set, ContactField.fullName)) {
            FastCacheDataManager.a(contactData);
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    ProfilePicturePresenter.this.profilePictureView.setText(StringUtils.r(contactData.getFullName()));
                }
            });
        }
        if (CollectionUtils.a(set, ContactField.phone, ContactField.photoUrl)) {
            final GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((String) null);
            if (contactData.isIncognito() || this.presentersContainer.a(contactData) || IncognitoCallManager.get().isIncognito(contactData)) {
                str = ImageUtils.getResourceUri(2131232150);
            } else if (contactData.isVoiceMail()) {
                str = ImageUtils.getResourceUri(2131231612);
                glideRequestBuilder.a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
                glideRequestBuilder.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099786));
            } else {
                str = contactData.getThumbnailUrl();
            }
            String str2 = str;
            if (contactData.isUnknownNumber()) {
                str2 = str;
                if (!CollectionUtils.a(set, ContactField.newContact)) {
                    str2 = ImageUtils.getResourceUri(2131231610);
                    glideRequestBuilder.a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
                    glideRequestBuilder.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099786));
                }
            }
            if (AnonymousClass4.f12474a[this.presentersContainer.getContainerMode().ordinal()] == 1) {
                this.circleBorderWidth = 0;
                this.circleBorderColor = 0;
            }
            if (str2 != null) {
                glideRequestBuilder.f = str2;
                glideRequestBuilder.a(contactData.getPhotoDataSource());
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ProfilePictureView profilePictureView = ProfilePicturePresenter.this.profilePictureView;
                        GlideUtils.GlideRequestBuilder glideRequestBuilder2 = glideRequestBuilder;
                        glideRequestBuilder2.k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        glideRequestBuilder2.j = true;
                        glideRequestBuilder2.g = contactData.getPhotoBGColor();
                        glideRequestBuilder2.l = true;
                        GlideUtils.GlideRequestBuilder b2 = glideRequestBuilder2.b(ProfilePicturePresenter.this.circleBorderWidth, ProfilePicturePresenter.this.circleBorderColor);
                        b2.n = ProfilePicturePresenter.this.presentersContainer.getContact() != null ? new CallAppRequestListener(glideRequestBuilder.getPhotoUrl(), ProfilePicturePresenter.this.presentersContainer.getContact()) : null;
                        profilePictureView.a(b2);
                    }
                });
                FastCacheDataManager.b(contactData);
            } else {
                this.profilePictureView.a();
            }
        }
        if (CollectionUtils.a(set, ContactField.spamScore)) {
            FastCacheDataManager.c(contactData);
            if (this.profilePictureView != null) {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (UserCorrectedInfoUtil.a(contactData)) {
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
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.genomeData, ContactField.fullName, ContactField.photoUrl, ContactField.spamScore, ContactField.phone));
        ProfilePictureView profilePictureView = (ProfilePictureView) presentersContainer.findViewById(2131363565);
        this.profilePictureView = profilePictureView;
        profilePictureView.setText("?");
        this.spamHeaderColor = b.c(presentersContainer.getRealContext(), 2131099675);
        this.defaultHeaderColor = ThemeUtils.a(presentersContainer.getRealContext(), 2131099784);
        this.circleBorderWidth = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387);
        this.circleBorderColor = -1;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
    }
}
