package com.callapp.contacts.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.contact.cards.MySocialProfileCard;
import com.callapp.contacts.activity.contact.cards.SocialFeedCard;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.EditUserProfileParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter;
import com.callapp.contacts.activity.crop.CallAppCropActivity;
import com.callapp.contacts.activity.crop.ChooseImageSourceDialogListener;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.event.Callback;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.UserProfileLoader;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.CoverAssetManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.popup.ChooseImagePopup;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.popup.contact.DialogEditText;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.aws.AWSUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.servermessage.RegisterClientUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import it.gmariotti.cardslib.library.recyclerview.a.a;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/EditUserProfileActivity.class */
public class EditUserProfileActivity extends BaseContactDetailsActivity implements UserProfileManager.UserProfileEvents, ContactDataChangeListener {
    private static final String BUCKET_NAME = "callapp-profile-pictures";
    private static ContactField[] changeableFields = {ContactField.fullName, ContactField.emails, ContactField.websites, ContactField.addresses, ContactField.photoUrl, ContactField.birthday, ContactField.userDefinition};
    private File randomCompress;
    private File randomFile;
    private final AndroidUtils.FieldsChangedHandler<ContactField> fieldsChangedHandler = new AndroidUtils.FieldsChangedHandler<>(changeableFields);
    private PhoneVerifierManager.PhoneVerifierCallback phoneAuthCallBack = new PhoneVerifierManager.PhoneVerifierCallback() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.1
        @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
        public final void a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Login successful Phone Number");
            EditUserProfileActivity.this.reloadContact();
            RegisterClientUtils.a(str, authenticators_types);
        }
    };
    private boolean isWaitingForS3Upload = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.EditUserProfileActivity$17  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/EditUserProfileActivity$17.class */
    public static /* synthetic */ class AnonymousClass17 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10656a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[ContactField.values().length];
            f10656a = iArr;
            try {
                iArr[ContactField.fullName.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10656a[ContactField.emails.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10656a[ContactField.websites.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10656a[ContactField.addresses.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10656a[ContactField.photoUrl.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10656a[ContactField.birthday.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10656a[ContactField.userDefinition.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getRandomCompressFile() {
        File file = new File(IoUtils.getCacheFolder(), "RANDOM_COMPRESS");
        this.randomCompress = file;
        return file;
    }

    private File getRandomFile() {
        File file = new File(IoUtils.getCacheFolder(), StringUtils.a(12, true));
        this.randomFile = file;
        return file;
    }

    private void hideUnusedViews() {
        findViewById(2131364179).setVisibility(8);
        findViewById(2131362117).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnNewContact(ContactData contactData) {
        if (contactData != null) {
            Set<ContactField> pastChangedFields = contactData.getPastChangedFields();
            pastChangedFields.add(ContactField.newContact);
            onContactChanged(contactData, pastChangedFields);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddUserDefinitionDialog() {
        PopupManager.get().a(this, new DialogEditText(2131886739, (getParallax() == null || getParallax().getUserDefinition() == null || getParallax().getUserDefinition().getText() == null) ? null : getParallax().getUserDefinition().getText().toString(), Activities.getString(2131887636), 1, new DialogWithEditTextDelegate.SingleChoiceWithTextListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.9
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final String a(String str) {
                return null;
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(int i, String str, boolean z) {
                UserProfileManager.get().setUserDefinition(str);
                UserProfileLoader.d(EditUserProfileActivity.this.presenterContainer.getContact());
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(DialogPopup dialogPopup, int i) {
            }
        }));
    }

    private void saveDataToEmptyFields() {
        ContactData contact = this.presenterContainer.getContact();
        if (contact != null) {
            String fullName = contact.getFullName();
            if (StringUtils.b((CharSequence) fullName)) {
                if (StringUtils.a((CharSequence) UserProfileManager.get().getUserFullName())) {
                    UserProfileManager.get().setUserFullName(fullName);
                } else {
                    onUserFieldChanged(ContactField.fullName);
                }
            }
            String userDefinition = contact.getUserDefinition();
            if (StringUtils.b((CharSequence) userDefinition)) {
                if (StringUtils.a((CharSequence) UserProfileManager.get().getUserDefinition())) {
                    UserProfileManager.get().setUserDefinition(userDefinition);
                } else {
                    onUserFieldChanged(ContactField.userDefinition);
                }
            }
            DataSource currentPhotoDataSource = contact.getCurrentPhotoDataSource();
            if (currentPhotoDataSource != null && UserProfileManager.get().getUserChosenImageDataSource() == null) {
                UserProfileManager.get().a(currentPhotoDataSource, ContactDataUtils.getContactPhotoUrlOnSocial(contact, currentPhotoDataSource.dbCode, true));
            } else if (StringUtils.b((CharSequence) UserProfileManager.get().getUserProfileImageUrl())) {
                onUserFieldChanged(ContactField.photoUrl);
            }
            JSONDate birthday = contact.getBirthday();
            if (birthday != null && UserProfileManager.get().getBirthdate() == null) {
                UserProfileManager.get().setBirthdate(birthday);
            }
            JSONAddress address = contact.getAddress();
            if (address != null) {
                String fullAddress = address.getFullAddress();
                if (StringUtils.b((CharSequence) fullAddress) && UserProfileManager.get().getUserAddress() == null) {
                    UserProfileManager.get().setUserAddress(fullAddress);
                }
            }
        }
    }

    private void sendChangedDataToServer() {
        ContactField[] contactFieldArr;
        JSONDate birthdate;
        if (this.fieldsChangedHandler.isAnyFieldChanged()) {
            final UpdateUserProfileUtil.ProfileParamsBuilder profileParamsBuilder = new UpdateUserProfileUtil.ProfileParamsBuilder();
            for (ContactField contactField : changeableFields) {
                if (this.fieldsChangedHandler.a((AndroidUtils.FieldsChangedHandler<ContactField>) contactField)) {
                    switch (AnonymousClass17.f10656a[contactField.ordinal()]) {
                        case 1:
                            profileParamsBuilder.a("fn", UserProfileManager.get().getUserFirstName());
                            profileParamsBuilder.a("ln", UserProfileManager.get().getUserLastName());
                            continue;
                        case 2:
                            profileParamsBuilder.a("email", UserProfileManager.get().getUserEmails());
                            continue;
                        case 3:
                            profileParamsBuilder.a("websites", UserProfileManager.get().getUserWebsites());
                            continue;
                        case 4:
                            profileParamsBuilder.a("address", UserProfileManager.get().getUserAddress());
                            continue;
                        case 5:
                            String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                            if (StringUtils.b((CharSequence) userProfileImageUrl)) {
                                if (!StringUtils.f(userProfileImageUrl, "content://")) {
                                    profileParamsBuilder.a("ciu", userProfileImageUrl);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        case 6:
                            if (UserProfileManager.get().getBirthdate() != null) {
                                profileParamsBuilder.a("birthdate", birthdate.getFormattedDay() + VerificationLanguage.REGION_PREFIX + birthdate.getFormattedMonth() + VerificationLanguage.REGION_PREFIX + birthdate.getFormattedYear());
                                break;
                            } else {
                                continue;
                            }
                        case 7:
                            profileParamsBuilder.a("usrdef", UserProfileManager.get().getUserDefinition());
                            continue;
                    }
                }
            }
            final Callback<Boolean> callback = new Callback<Boolean>() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.15
                @Override // com.callapp.contacts.event.Callback
                public final /* synthetic */ void a(Boolean bool) {
                    EditUserProfileActivity.this.fieldsChangedHandler.f15846a.clear();
                }

                @Override // com.callapp.contacts.event.Callback
                public final /* bridge */ /* synthetic */ void a(Boolean bool, Exception exc) {
                }
            };
            if (CollectionUtils.b(profileParamsBuilder.f15966a) || CollectionUtils.b(profileParamsBuilder.f15967b)) {
                new Task() { // from class: com.callapp.contacts.util.UpdateUserProfileUtil.ProfileParamsBuilder.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        HttpRequest a2 = UpdateUserProfileUtil.a();
                        if (CollectionUtils.b(profileParamsBuilder.f15966a)) {
                            UpdateUserProfileUtil.b(a2, profileParamsBuilder.f15966a);
                        }
                        if (CollectionUtils.b(profileParamsBuilder.f15967b)) {
                            Iterator it2 = profileParamsBuilder.f15967b.iterator();
                            while (it2.hasNext()) {
                                UpdateUserProfileUtil.a(a2, (Pair) it2.next());
                            }
                        }
                        if (a2.a(10000)) {
                            Callback callback2 = callback;
                            if (callback2 != null) {
                                callback2.a(Boolean.TRUE);
                                return;
                            }
                            return;
                        }
                        Callback callback3 = callback;
                        if (callback3 != null) {
                            callback3.a(Boolean.FALSE, null);
                        }
                    }
                }.execute();
            }
        }
    }

    private void setChangedFieldsResult() {
        Intent intent = new Intent();
        if (this.fieldsChangedHandler.a(intent)) {
            setResult(-1, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorDialog() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.14
            @Override // java.lang.Runnable
            public void run() {
                PopupManager.get().a(EditUserProfileActivity.this, new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887063), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.14.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                    }
                }, null));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMandatoryVerifyNumberPopup() {
        showVerifyDialog(2131887259, 2131887258, 2131886505, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.trackUserProfileEvent("Verify dialog - User Decided not to verify his number");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOptionalVerifyNumberPopup(final Phone phone) {
        showVerifyDialog(2131887680, 2131887679, 2131887678, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.this.startContactDetailsActivity(phone);
                EditUserProfileActivity.trackUserProfileEvent("Verify dialog - User Decided to see how he looks on CD without verifying his number");
            }
        });
    }

    private void showVerifyDialog(int i, int i2, int i3, DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(i), Activities.getString(i2), Activities.getString(2131887257), Activities.getString(i3), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.trackUserProfileEvent("User Clicked the verify button on dialog");
                PhoneVerifierManager.get();
                PhoneVerifierManager.a((Activity) EditUserProfileActivity.this, false);
            }
        }, iDialogOnClickListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startContactDetailsActivity(Phone phone) {
        NonEditableContactDetailsActivity.startActivity(this, 0L, phone.getRawNumber(), true);
    }

    public static void trackUserProfileEvent(String str) {
        AnalyticsManager.get().a(Constants.EDIT_USER_PROFILE, str);
    }

    private void uploadToS3(final String str) {
        final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(getString(2131888120));
        simpleProgressDialog.setCancelable(false);
        PopupManager.get().a(this, simpleProgressDialog);
        new Task() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.13
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                File file;
                EditUserProfileActivity.this.isWaitingForS3Upload = true;
                try {
                    file = ImageUtils.a(EditUserProfileActivity.this.randomFile, Bitmap.CompressFormat.JPEG, EditUserProfileActivity.this.getRandomCompressFile().toString());
                } catch (IOException e) {
                    CLog.a(EditUserProfileActivity.class, e);
                    SimpleProgressDialog.a(simpleProgressDialog);
                    file = null;
                }
                String a2 = AWSUtils.a(file, UUID.randomUUID().toString(), "image/jpg", EditUserProfileActivity.BUCKET_NAME);
                EditUserProfileActivity.this.isWaitingForS3Upload = false;
                IoUtils.b(EditUserProfileActivity.this.randomFile);
                IoUtils.b(EditUserProfileActivity.this.randomCompress);
                IoUtils.b(file);
                if (StringUtils.b((CharSequence) a2)) {
                    AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "upload profile image success");
                    if (UserProfileManager.get().a(DataSource.userMedia, a2)) {
                        EditUserProfileActivity.this.presenterContainer.getContact().resetChosenPicture();
                        EditUserProfileActivity.this.presenterContainer.getContact().updatePhoto();
                        UserProfileManager.get().a(ContactField.photoUrl);
                    }
                } else {
                    AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "upload profile image failed");
                    EditUserProfileActivity.this.showErrorDialog();
                }
                SimpleProgressDialog.a(simpleProgressDialog);
            }
        }.execute();
    }

    public Uri getFileUri() {
        if (this.randomFile == null) {
            this.randomFile = getRandomFile();
        }
        return IoUtils.a(this, this.randomFile);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public BaseContactDetailsParallaxImpl getParallaxImpl(BaseContactDetailsActivity.FlingListener flingListener) {
        return new EditUserProfileParallaxImpl(this.presenterContainer, findViewById(2131362415), getPositionChangedListener(), flingListener, CoverAssetManager.b(), getLifecycle(), this);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener() {
        return new BaseContactDetailsParallaxImpl.PositionChangedListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.11
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.PositionChangedListener
            public final void a(BaseContactDetailsParallaxImpl.Position position) {
            }
        };
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.EDIT_USER_PROFILE_ACTIVITY;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public StoreItemAssetManager.Builder getStoreItemAssetManager(StoreItemAssetManager.Builder builder) {
        builder.f14984b = new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.activity._$$Lambda$EditUserProfileActivity$L4EviRF0lvMbD9cCWd3tZdjl0Xo
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public final void onAssetReady(Object obj, String str) {
                EditUserProfileActivity.this.lambda$getStoreItemAssetManager$1$EditUserProfileActivity((String) obj, str);
            }
        };
        return builder;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public void handleIncognitoMode() {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean isBackPressedHandled() {
        if (super.isBackPressedHandled()) {
            return true;
        }
        if (UserProfileManager.get().a(this.presenterContainer.getContact().getPhone())) {
            return false;
        }
        showVerifyDialog(2131887680, 2131887679, 2131887678, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.16
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.this.finish();
                EditUserProfileActivity.trackUserProfileEvent("Non verified user decided to exit the Edit user profile activity");
            }
        });
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public boolean isSnapOnUpRulesOk() {
        return true;
    }

    public /* synthetic */ void lambda$getStoreItemAssetManager$1$EditUserProfileActivity(final String str, String str2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$EditUserProfileActivity$VK7h1uAKg8_T8__m2p34CFJfd_k
            @Override // java.lang.Runnable
            public final void run() {
                EditUserProfileActivity.this.lambda$null$0$EditUserProfileActivity(str);
            }
        });
    }

    public /* synthetic */ void lambda$null$0$EditUserProfileActivity(String str) {
        setStatusBarColor(-16777216);
        ViewUtils.a((View) this.coverImageView, true);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.coverImageView, str, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    public /* synthetic */ void lambda$onContactChanged$2$EditUserProfileActivity(ContactData contactData) {
        getParallax().getUserDefinition().setText(contactData.getUserDefinition());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri a2;
        Uri data;
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.a(i, i2, intent);
        if (i != 7453) {
            if (i != 15000) {
                if (i != 20000) {
                    if (i == 25000 && i2 == -1 && intent != null && (data = intent.getData()) != null) {
                        CallAppCropActivity.a(this, new CallAppCropActivity.ImageCropBuilder().setIsFromGallery(true).setImagePathUri(data).setSavePathUri(getFileUri()));
                    }
                } else if (i2 == 1000 && (a2 = CallAppCropActivity.a(intent)) != null) {
                    uploadToS3(a2.toString());
                }
            } else if (i2 == -1) {
                CallAppCropActivity.a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(getFileUri()).setSavePathUri(getFileUri()));
            }
        } else if (i2 == -1) {
            String stringExtra = intent.getStringExtra("RESULT_USER_PHONE_NUMBER");
            String stringExtra2 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN");
            String stringExtra3 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN_TYPE");
            if (stringExtra3 == null) {
                return;
            }
            if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
            } else if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
                PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.isWaitingForS3Upload) {
            saveDataToEmptyFields();
            super.onBackPressed();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public void onButtonBarIconClicked(View view) {
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
        if (set.contains(ContactField.userDefinition)) {
            safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$EditUserProfileActivity$bIff_Bk_r_PP5EOZW3MW3SEgjas
                @Override // java.lang.Runnable
                public final void run() {
                    EditUserProfileActivity.this.lambda$onContactChanged$2$EditUserProfileActivity(contactData);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.EDIT_USER_PROFILE);
        hideUnusedViews();
        ViewUtils.c(getRecyclerView(), 0);
        ViewUtils.f(getRecyclerView(), 0);
        this.cardsAdapter = new CardArrayRecyclerViewAdapterWithPriority(this, new ArrayList(), null);
        getRecyclerView().setAdapter((a) this.cardsAdapter);
        new Task() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.5
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                EditUserProfileActivity.this.presenterManager.b(EditUserProfileActivity.this.presenterContainer);
            }
        }.execute();
        this.presenterManager.c(this.presenterContainer);
        ((PhotoPresenter) this.presenterManager.a(PhotoPresenter.class)).setPhotoLongClickedListener(null);
        ((PhotoPresenter) this.presenterManager.a(PhotoPresenter.class)).setPhotoClickedListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.6
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                final MySocialProfileCard.MySocialProfileData mySocialProfileData = new MySocialProfileCard.MySocialProfileData(EditUserProfileActivity.this.presenterContainer.getDefaultContactResource().intValue());
                mySocialProfileData.setMarkedDataSource(UserProfileManager.get().getUserChosenImageDataSource());
                EditUserProfileActivity editUserProfileActivity = EditUserProfileActivity.this;
                mySocialProfileData.a(editUserProfileActivity, editUserProfileActivity.contact, true);
                final ChooseImagePopup chooseImagePopup = new ChooseImagePopup(2131887639, mySocialProfileData.getData());
                chooseImagePopup.setItemClickedListener(new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.6.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                        DataSource dataSourceAtPosition = mySocialProfileData.getDataSourceAtPosition(i);
                        if (dataSourceAtPosition.equals(DataSource.userMedia)) {
                            AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "Click on add image");
                            ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
                            chooseImageSourceDialog.setListener(new ChooseImageSourceDialogListener(EditUserProfileActivity.this, EditUserProfileActivity.this.getFileUri(), Constants.USER_CORRECTED_INFO));
                            PopupManager.get().a(EditUserProfileActivity.this, chooseImageSourceDialog);
                        }
                        if (RemoteAccountHelper.b(dataSourceAtPosition)) {
                            ArrayList<HorizontalIconGalleryItemData> data = mySocialProfileData.getData();
                            String str = null;
                            if (CollectionUtils.b(data)) {
                                HorizontalIconGalleryItemData horizontalIconGalleryItemData = data.get(i);
                                str = null;
                                if (horizontalIconGalleryItemData != null) {
                                    str = horizontalIconGalleryItemData.getImageUrl();
                                }
                            }
                            if (UserProfileManager.get().a(dataSourceAtPosition, str)) {
                                EditUserProfileActivity.this.presenterContainer.getContact().resetChosenPicture();
                                EditUserProfileActivity.this.presenterContainer.getContact().updatePhoto();
                                chooseImagePopup.dismiss();
                                UserProfileManager.get().a(ContactField.photoUrl);
                                return;
                            }
                            return;
                        }
                        SocialFeedCard.loginAndFireChange(EditUserProfileActivity.this.presenterContainer, dataSourceAtPosition);
                        chooseImagePopup.dismiss();
                    }
                });
                PopupManager.get().a(EditUserProfileActivity.this, chooseImagePopup);
            }
        });
        this.contact = new ContactData(UserProfileManager.get().getUserPhoneOrFallbackPhone(), 0L, null);
        reloadContact();
        PhoneVerifierManager.get().f14919a = this.phoneAuthCallBack;
        ViewUtils.a(findViewById(2131362429), false);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363560);
        profilePictureView.a(ViewUtils.getDrawable(2131231581));
        profilePictureView.a(ThemeUtils.a(this, 2131100108), false);
        profilePictureView.c((int) Activities.a(16.0f));
        profilePictureView.b((int) Activities.a(27.0f));
        profilePictureView.d(0);
        profilePictureView.setBadgeBorderWidth(0);
        profilePictureView.a(-1);
        ImageView imageView = (ImageView) findViewById(2131362477);
        int userBadgeContribution = AnalyticsDataManager.getUserBadgeContribution();
        if (userBadgeContribution != -1) {
            imageView.setImageResource(userBadgeContribution);
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        ((ImageView) findViewById(2131362422)).setImageResource(2131231439);
        setTopBarClickedListeners(2131362049, 2131362422);
        LinearLayout previewLayout = getParallax().getPreviewLayout();
        if (previewLayout != null) {
            previewLayout.setVisibility(0);
            previewLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Phone phone = EditUserProfileActivity.this.presenterContainer.getContact().getPhone();
                    if (UserProfileManager.get().a(phone)) {
                        EditUserProfileActivity.this.startContactDetailsActivity(phone);
                    } else if (UserProfileManager.get().b(phone) || !phone.isValidForSearch()) {
                        EditUserProfileActivity.this.showMandatoryVerifyNumberPopup();
                    } else {
                        EditUserProfileActivity.this.showOptionalVerifyNumberPopup(phone);
                    }
                }
            });
        }
        getParallax().getUserDefinition().setVisibility(0);
        getParallax().getUserDefinition().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditUserProfileActivity.this.openAddUserDefinitionDialog();
            }
        });
        getParallax().b(false);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        PhoneVerifierManager.get().a(this.phoneAuthCallBack);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.EDIT_USER_PROFILE);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UserProfileManager userProfileManager = UserProfileManager.get();
        synchronized (userProfileManager.f14945b) {
            userProfileManager.f14944a = this;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        saveDataToEmptyFields();
        UserProfileManager userProfileManager = UserProfileManager.get();
        synchronized (userProfileManager.f14945b) {
            if (userProfileManager.f14944a == this) {
                userProfileManager.f14944a = null;
            }
        }
        sendChangedDataToServer();
        super.onStop();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public void onTopBarIconClicked(View view) {
        ContactData contact;
        if (Activities.a((Activity) this) && view != null) {
            AndroidUtils.a((Activity) this);
            int id = view.getId();
            if (id == 2131362049) {
                onBackPressed();
            } else if (id == 2131362422 && (contact = this.presenterContainer.getContact()) != null) {
                PopupManager.get().a(this, new DialogEditText(2131886806, contact.getFullName(), Activities.getString(2131886746), 96, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.12
                    @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                    public final void a(int i, String str, boolean z) {
                        UserProfileManager.get().setUserFullName(str);
                        UserProfileLoader.c(EditUserProfileActivity.this.presenterContainer.getContact());
                    }
                }));
            }
        }
    }

    @Override // com.callapp.contacts.manager.UserProfileManager.UserProfileEvents
    public void onUserFieldChanged(ContactField contactField) {
        ContactField[] contactFieldArr;
        for (ContactField contactField2 : changeableFields) {
            if (contactField2.equals(contactField)) {
                this.fieldsChangedHandler.setFieldChanged(contactField2);
                setChangedFieldsResult();
                return;
            }
        }
    }

    public void reloadContact() {
        new Task() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.10
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (EditUserProfileActivity.this.contact != null) {
                    EditUserProfileActivity.this.contact.removeListener(EditUserProfileActivity.this.presenterContainer);
                }
                Phone userPhoneOrFallbackPhone = UserProfileManager.get().getUserPhoneOrFallbackPhone();
                EditUserProfileActivity.this.presenterManager.a(EditUserProfileActivity.this.presenterContainer);
                ContactLoader createSelfContactStackLoader = Singletons.get().getContactLoaderManager().createSelfContactStackLoader();
                final EditUserProfileActivity editUserProfileActivity = EditUserProfileActivity.this;
                createSelfContactStackLoader.setListener(new ContactDataChangeListener() { // from class: com.callapp.contacts.activity._$$Lambda$W75w2pH9__cy0BezHpmjwXO7w7c
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public final void onContactChanged(ContactData contactData, Set set) {
                        EditUserProfileActivity.this.onContactChanged(contactData, set);
                    }
                }, ContactFieldEnumSets.ALL);
                EditUserProfileActivity.this.contact = createSelfContactStackLoader.loadSelfContact(userPhoneOrFallbackPhone);
                EditUserProfileActivity editUserProfileActivity2 = EditUserProfileActivity.this;
                editUserProfileActivity2.notifyOnNewContact(editUserProfileActivity2.contact);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public void setParallaxAndStatusBarColors(boolean z, boolean z2) {
    }
}
