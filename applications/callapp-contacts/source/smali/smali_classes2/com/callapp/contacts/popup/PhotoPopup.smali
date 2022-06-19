.class public Lcom/callapp/contacts/popup/PhotoPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Lcom/callapp/contacts/model/contact/DataSource;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:I

.field private m:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private n:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;II)V
    .locals 2

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>(I)V

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->l:I

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->m:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 74
    iput-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->a:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/callapp/contacts/popup/PhotoPopup;->c:Lcom/callapp/contacts/model/contact/DataSource;

    .line 76
    iput p4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->e:I

    .line 77
    iput p5, p0, Lcom/callapp/contacts/popup/PhotoPopup;->f:I

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 79
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/PhotoPopup;->setCancelable(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->shouldCanceledOnTouchOutside()Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/PhotoPopup;)V
    .locals 5

    .line 4243
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "User corrected info"

    const-string v2, "Click positive on contact image"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/popup/PhotoPopup;->l:I

    iget-object v4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->m:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object v0

    .line 4245
    iget-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    .line 4246
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [C

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4247
    invoke-direct {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/PhotoPopup;Landroid/app/Activity;)V
    .locals 5

    .line 5219
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "User corrected info"

    const-string v2, "Click negative on contact image"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5220
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    .line 5222
    iget v1, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 5223
    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    .line 5224
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DataSource: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "PhotoPopup"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 5225
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Declined: socail id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", socialNetworkId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 5227
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/popup/PhotoPopup$7;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/callapp/contacts/popup/PhotoPopup$7;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;ILcom/callapp/common/model/json/JSONSocialNetworkID;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/PhotoPopup;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->n:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    return-object p0
.end method

.method private isUserApprovedThisProfile()Z
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    .line 256
    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, v2, :cond_1

    return v1

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getUserCorrectedData()Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 264
    :cond_2
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object v2

    if-nez v2, :cond_3

    return v3

    .line 268
    :cond_3
    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object v4

    if-eqz v4, :cond_5

    return v1

    :cond_4
    const/4 v4, 0x6

    if-ne v0, v4, :cond_5

    .line 274
    iget-object v4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareData()Lcom/callapp/contacts/model/contact/social/FoursquareData;

    move-result-object v4

    if-eqz v4, :cond_5

    return v1

    .line 279
    :cond_5
    iget-object v4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_6

    return v1

    .line 284
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    .line 285
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getSocialNetworkId()I

    move-result v4

    if-ne v4, v0, :cond_7

    return v1

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v1
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p2, 0x7f0d00dc

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a04c5

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0a06e6

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a06e7

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a0926

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0371

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    .line 111
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080398

    invoke-direct {v1, v0, v3, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v2, 0x7f060088

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 112
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    .line 113
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 113
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const v4, 0x7f06010e

    invoke-static {v3, v4}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120347

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/callapp/contacts/popup/PhotoPopup$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/popup/PhotoPopup$1;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->i:Landroid/widget/ImageView;

    new-instance v3, Lcom/callapp/contacts/popup/PhotoPopup$2;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/popup/PhotoPopup$2;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    new-instance v3, Lcom/callapp/contacts/popup/PhotoPopup$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/popup/PhotoPopup$3;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->n:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/popup/PhotoPopup;->b:Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/Bitmap;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/e/h;

    invoke-direct {v3}, Lcom/bumptech/glide/e/h;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 148
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/e/h;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/a;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/e/h;

    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/e/h;->c(I)Lcom/bumptech/glide/e/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    .line 150
    new-instance v0, Lcom/callapp/contacts/popup/PhotoPopup$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/PhotoPopup$4;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/callapp/contacts/popup/PhotoPopup$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/PhotoPopup$5;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/popup/PhotoPopup;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, p2, v3, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->c:Lcom/callapp/contacts/model/contact/DataSource;

    .line 178
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->f:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 179
    invoke-virtual {p2, v0, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->e:I

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2354
    iput-object v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 180
    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    .line 182
    :cond_1
    iget v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 183
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/popup/PhotoPopup;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, p2, v3, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->c:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    .line 2376
    iput-boolean v1, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 183
    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :goto_0
    const p2, 0x7f0a0779

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/PhotoPopup$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/PhotoPopup$6;-><init>(Lcom/callapp/contacts/popup/PhotoPopup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p2

    .line 197
    iget p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    iput p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->l:I

    .line 198
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->l:I

    invoke-static {p2, v0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->m:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 200
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->g:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->isUserApprovedThisProfile()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->l:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->m:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/popup/PhotoPopup;->a()V

    .line 203
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    new-array v1, v5, [C

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 205
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 210
    :cond_4
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->j:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3299
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3300
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3301
    iget-object p2, p0, Lcom/callapp/contacts/popup/PhotoPopup;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07016b

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getFloatValue(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 97
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f13018a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x30

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method
