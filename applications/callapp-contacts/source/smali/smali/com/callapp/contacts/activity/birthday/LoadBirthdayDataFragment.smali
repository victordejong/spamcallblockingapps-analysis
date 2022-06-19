.class public Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;
.super Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment<",
        "Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;-><init>()V

    return-void
.end method

.method private getDataFromPhone()Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;
    .locals 9

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 74
    iget-wide v1, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->c:J

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v8

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone + contactID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "type of loader:"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "photoUrls:"

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v1

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v5, v0

    .line 95
    new-instance v0, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    .line 4037
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "facebookID:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type of loader:"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 4039
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getApiConstantNetworkId()I

    move-result v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/contacts/model/BirthdayManager;->getBirthdayNameForSocialId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4042
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4044
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4045
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "photoUrls:"

    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 4046
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4047
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 4049
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4052
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4056
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4058
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->getDataFromPhone()Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    move-result-object v0

    return-object v0

    .line 4060
    :cond_2
    new-instance v3, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    new-instance v4, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v0, v2, v4, v1}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/framework/phone/Phone;)V

    return-object v3

    .line 4062
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4064
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->getDataFromPhone()Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .line 19
    check-cast p1, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    .line 1100
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1101
    instance-of v1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    if-eqz v1, :cond_8

    .line 1102
    check-cast v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    const/4 v1, 0x1

    .line 1201
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->d:Z

    .line 1203
    iget-boolean v2, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->c:Z

    if-nez v2, :cond_8

    if-nez p1, :cond_0

    .line 1208
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1202ee

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Birthday"

    const-string v2, "Pubish Results data null"

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->finish()V

    return-void

    :cond_0
    const v2, 0x7f0a0692

    .line 1214
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e:Landroidx/viewpager/widget/ViewPager;

    const v2, 0x7f0a0aa9

    .line 1215
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/CirclePaginationContainer;

    iput-object v2, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    const v2, 0x7f0a0477

    .line 1216
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    const v2, 0x7f0a012e

    .line 1217
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    .line 1219
    iput-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    .line 1220
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayPhotoUrls()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1221
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b:Z

    .line 1222
    iget-boolean v3, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1240
    :goto_2
    iget-boolean v4, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1241
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    const v4, 0x7f08008b

    invoke-static {p1, v4, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 1244
    :cond_4
    iget-object v4, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    const v6, 0x7f080084

    invoke-static {v4, v6, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1245
    iget-object v4, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1247
    iget-object v4, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e:Landroidx/viewpager/widget/ViewPager;

    new-instance v5, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 1248
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$2;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$2;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)V

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    :goto_3
    const p1, 0x7f0a0333

    .line 1316
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v5, 0x7f0600f3

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0a0689

    .line 1318
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x7f0a0511

    .line 1321
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0512

    .line 1322
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0513

    .line 1323
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0514

    .line 1324
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0515

    .line 1325
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0516

    .line 1326
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0517

    .line 1327
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f0a0470

    .line 1330
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0471

    .line 1331
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0472

    .line 1332
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0473

    .line 1333
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0474

    .line 1334
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0475

    .line 1335
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f0a0476

    .line 1336
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    new-instance p1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;

    invoke-direct {p1, v0, v4, v5}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;Ljava/util/List;Ljava/util/List;)V

    .line 1354
    iget-boolean v6, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b:Z

    if-nez v6, :cond_6

    .line 1355
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const v7, 0x7f060088

    .line 1357
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1360
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1361
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1364
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1365
    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;)V

    goto :goto_6

    .line 1226
    :cond_7
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->setupPaginationContainer(I)V

    const p1, 0x7f0a07f8

    .line 1371
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1372
    new-instance v3, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04b1

    .line 2270
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2271
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f030000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [[Ljava/lang/String;

    .line 2272
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2273
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 2274
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2276
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const v7, 0x7f0601cc

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2277
    new-instance v5, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    invoke-direct {v5, v0, v3, v4}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;[Ljava/lang/String;[[Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0130

    .line 3235
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const/16 v3, 0x82

    .line 3236
    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 3430
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3431
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3432
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    const v3, 0x7f1200f3

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3433
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 3434
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    const v4, 0x7f06011a

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 3436
    iget-object p1, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f0a012f

    .line 3437
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3438
    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3439
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "%s, "

    .line 3440
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3441
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3442
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method
