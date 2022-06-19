.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field private circleBorderColor:I

.field private circleBorderWidth:I

.field private defaultHeaderColor:I

.field private profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private spamHeaderColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->spamHeaderColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->setPictureAndBadgeColors(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->defaultHeaderColor:I

    return p0
.end method

.method private setPictureAndBadgeColors(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->isBadgeInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a06ed

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 52
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 54
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 61
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v2

    const v4, 0x7f06008a

    const v5, 0x7f060244

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08037c

    .line 67
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1354
    iput-object v6, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_0
    const v2, 0x7f080596

    .line 65
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v6, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v3

    invoke-static {p2, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const v2, 0x7f08037a

    .line 75
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2354
    iput-object v4, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 80
    :cond_4
    sget-object v4, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$4;->a:[I

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v5}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_5

    goto :goto_2

    .line 82
    :cond_5
    iput v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderWidth:I

    .line 83
    iput v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderColor:I

    :goto_2
    if-eqz v2, :cond_6

    .line 2443
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    .line 89
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-interface {v2, v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 101
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_3

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    :cond_7
    :goto_3
    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 108
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 109
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 110
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz p2, :cond_8

    .line 111
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 5

    .line 38
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    const v0, 0x7f0a06ed

    .line 41
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->profilePictureView:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v1, "?"

    .line 42
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-static {v0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->spamHeaderColor:I

    .line 44
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060088

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->defaultHeaderColor:I

    .line 45
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderWidth:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->circleBorderColor:I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 127
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onDestroy()V

    return-void
.end method
