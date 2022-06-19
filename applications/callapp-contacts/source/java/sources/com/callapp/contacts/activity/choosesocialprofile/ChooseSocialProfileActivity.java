package com.callapp.contacts.activity.choosesocialprofile;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Pair;
import android.util.SparseArray;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.choosesocialprofile.ChooseImageAdapter;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.crop.CallAppCropActivity;
import com.callapp.contacts.activity.crop.ChooseImageSourceDialogListener;
import com.callapp.contacts.activity.fragments.OpenLoginDialogBackgroundFragment;
import com.callapp.contacts.activity.select.PersonSelectActivity;
import com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.event.listener.BackgroundFragmentListener;
import com.callapp.contacts.loader.ChosenContactPhotoManager;
import com.callapp.contacts.loader.UserMediaManager;
import com.callapp.contacts.loader.business.GooglePlacesLoader;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SocialMatchesData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.popup.DefaultPersonSelectListener;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity.class */
public class ChooseSocialProfileActivity extends BaseNoTitleActivity implements ChooseImageAdapter.OnChooseImageEventListener, BackgroundFragmentListener<Integer>, ContactDataChangeListener {
    private static final int CALLAPP_AUTO_SELECT_ID = 1000;
    private static final int CALLAPP_DEFAULT_INDEX = 0;
    public static final String CONTACT_ID_EXTRA = "CONTACT_ID_EXTRA";
    public static final String CONTACT_NAME_EXTRA = "CONTACT_NAME_EXTRA";
    public static final String CONTACT_PHONE_EXTRA = "CONTACT_PHONE_EXTRA";
    private static final int FACEBOOK_INDEX = 2;
    private static final int GOOGLEPLACES_INDEX = 3;
    private static final int INDEX_NOT_FOUND = -1;
    private static final int INSTAGRAM_INDEX = 5;
    private static final String OPEN_LOGIN_DIALOG_BACKGROUND_FRAGMENT = "openLoginDialogBackgroundFragment";
    public static final String PREFIX_CUSTOM_PROFILE_ = "custom_profile_";
    public static final int REQUEST_CODE_CONTACT_SOCIAL = 9625;
    private static final int TWITTER_INDEX = 4;
    private static final int USER_MEDIA_INDEX = 1;
    private static final int VK_INDEX = 6;
    private Task candidateImageTask;
    private ChooseImageAdapter chooseImageAdapter;
    private ContactData contact;
    private long contactId;
    private String contactName;
    private int defaultPhotoResId;
    private int defaultUnknownPhotoResId;
    private int hasSearchResultsResId;
    private Uri imageUri;
    private String phoneNum;
    private List<BaseViewTypeData> socialMatchesData;
    private SparseArray<JSONSocialNetworkID> socialNetworkUserIds = new SparseArray<>();
    private SparseArray<PersonData> socialNetworkPersons = new SparseArray<>();
    private String fqlType = "";
    private final AndroidUtils.FieldsChangedHandler<DataSource> dataSourceFieldsChangedHandler = new AndroidUtils.FieldsChangedHandler<>(DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST);
    private final AndroidUtils.FieldsChangedHandler<ContactField> photoUrlFieldChangedHandler = new AndroidUtils.FieldsChangedHandler<>(ContactField.photoUrl);

    /* renamed from: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity$6 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6.class */
    public class C59636 extends Task {

        /* renamed from: a */
        final /* synthetic */ JSONSocialNetworkID f20918a;

        /* renamed from: b */
        final /* synthetic */ RemoteAccountHelper f20919b;

        /* renamed from: c */
        final /* synthetic */ Integer f20920c;

        C59636(JSONSocialNetworkID jSONSocialNetworkID, RemoteAccountHelper remoteAccountHelper, Integer num) {
            ChooseSocialProfileActivity.this = r4;
            this.f20918a = jSONSocialNetworkID;
            this.f20919b = remoteAccountHelper;
            this.f20920c = num;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.6.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!C59636.this.f20918a.isSure()) {
                        RemoteAccountHelper.m29253a(ChooseSocialProfileActivity.this, ChooseSocialProfileActivity.this.contact, C59636.this.f20919b.getDataSource(), new DefaultPersonSelectListener(C59636.this.f20919b, ChooseSocialProfileActivity.this.contact) { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.6.1.1
                            @Override // com.callapp.contacts.popup.DefaultPersonSelectListener, com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
                            /* renamed from: a */
                            public final void mo27901a() {
                                super.mo27901a();
                                ChooseSocialProfileActivity.this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(C59636.this.f20920c.intValue()).getDataSource());
                                ChooseSocialProfileActivity.this.socialNetworkUserIds.remove(C59636.this.f20920c.intValue());
                                ChooseSocialProfileActivity.this.initNetUi(C59636.this.f20920c);
                            }

                            @Override // com.callapp.contacts.popup.DefaultPersonSelectListener, com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
                            /* renamed from: a */
                            public final void mo27900a(String str) {
                                super.mo27900a(str);
                                ChooseSocialProfileActivity.this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(C59636.this.f20920c.intValue()).getDataSource());
                                ChooseSocialProfileActivity.this.socialNetworkUserIds.put(C59636.this.f20920c.intValue(), new JSONSocialNetworkID(str, true));
                                ChooseSocialProfileActivity.this.initNetUi(C59636.this.f20920c);
                            }

                            @Override // com.callapp.contacts.popup.DefaultPersonSelectListener, com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
                            /* renamed from: b */
                            public final void mo27899b() {
                                ChooseSocialProfileActivity.this.doesntChosePerson(C59636.this.f20920c.intValue());
                            }
                        }, new ContactSocialNetworksCertaintyHelper.ProfileDialogListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.6.1.2
                            @Override // com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.ProfileDialogListener
                            /* renamed from: a */
                            public final void mo29257a() {
                                ChooseSocialProfileActivity.this.markProfileAsSure(C59636.this.f20920c, C59636.this.f20919b, C59636.this.f20918a);
                            }
                        });
                    }
                }
            };
            RemoteAccountHelper remoteAccountHelper = this.f20919b;
            ContactData unused = ChooseSocialProfileActivity.this.contact;
            if (remoteAccountHelper.isNativeAppInstalled()) {
                Activities.m27689a(ChooseSocialProfileActivity.this, runnable);
            }
            final String id = this.f20918a.getId();
            if (StringUtils.m26045b((CharSequence) id)) {
                RemoteAccountHelper remoteAccountHelper2 = this.f20919b;
                ChooseSocialProfileActivity chooseSocialProfileActivity = ChooseSocialProfileActivity.this;
                remoteAccountHelper2.mo29111a(chooseSocialProfileActivity, chooseSocialProfileActivity.getSocialId(remoteAccountHelper2, id), runnable, new OutcomeListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.6.2
                    @Override // com.callapp.contacts.manager.task.OutcomeListener
                    /* renamed from: a */
                    public final void mo28119a(boolean z) {
                        if (z || 7 != C59636.this.f20920c.intValue() || C59636.this.f20918a == null) {
                            return;
                        }
                        ChooseSocialProfileActivity.this.handleOpenInstagramPrivateProfile(id, runnable);
                    }
                });
                ChooseSocialProfileActivity.this.notifyForUpdatesAndUpdateCandidate();
            }
        }
    }

    public void doesntChosePerson(int i) {
        this.socialNetworkUserIds.remove(i);
        initNetUi(Integer.valueOf(i));
    }

    public static PersonData findPrivateUsers(String str, String str2, int i) {
        PersonData personData;
        List<PersonData> list;
        try {
            try {
                list = Singletons.get().getRemoteAccountHelper(i).m29238b(str2, false);
            } catch (QuotaReachedException e) {
                personData = null;
            }
        } catch (SearchIsNotAvailableExecption e2) {
            list = null;
        }
        personData = null;
        if (CollectionUtils.m26068b(list)) {
            Iterator<PersonData> it2 = list.iterator();
            while (true) {
                personData = null;
                if (!it2.hasNext()) {
                    break;
                }
                personData = it2.next();
                String id = personData.getId();
                if (StringUtils.m26045b((CharSequence) id) && id.equals(str)) {
                    break;
                }
            }
        }
        return personData;
    }

    private int getCheckedImagePosition(Intent intent) {
        ChosenContactPhoto m28956a = ChosenContactPhotoManager.m28956a(intent.getLongExtra(CONTACT_ID_EXTRA, -1L), PhoneManager.get().m28239a(intent.getStringExtra(CONTACT_PHONE_EXTRA)));
        return m28956a != null ? getIndexInSocialsList(Integer.valueOf(m28956a.getDataSource().dbCode)) : 0;
    }

    private DevicePhotoData getEmptyDevicePhotoData() {
        DevicePhotoData devicePhotoData = new DevicePhotoData();
        devicePhotoData.setTitle(getString(2131887853));
        return devicePhotoData;
    }

    private Uri getFileUri() {
        if (this.imageUri == null) {
            try {
                this.imageUri = IoUtils.m27518a(this, File.createTempFile(PREFIX_CUSTOM_PROFILE_ + this.contactId + "_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()), ".jpg", getExternalFilesDir(Environment.DIRECTORY_PICTURES)));
            } catch (IOException e) {
                CLog.m27609a(ChooseSocialProfileActivity.class, e);
            }
        }
        return this.imageUri;
    }

    public int getIndexInSocialsList(Integer num) {
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue == 1) {
                return 2;
            }
            if (intValue == 4) {
                return 4;
            }
            if (intValue == 5) {
                return 3;
            }
            if (intValue == 7) {
                return 5;
            }
            if (intValue == 10) {
                return 6;
            }
            return intValue != 1000 ? -1 : 0;
        }
        return 1;
    }

    private JSONSocialNetworkID getSocialId(int i) {
        return this.socialNetworkUserIds.get(i);
    }

    public String getSocialId(RemoteAccountHelper remoteAccountHelper, String str) {
        if (remoteAccountHelper instanceof FacebookHelper) {
            return str + "#@@#" + this.fqlType;
        }
        return str;
    }

    public void handleCannotGetDataFromSocialId(Integer num) {
        ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.UNKNOWN);
        initNetUi(num, true);
    }

    private void handleHadSocialId(final Integer num, final RemoteAccountHelper remoteAccountHelper, final JSONSocialNetworkID jSONSocialNetworkID) {
        new Task() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.4
            /* JADX WARN: Code restructure failed: missing block: B:30:0x00b6, code lost:
                if (com.callapp.framework.util.StringUtils.m26056a(r10) != false) goto L31;
             */
            @Override // com.callapp.contacts.manager.task.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void doTask() {
                /*
                    Method dump skipped, instructions count: 478
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.C59604.doTask():void");
            }
        }.execute();
    }

    private void handleNotHaveId(Integer num) {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(num.intValue());
        if (remoteAccountHelper instanceof InstagramHelper) {
            ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.HIDE);
        } else if (!remoteAccountHelper.isLoggedIn()) {
            ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.NOT_CONNECTED);
        } else if (!remoteAccountHelper.mo29170h()) {
            ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.HIDE);
        } else {
            ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.UNKNOWN);
        }
        updatePhoto(num, null, remoteAccountHelper, false);
        updateName(num, null);
        this.socialMatchesData.get(getIndexInSocialsList(num));
        notifyForUpdatesAndUpdateCandidate();
    }

    public void handleOpenInstagramPrivateProfile(String str, Runnable runnable) {
        PersonData personData = this.socialNetworkPersons.get(7);
        PersonData personData2 = personData;
        if (personData == null) {
            personData2 = personData;
            if (str != null) {
                personData2 = findPrivateUsers(str, this.contactName, 7);
            }
        }
        if (personData2 == null || personData2.getId() == null || !personData2.getId().equals(str)) {
            return;
        }
        InstagramHelper.get().m29176a(this, personData2.getUserName(), runnable);
    }

    private void initDevicePhotoData() {
        if (this.contact.getUserMediaData() != null) {
            ((DevicePhotoData) this.socialMatchesData.get(1)).setPhotoUrl(this.contact.getUserMediaData().getPhotoUrl());
        }
    }

    public void initNetUi(Integer num) {
        initNetUi(num, false);
    }

    private void initNetUi(Integer num, boolean z) {
        if (num.intValue() != 1000) {
            RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(num.intValue());
            JSONSocialNetworkID socialId = getSocialId(num.intValue());
            boolean z2 = num.intValue() == 5 && this.contact.getGooglePlacesData() != null;
            if (((socialId == null || StringUtils.m26059a((CharSequence) socialId.getId())) && !z2) || z) {
                handleNotHaveId(num);
            } else {
                handleHadSocialId(num, remoteAccountHelper, socialId);
            }
        }
        notifyForUpdatesAndUpdateCandidate();
    }

    private void initSocialIds(ContactData contactData) {
        this.socialNetworkUserIds.put(1, ContactDataUtils.getSocialNetworkID(contactData, 1));
        this.socialNetworkUserIds.put(4, ContactDataUtils.getSocialNetworkID(contactData, 4));
        this.socialNetworkUserIds.put(7, ContactDataUtils.getSocialNetworkID(contactData, 7));
        this.socialNetworkUserIds.put(10, ContactDataUtils.getSocialNetworkID(contactData, 10));
        initDevicePhotoData();
    }

    private List<BaseViewTypeData> loadBasicData() {
        this.socialMatchesData = new ArrayList();
        CallAppApplication callAppApplication = CallAppApplication.get();
        this.socialMatchesData.add(0, new SocialMatchesData(1000, 2131231569, ThemeUtils.m27386a(callAppApplication, 2131099784), this.defaultPhotoResId));
        this.socialMatchesData.add(1, getEmptyDevicePhotoData());
        this.socialMatchesData.add(2, new SocialMatchesData(1, 2131231676, ThemeUtils.m27386a(callAppApplication, 2131099906), this.defaultPhotoResId));
        this.socialMatchesData.add(3, new SocialMatchesData(5, 2131231693, ThemeUtils.m27386a(callAppApplication, 2131099913), this.defaultPhotoResId));
        this.socialMatchesData.add(4, new SocialMatchesData(4, 2131231954, ThemeUtils.m27386a(callAppApplication, 2131100208), this.defaultPhotoResId));
        this.socialMatchesData.add(5, new SocialMatchesData(7, 2131231726, ThemeUtils.m27386a(callAppApplication, 2131099936), this.defaultPhotoResId));
        this.socialMatchesData.add(6, new SocialMatchesData(10, 2131231967, ThemeUtils.m27386a(callAppApplication, 2131100213), this.defaultPhotoResId));
        ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(1000))).setState(SocialMatchesData.SocialMatchState.AUTO_SELECT);
        return this.socialMatchesData;
    }

    public void markProfileAsSure(Integer num, RemoteAccountHelper remoteAccountHelper, JSONSocialNetworkID jSONSocialNetworkID) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_SOCIAL, "Marked profile as sure at 6-pack", Constants.CLICK);
        jSONSocialNetworkID.setSure(true);
        this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(num.intValue()).getDataSource());
        ((SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num))).setState(SocialMatchesData.SocialMatchState.SURE);
        setProfileAndPhotoToContact(num.intValue(), jSONSocialNetworkID.getId());
    }

    public void notifyForUpdatesAndUpdateCandidate() {
        updateCandidate();
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.1
            @Override // java.lang.Runnable
            public void run() {
                ChooseSocialProfileActivity.this.chooseImageAdapter.notifyDataSetChanged();
            }
        });
    }

    public void onDefaultPictureChecked() {
        new Task() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.5
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ChosenContactPhotoManager.m28954b(ChooseSocialProfileActivity.this.contact.getDeviceId(), ChooseSocialProfileActivity.this.contact.getPhone());
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ChooseSocialProfileActivity.this.chooseImageAdapter != null) {
                            ChooseSocialProfileActivity.this.chooseImageAdapter.setCheckedImagePosition(0);
                        }
                    }
                });
                AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "User changed the default image of another contact", "0", 0.0d, new String[0]);
            }
        }.execute();
        this.photoUrlFieldChangedHandler.setFieldChanged(ContactField.photoUrl);
    }

    private void onPictureChecked(final DataSource dataSource, final String str) {
        new Task() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (dataSource == null) {
                    CLog.m27611a(ChooseSocialProfileActivity.class, "Data source is null - Not added default image to DB");
                    return;
                }
                ChosenContactPhotoManager.m28955a(ChooseSocialProfileActivity.this.contact.getDeviceId(), ChooseSocialProfileActivity.this.contact.getPhone(), dataSource, str);
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                StringBuilder sb = new StringBuilder();
                sb.append(dataSource.dbCode);
                analyticsManager.mo28444a(Constants.SOCIAL_PROFILE, "User changed the default image of another contact", sb.toString(), 0.0d, new String[0]);
            }
        }.execute();
        this.photoUrlFieldChangedHandler.setFieldChanged(ContactField.photoUrl);
        FeedbackManager.get().m28669a(Activities.getString(2131886286), (Integer) null);
    }

    private void onSelectedLocalImage(String str) {
        UserMediaManager.m28894a(this.contact.getDeviceId(), this.contact.getPhone(), str);
        this.contact.setUserMediaData(new UserMediaData(str));
        initDevicePhotoData();
        onRadioClicked(1);
    }

    public static void openContactProfile(Activity activity, ContactData contactData) {
        if (contactData == null || contactData.isUnsearchableNumber()) {
            CLog.m27611a(ChooseSocialProfileActivity.class, "Contact is null or isUnsearchableNumber");
            return;
        }
        Intent intent = new Intent(CallAppApplication.get(), ChooseSocialProfileActivity.class);
        intent.setFlags(67108864);
        Activities.m27666a(contactData, intent);
        activity.startActivityForResult(intent, REQUEST_CODE_CONTACT_SOCIAL);
    }

    private void openLoginDialog(Integer num) {
        final OpenLoginDialogBackgroundFragment openLoginDialogBackgroundFragment = (OpenLoginDialogBackgroundFragment) getSupportFragmentManager().m43740a(OPEN_LOGIN_DIALOG_BACKGROUND_FRAGMENT);
        if (openLoginDialogBackgroundFragment != null) {
            final int intValue = num.intValue();
            FragmentActivity activity = openLoginDialogBackgroundFragment.getActivity();
            if (activity == null) {
                return;
            }
            RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(intValue);
            ContactSocialNetworksCertaintyHelper.m29265a(remoteAccountHelper, activity, remoteAccountHelper.getName(), new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.activity.fragments.OpenLoginDialogBackgroundFragment.1
                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                /* renamed from: a */
                public final void mo26206a() {
                    FragmentActivity activity2 = openLoginDialogBackgroundFragment.getActivity();
                    if (Activities.m27696a((Activity) activity2) && (activity2 instanceof BackgroundFragmentListener)) {
                        ((BackgroundFragmentListener) activity2).onComplete(Integer.valueOf(intValue));
                    }
                    super.mo26206a();
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                /* renamed from: b */
                public final void mo26205b() {
                    super.mo26205b();
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                /* renamed from: c */
                public final void mo26203c() {
                    super.mo26203c();
                }
            });
        }
    }

    private Task openSocialProfileInNewTask(Integer num, RemoteAccountHelper remoteAccountHelper, JSONSocialNetworkID jSONSocialNetworkID) {
        return new C59636(jSONSocialNetworkID, remoteAccountHelper, num).execute();
    }

    private void setProfileAndPhotoToContact(int i, String str) {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
        if (remoteAccountHelper != null) {
            remoteAccountHelper.m29245a(this.contact, str, true);
            notifyForUpdatesAndUpdateCandidate();
        }
    }

    public static void show(Activity activity, ContactData contactData) {
        if (contactData == null) {
            CLog.m27611a(ChooseSocialProfileActivity.class, "Contact is null");
            return;
        }
        Intent intent = new Intent(activity, ChooseSocialProfileActivity.class);
        intent.setFlags(67108864);
        Activities.m27666a(contactData, intent);
        activity.startActivityForResult(intent, REQUEST_CODE_CONTACT_SOCIAL);
    }

    private void showChooseImageDialog() {
        if (StringUtils.m26045b((CharSequence) this.phoneNum)) {
            AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click on add image");
            ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
            chooseImageSourceDialog.setListener(new ChooseImageSourceDialogListener(this, getFileUri(), Constants.USER_CORRECTED_INFO));
            PopupManager.get().m28209a(this, chooseImageSourceDialog);
        }
    }

    private void updateCandidate() {
        Task task = this.candidateImageTask;
        if (task != null && task.isRunning()) {
            this.candidateImageTask.cancel();
        }
        this.candidateImageTask = new Task() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (ChooseSocialProfileActivity.this.contact != null) {
                    Pair<String, DataSource> candidateContactPhoto = ChooseSocialProfileActivity.this.contact.getCandidateContactPhoto();
                    BaseViewTypeData baseViewTypeData = (BaseViewTypeData) ChooseSocialProfileActivity.this.socialMatchesData.get(ChooseSocialProfileActivity.this.getIndexInSocialsList(1000));
                    if (!(baseViewTypeData instanceof SocialMatchesData)) {
                        return;
                    }
                    if (candidateContactPhoto != null) {
                        SocialMatchesData socialMatchesData = (SocialMatchesData) baseViewTypeData;
                        socialMatchesData.setPhotoUrl((String) candidateContactPhoto.first);
                        socialMatchesData.setDataSource((DataSource) candidateContactPhoto.second);
                        socialMatchesData.setPhotoResId(0);
                    }
                    if (candidateContactPhoto != null && !StringUtils.m26059a((CharSequence) candidateContactPhoto.first)) {
                        return;
                    }
                    SocialMatchesData socialMatchesData2 = (SocialMatchesData) baseViewTypeData;
                    socialMatchesData2.setPhotoUrl(null);
                    socialMatchesData2.setDataSource(null);
                    socialMatchesData2.setPhotoResId(ChooseSocialProfileActivity.this.defaultUnknownPhotoResId);
                }
            }
        }.execute();
    }

    public void updateName(Integer num, String str) {
        SocialMatchesData socialMatchesData = (SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num));
        if (str == null) {
            socialMatchesData.setName("");
        } else {
            socialMatchesData.setName(StringUtils.m26020j(str));
        }
    }

    public void updatePhoto(Integer num, String str, RemoteAccountHelper remoteAccountHelper, boolean z) {
        int i;
        boolean mo29105a = remoteAccountHelper.mo29105a(str);
        SocialSearchResults m29232a = SocialNetworksSearchUtil.m29232a(this.contact, remoteAccountHelper.getApiConstantNetworkId());
        SocialMatchesData socialMatchesData = (SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num));
        if (z) {
            i = this.defaultPhotoResId;
        } else if (m29232a == null || m29232a.results == null || m29232a.results.size() <= 1) {
            i = this.defaultUnknownPhotoResId;
        } else {
            i = this.hasSearchResultsResId;
            socialMatchesData.setState(SocialMatchesData.SocialMatchState.MULTI_MATCH);
        }
        if (mo29105a || StringUtils.m26059a((CharSequence) str)) {
            socialMatchesData.setPhotoUrl(null);
            socialMatchesData.setPhotoResId(i);
            return;
        }
        socialMatchesData.setPhotoUrl(str);
        socialMatchesData.setDataSource(remoteAccountHelper.getDataSource());
    }

    public void updateSureButtons(JSONSocialNetworkID jSONSocialNetworkID, Integer num) {
        SocialMatchesData socialMatchesData = (SocialMatchesData) this.socialMatchesData.get(getIndexInSocialsList(num));
        if (jSONSocialNetworkID == null) {
            socialMatchesData.setState(SocialMatchesData.SocialMatchState.PLACES_SURE);
            this.socialNetworkUserIds.remove(num.intValue());
        } else if (jSONSocialNetworkID.isSure()) {
            socialMatchesData.setState(SocialMatchesData.SocialMatchState.SURE);
        } else {
            socialMatchesData.setState(SocialMatchesData.SocialMatchState.UNSURE);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558441;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri m30348a;
        Uri data;
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.m29233a(i, i2, intent);
        if (i != 996) {
            if (i == 15000) {
                if (i2 != -1) {
                    return;
                }
                CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(getFileUri()).setSavePathUri(getFileUri()).setShouldDelete(true).setPhoneNumber(this.phoneNum).setContactId(this.contactId));
            } else if (i == 20000) {
                if (i2 != 1000 || (m30348a = CallAppCropActivity.m30348a(intent)) == null) {
                    return;
                }
                onSelectedLocalImage(m30348a.toString());
            } else if (i != 25000 || i2 != -1 || (data = intent.getData()) == null) {
            } else {
                CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(data).setSavePathUri(getFileUri()).setIsFromGallery(true).setShouldDelete(true).setPhoneNumber(this.phoneNum).setContactId(this.contactId));
            }
        } else if (intent == null) {
            notifyForUpdatesAndUpdateCandidate();
        } else {
            int intExtra = intent.getIntExtra("PERSON_SELECT_NET_ID", -1);
            if (i2 != -1) {
                if (i2 != 0 || intExtra == -1) {
                    return;
                }
                doesntChosePerson(intExtra);
                return;
            }
            this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(intExtra).getDataSource());
            String stringExtra = intent.getStringExtra("PERSON_SELECT_SELECTED_USER_ID");
            if (intExtra == -1 || StringUtils.m26059a((CharSequence) stringExtra)) {
                return;
            }
            if ("DONTHAVE".equals(stringExtra)) {
                this.socialNetworkUserIds.remove(intExtra);
                Singletons.get().getRemoteAccountHelper(intExtra).m29256a(this.contactId, this.phoneNum);
            } else {
                JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(stringExtra, true);
                this.socialNetworkUserIds.put(intExtra, jSONSocialNetworkID);
                this.socialNetworkPersons.put(intExtra, (PersonData) intent.getParcelableExtra("PERSON_SELECT_PERSON_DATA"));
                setProfileAndPhotoToContact(intExtra, stringExtra);
                this.contact.assertDeviceDataExist();
                ContactDataUtils.updateSocialNetwork(this.contact, intExtra, jSONSocialNetworkID);
            }
            initNetUi(Integer.valueOf(intExtra));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        this.dataSourceFieldsChangedHandler.m27628a(intent);
        this.photoUrlFieldChangedHandler.m27628a(intent);
        setResult(-1, intent);
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        super.onBackPressed();
    }

    public void onCancel() {
    }

    public void onComplete(Integer num) {
        this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(num.intValue()).getDataSource());
        if (this.socialNetworkUserIds.get(num.intValue()) != null || !Singletons.get().getRemoteAccountHelper(num.intValue()).mo29163f()) {
            initNetUi(num);
        } else {
            PersonSelectActivity.m29699a(this, this.contact, num, this.contactName, this.fqlType);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (CollectionUtils.m26073a(set, ContactField.googlePlaces)) {
            initNetUi(5);
        }
        if (CollectionUtils.m26073a(set, ContactField.newContact)) {
            this.fqlType = "";
        }
        Iterator it2 = DataSource.SOCIAL_NETWORKS_DATA_SOURCE.iterator();
        while (it2.hasNext()) {
            DataSource dataSource = (DataSource) it2.next();
            if (getIndexInSocialsList(Integer.valueOf(dataSource.dbCode)) != -1) {
                if (CollectionUtils.m26073a(set, dataSource.socialIdField)) {
                    JSONSocialNetworkID jSONSocialNetworkID = this.socialNetworkUserIds.get(dataSource.dbCode);
                    JSONSocialNetworkID socialNetworkID = ContactDataUtils.getSocialNetworkID(contactData, dataSource.dbCode);
                    if (socialNetworkID != null && !socialNetworkID.equals(jSONSocialNetworkID)) {
                        this.socialNetworkUserIds.put(dataSource.dbCode, socialNetworkID);
                        initNetUi(Integer.valueOf(dataSource.dbCode));
                    }
                }
                if (CollectionUtils.m26073a(set, dataSource.socialSearchField) && ContactDataUtils.getSocialNetworkID(contactData, dataSource.dbCode) == null) {
                    initNetUi(Integer.valueOf(dataSource.dbCode));
                }
            }
        }
        notifyForUpdatesAndUpdateCandidate();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        getSupportActionBar().mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
        this.defaultPhotoResId = 2131232143;
        this.defaultUnknownPhotoResId = 2131232143;
        this.hasSearchResultsResId = 2131232151;
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        int checkedImagePosition = getCheckedImagePosition(getIntent());
        List<BaseViewTypeData> loadBasicData = loadBasicData();
        this.socialMatchesData = loadBasicData;
        ChooseImageAdapter chooseImageAdapter = new ChooseImageAdapter(loadBasicData, checkedImagePosition, 2131232143, this);
        this.chooseImageAdapter = chooseImageAdapter;
        recyclerView.setAdapter(chooseImageAdapter);
        if (bundle == null) {
            getSupportFragmentManager().m43765a().m43537a(new OpenLoginDialogBackgroundFragment(), OPEN_LOGIN_DIALOG_BACKGROUND_FRAGMENT).mo43536b();
            getSupportFragmentManager().m43732b();
        }
        onNewIntent(getIntent());
        Prefs.f26302bZ.set(Long.MAX_VALUE);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this.contact != null) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        }
        super.onDestroy();
    }

    public void onError() {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null) {
            finish();
            return;
        }
        if (intent.getBooleanExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, false) && this.contactId != -1) {
            return;
        }
        long longExtra = intent.getLongExtra(CONTACT_ID_EXTRA, -1L);
        this.contactId = longExtra;
        if (longExtra == -1) {
            finish();
            return;
        }
        this.contactName = intent.getStringExtra(CONTACT_NAME_EXTRA);
        this.phoneNum = intent.getStringExtra(CONTACT_PHONE_EXTRA);
        if (this.contact != null) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        }
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(PhoneManager.get().m28239a(this.phoneNum), this.contactId, this, ContactFieldEnumSets.ALL);
        this.contact = (ContactData) registerForContactDetailsStack.first;
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            onContactChanged(this.contact, (Set) registerForContactDetailsStack.second);
        }
        this.chooseImageAdapter.setContact(this.contact);
        getSupportActionBar().mo46238a(Activities.getString(2131887143));
        initSocialIds(this.contact);
        for (int i = 0; i < this.socialMatchesData.size(); i++) {
            if (this.socialMatchesData.get(i) instanceof SocialMatchesData) {
                initNetUi(Integer.valueOf(((SocialMatchesData) this.socialMatchesData.get(i)).getSocialNetId()));
            }
        }
    }

    @Override // com.callapp.contacts.activity.choosesocialprofile.ChooseImageAdapter.OnChooseImageEventListener
    public void onRadioClicked(int i) {
        if (i != -1) {
            this.chooseImageAdapter.setCheckedImagePosition(i);
            BaseViewTypeData baseViewTypeData = this.socialMatchesData.get(i);
            if (baseViewTypeData.getViewType() == 13) {
                SocialMatchesData socialMatchesData = (SocialMatchesData) baseViewTypeData;
                if (socialMatchesData.getSocialNetId() == 1000) {
                    onDefaultPictureChecked();
                } else {
                    onPictureChecked(DataSource.getDataSource(socialMatchesData.getSocialNetId()), socialMatchesData.getPhotoUrl());
                }
            } else if (baseViewTypeData.getViewType() != 14) {
            } else {
                if (this.contact.getUserMediaData() == null || !StringUtils.m26045b((CharSequence) this.contact.getUserMediaData().getPhotoUrl())) {
                    showChooseImageDialog();
                } else {
                    onPictureChecked(DataSource.userMedia, ((DevicePhotoData) baseViewTypeData).getPhotoUrl());
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.choosesocialprofile.ChooseImageAdapter.OnChooseImageEventListener
    public void onRowClicked(int i) {
        if (i == -1 || i == 0) {
            return;
        }
        BaseViewTypeData baseViewTypeData = this.socialMatchesData.get(i);
        if (baseViewTypeData.getViewType() != 13) {
            if (baseViewTypeData.getViewType() != 14) {
                return;
            }
            showChooseImageDialog();
            return;
        }
        SocialMatchesData socialMatchesData = (SocialMatchesData) baseViewTypeData;
        AnalyticsManager.get().m28449a(Constants.CONTACT_SOCIAL, "Social match sure unsure activity", Constants.CLICK);
        if (5 == socialMatchesData.getSocialNetId() && this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()) == null && GooglePlacesLoader.m28860a(this, this.contact.getGooglePlacesData())) {
            return;
        }
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(socialMatchesData.getSocialNetId());
        if (remoteAccountHelper.isLoggedIn()) {
            if (this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()) != null && StringUtils.m26045b((CharSequence) this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()).getId())) {
                openSocialProfileInNewTask(Integer.valueOf(socialMatchesData.getSocialNetId()), remoteAccountHelper, this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()));
                return;
            } else if (this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()) != null && !StringUtils.m26059a((CharSequence) this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()).getId())) {
                return;
            } else {
                PersonSelectActivity.m29699a(this, this.contact, Integer.valueOf(socialMatchesData.getSocialNetId()), this.contactName, this.fqlType);
                return;
            }
        }
        Set<Integer> set = Prefs.f26325bw.get();
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
        }
        if (!hashSet.contains(Integer.valueOf(remoteAccountHelper.getApiConstantNetworkId()))) {
            openLoginDialog(Integer.valueOf(socialMatchesData.getSocialNetId()));
            hashSet.add(Integer.valueOf(remoteAccountHelper.getApiConstantNetworkId()));
            Prefs.f26325bw.set(hashSet);
        } else if (this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()) == null || !StringUtils.m26045b((CharSequence) this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()).getId())) {
            openLoginDialog(Integer.valueOf(socialMatchesData.getSocialNetId()));
        } else {
            openSocialProfileInNewTask(Integer.valueOf(socialMatchesData.getSocialNetId()), remoteAccountHelper, this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()));
        }
    }

    @Override // com.callapp.contacts.activity.choosesocialprofile.ChooseImageAdapter.OnChooseImageEventListener
    public void onSureClick(int i) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_SOCIAL, "Marked profile as sure at 6-pack", Constants.CLICK);
        SocialMatchesData socialMatchesData = (SocialMatchesData) this.socialMatchesData.get(i);
        markProfileAsSure(Integer.valueOf(socialMatchesData.getSocialNetId()), Singletons.get().getRemoteAccountHelper(socialMatchesData.getSocialNetId()), this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()));
    }

    @Override // com.callapp.contacts.activity.choosesocialprofile.ChooseImageAdapter.OnChooseImageEventListener
    public void onUnsureClick(int i) {
        if (i != 1) {
            final SocialMatchesData socialMatchesData = (SocialMatchesData) this.socialMatchesData.get(i);
            AnalyticsManager.get().m28449a(Constants.CONTACT_SOCIAL, "Marked profile as not him at 6-pack", Constants.CLICK);
            SocialDataUtils.onUserDismissingSocial(this, Integer.valueOf(socialMatchesData.getSocialNetId()), this.contact, this.socialNetworkUserIds.get(socialMatchesData.getSocialNetId()), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity.7
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    if (Singletons.get().getRemoteAccountHelper(socialMatchesData.getSocialNetId()).mo29163f()) {
                        ChooseSocialProfileActivity chooseSocialProfileActivity = ChooseSocialProfileActivity.this;
                        PersonSelectActivity.m29699a(chooseSocialProfileActivity, chooseSocialProfileActivity.contact, Integer.valueOf(socialMatchesData.getSocialNetId()), ChooseSocialProfileActivity.this.contactName, ChooseSocialProfileActivity.this.fqlType);
                    }
                    socialMatchesData.setState(SocialMatchesData.SocialMatchState.UNSURE);
                    if (ChooseSocialProfileActivity.this.chooseImageAdapter != null && ChooseSocialProfileActivity.this.chooseImageAdapter.getCheckedImagePosition() == ChooseSocialProfileActivity.this.getIndexInSocialsList(Integer.valueOf(socialMatchesData.getSocialNetId()))) {
                        ChooseSocialProfileActivity.this.onDefaultPictureChecked();
                    }
                    ChooseSocialProfileActivity.this.dataSourceFieldsChangedHandler.setFieldChanged(Singletons.get().getRemoteAccountHelper(socialMatchesData.getSocialNetId()).getDataSource());
                    ChooseSocialProfileActivity.this.photoUrlFieldChangedHandler.setFieldChanged(ContactField.photoUrl);
                    ChooseSocialProfileActivity.this.doesntChosePerson(socialMatchesData.getSocialNetId());
                }
            });
            return;
        }
        DevicePhotoData devicePhotoData = (DevicePhotoData) this.socialMatchesData.get(i);
        String photoUrl = devicePhotoData.getPhotoUrl();
        File file = new File(Uri.parse(photoUrl).getPath());
        try {
            if (file.exists()) {
                file.delete();
            } else {
                getContentResolver().delete(Uri.parse(photoUrl), null, null);
            }
        } catch (Exception e) {
        }
        this.contact.setUserMediaData(null);
        UserMediaManager.m28893a(photoUrl);
        devicePhotoData.setPhotoUrl(null);
        notifyForUpdatesAndUpdateCandidate();
        this.photoUrlFieldChangedHandler.setFieldChanged(ContactField.photoUrl);
        onDefaultPictureChecked();
    }
}
