package com.callapp.contacts.model.contact;

import android.util.Pair;
import android.util.SparseArray;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONDataAndSource;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONEvent;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONReview;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Lists;
import com.callapp.common.util.Objects;
import com.callapp.common.util.Ordering;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.framework.event.FieldListenerRegistry;
import com.callapp.contacts.framework.event.NopListenerRegistry;
import com.callapp.contacts.loader.ChosenContactPhotoManager;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.IMExtractedPhotoDataManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.LoadSocialNetworksIdTask;
import com.callapp.contacts.loader.p238im.SkypeLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.PhotoUpdater;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.contacts.model.contact.social.FoursquareData;
import com.callapp.contacts.model.contact.social.InstagramData;
import com.callapp.contacts.model.contact.social.NotificationFromIMData;
import com.callapp.contacts.model.contact.social.PinterestData;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.contacts.model.contact.social.TwitterData;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.contacts.model.contact.social.VenueFoursquareData;
import com.callapp.contacts.model.contact.social.VenueFoursquareIdFromSearchData;
import com.callapp.contacts.model.objectbox.BlockedNumberData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.model.PrioritizedValueBuilder;
import com.callapp.contacts.util.model.UpdateFieldBuilder;
import com.callapp.contacts.util.model.UpdateMapBuilder;
import com.callapp.contacts.util.model.UpdateNameBuilder;
import com.callapp.contacts.util.model.UpdateNamesBuilder;
import com.callapp.contacts.util.model.UpdateSetBuilder;
import com.callapp.contacts.util.model.UpdateSocialIdBuilder;
import com.callapp.contacts.util.model.UpdateValueWithSourceBuilder;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ContactData.class */
public class ContactData implements Serializable {
    private static final long serialVersionUID = 8924833625597482896L;
    protected JSONAddress address;
    private Collection<JSONAddress> addresses;
    private AuPersonLookupData auPersonLookupData;
    private double avgRating;
    private JSONDate birthday;
    private BlockedNumberData blockedNumberData;
    private Map<String, List<CallHistoryData>> callHistoryData;
    private String callReason;
    private Collection<JSONCategory> categories;
    private CHLocalData chLocalData;
    private ChosenContactPhoto chosenContactPhoto;
    private String cover;
    final Map<ContactField, DataSource> dataSources;
    private String description;
    private DeviceData deviceData;
    private long deviceId;
    protected final Map<JSONEmail, DataSource> emails;
    private Collection<JSONEvent> events;
    private FacebookData facebookData;
    private JSONSocialNetworkID facebookId;
    private FacebookPlaceData facebookPlaceData;
    private SocialSearchResults facebookSearchResults;
    private FastCacheData fastCacheData;
    private String firstName;
    private FoursquareData foursquareData;
    private JSONSocialNetworkID foursquareId;
    private SocialSearchResults foursquareSearchResults;
    private String fullName;
    private JSONContact genomeData;
    private GmailEmailData gmailEmailData;
    private AddressGeoCodeLatLng googleMapsLatLng;
    private GooglePlacesData googlePlacesData;
    private SocialSearchResults googlePlusSearchResults;
    private GravatarData gravatarData;
    private Set<Integer> hasSuggestions;
    private HuaweiPlaceData huaweiPlaceData;

    /* renamed from: id */
    private String f26739id;
    private Collection<JSONIMaddress> imAddresses;
    private IMExtractedPhotoData imExtractedPhotoData;
    private InstagramData instagramData;
    private JSONSocialNetworkID instagramId;
    private SocialSearchResults instagramSearchResults;
    private IntentData intentData;
    private boolean isChosenPhotoUrlFoundInDb;
    private boolean isInSync;
    private boolean isIncognito;
    private boolean isRecognized;
    private boolean isSpamReported;
    private Boolean isUnknwonNumber;
    private Boolean isUnsearchableNumber;
    private Boolean isVoiceMail;
    private double lat;
    private final transient FieldListenerRegistry listenerRegistry;
    private double lng;
    Set<ContactField> loadedFields;
    private final Map<Class, Object> locks;
    private String menuUrl;
    private Collection<PersonData> mutualFriends;
    private Map<String, SureCounter> names;
    private SparseArray<Set<String>> negativesMap;
    private NotificationFromIMData notificationTelegramData;
    private NotificationFromIMData notificationViberData;
    private NotificationFromIMData notificationWhatsAppData;
    private JSONAddress numberGeocodingDescription;
    boolean onlySure;
    private JSONOpeningHours openingHours;
    private Collection<JSONOrgData> organizations;
    private final transient Set<ContactField> pastChangedFields;
    private Phone phone;
    private ExtractedInfo phoneOrigin;
    private Collection<Phone> phones;
    private Integer photoBGColor;
    private DataSource photoDataSourceToUpdateName;
    private PhotoUrls photoUrls;
    private PinterestData pinterestData;
    private JSONSocialNetworkID pinterestId;
    private SocialSearchResults pinterestSearchResults;
    private int priceRange;
    private List<CallRecorder> records;
    private String reserveUrl;
    private Collection<JSONReview> reviews;
    private Collection<SkypeLoader.SkypeChatData> skypeData;
    private int spamScore;
    private SuggestionData suggestionData;
    private SparseArray<String> suggestionMap;
    private TwilioTrustedCommData twilioTrustedCommData;
    private TwitterData twitterData;
    private JSONSocialNetworkID twitterScreenName;
    private SocialSearchResults twitterSearchResults;
    private final Map<UploadedPhoto, DataSource> uploadedPhotosUrl;
    private UserCorrectedData userCorrectedData;
    private String userDefinition;
    private UserMediaData userMediaData;
    private UserProfileData userProfileData;
    private UserSpamData userSpamData;
    private VenueFoursquareData venueFoursquareData;
    private VenueFoursquareIdFromSearchData venueFoursquareIDFromSearchData;
    private JSONSocialNetworkID venueFoursquareId;
    private VKData vkData;
    private JSONSocialNetworkID vkId;
    private SocialSearchResults vkSearchResults;
    private Collection<VideoData> webVideos;
    private final Collection<JSONWebsite> websites;
    private WebsitesSocialIDsData websitesSocialIDsData;
    private boolean whatsAppDataExtraction;
    private WhitePagesData whitePagesData;
    private Collection<ChatData> yahooData;
    private Collection<VideoData> youTubeVideos;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.model.contact.ContactData$11 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ContactData$11.class */
    public static /* synthetic */ class C755311 {
        static final /* synthetic */ int[] $SwitchMap$com$callapp$contacts$model$contact$DataSource;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[DataSource.values().length];
            $SwitchMap$com$callapp$contacts$model$contact$DataSource = iArr;
            try {
                iArr[DataSource.genome.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.gravatar.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.googlePlaces.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.facebookPlaces.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.huaweiPlaces.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.facebook.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.twitter.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.instagram.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.pinterest.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.vk.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.whatsapp.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.viber.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.telegram.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.signal.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$callapp$contacts$model$contact$DataSource[DataSource.googleMaps.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    public ContactData(Phone phone, long j, ExtractedInfo extractedInfo) {
        this(phone, j, ContactFieldEnumSets.NONE, NopListenerRegistry.get(), false, extractedInfo);
    }

    public ContactData(Phone phone, long j, Set<ContactField> set, FieldListenerRegistry fieldListenerRegistry, boolean z, ExtractedInfo extractedInfo) {
        this.pastChangedFields = new ConcurrentSkipListSet();
        this.locks = new ConcurrentHashMap();
        this.dataSources = new ConcurrentHashMap();
        this.callHistoryData = new HashMap();
        this.isChosenPhotoUrlFoundInDb = false;
        this.isSpamReported = false;
        this.isRecognized = false;
        this.isUnsearchableNumber = null;
        this.isUnknwonNumber = null;
        this.isInSync = false;
        this.fullName = "";
        this.lat = 0.0d;
        this.lng = 0.0d;
        this.avgRating = -1.0d;
        this.phones = Collections.emptySet();
        this.addresses = Collections.emptySet();
        this.emails = Collections.emptyMap();
        this.events = Collections.emptySet();
        this.reviews = Collections.emptySet();
        this.imAddresses = Collections.emptySet();
        this.organizations = Collections.emptySet();
        this.websites = Collections.emptySet();
        this.names = Collections.emptyMap();
        this.categories = Collections.emptySet();
        this.mutualFriends = Collections.emptySet();
        this.webVideos = Collections.emptySet();
        this.uploadedPhotosUrl = Collections.emptyMap();
        this.negativesMap = ArrayUtils.m27620a();
        this.suggestionMap = ArrayUtils.m27620a();
        this.onlySure = false;
        this.firstName = "";
        this.isVoiceMail = null;
        this.listenerRegistry = fieldListenerRegistry;
        this.loadedFields = set;
        this.phone = phone;
        this.deviceId = j;
        this.onlySure = z;
        this.phoneOrigin = extractedInfo;
        fieldListenerRegistry.setValue(this);
        updateId();
        fireChange(EnumSet.of(ContactField.phone, ContactField.deviceId));
    }

    public static String buildCacheKey(String str, Class cls) {
        return String.format("%s-%s", cls.getSimpleName(), str);
    }

    private String buildCacheKey(String str, Object obj) {
        return String.format("%s-%s", obj, str);
    }

    public static String generateId(Phone phone, long j) {
        return j == 0 ? String.format("%s@%s", phone.m26101a(), Long.valueOf(j)) : Long.toString(j);
    }

    private Pair<Double, Double> getLatLng(Object obj) {
        if (obj != null) {
            return new Pair<>((Double) ReflectionUtils.m27423a(obj, "lat"), (Double) ReflectionUtils.m27423a(obj, "lng"));
        }
        return null;
    }

    private boolean hasSpecificIMAccount(int i) {
        return getSpecificIMAccount(i) != null;
    }

    private PhotoUpdater loadPhoto(boolean z) {
        updatePhotoFromDbIfNeeded();
        PhotoUpdater selectPhoto = selectPhoto(z);
        if (!z) {
            if (selectPhoto != null) {
                PhotoUrls currentUrls = selectPhoto.getCurrentUrls();
                if (!Objects.m31915a(currentUrls, this.photoUrls)) {
                    if (currentUrls == null || !currentUrls.isNotEmpty()) {
                        this.photoDataSourceToUpdateName = null;
                        resetPhotoWithoutFiringAndUpdating();
                    } else {
                        this.photoUrls = currentUrls;
                        DataSource dataSource = selectPhoto.getDataSource();
                        this.photoBGColor = selectPhoto.getCurrentPhotoBGColor();
                        setDataSource(ContactField.photoUrl, dataSource);
                        if (!this.isInSync) {
                            FastCacheDataManager.m28942b(this);
                        }
                        if (isContactInDevice() || dataSource == null || dataSource == DataSource.other || getDataSource(ContactField.fullName) == dataSource || !isSure(dataSource.socialIdField)) {
                            this.photoDataSourceToUpdateName = null;
                        } else {
                            this.photoDataSourceToUpdateName = dataSource;
                            new Task() { // from class: com.callapp.contacts.model.contact.ContactData.5
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    ContactData.this.updateFullName();
                                }
                            }.execute();
                        }
                    }
                    CLog.m27611a(ContactData.class, "Firing photoUrl: " + selectPhoto.getCurrentUrls() + ", source: " + selectPhoto.getDataSource());
                    fireChange(ContactField.photoUrl);
                }
            } else {
                resetPhotoWithoutFiringAndUpdating();
                fireChange(EnumSet.of(ContactField.photoUrl));
            }
        }
        return selectPhoto;
    }

    private void removeMutualFriends(int i) {
        boolean z;
        if (this.mutualFriends != null) {
            ArrayList arrayList = new ArrayList();
            for (PersonData personData : this.mutualFriends) {
                if (personData.getType() == i) {
                    arrayList.add(personData);
                }
            }
            Iterator it2 = arrayList.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                this.mutualFriends.remove((PersonData) it2.next());
                z2 = true;
            }
            if (!z) {
                return;
            }
            fireChange(ContactField.mutualFriends);
        }
    }

    private void resetSocialImages(DataSource dataSource) {
        synchronized (this.uploadedPhotosUrl) {
            Iterator<Map.Entry<UploadedPhoto, DataSource>> it2 = this.uploadedPhotosUrl.entrySet().iterator();
            while (it2.hasNext()) {
                if (it2.next().getValue().dbCode == dataSource.dbCode) {
                    it2.remove();
                }
            }
        }
    }

    private PhotoUpdater selectPhoto(boolean z) {
        boolean z2;
        DeviceData deviceData;
        ChosenContactPhoto chosenContactPhoto;
        VenueFoursquareData venueFoursquareData;
        FastCacheData fastCacheData;
        FastCacheData fastCacheData2 = this.fastCacheData;
        DataSource photoDataSource = (fastCacheData2 == null || !fastCacheData2.isValid()) ? null : this.fastCacheData.getPhotoDataSource();
        PhotoUpdater photoUpdater = new PhotoUpdater(photoDataSource);
        if (z || (fastCacheData = this.fastCacheData) == null || fastCacheData.getPhotoUrls() == null) {
            z2 = false;
        } else {
            photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.fastCacheData.getPhotoUrls().getPhotoUrl(), this.fastCacheData.getPhotoUrls().getThumbnail()).withPhotoBGColor(this.fastCacheData.getPhotoBackGroundColor()).withDataSource(this.fastCacheData.getPhotoDataSource()));
            z2 = true;
        }
        if (!z && (chosenContactPhoto = this.chosenContactPhoto) != null) {
            if (chosenContactPhoto.getDataSource() == DataSource.google) {
                GooglePlacesData googlePlacesData = this.googlePlacesData;
                if (googlePlacesData != null && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(googlePlacesData.getPhotoUrl(), DataSource.googlePlaces))) {
                    return photoUpdater;
                }
            } else if (this.chosenContactPhoto.getDataSource() == DataSource.venueFoursquare && (venueFoursquareData = this.venueFoursquareData) != null && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(venueFoursquareData.getPhotoUrl(), DataSource.venueFoursquare))) {
                return photoUpdater;
            }
            if (photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.chosenContactPhoto.getUrl(), this.chosenContactPhoto.getDataSource()).onlyThumbnail(true))) {
                return photoUpdater;
            }
        }
        if (!ContactLoader.getPreferPhotosFromDevice() || (((deviceData = this.deviceData) == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(deviceData.getPhotoUrl(), this.deviceData.getThumbnailUrl()).withDataSource(DataSource.device))) && photoDataSource != DataSource.device)) {
            JSONContact jSONContact = this.genomeData;
            if (jSONContact != null) {
                if (jSONContact.isPhotoChosenFromUserProfile()) {
                    if (photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.genomeData.getPhotoUrl(), DataSource.genome))) {
                        return photoUpdater;
                    }
                } else if (photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.genomeData.getPhotoUrl(), DataSource.genome))) {
                    return photoUpdater;
                }
            }
            if (photoDataSource == DataSource.genome) {
                return photoUpdater;
            }
            GooglePlacesData googlePlacesData2 = this.googlePlacesData;
            if (googlePlacesData2 != null && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(googlePlacesData2.getPhotoUrl(), DataSource.googlePlaces))) {
                return photoUpdater;
            }
            FacebookPlaceData facebookPlaceData = this.facebookPlaceData;
            if (facebookPlaceData != null && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(facebookPlaceData.getPhotoUrl(), DataSource.facebookPlaces))) {
                return photoUpdater;
            }
            HuaweiPlaceData huaweiPlaceData = this.huaweiPlaceData;
            if ((huaweiPlaceData == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(huaweiPlaceData.getPhotoUrl(), DataSource.huaweiPlaces))) && photoDataSource != DataSource.googlePlaces) {
                TwilioTrustedCommData twilioTrustedCommData = this.twilioTrustedCommData;
                if ((twilioTrustedCommData == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(twilioTrustedCommData.getLogoUrl(), DataSource.twilioTrustedComm).withPhotoBGColor(this.twilioTrustedCommData.getLogoBgColor()))) && photoDataSource != DataSource.twilioTrustedComm && !selectPhotoFromSocial(photoUpdater, true, photoDataSource)) {
                    GravatarData gravatarData = this.gravatarData;
                    if ((gravatarData == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(gravatarData.getPhotoUrl(), this.gravatarData.getThumbnailUrl()).withDataSource(DataSource.gravatar))) && photoDataSource != DataSource.gravatar) {
                        CHLocalData cHLocalData = this.chLocalData;
                        if ((cHLocalData == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(cHLocalData.getPhotoUrl(), DataSource.chLocal))) && photoDataSource != DataSource.chLocal) {
                            DeviceData deviceData2 = this.deviceData;
                            if ((deviceData2 == null || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(deviceData2.getPhotoUrl(), this.deviceData.getThumbnailUrl()).withDataSource(DataSource.device))) && photoDataSource != DataSource.device && !selectPhotoFromSocial(photoUpdater, false, photoDataSource)) {
                                IMExtractedPhotoData iMExtractedPhotoData = this.imExtractedPhotoData;
                                if (iMExtractedPhotoData != null && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(iMExtractedPhotoData.getUrl(), this.imExtractedPhotoData.getDataSource()))) {
                                    return photoUpdater;
                                }
                                if (photoDataSource == DataSource.whatsapp || photoDataSource == DataSource.viber || photoDataSource == DataSource.signal) {
                                    return photoUpdater;
                                }
                                if (!z2) {
                                    return null;
                                }
                                return photoUpdater;
                            }
                            return photoUpdater;
                        }
                        return photoUpdater;
                    }
                    return photoUpdater;
                }
                return photoUpdater;
            }
            return photoUpdater;
        }
        return photoUpdater;
    }

    private boolean selectPhotoFromSocial(PhotoUpdater photoUpdater, boolean z, DataSource dataSource) {
        if (selectPhotoFromSocial(photoUpdater, z, false, dataSource)) {
            return true;
        }
        return selectPhotoFromSocial(photoUpdater, z, true, dataSource);
    }

    private boolean selectPhotoFromSocial(PhotoUpdater photoUpdater, boolean z, boolean z2, DataSource dataSource) {
        JSONSocialNetworkID jSONSocialNetworkID;
        JSONSocialNetworkID jSONSocialNetworkID2;
        JSONSocialNetworkID jSONSocialNetworkID3;
        JSONSocialNetworkID jSONSocialNetworkID4;
        JSONSocialNetworkID jSONSocialNetworkID5;
        if (this.facebookData == null || (jSONSocialNetworkID5 = this.facebookId) == null || jSONSocialNetworkID5.isSure() != z || !photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.facebookData.getPhotoUrl(), this.facebookData.getThumbnailUrl()).withDataSource(DataSource.facebook).onlyThumbnail(z2))) {
            if (dataSource == DataSource.facebook) {
                return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
            } else if (this.twitterData != null && (jSONSocialNetworkID4 = this.twitterScreenName) != null && jSONSocialNetworkID4.isSure() == z && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.twitterData.getPhotoUrl(), this.twitterData.getThumbnailUrl()).withDataSource(DataSource.twitter).onlyThumbnail(z2))) {
                return true;
            } else {
                if (dataSource == DataSource.twitter) {
                    return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                }
                JSONSocialNetworkID jSONSocialNetworkID6 = this.instagramId;
                if (jSONSocialNetworkID6 != null && StringUtils.m26045b((CharSequence) jSONSocialNetworkID6.getId()) && this.instagramId.isSure() == z) {
                    String mo29099g = InstagramHelper.get().mo29099g(this.instagramId.getId());
                    if (StringUtils.m26045b((CharSequence) mo29099g)) {
                        photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(mo29099g, mo29099g).withDataSource(DataSource.instagram).onlyThumbnail(z2));
                        return true;
                    }
                }
                if (dataSource == DataSource.instagram) {
                    return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                } else if (this.vkData != null && (jSONSocialNetworkID3 = this.vkId) != null && jSONSocialNetworkID3.isSure() == z && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.vkData.getPhotoUrl(), this.vkData.getThumbnailUrl()).withDataSource(DataSource.vk).onlyThumbnail(z2))) {
                    return true;
                } else {
                    if (dataSource == DataSource.vk) {
                        return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                    } else if (this.pinterestData != null && (jSONSocialNetworkID2 = this.pinterestId) != null && jSONSocialNetworkID2.isSure() == z && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.pinterestData.getPhotoUrl(), this.pinterestData.getThumbnailUrl()).withDataSource(DataSource.pinterest).onlyThumbnail(z2))) {
                        return true;
                    } else {
                        if (dataSource == DataSource.google) {
                            return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                        } else if (dataSource == DataSource.pinterest) {
                            return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                        } else {
                            VenueFoursquareData venueFoursquareData = this.venueFoursquareData;
                            if (venueFoursquareData != null && z && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(venueFoursquareData.getPhotoUrl(), DataSource.venueFoursquare))) {
                                return true;
                            }
                            if (dataSource == DataSource.venueFoursquare) {
                                return z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                            } else if (this.foursquareData != null && (jSONSocialNetworkID = this.foursquareId) != null && jSONSocialNetworkID.isSure() == z && photoUpdater.update(new PhotoUpdater.PhotoUpdaterBuilder(this.foursquareData.getPhotoUrl(), this.foursquareData.getThumbnailUrl()).withDataSource(DataSource.foursquare).onlyThumbnail(z2))) {
                                return true;
                            } else {
                                return dataSource == DataSource.foursquare && z2 && photoUpdater.getCurrentUrls() != null && photoUpdater.getCurrentUrls().isNotEmpty();
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public static Pair<String, Long> splitPhoneOrIdKey(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return Pair.create(null, 0L);
        }
        String[] split = str.split("@");
        return split.length > 1 ? Pair.create(split[0], Long.valueOf(Long.parseLong(split[1]))) : Pair.create(null, Long.valueOf(Long.parseLong(str)));
    }

    private void updateAllFields() {
        updateAddresses();
        updateBirthDate();
        updateCallHistoryData();
        updateCategories();
        updateDescription();
        updateEmails();
        updateEvents();
        updateFullName();
        updateGmailData();
        updateGooglePlacesData();
        updateFacebookPlacesData();
        updateHuaweiPlacesData();
        updateGTalk();
        updateHasSuggestion();
        updateImAddresses();
        updateLastSMS();
        updateLatLng();
        updateMenuUrl();
        updateMutualFriends();
        updateNames();
        updateNegatives();
        updateNote();
        updateOpeningHours();
        updateOrganizations();
        updatePhones();
        updatePhoto();
        updatePriceRange();
        updateRating();
        updateReserveUrl();
        updateReviews();
        updateSkypeData();
        updateSpamScore();
        updateUploadedPhotoUrls();
        updateWebsites();
        updateWebVideos();
        updateRecords();
        updateYahooData();
        updateExcludeAnalytics();
    }

    private void updateFacebookId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.facebook).useFieldForced((Object) this.deviceData, DataSource.device, true).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.intentData, DataSource.intent).useField(this.genomeData, "facebookID", DataSource.genome).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.foursquareData, DataSource.foursquare).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.gravatarData, DataSource.gravatar).useField(this.websitesSocialIDsData, DataSource.websites).useField(this.vkData, DataSource.vk).useField(this.facebookSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private <T> UpdateFieldBuilder<T> updateField(ContactField contactField) {
        return new UpdateFieldBuilder<>(this, contactField);
    }

    private void updateFoursquareId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.foursquare).useFieldForced((Object) this.deviceData, DataSource.device, true).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.genomeData, "foursquareID", DataSource.genome).useField(this.gravatarData, DataSource.gravatar).useField(this.foursquareSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private boolean updateId() {
        boolean z;
        String generateId = generateId(this.phone, this.deviceId);
        if (!StringUtils.m26042b(generateId, this.f26739id)) {
            this.f26739id = generateId;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    private void updateInstagramId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.instagram).useFieldForced((Object) this.deviceData, DataSource.device, true).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.genomeData, "instagramID", DataSource.genome).useField(this.gravatarData, DataSource.gravatar).useField(this.instagramSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private UpdateNameBuilder updateNamefield(ContactField contactField) {
        return new UpdateNameBuilder(this, contactField, this.photoDataSourceToUpdateName);
    }

    private UpdateNamesBuilder updateNamesField(ContactField contactField, boolean z) {
        return new UpdateNamesBuilder(this, contactField, new TreeMap(), z);
    }

    private void updatePhotoFromDbIfNeeded() {
        Object m27423a;
        if (this.chosenContactPhoto == null && !this.isChosenPhotoUrlFoundInDb) {
            this.chosenContactPhoto = ChosenContactPhotoManager.m28956a(this.deviceId, this.phone);
            this.isChosenPhotoUrlFoundInDb = true;
        }
        ChosenContactPhoto chosenContactPhoto = this.chosenContactPhoto;
        if (chosenContactPhoto == null || chosenContactPhoto.getDataSource() == null || this.chosenContactPhoto.getDataSource().contactDataFieldName == null || (m27423a = ReflectionUtils.m27423a(this, this.chosenContactPhoto.getDataSource().contactDataFieldName)) == null) {
            return;
        }
        String str = (String) ReflectionUtils.m27423a(m27423a, "photoUrl");
        if (!StringUtils.m26045b((CharSequence) str) || StringUtils.m26042b(str, this.chosenContactPhoto.getUrl())) {
            return;
        }
        this.chosenContactPhoto.setUrl(str);
        ChosenContactPhotoManager.m28955a(this.deviceId, this.phone, this.chosenContactPhoto.getDataSource(), this.chosenContactPhoto.getUrl());
    }

    private void updatePinterestId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.pinterest).useFieldForced((Object) this.deviceData, DataSource.device, true).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.genomeData, "pinterestID", DataSource.genome).useField(this.gravatarData, DataSource.gravatar).useField(this.pinterestSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private UpdateSetBuilder updateSet(ContactField contactField) {
        return new UpdateSetBuilder(this, contactField, new LinkedHashSet());
    }

    private UpdateSetBuilder updateSet(ContactField contactField, Set set) {
        return new UpdateSetBuilder(this, contactField, set);
    }

    private void updateSetAndMapFields() {
        updateAddresses();
        updateCategories();
        updateEvents();
        updateImAddresses();
        updateOrganizations();
        updateReviews();
        updateWebsites();
        updateWebVideos();
        updateEmails();
        updateUploadedPhotoUrls();
    }

    private UpdateSocialIdBuilder updateSocialId(DataSource dataSource) {
        return new UpdateSocialIdBuilder(this, dataSource.socialIdField, dataSource.dbCode);
    }

    private void updateTwitterScreenName(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.twitter).useFieldForced((Object) this.deviceData, DataSource.device, true).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.genomeData, DataSource.genome).useField(this.foursquareData, DataSource.foursquare).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.vkData, DataSource.vk).useField(this.gravatarData, DataSource.gravatar).useField(this.websitesSocialIDsData, DataSource.websites).useField(this.twitterSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private void updateVKId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.vk).useField(this.userProfileData, DataSource.userProfile).useFieldForced(this.deviceData, DataSource.device, true).useField(this.genomeData, "vkID", DataSource.genome).useField(this.gravatarData, DataSource.gravatar).useField(this.vkSearchResults, "id", DataSource.socialSearch).useField(this.suggestionData, DataSource.suggestion).execute(z);
        }
    }

    private void updateVenueFoursquareId(boolean z) {
        synchronized (this) {
            updateSocialId(DataSource.venueFoursquare).useField((Object) this.genomeData, "venueFoursquareID", DataSource.genome).useField(getVenueFoursquareIDFromSearchData(), DataSource.venueFoursquare).useField(this.chLocalData, "venueFoursquareID", DataSource.chLocal).execute(z);
        }
    }

    public void addListener(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        this.listenerRegistry.mo28982a(contactDataChangeListener, set);
    }

    public void assertDeviceDataExist() {
        if (this.deviceData == null) {
            synchronized (this) {
                if (this.deviceData == null) {
                    this.deviceData = new DeviceData();
                }
            }
        }
    }

    public void assertIntentDataExists() {
        if (this.intentData == null) {
            synchronized (this) {
                if (this.intentData == null) {
                    this.intentData = new IntentData();
                }
            }
        }
    }

    public void assertUserProfileDataExist() {
        if (this.userProfileData == null) {
            synchronized (this) {
                if (this.userProfileData == null) {
                    this.userProfileData = new UserProfileData();
                }
            }
        }
    }

    public void clearDeviceData() {
        DeviceData deviceData = this.deviceData;
        if (deviceData != null) {
            this.deviceData = deviceData.getNewDeviceDataForNonContact();
        }
        if (CollectionUtils.m26067b(this.dataSources)) {
            for (Map.Entry<ContactField, DataSource> entry : this.dataSources.entrySet()) {
                if (entry.getValue() == DataSource.device) {
                    try {
                        Object m27423a = ReflectionUtils.m27423a(this, entry.getKey().name());
                        if (m27423a instanceof Collection) {
                            ((Collection) m27423a).clear();
                        } else if (m27423a instanceof Map) {
                            ((Map) m27423a).clear();
                        } else {
                            ReflectionUtils.m27422a(this, entry.getKey().name(), (Object) null);
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    public void clearDeviceId() {
        setDeviceId(0L);
    }

    public void fireChange(ContactField contactField) {
        fireChange(EnumSet.of(contactField));
    }

    public void fireChange(Set<ContactField> set) {
        CLog.m27610a(FieldListenerRegistry.class, "fireChange id=%s changedFields=%s", this.f26739id, set);
        this.pastChangedFields.addAll(set);
        this.listenerRegistry.mo28981a(set);
    }

    public JSONAddress getAddress() {
        JSONAddress jSONAddress;
        if (this.address == null) {
            JSONAddress jSONAddress2 = null;
            Iterator<JSONAddress> it2 = getAddresses().iterator();
            while (true) {
                jSONAddress = jSONAddress2;
                if (!it2.hasNext()) {
                    break;
                }
                jSONAddress = it2.next();
                if (jSONAddress2 != null) {
                    jSONAddress = JSONAddress.compareAddresses(jSONAddress2, jSONAddress);
                    jSONAddress2 = jSONAddress;
                    if (jSONAddress.isFromDevice()) {
                        break;
                    }
                } else if (StringUtils.m26045b((CharSequence) jSONAddress.getFullAddress())) {
                    if (jSONAddress.isFromDevice()) {
                        break;
                    }
                    jSONAddress2 = jSONAddress;
                } else {
                    continue;
                }
            }
            this.address = jSONAddress;
        }
        return this.address;
    }

    public Collection<JSONAddress> getAddresses() {
        return this.addresses;
    }

    public ArrayList<Pair<String, CallHistoryData>> getAllCallHistoryData() {
        ArrayList<Pair<String, CallHistoryData>> arrayList = new ArrayList<>();
        for (Map.Entry<String, List<CallHistoryData>> entry : this.callHistoryData.entrySet()) {
            for (CallHistoryData callHistoryData : entry.getValue()) {
                arrayList.add(new Pair<>(entry.getKey(), callHistoryData));
            }
        }
        Collections.sort(arrayList, new Comparator<Pair<String, CallHistoryData>>() { // from class: com.callapp.contacts.model.contact.ContactData.6
            public int compare(Pair<String, CallHistoryData> pair, Pair<String, CallHistoryData> pair2) {
                return Long.compare(((CallHistoryData) pair2.second).getLastCallTimeStamp().getTime(), ((CallHistoryData) pair.second).getLastCallTimeStamp().getTime());
            }
        });
        return arrayList;
    }

    public List<Pair<String, Collection<String>>> getAllWeekOpeningHours() {
        return DateUtils.m27121b(this.openingHours);
    }

    public AuPersonLookupData getAuPersonLookupData() {
        return this.auPersonLookupData;
    }

    public double getAvgRating() {
        return this.avgRating;
    }

    public JSONDate getBirthday() {
        return this.birthday;
    }

    public BlockedNumberData getBlockedNumberData() {
        return this.blockedNumberData;
    }

    public String getCacheKey(Class cls) {
        return buildCacheKey(this.f26739id, cls);
    }

    public String getCacheKey(Object obj) {
        return buildCacheKey(this.f26739id, obj);
    }

    public String getCallReason() {
        return this.callReason;
    }

    public Pair<String, DataSource> getCandidateContactPhoto() {
        synchronized (getLock(ContactData.class)) {
            PhotoUpdater loadPhoto = loadPhoto(true);
            if (loadPhoto == null || loadPhoto.getCurrentUrls() == null) {
                return null;
            }
            return new Pair<>(loadPhoto.getCurrentUrls().getPhotoUrl(), loadPhoto.getCurrentUrls().getDataSource());
        }
    }

    public Collection<JSONCategory> getCategories() {
        return this.categories;
    }

    public CHLocalData getChLocalData() {
        return this.chLocalData;
    }

    public String getCover() {
        return this.cover;
    }

    public DataSource getCurrentPhotoDataSource() {
        return getDataSource(ContactField.photoUrl);
    }

    public DataSource getDataSource(ContactField contactField) {
        if (contactField == null) {
            return DataSource.unknown;
        }
        DataSource dataSource = this.dataSources.get(contactField);
        DataSource dataSource2 = dataSource;
        if (dataSource == null) {
            dataSource2 = DataSource.unknown;
        }
        return dataSource2;
    }

    public String getDescription() {
        return this.description;
    }

    public DeviceData getDeviceData() {
        return this.deviceData;
    }

    public long getDeviceId() {
        return this.deviceId;
    }

    public Collection<JSONEmail> getEmails() {
        return this.emails.keySet();
    }

    public Map<JSONEmail, DataSource> getEmailsMap() {
        return new HashMap(this.emails);
    }

    public Collection<JSONEvent> getEvents() {
        return this.events;
    }

    public FacebookData getFacebookData() {
        return this.facebookData;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public FacebookPlaceData getFacebookPlaceData() {
        return this.facebookPlaceData;
    }

    public SocialSearchResults getFacebookSearchResults() {
        return this.facebookSearchResults;
    }

    public FastCacheData getFastCacheData() {
        return this.fastCacheData;
    }

    public String getFirstName() {
        String str;
        String str2 = this.firstName;
        if (str2 != null) {
            return str2;
        }
        String fullName = getFullName();
        if (StringUtils.m26045b((CharSequence) fullName)) {
            String trim = fullName.trim();
            int indexOf = trim.indexOf(org.apache.commons.lang3.StringUtils.SPACE);
            str = trim;
            if (indexOf >= 0) {
                str = trim.substring(0, indexOf);
            }
        } else {
            str = "";
        }
        this.firstName = str;
        return str;
    }

    public FoursquareData getFoursquareData() {
        return this.foursquareData;
    }

    public JSONSocialNetworkID getFoursquareId() {
        return this.foursquareId;
    }

    public SocialSearchResults getFoursquareSearchResults() {
        return this.foursquareSearchResults;
    }

    public String getFullName() {
        return this.fullName;
    }

    public JSONContact getGenomeData() {
        return this.genomeData;
    }

    public GmailEmailData getGmailEmailData() {
        return this.gmailEmailData;
    }

    public AddressGeoCodeLatLng getGoogleMapsLatLng() {
        return this.googleMapsLatLng;
    }

    public GooglePlacesData getGooglePlacesData() {
        return this.googlePlacesData;
    }

    public long getGooglePlusHangoutDataId() {
        DeviceData deviceData = getDeviceData();
        if (deviceData != null) {
            return deviceData.getGoogleHangoutDataId();
        }
        return 0L;
    }

    public SocialSearchResults getGooglePlusSearchResults() {
        return this.googlePlusSearchResults;
    }

    public GravatarData getGravatarData() {
        return this.gravatarData;
    }

    public Set<Integer> getHasSuggestions() {
        return this.hasSuggestions;
    }

    public HuaweiPlaceData getHuaweiPlaceData() {
        return this.huaweiPlaceData;
    }

    public String getId() {
        return this.f26739id;
    }

    public Collection<JSONIMaddress> getImAddresses() {
        return this.imAddresses;
    }

    public Collection<JSONDataAndSource<JSONIMaddress>> getImAddressesWithSource() {
        HashSet hashSet = new HashSet();
        new UpdateValueWithSourceBuilder(this, ContactField.imAddresses, hashSet).useField(this.deviceData, DataSource.device).useField(this.deviceData, "imContacts", DataSource.device).useField(this.genomeData, "iMAddresses", DataSource.genome).useField(this.gravatarData, DataSource.gravatar);
        return hashSet;
    }

    public InstagramData getInstagramData() {
        return this.instagramData;
    }

    public JSONSocialNetworkID getInstagramId() {
        return this.instagramId;
    }

    public SocialSearchResults getInstagramSearchResults() {
        return this.instagramSearchResults;
    }

    public IntentData getIntentData() {
        return this.intentData;
    }

    public CallHistoryData getLastCallHistoryData(Phone phone) {
        List<CallHistoryData> list = this.callHistoryData.get(phone.m26101a());
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    public SerializablePair<Date, SerializablePair<String, String>> getLastSms() {
        DeviceData deviceData = this.deviceData;
        if (deviceData == null) {
            return null;
        }
        return deviceData.getLastSms();
    }

    public double getLat() {
        return this.lat;
    }

    public FieldListenerRegistry getListenerRegistry() {
        return this.listenerRegistry;
    }

    public double getLng() {
        return this.lng;
    }

    public Set<ContactField> getLoadedFields() {
        return this.loadedFields;
    }

    public Object getLock(Class cls) {
        Object obj = this.locks.get(cls);
        Object obj2 = obj;
        if (obj == null) {
            synchronized (this.locks) {
                Object obj3 = this.locks.get(cls);
                obj2 = obj3;
                if (obj3 == null) {
                    obj2 = new Object();
                    this.locks.put(cls, obj2);
                }
            }
        }
        return obj2;
    }

    public String getMenuUrl() {
        return this.menuUrl;
    }

    public Collection<PersonData> getMutualFriends() {
        return this.mutualFriends;
    }

    public String getNameOrNumber() {
        String fullName = getFullName();
        String str = fullName;
        if (StringUtils.m26059a((CharSequence) fullName)) {
            if (!UserProfileManager.get().m28457b(getPhone())) {
                return getPhone().m26087e();
            }
            str = Activities.getString(2131887283);
        }
        return str;
    }

    public Collection<String> getNames() {
        return Ordering.m31914a(this.names);
    }

    public Collection<JSONDataAndSource<String>> getNamesWithSource() {
        HashSet hashSet = new HashSet();
        new UpdateValueWithSourceBuilder(this, ContactField.names, hashSet).useField(this.deviceData, DataSource.device).useField(this.deviceData, ContactField.fullName, DataSource.device).useField(this.genomeData, "name", DataSource.genome).useField(this.vkData, ContactField.fullName, DataSource.vk).useField(this.googlePlacesData, ContactField.fullName, DataSource.googlePlaces).useField(this.facebookPlaceData, ContactField.fullName, DataSource.facebookPlaces).useField(this.huaweiPlaceData, ContactField.fullName, DataSource.huaweiPlaces).useField(this.facebookData, ContactField.fullName, DataSource.facebook).useField(this.twitterData, ContactField.fullName, DataSource.twitter).useField(this.foursquareData, ContactField.fullName, DataSource.foursquare).useField(this.instagramData, ContactField.fullName, DataSource.instagram).useField(this.pinterestData, ContactField.fullName, DataSource.pinterest).useField(this.vkData, ContactField.fullName, DataSource.vk);
        return hashSet;
    }

    public Set<String> getNegatives(int i) {
        Set<String> set = this.negativesMap.get(i);
        Set<String> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }

    public Set<String> getNegatives(DataSource dataSource) {
        return getNegatives(dataSource.dbCode);
    }

    public SparseArray<Set<String>> getNegativesMap() {
        return this.negativesMap;
    }

    public String[] getNote() {
        DeviceData deviceData = this.deviceData;
        if (deviceData == null) {
            return null;
        }
        return deviceData.getNote();
    }

    public JSONAddress getNumberGeocodingDescription() {
        return this.numberGeocodingDescription;
    }

    public Collection<JSONOrgData> getOrganizations() {
        return this.organizations;
    }

    public Collection<JSONDataAndSource<JSONOrgData>> getOrganizationsWithSource() {
        HashSet hashSet = new HashSet();
        new UpdateValueWithSourceBuilder(this, ContactField.organizations, hashSet).useField(this.deviceData, DataSource.device).useField(this.genomeData, "orgData", DataSource.genome).useField(this.facebookData, DataSource.facebook);
        return hashSet;
    }

    public Set<ContactField> getPastChangedFields() {
        return this.pastChangedFields;
    }

    public Phone getPhone() {
        return this.phone;
    }

    public ExtractedInfo getPhoneOrigin() {
        return this.phoneOrigin;
    }

    public Collection<Phone> getPhones() {
        Phone phone = this.phone;
        Collection<Phone> collection = this.phones;
        return (collection == null || collection.isEmpty()) ? phone.isEmpty() ? Collections.emptyList() : Collections.singletonList(phone) : collection;
    }

    public List<Phone> getPhonesList() {
        Collection<Phone> collection = this.phones;
        if (collection == null || collection.isEmpty()) {
            return Lists.m31916a(this.phone);
        }
        ArrayList arrayList = new ArrayList(this.phones);
        int indexOf = arrayList.indexOf(this.phone);
        if (indexOf > 0) {
            arrayList.set(0, (Phone) arrayList.get(indexOf));
            arrayList.set(indexOf, (Phone) arrayList.get(0));
        }
        return arrayList;
    }

    public Integer getPhotoBGColor() {
        return this.photoBGColor;
    }

    public DataSource getPhotoDataSource() {
        synchronized (getLock(ContactData.class)) {
            PhotoUrls photoUrls = this.photoUrls;
            if (photoUrls != null) {
                return photoUrls.getDataSource();
            }
            return null;
        }
    }

    public String getPhotoUrl() {
        synchronized (getLock(ContactData.class)) {
            PhotoUrls photoUrls = this.photoUrls;
            if (photoUrls != null) {
                return StringUtils.m26045b((CharSequence) photoUrls.getPhotoUrl()) ? this.photoUrls.getPhotoUrl() : this.photoUrls.getThumbnail();
            }
            return null;
        }
    }

    public PhotoUrls getPhotoUrls() {
        return this.photoUrls;
    }

    public PinterestData getPinterestData() {
        return this.pinterestData;
    }

    public JSONSocialNetworkID getPinterestId() {
        return this.pinterestId;
    }

    public SocialSearchResults getPinterestSearchResults() {
        return this.pinterestSearchResults;
    }

    public int getPriceRange() {
        return this.priceRange;
    }

    public List<CallRecorder> getRecords() {
        return this.records;
    }

    public String getReserveUrl() {
        return this.reserveUrl;
    }

    public Collection<JSONReview> getReviews() {
        return this.reviews;
    }

    public Collection<SkypeLoader.SkypeChatData> getSkypeData() {
        return this.skypeData;
    }

    public JSONIMaddress getSpecificIMAccount(int i) {
        for (JSONIMaddress jSONIMaddress : getImAddresses()) {
            if (jSONIMaddress.getProtocol() == i) {
                return jSONIMaddress;
            }
        }
        return null;
    }

    public SuggestionData getSuggestionData() {
        return this.suggestionData;
    }

    public SparseArray<String> getSuggestionMap() {
        return this.suggestionMap;
    }

    public String getThumbnailUrl() {
        synchronized (getLock(ContactData.class)) {
            PhotoUrls photoUrls = this.photoUrls;
            if (photoUrls != null) {
                return StringUtils.m26045b((CharSequence) photoUrls.getThumbnail()) ? this.photoUrls.getThumbnail() : this.photoUrls.getPhotoUrl();
            }
            return null;
        }
    }

    public String getTodayOpeningHours() {
        return DateUtils.m27132a(this.openingHours);
    }

    public TwilioTrustedCommData getTwilioTrustedCommData() {
        return this.twilioTrustedCommData;
    }

    public TwitterData getTwitterData() {
        return this.twitterData;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public SocialSearchResults getTwitterSearchResults() {
        return this.twitterSearchResults;
    }

    public ArrayList<Map.Entry<UploadedPhoto, DataSource>> getUploadedPhotosUrl() {
        return new ArrayList<>(this.uploadedPhotosUrl.entrySet());
    }

    public UserCorrectedData getUserCorrectedData() {
        return this.userCorrectedData;
    }

    public String getUserDefinition() {
        return this.userDefinition;
    }

    public UserMediaData getUserMediaData() {
        return this.userMediaData;
    }

    public UserProfileData getUserProfileData() {
        assertUserProfileDataExist();
        return this.userProfileData;
    }

    public UserSpamData getUserSpamData() {
        return this.userSpamData;
    }

    public VKData getVKData() {
        return this.vkData;
    }

    public JSONSocialNetworkID getVKId() {
        return this.vkId;
    }

    public SocialSearchResults getVKSearchResults() {
        return this.vkSearchResults;
    }

    public VenueFoursquareData getVenueFoursquareData() {
        return this.venueFoursquareData;
    }

    public VenueFoursquareIdFromSearchData getVenueFoursquareIDFromSearchData() {
        return this.venueFoursquareIDFromSearchData;
    }

    public JSONSocialNetworkID getVenueFoursquareId() {
        return this.venueFoursquareId;
    }

    public Collection<JSONEmail> getVisibleEmails() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this.emails) {
            for (Map.Entry<JSONEmail, DataSource> entry : this.emails.entrySet()) {
                JSONEmail key = entry.getKey();
                if (entry.getValue() == DataSource.genome && !key.isCallappUser()) {
                    z = false;
                    if (z && !arrayList.contains(key)) {
                        arrayList.add(key);
                    }
                }
                z = true;
                if (z) {
                    arrayList.add(key);
                }
            }
        }
        return arrayList;
    }

    public Collection<VideoData> getWebVideos() {
        return this.webVideos;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public WebsitesSocialIDsData getWebsitesSocialIDsData() {
        return this.websitesSocialIDsData;
    }

    public Collection<JSONDataAndSource<JSONWebsite>> getWebsitesWithSource() {
        HashSet hashSet = new HashSet();
        new UpdateValueWithSourceBuilder(this, ContactField.websites, hashSet).useField(this.deviceData, DataSource.device).useField(this.genomeData, DataSource.genome).useField(this.facebookData, DataSource.facebook).useField(this.instagramData, "website", DataSource.instagram).useField(this.gravatarData, DataSource.gravatar).useField(this.googlePlacesData, "website", DataSource.googlePlaces).useField(this.facebookPlaceData, "website", DataSource.facebookPlaces).useField(this.huaweiPlaceData, "website", DataSource.huaweiPlaces).useField(this.chLocalData, DataSource.chLocal).useField(this.venueFoursquareData, "website", DataSource.venueFoursquare).useField(this.userProfileData, DataSource.userProfile);
        return hashSet;
    }

    public boolean getWhatsAppDataExtraction() {
        return this.whatsAppDataExtraction;
    }

    public WhitePagesData getWhitePagesData() {
        return this.whitePagesData;
    }

    public Collection<ChatData> getYahooData() {
        return this.yahooData;
    }

    public Collection<VideoData> getYouTubeVideos() {
        return this.youTubeVideos;
    }

    public boolean hasAlloAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_ALLO_PROTOCOL_ID);
    }

    public boolean hasAnyPhotoUrl() {
        return StringUtils.m26045b((CharSequence) getPhotoUrl());
    }

    public boolean hasDuoAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_DUO_PROTOCOL_ID);
    }

    public boolean hasGooglePlusHangoutAccount() {
        return getGooglePlusHangoutDataId() != 0;
    }

    public boolean hasMessengerAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_MESSENGER_PROTOCOL_ID);
    }

    public boolean hasPhone(Phone phone) {
        return getPhones().contains(phone);
    }

    public boolean hasSignalAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_SIGNAL_PROTOCOL_ID);
    }

    public boolean hasSkypeAccount() {
        return hasSpecificIMAccount(3);
    }

    public boolean hasTelegramAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_TELEGRAM_PROTOCOL_ID);
    }

    public boolean hasViberAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_VIBER_PROTOCOL_ID);
    }

    public boolean hasVisibleEmails() {
        JSONEmail key;
        synchronized (this.emails) {
            Iterator<Map.Entry<JSONEmail, DataSource>> it2 = this.emails.entrySet().iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
                Map.Entry<JSONEmail, DataSource> next = it2.next();
                key = next.getKey();
                if (next.getValue() != DataSource.genome) {
                    break;
                }
            } while (!key.isCallappUser());
            return true;
        }
    }

    public boolean hasWeChatAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_WECHAT_PROTOCOL_ID);
    }

    public boolean hasWhatsappAccount() {
        return hasSpecificIMAccount(JSONIMaddress.IM_WHATSAPP_PROTOCOL_ID);
    }

    public boolean isActiveCallAppUserDuringPeriod() {
        JSONContact jSONContact = this.genomeData;
        return jSONContact != null && jSONContact.isActiveDuringPeriod();
    }

    public boolean isBusiness() {
        JSONContact jSONContact = this.genomeData;
        if (jSONContact == null || !jSONContact.isBusiness()) {
            GooglePlacesData googlePlacesData = this.googlePlacesData;
            if (googlePlacesData != null && StringUtils.m26045b((CharSequence) googlePlacesData.getUrl())) {
                return true;
            }
            FacebookPlaceData facebookPlaceData = this.facebookPlaceData;
            if (facebookPlaceData != null && StringUtils.m26045b((CharSequence) facebookPlaceData.getUrl())) {
                return true;
            }
            HuaweiPlaceData huaweiPlaceData = this.huaweiPlaceData;
            if (huaweiPlaceData != null && StringUtils.m26045b((CharSequence) huaweiPlaceData.getUrl())) {
                return true;
            }
            CHLocalData cHLocalData = this.chLocalData;
            if (cHLocalData != null && cHLocalData.isBusiness()) {
                return true;
            }
            UserCorrectedData userCorrectedData = this.userCorrectedData;
            return userCorrectedData != null && userCorrectedData.isBusiness();
        }
        return true;
    }

    public boolean isCallHistoryListEquals(Map<String, List<CallHistoryData>> map) {
        return Objects.m31915a(this.callHistoryData, map);
    }

    public boolean isContactInDevice() {
        return this.deviceId != 0;
    }

    public boolean isEmailFromDevice(JSONEmail jSONEmail) {
        if (getDeviceData() != null) {
            Collection<JSONEmail> emails = getDeviceData().getEmails();
            if (!CollectionUtils.m26068b(emails)) {
                return false;
            }
            return emails.contains(jSONEmail);
        }
        return false;
    }

    public boolean isForceNoSocialId(DataSource dataSource) {
        return getNegatives(dataSource).contains("DONTHAVE");
    }

    public Boolean isFriend(DataSource dataSource) {
        SocialData socialData;
        if (dataSource.socialDataField == null || (socialData = (SocialData) ReflectionUtils.m27423a(this, dataSource.socialDataField.name())) == null) {
            return null;
        }
        return socialData.isFriend();
    }

    public boolean isInSync() {
        return this.isInSync;
    }

    public boolean isIncognito() {
        return this.isIncognito;
    }

    public boolean isInstalledApp() {
        JSONContact jSONContact = this.genomeData;
        return jSONContact != null && jSONContact.isInstalledApp();
    }

    public boolean isNameSure(String str) {
        SureCounter sureCounter = this.names.get(str);
        return (sureCounter == null ? 0 : sureCounter.getSureCount()) > 0;
    }

    public boolean isOnlySure() {
        return this.onlySure;
    }

    public boolean isRecognized() {
        return this.isRecognized;
    }

    public boolean isSpamReported() {
        return this.isSpamReported;
    }

    public boolean isSpammer() {
        return this.spamScore > 0;
    }

    public boolean isSure(ContactField contactField) {
        return isSure(getDataSource(contactField));
    }

    public boolean isSure(ContactField contactField, boolean z) {
        return isSure(getDataSource(contactField), z);
    }

    public boolean isSure(DataSource dataSource) {
        return isSure(dataSource, false);
    }

    public boolean isSure(DataSource dataSource, boolean z) {
        if (dataSource == null || dataSource.socialIdField == null) {
            return true;
        }
        JSONSocialNetworkID jSONSocialNetworkID = (JSONSocialNetworkID) ReflectionUtils.m27423a(this, dataSource.socialIdField.name());
        return jSONSocialNetworkID == null ? z : jSONSocialNetworkID.isSure();
    }

    public boolean isUnknownNumber() {
        if (this.isUnknwonNumber == null) {
            this.isUnknwonNumber = Boolean.valueOf(CallLogUtils.m27556b(getPhone().getRawNumber()));
        }
        return this.isUnknwonNumber.booleanValue();
    }

    public boolean isUnsearchableNumber() {
        if (this.isUnsearchableNumber == null) {
            this.isUnsearchableNumber = Boolean.TRUE;
            if (!StringUtils.m26030e(getPhone().getRawNumber(), "*") && !isUnknownNumber() && getPhone().isValidForSearch()) {
                this.isUnsearchableNumber = Boolean.FALSE;
            }
        }
        return this.isUnsearchableNumber.booleanValue();
    }

    public boolean isVoiceMail() {
        if (this.isVoiceMail == null) {
            this.isVoiceMail = Boolean.valueOf(PhoneManager.get().m28240a(getPhone()));
        }
        return this.isVoiceMail.booleanValue();
    }

    public void removeCurrentPhotoUrl(String str) {
        switch (C755311.$SwitchMap$com$callapp$contacts$model$contact$DataSource[getCurrentPhotoDataSource().ordinal()]) {
            case 1:
                JSONContact jSONContact = this.genomeData;
                if (jSONContact != null && StringUtils.m26042b(str, jSONContact.getPhotoUrl())) {
                    this.genomeData.setPhotoUrl(null);
                    break;
                }
                break;
            case 2:
                GravatarData gravatarData = this.gravatarData;
                if (gravatarData != null && (StringUtils.m26042b(str, gravatarData.getPhotoUrl()) || StringUtils.m26042b(str, this.gravatarData.getThumbnailUrl()))) {
                    this.gravatarData.setPhotoUrl(null);
                    this.gravatarData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 3:
                GooglePlacesData googlePlacesData = this.googlePlacesData;
                if (googlePlacesData != null && StringUtils.m26042b(str, googlePlacesData.getPhotoUrl())) {
                    this.googlePlacesData.setPhotoUrl(null);
                    break;
                }
                break;
            case 4:
                FacebookPlaceData facebookPlaceData = this.facebookPlaceData;
                if (facebookPlaceData != null && StringUtils.m26042b(str, facebookPlaceData.getPhotoUrl())) {
                    this.facebookPlaceData.setPhotoUrl(null);
                    break;
                }
                break;
            case 5:
                HuaweiPlaceData huaweiPlaceData = this.huaweiPlaceData;
                if (huaweiPlaceData != null && StringUtils.m26042b(str, huaweiPlaceData.getPhotoUrl())) {
                    this.huaweiPlaceData.setPhotoUrl(null);
                    break;
                }
                break;
            case 6:
                FacebookData facebookData = this.facebookData;
                if (facebookData != null && (StringUtils.m26042b(str, facebookData.getPhotoUrl()) || StringUtils.m26042b(str, this.facebookData.getThumbnailUrl()))) {
                    this.facebookData.setPhotoUrl(null);
                    this.facebookData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 7:
                TwitterData twitterData = this.twitterData;
                if (twitterData != null && (StringUtils.m26042b(str, twitterData.getPhotoUrl()) || StringUtils.m26042b(str, this.twitterData.getThumbnailUrl()))) {
                    this.twitterData.setPhotoUrl(null);
                    this.twitterData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 8:
                InstagramData instagramData = this.instagramData;
                if (instagramData != null && (StringUtils.m26042b(str, instagramData.getPhotoUrl()) || StringUtils.m26042b(str, this.instagramData.getThumbnailUrl()))) {
                    this.instagramData.setPhotoUrl(null);
                    this.instagramData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 9:
                PinterestData pinterestData = this.pinterestData;
                if (pinterestData != null && (StringUtils.m26042b(str, pinterestData.getPhotoUrl()) || StringUtils.m26042b(str, this.pinterestData.getThumbnailUrl()))) {
                    this.pinterestData.setPhotoUrl(null);
                    this.pinterestData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 10:
                VKData vKData = this.vkData;
                if (vKData != null && (StringUtils.m26042b(str, vKData.getPhotoUrl()) || StringUtils.m26042b(str, this.vkData.getThumbnailUrl()))) {
                    this.vkData.setPhotoUrl(null);
                    this.vkData.setThumbnailUrl(null);
                    break;
                }
                break;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                IMExtractedPhotoData iMExtractedPhotoData = this.imExtractedPhotoData;
                if (iMExtractedPhotoData != null && StringUtils.m26042b(str, iMExtractedPhotoData.getUrl())) {
                    this.imExtractedPhotoData.setUrl(null);
                    IMExtractedPhotoDataManager.m28928c(getDeviceId(), getPhone());
                    break;
                }
                break;
        }
        resetChosenPicture();
        ChosenContactPhotoManager.m28954b(this.deviceId, this.phone);
        resetPhoto();
    }

    public void removeEmail(JSONEmail jSONEmail) {
        synchronized (this.emails) {
            this.emails.remove(jSONEmail);
        }
    }

    public void removeListener(ContactDataChangeListener contactDataChangeListener) {
        this.listenerRegistry.mo28983a(contactDataChangeListener);
    }

    public void removeWebsite(JSONWebsite jSONWebsite) {
        synchronized (this.websites) {
            this.websites.remove(jSONWebsite);
        }
    }

    public void resetChosenPicture() {
        synchronized (getLock(ContactData.class)) {
            this.chosenContactPhoto = null;
            this.isChosenPhotoUrlFoundInDb = false;
            resetPhotoWithoutFiringAndUpdating();
        }
    }

    public void resetDevicePhotoIfNeeded() {
        if (getDataSource(ContactField.photoUrl) == DataSource.device) {
            DeviceData deviceData = this.deviceData;
            if (deviceData != null && (StringUtils.m26042b(deviceData.getPhotoUrl(), this.photoUrls.getPhotoUrl()) || StringUtils.m26042b(this.deviceData.getPhotoUrl(), this.photoUrls.getThumbnail()))) {
                return;
            }
            setDataSource(ContactField.photoUrl, null);
            FastCacheData fastCacheData = this.fastCacheData;
            if (fastCacheData != null && fastCacheData.getPhotoDataSource() == DataSource.device) {
                FastCacheDataManager.m28942b(this);
            }
            fireChange(EnumSet.of(ContactField.photoUrl));
        }
    }

    public void resetOnlyNotSureNetworks() {
        ArrayList arrayList = new ArrayList();
        for (Integer num : ApiConstants.f19116c) {
            int intValue = num.intValue();
            JSONSocialNetworkID socialNetworkID = ContactDataUtils.getSocialNetworkID(this, intValue);
            if (socialNetworkID != null && !socialNetworkID.isSure()) {
                arrayList.add(Singletons.get().getRemoteAccountHelper(intValue).getDataSource());
            }
        }
        resetSocialNetworks(arrayList);
    }

    public void resetPhoto() {
        synchronized (getLock(ContactData.class)) {
            resetPhotoWithoutFiringAndUpdating();
            fireChange(EnumSet.of(ContactField.photoUrl));
            updatePhoto();
        }
    }

    public void resetPhotoWithoutFiringAndUpdating() {
        synchronized (getLock(ContactData.class)) {
            this.photoUrls = null;
            setDataSource(ContactField.photoUrl, null);
            FastCacheDataManager.m28942b(this);
        }
    }

    public void resetSocialNetworks(List<DataSource> list) {
        boolean z;
        if (CollectionUtils.m26076a(list)) {
            return;
        }
        if (list.contains(DataSource.facebook)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.facebook.socialSearchField));
            CacheManager.get().m28390a(FacebookData.class, getCacheKey(DataSource.facebook.socialDataField));
            removeMutualFriends(1);
            resetSocialImages(DataSource.facebook);
            this.facebookSearchResults = null;
            this.facebookData = null;
            getDeviceData().setFacebookId(null);
            z = this.dataSources.containsValue(DataSource.facebook);
        } else {
            z = false;
        }
        boolean z2 = z;
        if (list.contains(DataSource.twitter)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.twitter.socialSearchField));
            CacheManager.get().m28390a(TwitterData.class, getCacheKey(DataSource.twitter.socialDataField));
            removeMutualFriends(4);
            resetSocialImages(DataSource.twitter);
            this.twitterSearchResults = null;
            this.twitterData = null;
            getDeviceData().setTwitterScreenName(null);
            z2 = z | this.dataSources.containsValue(DataSource.twitter);
        }
        boolean z3 = z2;
        if (list.contains(DataSource.foursquare)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.foursquare.socialSearchField));
            CacheManager.get().m28390a(FoursquareData.class, getCacheKey(DataSource.foursquare.socialDataField));
            removeMutualFriends(6);
            resetSocialImages(DataSource.foursquare);
            this.foursquareSearchResults = null;
            this.foursquareData = null;
            getDeviceData().setFoursquareId(null);
            z3 = z2 | this.dataSources.containsValue(DataSource.foursquare);
        }
        boolean z4 = z3;
        if (list.contains(DataSource.instagram)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.instagram.socialSearchField));
            CacheManager.get().m28390a(InstagramData.class, getCacheKey(DataSource.instagram.socialDataField));
            removeMutualFriends(7);
            resetSocialImages(DataSource.instagram);
            this.instagramSearchResults = null;
            this.instagramData = null;
            getDeviceData().setInstagramId(null);
            z4 = z3 | this.dataSources.containsValue(DataSource.instagram);
        }
        boolean z5 = z4;
        if (list.contains(DataSource.pinterest)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.pinterest.socialSearchField));
            CacheManager.get().m28390a(PinterestData.class, getCacheKey(DataSource.pinterest.socialDataField));
            removeMutualFriends(9);
            resetSocialImages(DataSource.pinterest);
            this.pinterestSearchResults = null;
            this.pinterestData = null;
            getDeviceData().setPinterestId(null);
            z5 = z4 | this.dataSources.containsValue(DataSource.pinterest);
        }
        boolean z6 = z5;
        if (list.contains(DataSource.vk)) {
            CacheManager.get().m28390a(SocialSearchResults.class, getCacheKey(DataSource.vk.socialSearchField));
            CacheManager.get().m28390a(VKData.class, getCacheKey(DataSource.vk.socialDataField));
            removeMutualFriends(10);
            resetSocialImages(DataSource.vk);
            this.vkData = null;
            this.vkSearchResults = null;
            getDeviceData().setVKId(null);
            z6 = z5 | this.dataSources.containsValue(DataSource.vk);
        }
        LoadSocialNetworksIdTask.m28844a(this, false);
        resetPhoto();
        if (list.contains(DataSource.facebook)) {
            updateFacebookId(true);
            fireChange(ContactField.facebookData);
        }
        if (list.contains(DataSource.twitter)) {
            updateTwitterScreenName(true);
            fireChange(ContactField.twitterData);
        }
        if (list.contains(DataSource.foursquare)) {
            updateFoursquareId(true);
            fireChange(ContactField.foursquareData);
        }
        if (list.contains(DataSource.instagram)) {
            updateInstagramId(true);
            fireChange(ContactField.instagramData);
        }
        if (list.contains(DataSource.pinterest)) {
            updatePinterestId(true);
            fireChange(ContactField.pinterestData);
        }
        if (list.contains(DataSource.vk)) {
            updateVKId(true);
            fireChange(ContactField.vkData);
        }
        if (z6) {
            updateAllFields();
        } else {
            updateSetAndMapFields();
        }
    }

    public void setAuPersonLookupAuData(AuPersonLookupData auPersonLookupData) {
        this.auPersonLookupData = auPersonLookupData;
    }

    public void setBlockedNumberData(BlockedNumberData blockedNumberData) {
        this.blockedNumberData = blockedNumberData;
    }

    public void setCallHistoryData(Map<String, List<CallHistoryData>> map) {
        this.callHistoryData = map;
    }

    public void setChLocalData(CHLocalData cHLocalData) {
        this.chLocalData = cHLocalData;
    }

    public void setContactRecords(List<CallRecorder> list) {
        this.records = list;
        updateRecords();
    }

    public void setDataSource(ContactField contactField, DataSource dataSource) {
        if (contactField != null) {
            if (dataSource != null) {
                this.dataSources.put(contactField, dataSource);
            } else {
                this.dataSources.remove(contactField);
            }
        }
    }

    public void setDeviceId(long j) {
        this.deviceId = j;
    }

    public void setFacebookData(FacebookData facebookData) {
        this.facebookData = facebookData;
    }

    public void setFacebookPlaceData(FacebookPlaceData facebookPlaceData) {
        this.facebookPlaceData = facebookPlaceData;
    }

    public void setFastCacheData(FastCacheData fastCacheData) {
        this.fastCacheData = fastCacheData;
    }

    public void setFoursquareData(FoursquareData foursquareData) {
        this.foursquareData = foursquareData;
    }

    public void setGenomeData(JSONContact jSONContact) {
        this.genomeData = jSONContact;
    }

    public void setGmailEmailData(GmailEmailData gmailEmailData) {
        this.gmailEmailData = gmailEmailData;
    }

    public void setGoogleMapsLatLng(AddressGeoCodeLatLng addressGeoCodeLatLng) {
        this.googleMapsLatLng = addressGeoCodeLatLng;
        fireChange(ContactField.googleMap);
    }

    public void setGooglePlacesData(GooglePlacesData googlePlacesData) {
        this.googlePlacesData = googlePlacesData;
    }

    public void setGravatarData(GravatarData gravatarData) {
        this.gravatarData = gravatarData;
    }

    public void setHasSuggestions(Set<Integer> set) {
        this.hasSuggestions = set;
    }

    public void setHuaweiPlaceData(HuaweiPlaceData huaweiPlaceData) {
        this.huaweiPlaceData = huaweiPlaceData;
    }

    public void setImExtractedPhotoData(IMExtractedPhotoData iMExtractedPhotoData) {
        this.imExtractedPhotoData = iMExtractedPhotoData;
    }

    public void setInSync(boolean z) {
        this.isInSync = z;
    }

    public void setInstagramData(InstagramData instagramData) {
        this.instagramData = instagramData;
    }

    public void setIntentData(IntentData intentData) {
        this.intentData = intentData;
    }

    public void setIsIncognito(boolean z) {
        this.isIncognito = z;
        fireChange(ContactField.isIncognito);
    }

    public void setNegativesMap(SparseArray<Set<String>> sparseArray) {
        this.negativesMap = sparseArray;
    }

    public void setNotificationTelegramData(NotificationFromIMData notificationFromIMData) {
        this.notificationTelegramData = notificationFromIMData;
    }

    public void setNotificationViberData(NotificationFromIMData notificationFromIMData) {
        this.notificationViberData = notificationFromIMData;
    }

    public void setNotificationWhatsAppData(NotificationFromIMData notificationFromIMData) {
        this.notificationWhatsAppData = notificationFromIMData;
    }

    public void setNumberGeocodingDescription(JSONAddress jSONAddress) {
        this.numberGeocodingDescription = jSONAddress;
    }

    public boolean setPhone(Phone phone) {
        if (!this.phone.equals(phone)) {
            this.phone = phone;
            if (updateId()) {
                fireChange(EnumSet.of(ContactField.phone, ContactField.id));
                return true;
            }
            fireChange(ContactField.phone);
            return true;
        }
        return false;
    }

    public void setPhoneOrigin(ExtractedInfo extractedInfo) {
        this.phoneOrigin = extractedInfo;
    }

    public void setPinterestData(PinterestData pinterestData) {
        this.pinterestData = pinterestData;
    }

    public void setRecognized(boolean z) {
        this.isRecognized = z;
    }

    public void setSkypeData(Collection<SkypeLoader.SkypeChatData> collection) {
        this.skypeData = collection;
    }

    public void setSpamReported(boolean z) {
        this.isSpamReported = z;
    }

    public void setSuggestionData(SuggestionData suggestionData) {
        this.suggestionData = suggestionData;
    }

    public void setSuggestionMap(SparseArray<String> sparseArray) {
        this.suggestionMap = sparseArray;
    }

    public void setTwilioTrustedCommData(TwilioTrustedCommData twilioTrustedCommData) {
        this.twilioTrustedCommData = twilioTrustedCommData;
    }

    public void setTwitterData(TwitterData twitterData) {
        this.twitterData = twitterData;
    }

    public void setUserCorrectedData(UserCorrectedData userCorrectedData) {
        this.userCorrectedData = userCorrectedData;
    }

    public void setUserMediaData(UserMediaData userMediaData) {
        this.userMediaData = userMediaData;
    }

    public void setUserProfileData(UserProfileData userProfileData) {
        this.userProfileData = userProfileData;
    }

    public void setUserSpamData(UserSpamData userSpamData) {
        this.userSpamData = userSpamData;
    }

    public void setVKData(VKData vKData) {
        this.vkData = vKData;
    }

    public void setVenueFoursquareData(VenueFoursquareData venueFoursquareData) {
        this.venueFoursquareData = venueFoursquareData;
    }

    public void setVenueFoursquareIDFromSearchData(VenueFoursquareIdFromSearchData venueFoursquareIdFromSearchData) {
        this.venueFoursquareIDFromSearchData = venueFoursquareIdFromSearchData;
    }

    public void setVenueFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.venueFoursquareId = jSONSocialNetworkID;
    }

    public void setWebsitesSocialIDsData(WebsitesSocialIDsData websitesSocialIDsData) {
        this.websitesSocialIDsData = websitesSocialIDsData;
    }

    public void setWhatsAppDataExtraction(boolean z) {
        this.whatsAppDataExtraction = z;
    }

    public void setWhitePagesData(WhitePagesData whitePagesData) {
        this.whitePagesData = whitePagesData;
    }

    public void setYahooData(Collection<ChatData> collection) {
        this.yahooData = collection;
    }

    public void setYouTubeVideos(Collection<VideoData> collection) {
        this.youTubeVideos = collection;
        fireChange(ContactField.youTubeVideos);
    }

    public void updateAddresses() {
        synchronized (this) {
            if (updateSet(ContactField.addresses).useField(this.deviceData, DataSource.device).useField(this.genomeData, DataSource.genome).useField(this.googlePlacesData, "address", DataSource.googlePlaces).useField(this.facebookPlaceData, "address", DataSource.facebookPlaces).useField(this.huaweiPlaceData, "address", DataSource.huaweiPlaces).useField(this.facebookData, "address", DataSource.facebook).useField(this.venueFoursquareData, "address", DataSource.venueFoursquare).useField(this.whitePagesData, "address", DataSource.whitePages).useField(this, "numberGeocodingDescription", DataSource.libPhoneNumber).useField(this.chLocalData, DataSource.chLocal).useField(this.vkData, "address", DataSource.vk).useField(this.auPersonLookupData, "address", DataSource.auPersonLookup).useField(this.userProfileData, "address", DataSource.userProfile).execute()) {
                this.address = null;
            }
        }
    }

    public void updateBirthDate() {
        synchronized (this) {
            UpdateFieldBuilder useField = updateField(ContactField.birthday).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.deviceData, DataSource.device).useField(this.genomeData, DataSource.genome).useField(this.vkData, DataSource.vk).useField(this.facebookData, DataSource.facebook);
            JSONContact jSONContact = this.genomeData;
            if (jSONContact != null) {
                useField.useValue(jSONContact.getBirthday(), this.genomeData, DataSource.genome);
            }
            useField.execute();
        }
    }

    public void updateCallHistoryData() {
        fireChange(ContactField.callHistoryData);
    }

    public void updateCallReason() {
        new UpdateFieldBuilder(this, ContactField.callReason).useField(this.twilioTrustedCommData, DataSource.twilioTrustedComm).execute();
    }

    public void updateCategories() {
        synchronized (this) {
            updateSet(ContactField.categories).useField(this.genomeData, DataSource.genome).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.huaweiPlaceData, DataSource.huaweiPlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.facebookData, DataSource.facebook).useField(this.chLocalData, DataSource.chLocal).execute();
        }
    }

    public void updateCover() {
        new UpdateFieldBuilder(this, ContactField.cover).useField(this.genomeData, DataSource.genome).execute();
    }

    public void updateDescription() {
        new UpdateFieldBuilder(this, ContactField.description).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.huaweiPlaceData, DataSource.huaweiPlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.genomeData, DataSource.genome).useField(this.gravatarData, DataSource.gravatar).useField(this.chLocalData, DataSource.chLocal).execute();
    }

    public void updateDeviceId() {
        if (updateId()) {
            fireChange(EnumSet.of(ContactField.deviceId, ContactField.id));
        } else {
            fireChange(ContactField.deviceId);
        }
    }

    public void updateDeviceIdMonitored() {
        updateId();
        fireChange(ContactFieldEnumSets.DEVICE_ID_MONITORED.clone());
    }

    public void updateEmails() {
        synchronized (this) {
            UpdateMapBuilder updateMap = updateMap(ContactField.emails);
            updateMap.useField(this.genomeData, DataSource.genome).useField(this.deviceData, DataSource.device).useField(this.facebookData, "email", DataSource.facebook).useField(this.foursquareData, "email", DataSource.foursquare).useField(this.venueFoursquareData, "email", DataSource.venueFoursquare).useField(this.gmailEmailData, "email", DataSource.gmail).useField(this.gravatarData, DataSource.gravatar).useField(this.chLocalData, DataSource.chLocal).useField(this.userProfileData, DataSource.userProfile);
            synchronized (this.emails) {
                updateMap.execute();
            }
        }
    }

    public void updateEvents() {
        synchronized (this) {
            if (updateSet(ContactField.events).useField(this.deviceData, DataSource.device).useField(this.genomeData, DataSource.genome).execute()) {
                fireChange(ContactField.birthday);
            }
        }
    }

    public void updateExcludeAnalytics() {
        fireChange(ContactField.excludeAnalytics);
    }

    public void updateFacebookId() {
        updateFacebookId(false);
    }

    public void updateFacebookPlacesData() {
        fireChange(ContactField.facebookPlaces);
    }

    public void updateFoursquareId() {
        updateFoursquareId(false);
    }

    public void updateFullName() {
        synchronized (this) {
            if (this.loadedFields.contains(ContactField.names)) {
                updateNames();
            }
            UpdateFieldBuilder<String> useField = updateNamefield(ContactField.fullName).useFieldForced(this.userProfileData, DataSource.userProfile).useFieldForced(this.blockedNumberData, DataSource.blockedNumberDB).useFieldForced(this.deviceData, DataSource.device).useField(this.intentData, DataSource.intent).useFieldForced(this.userCorrectedData, DataSource.userCorrectedInfo).useField(this.fastCacheData, DataSource.other).useField(this.notificationWhatsAppData, DataSource.notificationWhatsApp).useField(this.notificationViberData, DataSource.notificationViber).useField(this.notificationTelegramData, DataSource.notificationTelegram).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.huaweiPlaceData, DataSource.huaweiPlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.genomeData, "name", DataSource.genome).useField(this.twilioTrustedCommData, "name", DataSource.twilioTrustedComm).useField(this.vkData, DataSource.vk).useField(this.facebookData, DataSource.facebook).useField(this.twitterData, DataSource.twitter).useField(this.foursquareData, DataSource.foursquare).useField(this.instagramData, DataSource.instagram).useField(this.pinterestData, DataSource.pinterest).useField(this.gmailEmailData, DataSource.gmail).useField(this.gravatarData, DataSource.gravatar).useField(this.whitePagesData, DataSource.whitePages).useField(this.chLocalData, DataSource.chLocal).useField(this.auPersonLookupData, DataSource.auPersonLookup);
            if (CollectionUtils.m26068b(getSkypeData())) {
                for (SkypeLoader.SkypeChatData skypeChatData : getSkypeData()) {
                    useField.useField(skypeChatData, DataSource.skype);
                }
            }
            if (useField.defaultValue("").execute()) {
                this.firstName = null;
            }
        }
    }

    public void updateGTalk() {
        fireChange(ContactField.gTalk);
    }

    public void updateGmailData() {
        fireChange(ContactField.gmailData);
    }

    public void updateGooglePlacesData() {
        fireChange(ContactField.googlePlaces);
    }

    public void updateHasSuggestion() {
        fireChange(ContactField.hasSuggestions);
    }

    public void updateHuaweiPlacesData() {
        fireChange(ContactField.huaweiPlaces);
    }

    public void updateImAddresses() {
        updateSet(ContactField.imAddresses).useField(this.deviceData, DataSource.device).useField(this.deviceData, "imContacts", DataSource.device).useField(this.genomeData, "iMAddresses", DataSource.genome).useField(this.vkData, DataSource.vk).useField(this.gravatarData, DataSource.gravatar).execute();
    }

    public void updateInstagramId() {
        updateInstagramId(false);
    }

    public void updateLastSMS() {
        fireChange(ContactField.lastSms);
    }

    public void updateLatLng() {
        synchronized (this) {
            PrioritizedValueBuilder prioritizedValueBuilder = new PrioritizedValueBuilder(this, new PrioritizedValueBuilder.Validator<Pair<Double, Double>>() { // from class: com.callapp.contacts.model.contact.ContactData.1
                public boolean isValid(Pair<Double, Double> pair) {
                    if (pair != null) {
                        Double d = (Double) pair.first;
                        Double d2 = (Double) pair.second;
                        return (d == null || d.doubleValue() == 0.0d || Double.isNaN(d.doubleValue()) || d2 == null || d2.doubleValue() == 0.0d || Double.isNaN(d2.doubleValue())) ? false : true;
                    }
                    return false;
                }
            }, new Pair(Double.valueOf(this.lat), Double.valueOf(this.lng)), new Pair(Double.valueOf(0.0d), Double.valueOf(0.0d)));
            prioritizedValueBuilder.useValue(getLatLng(this.genomeData), DataSource.genome, this.genomeData).useValue(getLatLng(this.facebookData), DataSource.facebook).useValue(getLatLng(this.googlePlacesData), DataSource.googlePlaces).useValue(getLatLng(this.facebookPlaceData), DataSource.facebookPlaces).useValue(getLatLng(this.huaweiPlaceData), DataSource.huaweiPlaces).useValue(getLatLng(this.venueFoursquareData), DataSource.venueFoursquare).useValue(getLatLng(this.chLocalData), DataSource.chLocal);
            prioritizedValueBuilder.execute(new PrioritizedValueBuilder.ValueChangedCallback<Pair<Double, Double>>() { // from class: com.callapp.contacts.model.contact.ContactData.2
                public void valueChanged(Pair<Double, Double> pair, DataSource dataSource) {
                    ContactData.this.lat = ((Double) pair.first).doubleValue();
                    ContactData.this.lng = ((Double) pair.second).doubleValue();
                    ContactData.this.setDataSource(ContactField.latLng, dataSource);
                    ContactData.this.fireChange(ContactField.latLng);
                }
            });
        }
    }

    protected UpdateMapBuilder updateMap(ContactField contactField) {
        return new UpdateMapBuilder(this, contactField, new HashMap());
    }

    public void updateMenuUrl() {
        new UpdateFieldBuilder(this, ContactField.menuUrl).useField(this.genomeData, DataSource.genome).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).execute();
    }

    public void updateMutualFriends() {
        synchronized (this) {
            updateSet(ContactField.mutualFriends, new TreeSet()).useField(this.facebookData, DataSource.facebook).useField(this.twitterData, DataSource.twitter).useField(this.instagramData, DataSource.instagram).useField(this.foursquareData, DataSource.foursquare).useField(this.pinterestData, DataSource.pinterest).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.vkData, DataSource.vk).useField(this.venueFoursquareData, DataSource.venueFoursquare).execute();
        }
    }

    public void updateNames() {
        synchronized (this) {
            UpdateFieldBuilder<Map<Object, SureCounter>> useField = updateNamesField(ContactField.names, true).useField(this.deviceData, DataSource.device).useField(this.deviceData, ContactField.fullName, DataSource.device).useField(this.intentData, ContactField.fullName, DataSource.intent).useField(this.userCorrectedData, ContactField.fullName, DataSource.userCorrectedInfo).useField(this.notificationWhatsAppData, ContactField.fullName, DataSource.notificationWhatsApp).useField(this.notificationViberData, ContactField.fullName, DataSource.notificationViber).useField(this.notificationTelegramData, ContactField.fullName, DataSource.notificationTelegram).useField(this.googlePlacesData, ContactField.fullName, DataSource.googlePlaces).useField(this.facebookPlaceData, ContactField.fullName, DataSource.facebookPlaces).useField(this.huaweiPlaceData, ContactField.fullName, DataSource.huaweiPlaces).useField(this.venueFoursquareData, ContactField.fullName, DataSource.venueFoursquare).useField(this.genomeData, "name", DataSource.genome).useField(this.twilioTrustedCommData, "name", DataSource.twilioTrustedComm).useField(this.facebookData, ContactField.fullName, DataSource.facebook).useField(this.twitterData, ContactField.fullName, DataSource.twitter).useField(this.foursquareData, ContactField.fullName, DataSource.foursquare).useField(this.instagramData, ContactField.fullName, DataSource.instagram).useField(this.pinterestData, ContactField.fullName, DataSource.pinterest).useField(this.gmailEmailData, ContactField.fullName, DataSource.gmail).useField(this.whitePagesData, ContactField.fullName, DataSource.whitePages).useField(this.gravatarData, ContactField.fullName, DataSource.gravatar).useField(this.chLocalData, ContactField.fullName, DataSource.chLocal).useField(this.auPersonLookupData, ContactField.fullName, DataSource.auPersonLookup);
            if (CollectionUtils.m26068b(getSkypeData())) {
                for (SkypeLoader.SkypeChatData skypeChatData : getSkypeData()) {
                    useField.useField(skypeChatData, ContactField.fullName, DataSource.skype);
                }
            }
            useField.execute();
        }
    }

    public void updateNegatives() {
        fireChange(ContactField.negatives);
    }

    public void updateNote() {
        fireChange(ContactField.note);
    }

    public void updateOpeningHours() {
        UpdateFieldBuilder useField = updateField(ContactField.openingHours).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.huaweiPlaceData, DataSource.huaweiPlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).useField(this.facebookData, DataSource.facebook);
        JSONContact jSONContact = this.genomeData;
        if (jSONContact != null && jSONContact.getOpeningHours() != null) {
            useField.useValue(this.genomeData.getOpeningHours(), this.genomeData, DataSource.genome);
        }
        CHLocalData cHLocalData = this.chLocalData;
        if (cHLocalData != null && cHLocalData.getOpeningHours() != null) {
            useField.useValue(this.chLocalData.getOpeningHours(), this.chLocalData, DataSource.chLocal);
        }
        useField.execute();
    }

    public void updateOrganizations() {
        synchronized (this) {
            updateSet(ContactField.organizations).useField(this.deviceData, DataSource.device).useField(this.genomeData, "orgData", DataSource.genome).useField(this.facebookData, DataSource.facebook).execute();
        }
    }

    public void updatePhones() {
        Phone phone;
        synchronized (this) {
            HashSet hashSet = new HashSet();
            DeviceData deviceData = this.deviceData;
            if (deviceData != null) {
                hashSet.addAll(deviceData.getPhones());
            }
            UserProfileData userProfileData = this.userProfileData;
            if (userProfileData != null && (phone = userProfileData.getPhone()) != null && !phone.isEmpty()) {
                hashSet.add(this.userProfileData.getPhone());
            }
            JSONContact jSONContact = this.genomeData;
            if (jSONContact != null && jSONContact.getPhoneNumbers() != null) {
                for (JSONPhoneNumber jSONPhoneNumber : this.genomeData.getPhoneNumbers()) {
                    Phone m28239a = PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber());
                    m28239a.f29664c = PhoneType.fromCode(jSONPhoneNumber.getType());
                    hashSet.add(m28239a);
                }
            }
            CHLocalData cHLocalData = this.chLocalData;
            if (cHLocalData != null && cHLocalData.getPhones() != null) {
                for (JSONPhoneNumber jSONPhoneNumber2 : this.chLocalData.getPhones()) {
                    Phone m28239a2 = PhoneManager.get().m28239a(jSONPhoneNumber2.getPhoneNumber());
                    m28239a2.f29664c = PhoneType.fromCode(jSONPhoneNumber2.getType());
                    hashSet.add(m28239a2);
                }
            }
            VKData vKData = this.vkData;
            if (vKData != null && vKData.getPhones() != null) {
                hashSet.addAll(this.vkData.getPhones());
            }
            if (!this.phone.isEmpty()) {
                hashSet.add(this.phone);
            }
            if (!hashSet.equals(this.phones)) {
                this.phones = hashSet;
                fireChange(ContactField.phones);
            }
        }
    }

    public void updatePhoto() {
        synchronized (getLock(ContactData.class)) {
            loadPhoto(false);
        }
    }

    public void updatePinterestId() {
        updatePinterestId(false);
    }

    public void updatePriceRange() {
        new PrioritizedValueBuilder(this, new PrioritizedValueBuilder.Validator<Integer>() { // from class: com.callapp.contacts.model.contact.ContactData.7
            public boolean isValid(Integer num) {
                return num != null && num.intValue() > 0;
            }
        }, Integer.valueOf(this.priceRange), -1).useField("priceRange", DataSource.genome, this.genomeData).useField("priceRange", DataSource.googlePlaces, this.googlePlacesData).useField("priceRange", DataSource.facebookPlaces, this.facebookPlaceData).useField("priceRange", DataSource.huaweiPlaces, this.huaweiPlaceData).useField("priceRange", DataSource.venueFoursquare, this.venueFoursquareData).execute(new PrioritizedValueBuilder.ValueChangedCallback<Integer>() { // from class: com.callapp.contacts.model.contact.ContactData.8
            public void valueChanged(Integer num, DataSource dataSource) {
                ContactData.this.priceRange = num.intValue();
                ContactData.this.setDataSource(ContactField.priceRange, dataSource);
                ContactData.this.fireChange(ContactField.priceRange);
            }
        });
    }

    public void updateRating() {
        synchronized (this) {
            new PrioritizedValueBuilder(this, new PrioritizedValueBuilder.Validator<Double>() { // from class: com.callapp.contacts.model.contact.ContactData.3
                public boolean isValid(Double d) {
                    return d != null && d.doubleValue() > 0.0d;
                }
            }, Double.valueOf(this.avgRating), Double.valueOf(-1.0d)).useField("avgRating", DataSource.googlePlaces, this.googlePlacesData).useField("avgRating", DataSource.facebookPlaces, this.facebookPlaceData).useField("avgRating", DataSource.huaweiPlaces, this.huaweiPlaceData).useField("avgRating", DataSource.venueFoursquare, this.venueFoursquareData).useField("avgRating", DataSource.genome, this.genomeData).execute(new PrioritizedValueBuilder.ValueChangedCallback<Double>() { // from class: com.callapp.contacts.model.contact.ContactData.4
                public void valueChanged(Double d, DataSource dataSource) {
                    ContactData.this.avgRating = d.doubleValue();
                    ContactData.this.setDataSource(ContactField.rating, dataSource);
                    ContactData.this.fireChange(ContactField.rating);
                }
            });
        }
    }

    public void updateRecords() {
        fireChange(ContactField.records);
    }

    public void updateReserveUrl() {
        new UpdateFieldBuilder(this, ContactField.reserveUrl).useField(this.genomeData, DataSource.genome).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).execute();
    }

    public void updateReviews() {
        synchronized (this) {
            updateSet(ContactField.reviews).useField(this.genomeData, DataSource.genome).useField(this.googlePlacesData, DataSource.googlePlaces).useField(this.facebookPlaceData, DataSource.facebookPlaces).useField(this.huaweiPlaceData, DataSource.huaweiPlaces).useField(this.venueFoursquareData, DataSource.venueFoursquare).execute();
        }
    }

    public void updateSkypeData() {
        fireChange(ContactField.skype);
    }

    public void updateSocialNetworkIds() {
        updateFacebookId(false);
        updateFoursquareId(false);
        updateTwitterScreenName(false);
        updateInstagramId(false);
        updateVenueFoursquareId(false);
        updatePinterestId(false);
        updateVKId(false);
    }

    public void updateSpamScore() {
        new PrioritizedValueBuilder(this, new PrioritizedValueBuilder.Validator<Integer>() { // from class: com.callapp.contacts.model.contact.ContactData.9
            public boolean isValid(Integer num) {
                return num != null;
            }
        }, Integer.valueOf(this.spamScore), 0).useFieldForced("spamScore", DataSource.userSpamData, this.userSpamData).useField("spamScore", DataSource.genome, this.genomeData).useField("spamScore", DataSource.other, this.fastCacheData).execute(new PrioritizedValueBuilder.ValueChangedCallback<Integer>() { // from class: com.callapp.contacts.model.contact.ContactData.10
            public void valueChanged(Integer num, DataSource dataSource) {
                ContactData.this.spamScore = num.intValue();
                ContactData.this.setDataSource(ContactField.spamScore, dataSource);
                ContactData.this.fireChange(ContactField.spamScore);
            }
        });
    }

    public void updateTwitterScreenName() {
        updateTwitterScreenName(false);
    }

    public void updateUploadedPhotoUrls() {
        synchronized (this) {
            UpdateMapBuilder updateMap = updateMap(ContactField.uploadedPhotosUrl);
            updateMap.useField(this.facebookData, DataSource.facebook).useField(this.instagramData, DataSource.instagram).useField(this.vkData, DataSource.vk);
            synchronized (this.uploadedPhotosUrl) {
                updateMap.execute();
            }
        }
    }

    public void updateUserDefinition() {
        new UpdateFieldBuilder(this, ContactField.userDefinition).useFieldForced(this.userProfileData, DataSource.userProfile).useField(this.genomeData, DataSource.genome).execute();
    }

    public void updateVKId() {
        updateVKId(false);
    }

    public void updateVenueFoursquareId() {
        updateVenueFoursquareId(false);
    }

    public void updateWebVideos() {
        updateSet(ContactField.webVideos).useField((Object) this.vkData, "videos", DataSource.vk).useField((Object) this.chLocalData, "videos", DataSource.chLocal).execute();
    }

    public void updateWebsites() {
        synchronized (this) {
            UpdateSetBuilder updateSet = updateSet(ContactField.websites);
            updateSet.useField(this.deviceData, DataSource.device).useField(this.genomeData, DataSource.genome).useField(this.facebookData, DataSource.facebook).useField(this.vkData, DataSource.vk).useField(this.instagramData, "website", DataSource.instagram).useField(this.gravatarData, DataSource.gravatar).useField(this.googlePlacesData, "website", DataSource.googlePlaces).useField(this.facebookPlaceData, "website", DataSource.facebookPlaces).useField(this.huaweiPlaceData, "website", DataSource.huaweiPlaces).useField(this.chLocalData, DataSource.chLocal).useField(this.venueFoursquareData, "website", DataSource.venueFoursquare).useField(this.userProfileData, DataSource.userProfile);
            synchronized (this.websites) {
                updateSet.execute();
            }
        }
    }

    public void updateYahooData() {
        fireChange(ContactField.yahoo);
    }
}
