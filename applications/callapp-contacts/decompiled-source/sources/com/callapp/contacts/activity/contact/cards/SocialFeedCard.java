package com.callapp.contacts.activity.contact.cards;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.widget.AdapterView;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.ActivityLifecycleListener;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalRecyclerViewHolder;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.select.PersonSelectActivity;
import com.callapp.contacts.api.helper.common.ActivityWithContact;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.loader.business.GooglePlacesLoader;
import com.callapp.contacts.loader.device.UserProfileLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.FacebookPlaceData;
import com.callapp.contacts.model.contact.PlaceData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.popup.contact.DialogConfirmProfile;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard.class */
public class SocialFeedCard extends SimpleExpandableCard<SimpleCardListObject> {
    private final SocialFeedEvents eventsListener;
    private AdapterView.OnItemClickListener footerItemClickListener;
    private AdapterView.OnItemLongClickListener footerItemLongClickListener;
    private HorizontalRecyclerViewHolder<HorizontalGalleryAdapter> footerViewHolder;
    private static final int BORDER_WIDTH = (int) Activities.a(2.0f);
    private static final int footerHeight = CallAppApplication.get().getResources().getDimensionPixelSize(2131165961);
    private static List<Pair<DataSource, String>> infoDataSources = new ArrayList();
    private static List<Pair<DataSource, String>> footerDataSources = new ArrayList();
    private final Object FOOTER_DATA_LIST_LOCK = new Object();
    private List<HorizontalIconGalleryItemData> footerDataList = new CopyOnWriteArrayList();
    private SparseArray<Pair<DataSource, String>> footerDataListPositionToDataSource = new SparseArray<>();
    private final SparseArray<Pair<Integer, Integer>> dbCodeToIconPhotoMap = new SparseArray<>(footerDataSources.size());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.SocialFeedCard$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$6.class */
    public static final class AnonymousClass6 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PresentersContainer f11771a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DataSource f11772b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ JSONSocialNetworkID f11773c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f11774d;
        final /* synthetic */ Runnable e;
        final /* synthetic */ ContactData f;

        AnonymousClass6(PresentersContainer presentersContainer, DataSource dataSource, JSONSocialNetworkID jSONSocialNetworkID, boolean z, Runnable runnable, ContactData contactData) {
            this.f11771a = presentersContainer;
            this.f11772b = dataSource;
            this.f11773c = jSONSocialNetworkID;
            this.f11774d = z;
            this.e = runnable;
            this.f = contactData;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            PresentersContainer presentersContainer = this.f11771a;
            int i = this.f11772b.dbCode;
            Activity activity = (Activity) this.f11771a.getRealContext();
            JSONSocialNetworkID jSONSocialNetworkID = this.f11773c;
            SocialFeedCard.openSocialProfile(presentersContainer, i, activity, jSONSocialNetworkID, (jSONSocialNetworkID.isSure() || this.f11774d) ? null : this.e, new OutcomeListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.6.1
                @Override // com.callapp.contacts.manager.task.OutcomeListener
                public final void a(boolean z) {
                    if (!z) {
                        FeedbackManager.get().a("failed to open profile", 80);
                    } else if (AnonymousClass6.this.f11774d) {
                        ((BaseActivity) AnonymousClass6.this.f11771a.getRealContext()).registerActivityLifecycleListener(new ActivityLifecycleListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.6.1.1
                            @Override // com.callapp.contacts.activity.base.ActivityLifecycleListener
                            public final void a(Activity activity2) {
                                ((BaseActivity) AnonymousClass6.this.f11771a.getRealContext()).unregisterActivityLifecycleListener(this);
                                if (AnonymousClass6.this.f11771a.getRealContext().equals(activity2) && AnonymousClass6.this.f11771a.getContact().getId().equals(AnonymousClass6.this.f.getId())) {
                                    AnonymousClass6.this.e.run();
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.SocialFeedCard$9  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$9.class */
    public static /* synthetic */ class AnonymousClass9 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11780a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[SocialState.values().length];
            f11780a = iArr;
            try {
                iArr[SocialState.I_NOT_LOGGED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11780a[SocialState.I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11780a[SocialState.I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11780a[SocialState.I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject.class */
    public class SocialDataObject {

        /* renamed from: b  reason: collision with root package name */
        private final SocialData f11782b;

        /* renamed from: c  reason: collision with root package name */
        private final DataSource f11783c;

        /* renamed from: d  reason: collision with root package name */
        private final PlaceData f11784d;

        SocialDataObject(SocialData socialData, DataSource dataSource, PlaceData placeData) {
            this.f11782b = socialData;
            this.f11783c = dataSource;
            this.f11784d = placeData;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents.class */
    public interface SocialFeedEvents {
        void onUnsureSocialsChanged(List<DataSource> list);
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList.class */
    class SocialFeedSimpleExpandedCardList extends SimpleExpandableCard<SimpleCardListObject>.ExpandedCardList<HorizontalRecyclerViewHolder<HorizontalGalleryAdapter>> {

        /* renamed from: a  reason: collision with root package name */
        View.OnClickListener f11785a;

        SocialFeedSimpleExpandedCardList(Context context) {
            super(context);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ Object a(View view) {
            PhotoGalleryAdapter photoGalleryAdapter = new PhotoGalleryAdapter(null, SocialFeedCard.this.getFooterOnItemClickedListener(), SocialFeedCard.this.getFooterOnItemLongClickedListener(), 2131558543);
            this.f11785a = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.SocialFeedSimpleExpandedCardList.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Social feed card clicked", "Arrow to 6 pack");
                    SocialFeedCard.this.openContactSocialProfileActivity();
                }
            };
            return new HorizontalRecyclerViewHolder(view, photoGalleryAdapter, null, null);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ void a(Object obj) {
            HorizontalRecyclerViewHolder horizontalRecyclerViewHolder = (HorizontalRecyclerViewHolder) obj;
            SocialFeedCard.this.footerViewHolder = horizontalRecyclerViewHolder;
            View.OnClickListener onClickListener = this.f11785a;
            horizontalRecyclerViewHolder.a(onClickListener, onClickListener, null, null, SocialFeedCard.footerHeight);
            HorizontalGalleryAdapter horizontalGalleryAdapter = (HorizontalGalleryAdapter) horizontalRecyclerViewHolder.getAdapter();
            if (!CollectionUtils.a((Collection) horizontalGalleryAdapter.getItems(), (Collection) SocialFeedCard.this.footerDataList)) {
                horizontalGalleryAdapter.a(SocialFeedCard.this.footerDataList, SocialFeedCard.this.getFooterOnItemClickedListener(), SocialFeedCard.this.getFooterOnItemLongClickedListener());
            }
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public int getFooterLayoutId() {
            return 2131558679;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState.class */
    public enum SocialState {
        I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE,
        I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE,
        I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE,
        I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE,
        I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH,
        I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH,
        I_NOT_LOGGED_IN,
        I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH,
        I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE;

        public static SocialState getState(DataSource dataSource, JSONSocialNetworkID jSONSocialNetworkID, PlaceData placeData) {
            RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode);
            return ((remoteAccountHelper instanceof InstagramHelper) || (remoteAccountHelper instanceof PinterestHelper)) ? (jSONSocialNetworkID == null || !StringUtils.b((CharSequence) jSONSocialNetworkID.getId())) ? I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE : I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE : (remoteAccountHelper == null || !remoteAccountHelper.isLoggedIn()) ? (jSONSocialNetworkID == null || StringUtils.a((CharSequence) jSONSocialNetworkID.getId()) || !remoteAccountHelper.g()) ? remoteAccountHelper.g() ? I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE : I_NOT_LOGGED_IN : I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH : hasNameFromPlace(placeData) ? I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE : (jSONSocialNetworkID == null || StringUtils.a((CharSequence) jSONSocialNetworkID.getId())) ? remoteAccountHelper.f() ? I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE : I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH : !jSONSocialNetworkID.isSure() ? remoteAccountHelper.f() ? I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE : I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH : I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE;
        }

        private static boolean hasNameFromPlace(PlaceData placeData) {
            return placeData != null && StringUtils.b((CharSequence) placeData.getFullName());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isNotSureAndCanSearch(DataSource dataSource, JSONSocialNetworkID jSONSocialNetworkID, PlaceData placeData) {
            return !hasNameFromPlace(placeData) && jSONSocialNetworkID != null && !StringUtils.a((CharSequence) jSONSocialNetworkID.getId()) && !jSONSocialNetworkID.isSure() && Singletons.get().getRemoteAccountHelper(dataSource.dbCode).f();
        }
    }

    static {
        infoDataSources.add(new Pair<>(DataSource.facebook, null));
        infoDataSources.add(new Pair<>(DataSource.twitter, null));
        infoDataSources.add(new Pair<>(DataSource.google, "googlePlacesData"));
        infoDataSources.add(new Pair<>(DataSource.pinterest, null));
        infoDataSources.add(new Pair<>(DataSource.instagram, null));
        infoDataSources.add(new Pair<>(DataSource.vk, null));
        footerDataSources.add(new Pair<>(DataSource.facebook, null));
        footerDataSources.add(new Pair<>(DataSource.google, "googlePlacesData"));
        footerDataSources.add(new Pair<>(DataSource.twitter, null));
        footerDataSources.add(new Pair<>(DataSource.instagram, null));
        footerDataSources.add(new Pair<>(DataSource.pinterest, null));
        footerDataSources.add(new Pair<>(DataSource.vk, null));
        footerDataSources.add(new Pair<>(DataSource.foursquare, "venueFoursquareData"));
    }

    public SocialFeedCard(MultiCardContainer multiCardContainer, SocialFeedEvents socialFeedEvents) {
        super(multiCardContainer);
        this.eventsListener = socialFeedEvents;
        for (Pair<DataSource, String> pair : footerDataSources) {
            this.dbCodeToIconPhotoMap.put(((DataSource) pair.first).dbCode, RemoteAccountHelper.getSocialPairBadgeResId(((DataSource) pair.first).dbCode));
        }
    }

    private ArrayList<DataSource> getAllUnsureButSearchableSources(List<Pair<DataSource, String>> list) {
        ArrayList<DataSource> arrayList = new ArrayList<>();
        ContactData contact = this.presentersContainer.getContact();
        for (Pair<DataSource, String> pair : list) {
            DataSource dataSource = (DataSource) pair.first;
            if (SocialState.isNotSureAndCanSearch(dataSource, getSocialId(contact, dataSource), getPlaceData(contact, (String) pair.second))) {
                arrayList.add(dataSource);
            }
        }
        return arrayList;
    }

    private ArrayList<SimpleCardListObject> getDataList(List<SocialDataObject> list) {
        if (list.size() <= 0) {
            return null;
        }
        ArrayList<SimpleCardListObject> arrayList = new ArrayList<>(list.size());
        for (final SocialDataObject socialDataObject : list) {
            if (socialDataObject.f11784d == null || !StringUtils.b((CharSequence) socialDataObject.f11784d.getFullName())) {
                String defaultText = SocialDataUtils.getDefaultText(socialDataObject.f11783c.dbCode, socialDataObject.f11782b);
                if (StringUtils.b((CharSequence) defaultText)) {
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.a(view, 1);
                            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Social feed card clicked", "Posts");
                            SocialFeedCard.showProfile(SocialFeedCard.this.presentersContainer, socialDataObject.f11782b, socialDataObject.f11783c);
                        }
                    };
                    SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                    builder.f11918d = defaultText;
                    SimpleCardListObject.Builder a2 = builder.a(RemoteAccountHelper.getSocialBadgeColoredResId(socialDataObject.f11783c.dbCode));
                    a2.f11916b = onClickListener;
                    a2.k = onClickListener;
                    arrayList.add(a2.a(this));
                }
            }
        }
        return arrayList;
    }

    private ArrayList<HorizontalIconGalleryItemData> getFooterDataListAccordingToContact() {
        this.footerDataListPositionToDataSource.clear();
        ArrayList<HorizontalIconGalleryItemData> arrayList = new ArrayList<>(footerDataSources.size());
        ContactData contact = this.presentersContainer.getContact();
        for (Pair<DataSource, String> pair : footerDataSources) {
            DataSource dataSource = (DataSource) pair.first;
            HorizontalIconGalleryItemData footerItemData = getFooterItemData(getSocialId(contact, dataSource), dataSource, getPlaceData(contact, (String) pair.second));
            if (footerItemData != null) {
                this.footerDataListPositionToDataSource.put(arrayList.size(), pair);
                arrayList.add(footerItemData);
            }
        }
        return arrayList;
    }

    private HorizontalIconGalleryItemData getFooterItemData(JSONSocialNetworkID jSONSocialNetworkID, DataSource dataSource, PlaceData placeData) {
        int socialBadgeBgColor = RemoteAccountHelper.getSocialBadgeBgColor(dataSource.dbCode);
        Pair<Integer, Integer> pair = this.dbCodeToIconPhotoMap.get(dataSource.dbCode);
        int i = AnonymousClass9.f11780a[SocialState.getState(dataSource, jSONSocialNetworkID, placeData).ordinal()];
        HorizontalIconGalleryItemData horizontalIconGalleryItemData = null;
        switch (i) {
            case 1:
                HorizontalIconGalleryItemData.Builder builder = new HorizontalIconGalleryItemData.Builder();
                builder.f11874a = ((Integer) pair.second).intValue();
                builder.g = 2131231421;
                builder.h = -1;
                builder.i = socialBadgeBgColor;
                builder.f = true;
                horizontalIconGalleryItemData = builder.a();
                break;
            case 2:
            case 4:
            case 7:
                HorizontalIconGalleryItemData.Builder builder2 = new HorizontalIconGalleryItemData.Builder();
                builder2.f11874a = ((Integer) pair.second).intValue();
                builder2.g = 2131231857;
                builder2.h = -1;
                builder2.i = socialBadgeBgColor;
                builder2.f = true;
                horizontalIconGalleryItemData = builder2.a();
                break;
            case 3:
            case 5:
            case 6:
                HorizontalIconGalleryItemData.Builder builder3 = new HorizontalIconGalleryItemData.Builder();
                builder3.f11874a = ((Integer) pair.first).intValue();
                builder3.h = -1;
                builder3.i = socialBadgeBgColor;
                builder3.f = true;
                horizontalIconGalleryItemData = builder3.a();
                break;
            case 8:
            case 9:
                break;
            default:
                horizontalIconGalleryItemData = null;
                break;
        }
        return horizontalIconGalleryItemData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdapterView.OnItemClickListener getFooterOnItemClickedListener() {
        if (this.footerItemClickListener == null) {
            this.footerItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    ContactData contact = SocialFeedCard.this.presentersContainer.getContact();
                    AndroidUtils.a(view, 1);
                    Pair sourceAndState = SocialFeedCard.this.getSourceAndState(contact, i);
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Social feed card clicked", "footer");
                    if (sourceAndState.second != null) {
                        switch (AnonymousClass9.f11780a[((SocialState) sourceAndState.second).ordinal()]) {
                            case 1:
                                SocialFeedCard.loginAndFireChange(SocialFeedCard.this.presentersContainer, (DataSource) sourceAndState.first);
                                return;
                            case 2:
                                SocialFeedCard.this.openContactSocialProfileActivity();
                                return;
                            case 3:
                            case 4:
                            case 5:
                                SocialFeedCard.showProfile(SocialFeedCard.this.presentersContainer, SocialFeedCard.getSocialData(contact, (DataSource) sourceAndState.first), (DataSource) sourceAndState.first);
                                return;
                            case 6:
                                if (((DataSource) sourceAndState.first).dbCode == 5) {
                                    GooglePlacesLoader.a(SocialFeedCard.this.presentersContainer.getRealContext(), SocialFeedCard.this.presentersContainer.getContact().getGooglePlacesData());
                                    return;
                                }
                                return;
                            case 7:
                                SocialFeedCard.this.startMatchingActivity(Integer.valueOf(((DataSource) sourceAndState.first).dbCode));
                                return;
                            default:
                                return;
                        }
                    }
                }
            };
        }
        return this.footerItemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdapterView.OnItemLongClickListener getFooterOnItemLongClickedListener() {
        if (this.footerItemLongClickListener == null) {
            this.footerItemLongClickListener = new AdapterView.OnItemLongClickListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.4
                @Override // android.widget.AdapterView.OnItemLongClickListener
                public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                    DialogConfirmProfile dialogConfirmProfile;
                    ContactData contact = SocialFeedCard.this.presentersContainer.getContact();
                    AndroidUtils.a(view, 1);
                    String fqlType = contact.getFacebookData() != null ? contact.getFacebookData().getFqlType() : null;
                    Pair sourceAndState = SocialFeedCard.this.getSourceAndState(contact, i);
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Social feed card clicked", "footer");
                    if (sourceAndState.second == null) {
                        return true;
                    }
                    switch (AnonymousClass9.f11780a[((SocialState) sourceAndState.second).ordinal()]) {
                        case 1:
                            SocialFeedCard.loginAndFireChange(SocialFeedCard.this.presentersContainer, (DataSource) sourceAndState.first);
                            dialogConfirmProfile = null;
                            break;
                        case 2:
                            dialogConfirmProfile = new DialogConfirmProfile(SocialFeedCard.this.presentersContainer.getContact(), (DataSource) sourceAndState.first, false, fqlType);
                            break;
                        case 3:
                        case 4:
                        case 5:
                            dialogConfirmProfile = new DialogConfirmProfile(SocialFeedCard.this.presentersContainer.getContact(), (DataSource) sourceAndState.first, true, fqlType);
                            break;
                        case 6:
                            if (((DataSource) sourceAndState.first).dbCode == 5) {
                                GooglePlacesLoader.a(SocialFeedCard.this.presentersContainer.getRealContext(), SocialFeedCard.this.presentersContainer.getContact().getGooglePlacesData());
                                dialogConfirmProfile = null;
                                break;
                            } else {
                                dialogConfirmProfile = null;
                                break;
                            }
                        case 7:
                            SocialFeedCard.this.startMatchingActivity(Integer.valueOf(((DataSource) sourceAndState.first).dbCode));
                            dialogConfirmProfile = null;
                            break;
                        default:
                            dialogConfirmProfile = null;
                            break;
                    }
                    if (dialogConfirmProfile == null) {
                        return true;
                    }
                    PopupManager.get().a(SocialFeedCard.this.presentersContainer.getRealContext(), dialogConfirmProfile);
                    return true;
                }
            };
        }
        return this.footerItemLongClickListener;
    }

    private static PlaceData getPlaceData(ContactData contactData, String str) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        return (PlaceData) ReflectionUtils.a(contactData, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SocialData getSocialData(ContactData contactData, DataSource dataSource) {
        if (dataSource.socialDataField != null) {
            return (SocialData) ReflectionUtils.a(contactData, dataSource.socialDataField.name());
        }
        return null;
    }

    private static JSONSocialNetworkID getSocialId(ContactData contactData, DataSource dataSource) {
        if (dataSource.socialIdField != null) {
            return (JSONSocialNetworkID) ReflectionUtils.a(contactData, dataSource.socialIdField.name());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<DataSource, SocialState> getSourceAndState(ContactData contactData, int i) {
        SocialState socialState;
        Pair<DataSource, String> pair = this.footerDataListPositionToDataSource.get(i);
        DataSource dataSource = null;
        if (pair != null) {
            dataSource = (DataSource) pair.first;
            socialState = SocialState.getState(dataSource, getSocialId(contactData, dataSource), getPlaceData(contactData, (String) pair.second));
        } else {
            socialState = null;
        }
        return new Pair<>(dataSource, socialState);
    }

    private boolean isFooterDataChanged() {
        HorizontalGalleryAdapter adapter;
        HorizontalRecyclerViewHolder<HorizontalGalleryAdapter> horizontalRecyclerViewHolder = this.footerViewHolder;
        return (horizontalRecyclerViewHolder == null || (adapter = horizontalRecyclerViewHolder.getAdapter()) == null || CollectionUtils.a((Collection) new CopyOnWriteArrayList(adapter.getItems()), (Collection) this.footerDataList)) ? false : true;
    }

    public static void loginAndFireChange(final PresentersContainer presentersContainer, final DataSource dataSource) {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode);
        if (remoteAccountHelper != null) {
            remoteAccountHelper.setLoginListener(new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.8
                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                public final void a() {
                    super.a();
                    SocialFeedCard.onSocialStateChanged(presentersContainer, dataSource);
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                public final void b() {
                    super.b();
                    FeedbackManager.get().a(Activities.getString(2131887286), (Integer) null);
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                public final void c() {
                    super.c();
                    FeedbackManager.get().a("login canceled", 80);
                }
            });
            remoteAccountHelper.b((Activity) presentersContainer.getRealContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onSocialStateChanged(PresentersContainer presentersContainer, DataSource dataSource) {
        if (presentersContainer.getContainerMode() == PresentersContainer.MODE.EDIT_USER_PROFILE_ACTIVITY) {
            ArrayList arrayList = new ArrayList();
            RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode);
            if (remoteAccountHelper != null) {
                arrayList.add(remoteAccountHelper.getDataSource());
                ContactData contact = presentersContainer.getContact();
                contact.assertDeviceDataExist();
                contact.resetSocialNetworks(arrayList);
            }
            UserProfileLoader.a(presentersContainer.getContact(), dataSource.dbCode);
        }
        if (dataSource.socialIdField != null) {
            presentersContainer.getContact().fireChange(dataSource.socialIdField);
        } else {
            presentersContainer.getContact().fireChange(ContactField.googlePlaces);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openContactSocialProfileActivity() {
        ChooseSocialProfileActivity.openContactProfile((Activity) this.presentersContainer.getRealContext(), this.presentersContainer.getContact());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void openSocialProfile(PresentersContainer presentersContainer, int i, Activity activity, JSONSocialNetworkID jSONSocialNetworkID, Runnable runnable, OutcomeListener outcomeListener) {
        if (i != 1) {
            RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
            if (remoteAccountHelper != null) {
                remoteAccountHelper.a(activity, jSONSocialNetworkID.getId(), runnable, outcomeListener);
                return;
            }
            return;
        }
        FacebookPlaceData facebookPlaceData = presentersContainer.getContact().getFacebookPlaceData();
        if (facebookPlaceData != null) {
            FacebookHelper.get().a(activity, facebookPlaceData.getFacebookId().getId(), runnable, outcomeListener, "facebookPlaceData");
            return;
        }
        FacebookData facebookData = presentersContainer.getContact().getFacebookData();
        FacebookHelper.get().a(activity, jSONSocialNetworkID.getId(), runnable, outcomeListener, facebookData != null ? facebookData.getFqlType() : null);
    }

    private static void setIsFriend(ContactData contactData, SocialData socialData, DataSource dataSource) {
        if (socialData != null) {
            socialData.setIsFriend(Boolean.TRUE);
            CacheManager.get().a((Class<String>) socialData.getClass(), contactData.getCacheKey(dataSource.socialDataField), (String) socialData);
        }
    }

    private static void showAndConfirmProfile(final PresentersContainer presentersContainer, final ContactData contactData, final DataSource dataSource) {
        JSONSocialNetworkID socialId = getSocialId(contactData, dataSource);
        if (socialId != null && (presentersContainer.getRealContext() instanceof ActivityWithContact)) {
            new AnonymousClass6(presentersContainer, dataSource, socialId, toRegisterActivityLifecycleListener(contactData, dataSource), new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.5
                @Override // java.lang.Runnable
                public final void run() {
                    RemoteAccountHelper.a((ActivityWithContact) PresentersContainer.this.getRealContext(), contactData, dataSource);
                }
            }, contactData).execute();
        }
    }

    public static void showProfile(PresentersContainer presentersContainer, SocialData socialData, DataSource dataSource) {
        if (socialData != null && presentersContainer.getContact().isSure(dataSource) && Boolean.TRUE.equals(presentersContainer.getContact().isFriend(dataSource))) {
            setIsFriend(presentersContainer.getContact(), socialData, dataSource);
        }
        showAndConfirmProfile(presentersContainer, presentersContainer.getContact(), dataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startMatchingActivity(Integer num) {
        Intent putExtra = new Intent(this.presentersContainer.getRealContext(), PersonSelectActivity.class).putExtra("PERSON_SELECT_NET_ID", num).putExtra("PERSON_SELECT_CONTACTS_FULL_NAME", this.presentersContainer.getContact().getFullName()).putExtra("PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT", false);
        SocialSearchResults a2 = SocialNetworksSearchUtil.a(this.presentersContainer.getContact(), num.intValue());
        if (a2 == null || num.intValue() == FoursquareHelper.get().getApiConstantNetworkId()) {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", false);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", this.presentersContainer.getContact().getFullName());
        } else {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", true);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", a2.term);
        }
        Activities.a(this.presentersContainer.getRealContext(), putExtra, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.2
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                RemoteAccountHelper remoteAccountHelper;
                if (intent != null) {
                    int intExtra = intent.getIntExtra("PERSON_SELECT_NET_ID", -1);
                    if (i2 == -1) {
                        String stringExtra = intent.getStringExtra("PERSON_SELECT_SELECTED_USER_ID");
                        if (intExtra != -1 && !StringUtils.a((CharSequence) stringExtra) && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(intExtra)) != null) {
                            if ("DONTHAVE".equals(stringExtra)) {
                                remoteAccountHelper.setDoesntHave(SocialFeedCard.this.presentersContainer.getContact());
                                return;
                            }
                            JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(stringExtra, true);
                            remoteAccountHelper.a(SocialFeedCard.this.presentersContainer.getContact(), stringExtra, true);
                            SocialFeedCard.this.presentersContainer.getContact().assertDeviceDataExist();
                            ContactDataUtils.updateSocialNetwork(SocialFeedCard.this.presentersContainer.getContact(), intExtra, jSONSocialNetworkID);
                        }
                    }
                }
            }
        });
    }

    private static boolean toRegisterActivityLifecycleListener(ContactData contactData, DataSource dataSource) {
        boolean isNativeAppInstalled = Singletons.get().getRemoteAccountHelper(dataSource.dbCode).isNativeAppInstalled();
        JSONSocialNetworkID socialId = getSocialId(contactData, dataSource);
        return socialId != null && !socialId.isSure() && isNativeAppInstalled;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public boolean autoExpand() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public SimpleExpandableCard.ExpandedCardList createExpandCardList() {
        return new SocialFeedSimpleExpandedCardList(this.mContext);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public void fillFooterWithData() {
        HorizontalRecyclerViewHolder<HorizontalGalleryAdapter> horizontalRecyclerViewHolder = this.footerViewHolder;
        if (horizontalRecyclerViewHolder != null && horizontalRecyclerViewHolder.getAdapter() != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.SocialFeedCard.7
                @Override // java.lang.Runnable
                public void run() {
                    if (SocialFeedCard.this.isCardVisibleOnScreen()) {
                        ((HorizontalGalleryAdapter) SocialFeedCard.this.footerViewHolder.getAdapter()).a(SocialFeedCard.this.footerDataList, SocialFeedCard.this.getFooterOnItemClickedListener(), SocialFeedCard.this.getFooterOnItemLongClickedListener());
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        EnumSet of = EnumSet.of(ContactField.negatives, ContactField.phone, ContactField.googlePlaces);
        for (DataSource dataSource : DataSource.ALL_SOCIAL_DATA_SOURCES_LIST) {
            if (dataSource.socialDataField != null) {
                of.add(dataSource.socialDataField);
            }
            if (dataSource.socialIdField != null) {
                of.add(dataSource.socialIdField);
            }
            if (dataSource.socialSearchField != null) {
                of.add(dataSource.socialSearchField);
            }
        }
        return of;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 190;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isAllowedExpandAnimation() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (contactData.isUnsearchableNumber() || this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Pair<DataSource, String> pair : infoDataSources) {
            arrayList.add(new SocialDataObject(getSocialData(contactData, (DataSource) pair.first), (DataSource) pair.first, getPlaceData(contactData, (String) pair.second)));
        }
        synchronized (this.FOOTER_DATA_LIST_LOCK) {
            ArrayList<SimpleCardListObject> dataList = getDataList(arrayList);
            this.footerDataList = getFooterDataListAccordingToContact();
            updateCardData((Collection) dataList, isFooterDataChanged());
        }
        SocialFeedEvents socialFeedEvents = this.eventsListener;
        if (socialFeedEvents != null) {
            socialFeedEvents.onUnsureSocialsChanged(getAllUnsureButSearchableSources(footerDataSources));
        }
        showCard(false);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
