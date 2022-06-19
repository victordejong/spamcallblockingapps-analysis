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
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
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
        /* renamed from: a */
        public final void mo26376a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Login successful Phone Number");
            EditUserProfileActivity.this.reloadContact();
            RegisterClientUtils.m26907a(str, authenticators_types);
        }
    };
    private boolean isWaitingForS3Upload = false;

    /* renamed from: com.callapp.contacts.activity.EditUserProfileActivity$17 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/EditUserProfileActivity$17.class */
    public static /* synthetic */ class C566517 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19429a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[ContactField.values().length];
            f19429a = iArr;
            try {
                iArr[ContactField.fullName.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19429a[ContactField.emails.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19429a[ContactField.websites.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19429a[ContactField.addresses.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19429a[ContactField.photoUrl.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19429a[ContactField.birthday.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19429a[ContactField.userDefinition.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public File getRandomCompressFile() {
        File file = new File(IoUtils.getCacheFolder(), "RANDOM_COMPRESS");
        this.randomCompress = file;
        return file;
    }

    private File getRandomFile() {
        File file = new File(IoUtils.getCacheFolder(), StringUtils.m26060a(12, true));
        this.randomFile = file;
        return file;
    }

    private void hideUnusedViews() {
        findViewById(2131364179).setVisibility(8);
        findViewById(2131362117).setVisibility(8);
    }

    public void notifyOnNewContact(ContactData contactData) {
        if (contactData != null) {
            Set<ContactField> pastChangedFields = contactData.getPastChangedFields();
            pastChangedFields.add(ContactField.newContact);
            onContactChanged(contactData, pastChangedFields);
        }
    }

    public void openAddUserDefinitionDialog() {
        PopupManager.get().m28209a(this, new DialogEditText(2131886739, (getParallax() == null || getParallax().getUserDefinition() == null || getParallax().getUserDefinition().getText() == null) ? null : getParallax().getUserDefinition().getText().toString(), Activities.getString(2131887636), 1, new DialogWithEditTextDelegate.SingleChoiceWithTextListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.9
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final String mo27336a(String str) {
                return null;
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27338a(int i, String str, boolean z) {
                UserProfileManager.get().setUserDefinition(str);
                UserProfileLoader.m28834d(EditUserProfileActivity.this.presenterContainer.getContact());
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27337a(DialogPopup dialogPopup, int i) {
            }
        }));
    }

    private void saveDataToEmptyFields() {
        ContactData contact = this.presenterContainer.getContact();
        if (contact != null) {
            String fullName = contact.getFullName();
            if (StringUtils.m26045b((CharSequence) fullName)) {
                if (StringUtils.m26059a((CharSequence) UserProfileManager.get().getUserFullName())) {
                    UserProfileManager.get().setUserFullName(fullName);
                } else {
                    onUserFieldChanged(ContactField.fullName);
                }
            }
            String userDefinition = contact.getUserDefinition();
            if (StringUtils.m26045b((CharSequence) userDefinition)) {
                if (StringUtils.m26059a((CharSequence) UserProfileManager.get().getUserDefinition())) {
                    UserProfileManager.get().setUserDefinition(userDefinition);
                } else {
                    onUserFieldChanged(ContactField.userDefinition);
                }
            }
            DataSource currentPhotoDataSource = contact.getCurrentPhotoDataSource();
            if (currentPhotoDataSource != null && UserProfileManager.get().getUserChosenImageDataSource() == null) {
                UserProfileManager.get().m28464a(currentPhotoDataSource, ContactDataUtils.getContactPhotoUrlOnSocial(contact, currentPhotoDataSource.dbCode, true));
            } else if (StringUtils.m26045b((CharSequence) UserProfileManager.get().getUserProfileImageUrl())) {
                onUserFieldChanged(ContactField.photoUrl);
            }
            JSONDate birthday = contact.getBirthday();
            if (birthday != null && UserProfileManager.get().getBirthdate() == null) {
                UserProfileManager.get().setBirthdate(birthday);
            }
            JSONAddress address = contact.getAddress();
            if (address == null) {
                return;
            }
            String fullAddress = address.getFullAddress();
            if (!StringUtils.m26045b((CharSequence) fullAddress) || UserProfileManager.get().getUserAddress() != null) {
                return;
            }
            UserProfileManager.get().setUserAddress(fullAddress);
        }
    }

    private void sendChangedDataToServer() {
        ContactField[] contactFieldArr;
        JSONDate birthdate;
        if (!this.fieldsChangedHandler.isAnyFieldChanged()) {
            return;
        }
        final UpdateUserProfileUtil.ProfileParamsBuilder profileParamsBuilder = new UpdateUserProfileUtil.ProfileParamsBuilder();
        for (ContactField contactField : changeableFields) {
            if (this.fieldsChangedHandler.m27626a((AndroidUtils.FieldsChangedHandler<ContactField>) contactField)) {
                switch (C566517.f19429a[contactField.ordinal()]) {
                    case 1:
                        profileParamsBuilder.m27349a("fn", UserProfileManager.get().getUserFirstName());
                        profileParamsBuilder.m27349a("ln", UserProfileManager.get().getUserLastName());
                        continue;
                    case 2:
                        profileParamsBuilder.m27348a("email", UserProfileManager.get().getUserEmails());
                        continue;
                    case 3:
                        profileParamsBuilder.m27348a("websites", UserProfileManager.get().getUserWebsites());
                        continue;
                    case 4:
                        profileParamsBuilder.m27349a("address", UserProfileManager.get().getUserAddress());
                        continue;
                    case 5:
                        String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                        if (StringUtils.m26045b((CharSequence) userProfileImageUrl)) {
                            if (!StringUtils.m26027f(userProfileImageUrl, "content://")) {
                                profileParamsBuilder.m27349a("ciu", userProfileImageUrl);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 6:
                        if (UserProfileManager.get().getBirthdate() != null) {
                            profileParamsBuilder.m27349a("birthdate", birthdate.getFormattedDay() + VerificationLanguage.REGION_PREFIX + birthdate.getFormattedMonth() + VerificationLanguage.REGION_PREFIX + birthdate.getFormattedYear());
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        profileParamsBuilder.m27349a("usrdef", UserProfileManager.get().getUserDefinition());
                        continue;
                }
            }
        }
        final Callback<Boolean> callback = new Callback<Boolean>() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.15
            @Override // com.callapp.contacts.event.Callback
            /* renamed from: a */
            public final /* synthetic */ void mo28871a(Boolean bool) {
                EditUserProfileActivity.this.fieldsChangedHandler.f27683a.clear();
            }

            @Override // com.callapp.contacts.event.Callback
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ void mo28870a(Boolean bool, Exception exc) {
            }
        };
        if (!CollectionUtils.m26068b(profileParamsBuilder.f27869a) && !CollectionUtils.m26068b(profileParamsBuilder.f27870b)) {
            return;
        }
        new Task() { // from class: com.callapp.contacts.util.UpdateUserProfileUtil.ProfileParamsBuilder.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                HttpRequest m27363a = UpdateUserProfileUtil.m27363a();
                if (CollectionUtils.m26068b(profileParamsBuilder.f27869a)) {
                    UpdateUserProfileUtil.m27353b(m27363a, profileParamsBuilder.f27869a);
                }
                if (CollectionUtils.m26068b(profileParamsBuilder.f27870b)) {
                    Iterator it2 = profileParamsBuilder.f27870b.iterator();
                    while (it2.hasNext()) {
                        UpdateUserProfileUtil.m27362a(m27363a, (Pair) it2.next());
                    }
                }
                if (m27363a.m27004a(10000)) {
                    Callback callback2 = callback;
                    if (callback2 == null) {
                        return;
                    }
                    callback2.mo28871a(Boolean.TRUE);
                    return;
                }
                Callback callback3 = callback;
                if (callback3 == null) {
                    return;
                }
                callback3.mo28870a(Boolean.FALSE, null);
            }
        }.execute();
    }

    private void setChangedFieldsResult() {
        Intent intent = new Intent();
        if (this.fieldsChangedHandler.m27628a(intent)) {
            setResult(-1, intent);
        }
    }

    public void showErrorDialog() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.14
            @Override // java.lang.Runnable
            public void run() {
                PopupManager.get().m28209a(EditUserProfileActivity.this, new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887063), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.14.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                    }
                }, null));
            }
        });
    }

    public void showMandatoryVerifyNumberPopup() {
        showVerifyDialog(2131887259, 2131887258, 2131886505, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.trackUserProfileEvent("Verify dialog - User Decided not to verify his number");
            }
        });
    }

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
        PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(i), Activities.getString(i2), Activities.getString(2131887257), Activities.getString(i3), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                EditUserProfileActivity.trackUserProfileEvent("User Clicked the verify button on dialog");
                PhoneVerifierManager.get();
                PhoneVerifierManager.m28522a((Activity) EditUserProfileActivity.this, false);
            }
        }, iDialogOnClickListener));
    }

    public void startContactDetailsActivity(Phone phone) {
        NonEditableContactDetailsActivity.startActivity(this, 0L, phone.getRawNumber(), true);
    }

    public static void trackUserProfileEvent(String str) {
        AnalyticsManager.get().m28450a(Constants.EDIT_USER_PROFILE, str);
    }

    private void uploadToS3(final String str) {
        final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(getString(2131888120));
        simpleProgressDialog.setCancelable(false);
        PopupManager.get().m28209a(this, simpleProgressDialog);
        new Task() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.13
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                File file;
                EditUserProfileActivity.this.isWaitingForS3Upload = true;
                try {
                    file = ImageUtils.m27526a(EditUserProfileActivity.this.randomFile, Bitmap.CompressFormat.JPEG, EditUserProfileActivity.this.getRandomCompressFile().toString());
                } catch (IOException e) {
                    CLog.m27609a(EditUserProfileActivity.class, e);
                    SimpleProgressDialog.m27939a(simpleProgressDialog);
                    file = null;
                }
                String m27164a = AWSUtils.m27164a(file, UUID.randomUUID().toString(), "image/jpg", EditUserProfileActivity.BUCKET_NAME);
                EditUserProfileActivity.this.isWaitingForS3Upload = false;
                IoUtils.m27504b(EditUserProfileActivity.this.randomFile);
                IoUtils.m27504b(EditUserProfileActivity.this.randomCompress);
                IoUtils.m27504b(file);
                if (StringUtils.m26045b((CharSequence) m27164a)) {
                    AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "upload profile image success");
                    if (UserProfileManager.get().m28464a(DataSource.userMedia, m27164a)) {
                        EditUserProfileActivity.this.presenterContainer.getContact().resetChosenPicture();
                        EditUserProfileActivity.this.presenterContainer.getContact().updatePhoto();
                        UserProfileManager.get().m28465a(ContactField.photoUrl);
                    }
                } else {
                    AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "upload profile image failed");
                    EditUserProfileActivity.this.showErrorDialog();
                }
                SimpleProgressDialog.m27939a(simpleProgressDialog);
            }
        }.execute();
    }

    public Uri getFileUri() {
        if (this.randomFile == null) {
            this.randomFile = getRandomFile();
        }
        return IoUtils.m27518a(this, this.randomFile);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public BaseContactDetailsParallaxImpl getParallaxImpl(BaseContactDetailsActivity.FlingListener flingListener) {
        return new EditUserProfileParallaxImpl(this.presenterContainer, findViewById(2131362415), getPositionChangedListener(), flingListener, CoverAssetManager.m28420b(), getLifecycle(), this);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener() {
        return new BaseContactDetailsParallaxImpl.PositionChangedListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.11
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.PositionChangedListener
            /* renamed from: a */
            public final void mo30715a(BaseContactDetailsParallaxImpl.Position position) {
            }
        };
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.EDIT_USER_PROFILE_ACTIVITY;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public StoreItemAssetManager.Builder getStoreItemAssetManager(StoreItemAssetManager.Builder builder) {
        builder.f25908b = new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.activity._$$Lambda$EditUserProfileActivity$L4EviRF0lvMbD9cCWd3tZdjl0Xo
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
        if (UserProfileManager.get().m28462a(this.presenterContainer.getContact().getPhone())) {
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$EditUserProfileActivity$VK7h1uAKg8_T8__m2p34CFJfd_k
            @Override // java.lang.Runnable
            public final void run() {
                EditUserProfileActivity.this.lambda$null$0$EditUserProfileActivity(str);
            }
        });
    }

    public /* synthetic */ void lambda$null$0$EditUserProfileActivity(String str) {
        setStatusBarColor(-16777216);
        ViewUtils.m27314a((View) this.coverImageView, true);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.coverImageView, str, this);
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }

    public /* synthetic */ void lambda$onContactChanged$2$EditUserProfileActivity(ContactData contactData) {
        getParallax().getUserDefinition().setText(contactData.getUserDefinition());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri m30348a;
        Uri data;
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.m29233a(i, i2, intent);
        if (i == 7453) {
            if (i2 != -1) {
                return;
            }
            String stringExtra = intent.getStringExtra("RESULT_USER_PHONE_NUMBER");
            String stringExtra2 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN");
            String stringExtra3 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN_TYPE");
            if (stringExtra3 == null) {
                return;
            }
            if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
            } else if (!stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
            } else {
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
            }
        } else if (i == 15000) {
            if (i2 != -1) {
                return;
            }
            CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(getFileUri()).setSavePathUri(getFileUri()));
        } else if (i == 20000) {
            if (i2 != 1000 || (m30348a = CallAppCropActivity.m30348a(intent)) == null) {
                return;
            }
            uploadToS3(m30348a.toString());
        } else if (i != 25000 || i2 != -1 || intent == null || (data = intent.getData()) == null) {
        } else {
            CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setIsFromGallery(true).setImagePathUri(data).setSavePathUri(getFileUri()));
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
        AnalyticsManager.get().mo28441b(Constants.EDIT_USER_PROFILE);
        hideUnusedViews();
        ViewUtils.m27295c(getRecyclerView(), 0);
        ViewUtils.m27288f(getRecyclerView(), 0);
        this.cardsAdapter = new CardArrayRecyclerViewAdapterWithPriority(this, new ArrayList(), null);
        getRecyclerView().setAdapter((AbstractC18112a) this.cardsAdapter);
        new Task() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.5
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                EditUserProfileActivity.this.presenterManager.m30923b(EditUserProfileActivity.this.presenterContainer);
            }
        }.execute();
        this.presenterManager.m30921c(this.presenterContainer);
        ((PhotoPresenter) this.presenterManager.m30925a(PhotoPresenter.class)).setPhotoLongClickedListener(null);
        ((PhotoPresenter) this.presenterManager.m30925a(PhotoPresenter.class)).setPhotoClickedListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.6
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                final MySocialProfileCard.MySocialProfileData mySocialProfileData = new MySocialProfileCard.MySocialProfileData(EditUserProfileActivity.this.presenterContainer.getDefaultContactResource().intValue());
                mySocialProfileData.setMarkedDataSource(UserProfileManager.get().getUserChosenImageDataSource());
                EditUserProfileActivity editUserProfileActivity = EditUserProfileActivity.this;
                mySocialProfileData.m31173a(editUserProfileActivity, editUserProfileActivity.contact, true);
                final ChooseImagePopup chooseImagePopup = new ChooseImagePopup(2131887639, mySocialProfileData.getData());
                chooseImagePopup.setItemClickedListener(new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.6.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                        DataSource dataSourceAtPosition = mySocialProfileData.getDataSourceAtPosition(i);
                        if (dataSourceAtPosition.equals(DataSource.userMedia)) {
                            AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click on add image");
                            ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
                            chooseImageSourceDialog.setListener(new ChooseImageSourceDialogListener(EditUserProfileActivity.this, EditUserProfileActivity.this.getFileUri(), Constants.USER_CORRECTED_INFO));
                            PopupManager.get().m28209a(EditUserProfileActivity.this, chooseImageSourceDialog);
                        }
                        if (!RemoteAccountHelper.m29239b(dataSourceAtPosition)) {
                            SocialFeedCard.loginAndFireChange(EditUserProfileActivity.this.presenterContainer, dataSourceAtPosition);
                            chooseImagePopup.dismiss();
                            return;
                        }
                        ArrayList<HorizontalIconGalleryItemData> data = mySocialProfileData.getData();
                        String str = null;
                        if (CollectionUtils.m26068b(data)) {
                            HorizontalIconGalleryItemData horizontalIconGalleryItemData = data.get(i);
                            str = null;
                            if (horizontalIconGalleryItemData != null) {
                                str = horizontalIconGalleryItemData.getImageUrl();
                            }
                        }
                        if (!UserProfileManager.get().m28464a(dataSourceAtPosition, str)) {
                            return;
                        }
                        EditUserProfileActivity.this.presenterContainer.getContact().resetChosenPicture();
                        EditUserProfileActivity.this.presenterContainer.getContact().updatePhoto();
                        chooseImagePopup.dismiss();
                        UserProfileManager.get().m28465a(ContactField.photoUrl);
                    }
                });
                PopupManager.get().m28209a(EditUserProfileActivity.this, chooseImagePopup);
            }
        });
        this.contact = new ContactData(UserProfileManager.get().getUserPhoneOrFallbackPhone(), 0L, null);
        reloadContact();
        PhoneVerifierManager.get().f25760a = this.phoneAuthCallBack;
        ViewUtils.m27314a(findViewById(2131362429), false);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363560);
        profilePictureView.m26685a(ViewUtils.getDrawable(2131231581));
        profilePictureView.m26686a(ThemeUtils.m27386a(this, 2131100108), false);
        profilePictureView.m26678c((int) Activities.m27699a(16.0f));
        profilePictureView.m26680b((int) Activities.m27699a(27.0f));
        profilePictureView.m26677d(0);
        profilePictureView.setBadgeBorderWidth(0);
        profilePictureView.m26687a(-1);
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
                    if (UserProfileManager.get().m28462a(phone)) {
                        EditUserProfileActivity.this.startContactDetailsActivity(phone);
                    } else if (UserProfileManager.get().m28457b(phone) || !phone.isValidForSearch()) {
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
        getParallax().m31001b(false);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        PhoneVerifierManager.get().m28520a(this.phoneAuthCallBack);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.EDIT_USER_PROFILE);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UserProfileManager userProfileManager = UserProfileManager.get();
        synchronized (userProfileManager.f25852b) {
            userProfileManager.f25851a = this;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        saveDataToEmptyFields();
        UserProfileManager userProfileManager = UserProfileManager.get();
        synchronized (userProfileManager.f25852b) {
            if (userProfileManager.f25851a == this) {
                userProfileManager.f25851a = null;
            }
        }
        sendChangedDataToServer();
        super.onStop();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public void onTopBarIconClicked(View view) {
        ContactData contact;
        if (!Activities.m27696a((Activity) this) || view == null) {
            return;
        }
        AndroidUtils.m27635a((Activity) this);
        int id = view.getId();
        if (id == 2131362049) {
            onBackPressed();
        } else if (id != 2131362422 || (contact = this.presenterContainer.getContact()) == null) {
        } else {
            PopupManager.get().m28209a(this, new DialogEditText(2131886806, contact.getFullName(), Activities.getString(2131886746), 96, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.EditUserProfileActivity.12
                @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                /* renamed from: a */
                public final void mo27338a(int i, String str, boolean z) {
                    UserProfileManager.get().setUserFullName(str);
                    UserProfileLoader.m28835c(EditUserProfileActivity.this.presenterContainer.getContact());
                }
            }));
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
                EditUserProfileActivity.this.presenterManager.m30927a(EditUserProfileActivity.this.presenterContainer);
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
